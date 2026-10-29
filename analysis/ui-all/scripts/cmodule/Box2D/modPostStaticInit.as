package cmodule.Box2D
{
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.system.*;
   import flash.text.*;
   import flash.utils.*;
   
   public function modPostStaticInit() : void
   {
      var _loc1_:int = 0;
      if(cmodule.Box2D.gpostStaticInits)
      {
         _loc1_ = 0;
         while(_loc1_ < cmodule.Box2D.gpostStaticInits.length)
         {
            cmodule.Box2D.gpostStaticInits[_loc1_]();
            _loc1_++;
         }
      }
   }
}

