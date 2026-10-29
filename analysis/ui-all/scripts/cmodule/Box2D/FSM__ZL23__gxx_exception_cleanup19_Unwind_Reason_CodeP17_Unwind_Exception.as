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
   
   public final class FSM__ZL23__gxx_exception_cleanup19_Unwind_Reason_CodeP17_Unwind_Exception extends Machine
   {
      
      public static const intRegCount:int = 3;
      
      public static const NumberRegCount:int = 0;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public function FSM__ZL23__gxx_exception_cleanup19_Unwind_Reason_CodeP17_Unwind_Exception()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZL23__gxx_exception_cleanup19_Unwind_Reason_CodeP17_Unwind_Exception = null;
         _loc1_ = new FSM__ZL23__gxx_exception_cleanup19_Unwind_Reason_CodeP17_Unwind_Exception();
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
               this.i0 += 32;
               this.i1 = this.i0;
               this.i2 = li32(mstate.ebp + 8);
               if(uint(this.i2) >= uint(2))
               {
                  this.i0 = li32(this.i1 + -68);
                  mstate.esp -= 4;
                  si32(this.i0,mstate.esp);
                  state = 1;
                  mstate.esp -= 4;
                  FSM__ZN10__cxxabiv111__terminateEPFvvE.start();
                  return;
               }
               addr00e7:
               this.i1 = li32(this.i1 + -76);
               if(this.i1 != 0)
               {
                  mstate.esp -= 4;
                  si32(this.i0,mstate.esp);
                  state = 2;
                  mstate.esp -= 4;
                  mstate.funcs[this.i1]();
                  return;
               }
               break;
            case 1:
               mstate.esp += 4;
               §§goto(addr00e7);
            case 2:
               mstate.esp += 4;
               break;
            case 3:
               mstate.esp += 4;
               mstate.esp = mstate.ebp;
               mstate.ebp = li32(mstate.esp);
               mstate.esp += 4;
               mstate.esp += 4;
               mstate.gworker = caller;
               return;
            default:
               throw "Invalid state in __ZL23__gxx_exception_cleanup19_Unwind_Reason_CodeP17_Unwind_Exception";
         }
         mstate.esp -= 4;
         si32(this.i0,mstate.esp);
         state = 3;
         mstate.esp -= 4;
         FSM___cxa_free_exception.start();
      }
   }
}

