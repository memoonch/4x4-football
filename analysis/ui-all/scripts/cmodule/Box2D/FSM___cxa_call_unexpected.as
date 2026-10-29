package cmodule.Box2D
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM___cxa_call_unexpected extends Machine
   {
      
      public static const intRegCount:int = 2;
      
      public static const NumberRegCount:int = 0;
      
      public var i0:int;
      
      public var i1:int;
      
      public function FSM___cxa_call_unexpected()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM___cxa_call_unexpected = null;
         _loc1_ = new FSM___cxa_call_unexpected();
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
               mstate.esp -= 48;
               mstate.esp -= 4;
               this.i0 = li32(mstate.ebp + 8);
               si32(this.i0,mstate.esp);
               state = 1;
               mstate.esp -= 4;
               FSM___cxa_begin_catch.start();
               return;
            case 1:
               this.i1 = mstate.eax;
               mstate.esp += 4;
               this.i1 = li32(this.i0 + -12);
               si32(this.i1,mstate.ebp + -40);
               this.i0 = li32(this.i0 + -40);
               mstate.esp -= 4;
               si32(this.i0,mstate.esp);
               state = 2;
               mstate.esp -= 4;
               FSM__ZN10__cxxabiv112__unexpectedEPFvvE.start();
               return;
            case 2:
               mstate.esp += 4;
         }
         throw "Invalid state in ___cxa_call_unexpected";
      }
   }
}

