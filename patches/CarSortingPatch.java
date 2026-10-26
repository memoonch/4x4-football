import java.io.*;
import com.jpexs.decompiler.flash.SWF;
import com.jpexs.decompiler.flash.abc.ABC;
import com.jpexs.decompiler.flash.abc.avm2.instructions.AVM2Instruction;
import com.jpexs.decompiler.flash.abc.types.MethodBody;

/** Changes only the two constructor operands in race.setupCar, not race source. */
public class CarSortingPatch {
    public static void main(String[] args) throws Exception {
        SWF swf;
        try (InputStream input = new FileInputStream(args[0])) {
            swf = new SWF(input, false);
        }
        int changes = 0;
        for (var tag : swf.getAbcList()) {
            ABC abc = tag.getABC();
            if (abc.findClassByName("race") < 0) continue;
            MethodBody body = abc.findBodyByClassAndName("race", "setupCar");
            if (body == null) throw new IllegalStateException("setupCar not found");
            int distance = -1, conflict = -1;
            for (int i = 1; i < abc.constants.getMultinameCount(); i++) {
                var name = abc.constants.getMultiname(i);
                String simple = abc.constants.getString(name.name_index);
                if ("DistanceSortContainer".equals(simple)) distance = i;
                if ("ConflictContainer".equals(simple)) conflict = i;
            }
            if (distance < 0 || conflict < 0) throw new IllegalStateException("Container names missing");
            byte[] oldCode = body.getCodeBytes().clone();
            var code = body.getCode();
            for (AVM2Instruction instruction : code.code) {
                int opcode = instruction.definition.instructionCode;
                if (opcode != 0x5d && opcode != 0x4a) continue;
                var current = abc.constants.getMultiname(instruction.operands[0]);
                if ("DistanceSortContainer".equals(abc.constants.getString(current.name_index))) {
                    int replacement = -1;
                    for (int i = 1; i < abc.constants.getMultinameCount(); i++) {
                        var candidate = abc.constants.getMultiname(i);
                        if (candidate.kind == current.kind && candidate.namespace_index == current.namespace_index &&
                            "ConflictContainer".equals(abc.constants.getString(candidate.name_index))) replacement = i;
                    }
                    if (replacement < 0) throw new IllegalStateException("Matching namespace not found");
                    instruction.operands[0] = replacement;
                    changes++;
                }
            }
            body.setCode(code);
            body.setModified();
            byte[] newCode = body.getCodeBytes();
            if (newCode.length != oldCode.length) {
                throw new IllegalStateException("Unexpected bytecode length change");
            }
            int byteChanges = 0;
            for (int i = 0; i < oldCode.length; i++) if (oldCode[i] != newCode[i]) byteChanges++;
            if (byteChanges < 1 || byteChanges > 6) throw new IllegalStateException("Unexpected byte changes: " + byteChanges);
            System.out.println("setupCar changed byte positions: " + byteChanges);
            ((com.jpexs.decompiler.flash.tags.Tag) tag).setModified(true);
        }
        if (changes != 2) throw new IllegalStateException("Expected 2 operands; changed " + changes);
        try (OutputStream output = new FileOutputStream(args[1])) { swf.saveTo(output); }
        System.out.println("Patched exactly two setupCar constructor operands; all other methods preserved.");
    }
}
