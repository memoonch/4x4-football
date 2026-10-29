import java.io.*;
import com.jpexs.decompiler.flash.SWF;
import com.jpexs.decompiler.flash.abc.types.Multiname;
public class MainMenuPatch {
 static void u30(ByteArrayOutputStream out,int n){do{int b=n&127;n>>>=7;out.write(n!=0?b|128:b);}while(n!=0);}
 public static void main(String[] args)throws Exception{
  SWF swf;try(var in=new FileInputStream(args[0])){swf=new SWF(in,false);}int count=0;
  for(var tag:swf.getAbcList()){
   var abc=tag.getABC();var start=abc.findBodyByClassAndName("race","Start");if(start==null)continue;
   int car=-1,install=-1,menu=-1,teams=-1,hummer=-1,visibility=-1;
   for(int i=1;i<abc.constants.getMultinameCount();i++){
    var m=abc.constants.getMultiname(i);if(m.kind!=7)continue;String n=abc.constants.getString(m.name_index);
    if("BoxCar".equals(n))car=i;if("installMainMenu".equals(n))install=i;if("hummer0".equals(n))hummer=i;
    if("mainMenuVisibility".equals(n))visibility=i;
   }
   for(var trait:abc.instance_info.get(abc.findClassByName("race")).instance_traits.traits){
    var n=trait.getName(abc);String name=abc.constants.getString(n.name_index);
    if("start_screen".equals(name))menu=abc.constants.getMultinameId(n,true);
    if("teams_mc".equals(name))teams=abc.constants.getMultinameId(n,true);
   }
   if(hummer<0 && install>0)hummer=abc.constants.getMultinameId(Multiname.createQName(false,abc.constants.getStringId("hummer0",true),abc.constants.getMultiname(install).namespace_index),true);
   if(car<0||install<0||menu<0||teams<0||hummer<0||start.exceptions.length!=0)throw new IllegalStateException("Missing menu bindings: "+car+","+install+","+menu+","+teams+","+hummer);
   var out=new ByteArrayOutputStream();   int matchInstall=-1;
   for(int i=1;i<abc.constants.getMultinameCount();i++){
    var m=abc.constants.getMultiname(i);if(m.kind==7 && "installMatchUI".equals(abc.constants.getString(m.name_index)))matchInstall=i;
   }
   if(matchInstall<0)throw new IllegalStateException("Missing match UI hook");
   out.write(0x60);u30(out,car);out.write(0xd0);out.write(0x4f);u30(out,matchInstall);u30(out,1);
   out.write(0x60);u30(out,car);
   out.write(0xd0);out.write(0x66);u30(out,menu);
   out.write(0xd0);out.write(0x66);u30(out,teams);out.write(0x66);u30(out,hummer);
   out.write(0x4f);u30(out,install);u30(out,2);out.write(start.getCodeBytes());
   start.setCodeBytes(out.toByteArray());start.setCode(start.getCode());start.max_stack=Math.max(start.max_stack,3);start.setModified();
   if(visibility<0)throw new IllegalStateException("Missing menu visibility hook");
   for(String method:new String[]{"restartGame","onNewRound"}){
    var body=abc.findBodyByClassAndName("race",method);
    if(body==null||body.exceptions.length!=0)throw new IllegalStateException("Unexpected menu transition");
    var prefix=new ByteArrayOutputStream();prefix.write(0x60);u30(prefix,car);
    prefix.write("restartGame".equals(method)?0x26:0x27);
    prefix.write(0x4f);u30(prefix,visibility);u30(prefix,1);prefix.write(body.getCodeBytes());
    body.setCodeBytes(prefix.toByteArray());body.setCode(body.getCode());body.max_stack=Math.max(body.max_stack,2);body.setModified();
   }
   int teamInstall=-1;
   for(int i=1;i<abc.constants.getMultinameCount();i++){
    var m=abc.constants.getMultiname(i);
    if(m.kind==7 && "installTeamMenu".equals(abc.constants.getString(m.name_index)))teamInstall=i;
   }
   var teamBody=abc.findBodyByClassAndName("race","initSelectTeam");
   if(teamInstall<0||teamBody==null||teamBody.exceptions.length!=0)throw new IllegalStateException("Missing team menu hook");
   var teamPrefix=new ByteArrayOutputStream();teamPrefix.write(0x60);u30(teamPrefix,car);
   teamPrefix.write(0xd0);teamPrefix.write(0x66);u30(teamPrefix,teams);
   teamPrefix.write(0x4f);u30(teamPrefix,teamInstall);u30(teamPrefix,1);teamPrefix.write(teamBody.getCodeBytes());
   teamBody.setCodeBytes(teamPrefix.toByteArray());teamBody.setCode(teamBody.getCode());
   teamBody.max_stack=Math.max(teamBody.max_stack,2);teamBody.setModified();
   // Resolve each private race field from its declaring trait, preserving namespace identity.
   var fields=new java.util.HashMap<String,Integer>();
   for(var trait:abc.instance_info.get(abc.findClassByName("race")).instance_traits.traits){
    var n=trait.getName(abc);fields.put(abc.constants.getString(n.name_index),abc.constants.getMultinameId(n,true));
   }
   // Resetting a match must clear the old pause flag, including Restart from Pause.
   var resetBody=abc.findBodyByClassAndName("race","resetGame");
   if(resetBody==null||resetBody.exceptions.length!=0)throw new IllegalStateException("Missing reset hook");
   var resetPrefix=new ByteArrayOutputStream();resetPrefix.write(0xd0);resetPrefix.write(0x27);resetPrefix.write(0x61);u30(resetPrefix,fields.get("PAUSE"));resetPrefix.write(resetBody.getCodeBytes());
   resetBody.setCodeBytes(resetPrefix.toByteArray());resetBody.setCode(resetBody.getCode());resetBody.max_stack=Math.max(resetBody.max_stack,2);resetBody.setModified();
   int worldHelper=-1;
   for(int i=1;i<abc.constants.getMultinameCount();i++){
    var m=abc.constants.getMultiname(i);if(m.kind==7 && "publishMatchWorld".equals(abc.constants.getString(m.name_index)))worldHelper=i;
   }
   var updateBody=abc.findBodyByClassAndName("race","updateUI");
   if(worldHelper<0||updateBody==null||updateBody.exceptions.length!=0)throw new IllegalStateException("Missing HUD world binding");
   var worldPrefix=new ByteArrayOutputStream();worldPrefix.write(0x60);u30(worldPrefix,car);
   for(String field:new String[]{"WOCARS","currentCar2D"}){worldPrefix.write(0xd0);worldPrefix.write(0x66);u30(worldPrefix,fields.get(field));}
   worldPrefix.write(0x4f);u30(worldPrefix,worldHelper);u30(worldPrefix,2);worldPrefix.write(updateBody.getCodeBytes());
   updateBody.setCodeBytes(worldPrefix.toByteArray());updateBody.setCode(updateBody.getCode());updateBody.max_stack=Math.max(updateBody.max_stack,3);updateBody.setModified();
   for(String method:new String[]{"showPopup","hidePopup"}){
    boolean show="showPopup".equals(method);String helper=show?"showTournamentMenu":"hideTournamentMenu";
    int helperId=-1;
    for(int i=1;i<abc.constants.getMultinameCount();i++){
     var m=abc.constants.getMultiname(i);
     if(m.kind==7 && helper.equals(abc.constants.getString(m.name_index)))helperId=i;
    }
    var body=abc.findBodyByClassAndName("race",method);
    if(helperId<0||body==null||body.exceptions.length!=0)throw new IllegalStateException("Missing tournament hook: "+method);
    var prefix=new ByteArrayOutputStream();prefix.write(0x60);u30(prefix,car);prefix.write(0xd1);
    if(show){
     for(String field:new String[]{"cupchart_mc","versus_mc","round","cup16","cup8","cup4","cup2"}){
      if(!fields.containsKey(field))throw new IllegalStateException("Missing tournament field: "+field);
      prefix.write(0xd0);prefix.write(0x66);u30(prefix,fields.get(field));
     }
    }
    prefix.write(0x4f);u30(prefix,helperId);u30(prefix,show?8:1);prefix.write(body.getCodeBytes());
    body.setCodeBytes(prefix.toByteArray());body.setCode(body.getCode());body.max_stack=Math.max(body.max_stack,show?9:2);body.setModified();
   }
   ((com.jpexs.decompiler.flash.tags.Tag)tag).setModified(true);count++;
  }
  if(count!=1)throw new IllegalStateException("Expected one menu setup hook");
  try(var out=new FileOutputStream(args[1])){swf.saveTo(out);}
  System.out.println("Main menu skin installed; original button objects and handlers retained.");
 }
}



