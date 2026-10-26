package cmodule.Box2D
{
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZSt9terminatev extends Machine
   {
      
      public static const intRegCount:int = 1;
      
      public static const NumberRegCount:int = 0;
      
      public var i0:int;
      
      public function FSM__ZSt9terminatev()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZSt9terminatev = null;
         _loc1_ = new FSM__ZSt9terminatev();
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
               this.i0 = cmodule.Box2D.__ZN9__gnu_cxx27__verbose_terminate_handlerEv;
               mstate.esp -= 4;
               si32(this.i0,mstate.esp);
               state = 1;
               mstate.esp -= 4;
               FSM__ZN10__cxxabiv111__terminateEPFvvE.start();
               return;
            case 1:
               mstate.esp += 4;
         }
         throw "Invalid state in __ZSt9terminatev";
      }
   }
}

