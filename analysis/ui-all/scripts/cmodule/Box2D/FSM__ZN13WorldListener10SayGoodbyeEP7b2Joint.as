package cmodule.Box2D
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.system.*;
   import flash.text.*;
   import flash.utils.*;
   
   public final class FSM__ZN13WorldListener10SayGoodbyeEP7b2Joint extends Machine
   {
      
      public static const intRegCount:int = 1;
      
      public static const NumberRegCount:int = 0;
      
      public var i0:int;
      
      public function FSM__ZN13WorldListener10SayGoodbyeEP7b2Joint()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZN13WorldListener10SayGoodbyeEP7b2Joint = null;
         _loc1_ = new FSM__ZN13WorldListener10SayGoodbyeEP7b2Joint();
         cmodule.Box2D.gstate.gworker = _loc1_;
      }
      
      final override public function work() : void
      {
         switch(state)
         {
            case 0:
               mstate.esp -= 4;
               si32(mstate.ebp,mstate.esp);
               mstate.ebp = mstate.esp;
               mstate.esp -= 0;
               this.i0 = li32(mstate.ebp + 12);
               this.i0 = li32(this.i0 + 60);
               mstate.esp -= 4;
               si32(this.i0,mstate.esp);
               state = 1;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Release]();
               return;
            case 1:
               mstate.esp += 4;
               mstate.esp = mstate.ebp;
               mstate.ebp = li32(mstate.esp);
               mstate.esp += 4;
               mstate.esp += 4;
               mstate.gworker = caller;
               return;
            default:
               throw "Invalid state in __ZN13WorldListener10SayGoodbyeEP7b2Joint";
         }
      }
   }
}

