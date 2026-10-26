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
   
   public final class FSM__ZN10__cxxabiv112__unexpectedEPFvvE extends Machine
   {
      
      public static const intRegCount:int = 1;
      
      public static const NumberRegCount:int = 0;
      
      public var i0:int;
      
      public function FSM__ZN10__cxxabiv112__unexpectedEPFvvE()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZN10__cxxabiv112__unexpectedEPFvvE = null;
         _loc1_ = new FSM__ZN10__cxxabiv112__unexpectedEPFvvE();
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
               this.i0 = li32(mstate.ebp + 8);
               state = 1;
               mstate.esp -= 4;
               mstate.funcs[this.i0]();
               return;
            case 1:
               state = 2;
               mstate.esp -= 4;
               FSM__ZSt9terminatev.start();
               return;
            default:
               throw "Invalid state in __ZN10__cxxabiv112__unexpectedEPFvvE";
         }
      }
   }
}

