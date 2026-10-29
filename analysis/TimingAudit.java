import java.io.*;
import java.util.*;
import com.jpexs.decompiler.flash.SWF;
public class TimingAudit {
  static SWF read(String p) throws Exception {try(var in=new FileInputStream(p)){return new SWF(in,false);}}
  static byte[] method(SWF s,String c,String m){for(var tag:s.getAbcList()){var b=tag.getABC().findBodyByClassAndName(c,m);if(b!=null)return b.getCodeBytes();}throw new IllegalArgumentException(c+"."+m);}
  public static void main(String[] args)throws Exception{
    var original=read("4x4 soccer.swf");var bridge=read("build/4x4-soccer-bridge.swf");
    System.out.println("Original SWF FPS: "+original.frameRate+"; WebGL bridge SWF FPS: "+bridge.frameRate);
    String[][] checks={{"World","step"},{"BoxCar","parseInput"},{"BoxCar","carSpeed"},{"BoxCar","applySideFriction"},{"BoxCar","killOrthogonalVelocity"},{"BoxCar","computePath"},{"carsWCK","__setProp_worldofcars1_carsWCK_wocars_1"},{"race","onEnterFrame"},{"race","startRace"}};
    for(var check:checks)try{System.out.println(check[0]+"."+check[1]+": "+(Arrays.equals(method(original,check[0],check[1]),method(bridge,check[0],check[1]))?"IDENTICAL bytecode":"CHANGED bytecode"));}catch(IllegalArgumentException e){System.out.println("Not found: "+e.getMessage());}
  }
}
