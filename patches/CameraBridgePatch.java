import java.io.*;
import com.jpexs.decompiler.flash.SWF;
import com.jpexs.decompiler.flash.abc.types.Multiname;

/** An opt-in early-return hook; the original render body remains as fallback. */
public class CameraBridgePatch {
    static void u30(ByteArrayOutputStream out,int n) {
        do {int b=n&127;n>>>=7;out.write(b|(n!=0?128:0));} while(n!=0);
    }
    public static void main(String[] args)throws Exception {
        SWF swf;
        try(var in=new FileInputStream(args[0])){swf=new SWF(in,false);}
        int patched=0;
        for(var tag:swf.getAbcList()) {
            var abc=tag.getABC();
            var body=abc.findBodyByClassAndName("Camera3D","render");
            if(body==null)continue;
            if(body.exceptions.length!=0)throw new IllegalStateException("Unexpected render exceptions");
            int type=-1, method=-1, materialNs=-1, publicNs=-1;
            for(int i=1;i<abc.constants.getMultinameCount();i++){
                var m=abc.constants.getMultiname(i);
                String name=abc.constants.getString(m.name_index);
                if("TextureMaterial".equals(name)&&m.kind==7)type=i;
                if("Material".equals(name)&&m.kind==7)materialNs=m.namespace_index;
                if("render".equals(name)&&m.kind==7)publicNs=m.namespace_index;
            }
            if(type<0)type=abc.constants.getMultinameId(Multiname.createQName(false,abc.constants.getStringId("TextureMaterial",true),materialNs),true);
            method=abc.constants.getMultinameId(Multiname.createQName(false,abc.constants.getStringId("renderExternal",true),publicNs),true);
            var bytes=new ByteArrayOutputStream();
            bytes.write(0x60);u30(bytes,type); // getlex TextureMaterial
            bytes.write(0xd0); // getlocal0 (camera)
            bytes.write(0x46);u30(bytes,method);u30(bytes,1); // callproperty renderExternal(camera)
            bytes.write(new byte[]{0x12,1,0,0,0x47}); // iffalse original; returnvoid
            bytes.write(body.getCodeBytes());
            body.setCodeBytes(bytes.toByteArray());body.setCode(body.getCode());
            body.max_stack=Math.max(body.max_stack,2);body.setModified();
            ((com.jpexs.decompiler.flash.tags.Tag)tag).setModified(true);patched++;
            var pred=abc.findBodyByClassAndName("race","predFrame");
            if(pred==null||pred.exceptions.length!=0)throw new IllegalStateException("Unexpected startup method");
            int world=-1;
            for(int i=1;i<abc.constants.getMultinameCount();i++){
                var m=abc.constants.getMultiname(i);
                if(m.kind==7&&"WOCARS".equals(abc.constants.getString(m.name_index)))world=i;
            }
            if(world<0)throw new IllegalStateException("Missing WOCARS property");
            int ready=abc.constants.getMultinameId(Multiname.createQName(false,abc.constants.getStringId("physicsReady",true),publicNs),true);
            var guarded=new ByteArrayOutputStream();
            guarded.write(0x60);u30(guarded,type);
            guarded.write(0xd0);guarded.write(0x66);u30(guarded,world);
            guarded.write(0x46);u30(guarded,ready);u30(guarded,1);
            guarded.write(new byte[]{0x11,2,0,0,0x21,0x48}); // iftrue original; pushundefined; returnvalue
            guarded.write(pred.getCodeBytes());
            pred.setCodeBytes(guarded.toByteArray());pred.setCode(pred.getCode());
            pred.max_stack=Math.max(pred.max_stack,2);pred.setModified();
            var init=abc.findBodyByClassAndName("race","initScene");
            if(init==null||init.exceptions.length!=0)throw new IllegalStateException("Unexpected initScene method");
            int track=-1,cup=-1;
            for(var instruction:init.getCode().code){
                if(instruction.definition.instructionCode!=0x66)continue;
                int i=instruction.operands[0];
                var m=abc.constants.getMultiname(i);
                String n=abc.constants.getString(m.name_index);
                if("TRACK".equals(n))track=i;
                if("currentCup".equals(n))cup=i;
            }
            if(track<0||cup<0)throw new IllegalStateException("Missing scene identity fields");
            int begin=abc.constants.getMultinameId(Multiname.createQName(false,abc.constants.getStringId("beginScene",true),publicNs),true);
            var identified=new ByteArrayOutputStream();
            identified.write(0x60);u30(identified,type);
            identified.write(0xd0);identified.write(0x66);u30(identified,track);
            identified.write(0xd0);identified.write(0x66);u30(identified,cup);
            identified.write(0xd0);identified.write(0x66);u30(identified,world);
            identified.write(0x4f);u30(identified,begin);u30(identified,3);
            identified.write(init.getCodeBytes());
            init.setCodeBytes(identified.toByteArray());init.setCode(init.getCode());
            init.max_stack=Math.max(init.max_stack,4);init.setModified();
            var start=abc.findBodyByClassAndName("race","startRace");
            if(start==null||start.exceptions.length!=0)throw new IllegalStateException("Unexpected kickoff method");
            int cameraField=-1,startMethod=-1,startTime=-1;
            for(var instruction:init.getCode().code){
                if(instruction.definition.instructionCode!=0x61)continue;
                int i=instruction.operands[0];
                if("camera".equals(abc.constants.getString(abc.constants.getMultiname(i).name_index)))cameraField=i;
            }
            for(var instruction:abc.findBodyByClassAndName("race","continueGame").getCode().code){
                if(instruction.definition.instructionCode!=0x4f&&instruction.definition.instructionCode!=0x46)continue;
                int i=instruction.operands[0];
                if("startRace".equals(abc.constants.getString(abc.constants.getMultiname(i).name_index)))startMethod=i;
            }
            for(var instruction:abc.findBodyByClassAndName("race","onStartGame").getCode().code){
                if(instruction.definition.instructionCode!=0x61)continue;
                int i=instruction.operands[0];
                if("startTime".equals(abc.constants.getString(abc.constants.getMultiname(i).name_index)))startTime=i;
            }
            // Original optimized bytecode accesses some fields through slots rather than QNames.
            for(var trait:abc.instance_info.get(abc.findClassByName("race")).instance_traits.traits){
                var name=trait.getName(abc);
                String n=abc.constants.getString(name.name_index);
                if("camera".equals(n))cameraField=abc.constants.getMultinameId(name,true);
                if("startTime".equals(n))startTime=abc.constants.getMultinameId(name,true);
            }
            if(cameraField<0||startMethod<0||startTime<0)throw new IllegalStateException("Missing kickoff fields: "+cameraField+","+startMethod+","+startTime);
            int defer=abc.constants.getMultinameId(Multiname.createQName(false,abc.constants.getStringId("deferStart",true),publicNs),true);
            int delay=abc.constants.getMultinameId(Multiname.createQName(false,abc.constants.getStringId("takeLoadingDelay",true),publicNs),true);
            var kickoff=new ByteArrayOutputStream();
            kickoff.write(0x60);u30(kickoff,type);
            for(int property:new int[]{cameraField,world,startMethod}){
                kickoff.write(0xd0);kickoff.write(0x66);u30(kickoff,property);
            }
            kickoff.write(0x46);u30(kickoff,defer);u30(kickoff,3);
            kickoff.write(new byte[]{0x11,2,0,0,0x21,0x48});
            kickoff.write(new byte[]{(byte)0xd0,0x2a,0x66});u30(kickoff,startTime);
            kickoff.write(0x60);u30(kickoff,type);kickoff.write(0x46);u30(kickoff,delay);u30(kickoff,0);
            kickoff.write(0xa0);kickoff.write(0x61);u30(kickoff,startTime);
            kickoff.write(start.getCodeBytes());
            start.setCodeBytes(kickoff.toByteArray());start.setCode(start.getCode());
            start.max_stack=Math.max(start.max_stack,4);start.setModified();
        }
        if(patched!=1)throw new IllegalStateException("Expected one camera render method: "+patched);
        try(var out=new FileOutputStream(args[1])){swf.saveTo(out);}
        System.out.println("Installed opt-in external-renderer hook; original body preserved.");
    }
}
