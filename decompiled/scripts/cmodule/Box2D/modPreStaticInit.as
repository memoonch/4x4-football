package cmodule.Box2D
{
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.system.*;
   import flash.text.*;
   import flash.utils.*;
   
   public function modPreStaticInit() : void
   {
      var _loc1_:int = 0;
      if(cmodule.Box2D.gpreStaticInits)
      {
         _loc1_ = 0;
         while(_loc1_ < cmodule.Box2D.gpreStaticInits.length)
         {
            cmodule.Box2D.gpreStaticInits[_loc1_]();
            _loc1_++;
         }
      }
   }
}

