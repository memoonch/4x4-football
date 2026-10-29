import java.io.*;
import java.nio.file.*;
import java.util.*;
import com.jpexs.decompiler.flash.SWF;
// Test-only fixtures; production SWFs and their timing are never modified.
public class MatchUITestFixture {
 static void u30(ByteArrayOutputStream out,int n){do{int b=n&127;n>>>=7;out.write(n!=0?b|128:b);}while(n!=0);}
 static void set(ByteArrayOutputStream out,int field,int value){out.write(0xd0);out.write(0x25);u30(out,value);out.write(0x61);u30(out,field);}
 public static void main(String[] args)throws Exception{
  Path output=Path.of(args[1]).toAbsolutePath().normalize();
  if(!output.startsWith(Path.of("analysis").toAbsolutePath().normalize()))throw new IllegalArgumentException("Test fixtures must stay in analysis");
  SWF swf;try(var in=new FileInputStream(args[0])){swf=new SWF(in,false);}
  for(var tag:swf.getAbcList()){
   var abc=tag.getABC();var start=abc.findBodyByClassAndName("race","Start");if(start==null)continue;
   var fields=new HashMap<String,Integer>();
   for(var trait:abc.instance_info.get(abc.findClassByName("race")).instance_traits.traits){var n=trait.getName(abc);fields.put(abc.constants.getString(n.name_index),abc.constants.getMultinameId(n,true));}
   var prefix=new ByteArrayOutputStream();set(prefix,fields.get("PERIOD_DURATION"),1500);set(prefix,fields.get("EXTENSION_DURATION"),1500);prefix.write(start.getCodeBytes());start.setCodeBytes(prefix.toByteArray());start.setCode(start.getCode());start.setModified();
   var end=abc.findBodyByClassAndName("race","endHalfTime");
   prefix=new ByteArrayOutputStream();set(prefix,fields.get("homeScore"),args[2].equals("win")?2:0);set(prefix,fields.get("guestScore"),args[2].equals("loss")?2:0);prefix.write(end.getCodeBytes());end.setCodeBytes(prefix.toByteArray());end.setCode(end.getCode());end.max_stack=Math.max(end.max_stack,2);end.setModified();
   ((com.jpexs.decompiler.flash.tags.Tag)tag).setModified(true);
  }
  try(var out=new FileOutputStream(output.toFile())){swf.saveTo(out);}
 }
}
