package cmodule.Box2D
{
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.system.*;
   import flash.text.*;
   import flash.utils.*;
   
   public function importSym(param1:String) : int
   {
      var res:int = 0;
      var s:String = param1;
      res = int(cmodule.Box2D.gstate.syms[s]);
      if(!res)
      {
         cmodule.Box2D.log(3,"Undefined sym: " + s);
         return cmodule.Box2D.exportSym(s,cmodule.Box2D.regFunc(function():*
         {
            throw "Undefined sym: " + s;
         }));
      }
      return res;
   }
}

