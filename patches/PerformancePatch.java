import java.io.*;
import com.jpexs.decompiler.flash.SWF;
import com.jpexs.decompiler.flash.abc.types.Multiname;

/** Keep match UI tween storage bounded and start just one crowd loop at kickoff. */
public class PerformancePatch {
    static void u30(ByteArrayOutputStream out,int n) {
        do {int b=n&127;n>>>=7;out.write(n!=0?b|128:b);} while(n!=0);
    }
    public static void main(String[] args)throws Exception {
        SWF swf;try(var in=new FileInputStream(args[0])){swf=new SWF(in,false);}
        int patched=0;
        for(var tag:swf.getAbcList()) {
            var abc=tag.getABC();var pred=abc.findBodyByClassAndName("race","predFrame");
            if(pred==null)continue;
            var instructions=pred.getCode().code;
            var end=instructions.get(instructions.size()-1);
            if(end.definition.instructionCode!=0x47)throw new IllegalStateException("Expected returnvoid");
            var bytes=pred.getCodeBytes();int branches=0;
            for(var instruction:instructions) {
                // The original failed countdown branch falls through to another endless crowd loop.
                if("ifnlt".equals(instruction.definition.instructionName)) {
                    int offset=(int)end.getAddress()-(int)instruction.getAddress()-4;
                    int at=(int)instruction.getAddress();
                    bytes[at+1]=(byte)offset;bytes[at+2]=(byte)(offset>>8);bytes[at+3]=(byte)(offset>>16);branches++;
                }
            }
            if(branches!=1)throw new IllegalStateException("Unexpected countdown branches: "+branches);
            pred.setCodeBytes(bytes);pred.setCode(pred.getCode());pred.setModified();
            int boxCar=-1,tweens=-1,clean=-1;
            for(int i=1;i<abc.constants.getMultinameCount();i++) {
                var m=abc.constants.getMultiname(i);if(m.kind!=7)continue;
                String name=abc.constants.getString(m.name_index);
                if("BoxCar".equals(name))boxCar=i;
                if("cleanFinishedTweens".equals(name))clean=i;
            }
            // A name-only scan can select another class's PRIVATE field from old constants.
            // Bind the field using its declaring race trait, including its exact namespace.
            for(var trait:abc.instance_info.get(abc.findClassByName("race")).instance_traits.traits){
                var name=trait.getName(abc);
                if("tweens".equals(abc.constants.getString(name.name_index)))
                    tweens=abc.constants.getMultinameId(name,true);
            }
            if(boxCar<0||tweens<0||clean<0)throw new IllegalStateException("Missing cleanup fields");
            var frame=abc.findBodyByClassAndName("race","onFrame");
            if(frame==null||frame.exceptions.length!=0)throw new IllegalStateException("Unexpected frame body");
            var guarded=new ByteArrayOutputStream();
            guarded.write(0x60);u30(guarded,boxCar);
            guarded.write(0xd0);guarded.write(0x66);u30(guarded,tweens);
            guarded.write(0x4f);u30(guarded,clean);u30(guarded,1);
            guarded.write(frame.getCodeBytes());
            frame.setCodeBytes(guarded.toByteArray());frame.setCode(frame.getCode());
            frame.max_stack=Math.max(frame.max_stack,2);frame.setModified();
            ((com.jpexs.decompiler.flash.tags.Tag)tag).setModified(true);patched++;
        }
        if(patched!=1)throw new IllegalStateException("Expected one race class: "+patched);
        try(var out=new FileOutputStream(args[1])){swf.saveTo(out);}
        System.out.println("Performance patch: one crowd loop per kickoff; completed UI tweens pruned.");
    }
}
