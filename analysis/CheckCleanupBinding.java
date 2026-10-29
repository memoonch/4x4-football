import java.io.*;
import com.jpexs.decompiler.flash.SWF;
public class CheckCleanupBinding {
 public static void main(String[] args)throws Exception{
  SWF swf;try(var in=new FileInputStream(args.length>0?args[0]:"build/4x4-soccer-bridge.swf")){swf=new SWF(in,false);}
  for(var tag:swf.getAbcList()){
   var abc=tag.getABC();var frame=abc.findBodyByClassAndName("race","onFrame");if(frame==null)continue;
   for(int i=1;i<abc.constants.getMultinameCount();i++){
    var m=abc.constants.getMultiname(i);if(m.kind!=7)continue;
    if("cleanFinishedTweens".equals(abc.constants.getString(m.name_index)))
     System.out.println("cleanup QName "+i+": "+abc.constants.getNamespace(m.namespace_index));
   }
   for(var instruction:frame.getCode().code){if(instruction.definition.instructionCode==0x4f){
    int id=instruction.operands[0];var m=abc.constants.getMultiname(id);
    System.out.println("first call: "+abc.constants.getString(m.name_index)+" "+abc.constants.getNamespace(m.namespace_index));break;
   }}
   int actual=-1,expected=-1;
   for(var instruction:frame.getCode().code){if(instruction.definition.instructionCode==0x66){
    int id=instruction.operands[0];var m=abc.constants.getMultiname(id);
    if(!"tweens".equals(abc.constants.getString(m.name_index)))throw new IllegalStateException("Unexpected field");
    actual=m.namespace_index;break;
   }}
   for(var trait:abc.instance_info.get(abc.findClassByName("race")).instance_traits.traits){
    var m=trait.getName(abc);if("tweens".equals(abc.constants.getString(m.name_index)))expected=m.namespace_index;
   }
   if(actual<0||actual!=expected)throw new IllegalStateException("Wrong private field namespace: "+actual+"; expected "+expected);
   System.out.println("PASS: frame cleanup references the declared race.tweens private field (namespace "+expected+").");
  }
 }
}
