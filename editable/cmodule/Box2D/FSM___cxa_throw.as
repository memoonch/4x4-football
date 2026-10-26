package cmodule.Box2D
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM___cxa_throw extends Machine
   {
      
      public static const intRegCount:int = 3;
      
      public static const NumberRegCount:int = 0;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public function FSM___cxa_throw()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM___cxa_throw = null;
         _loc1_ = new FSM___cxa_throw();
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
               this.i0 = cmodule.Box2D.__ZSt9terminatev;
               this.i2 = li32(mstate.ebp + 8);
               this.i1 = li32(mstate.ebp + 12);
               si32(this.i1,this.i2 + -80);
               this.i1 = li32(mstate.ebp + 16);
               si32(this.i1,this.i2 + -76);
               si32(this.i0,this.i2 + -72);
               this.i0 = cmodule.Box2D.__ZN9__gnu_cxx27__verbose_terminate_handlerEv;
               si32(this.i0,this.i2 + -68);
               this.i0 = 1196315971;
               this.i1 = 1126902528;
               si32(this.i1,this.i2 + -32);
               si32(this.i0,this.i2 + -28);
               this.i0 = cmodule.Box2D.__ZL23__gxx_exception_cleanup19_Unwind_Reason_CodeP17_Unwind_Exception;
               si32(this.i0,this.i2 + -24);
               state = 1;
               mstate.esp -= 4;
               FSM___cxa_get_globals.start();
               return;
            case 1:
               this.i0 = mstate.eax;
               this.i1 = li32(this.i0 + 4);
               this.i1 += 1;
               si32(this.i1,this.i0 + 4);
               this.i0 = cmodule.Box2D.__2E_str6102;
               this.i1 = 4;
               cmodule.Box2D.log(this.i1,mstate.gworker.stringFromPtr(this.i0));
               mstate.esp -= 4;
               this.i0 = this.i2 + -32;
               si32(this.i0,mstate.esp);
               state = 2;
               mstate.esp -= 4;
               FSM___cxa_begin_catch.start();
               return;
            case 2:
               this.i0 = mstate.eax;
               mstate.esp += 4;
               state = 3;
               mstate.esp -= 4;
               FSM__ZSt9terminatev.start();
               return;
            default:
               throw "Invalid state in ___cxa_throw";
         }
      }
   }
}

