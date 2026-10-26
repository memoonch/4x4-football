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
   
   public final class FSM__Z21b2SimplexCache_deletePvP8_AS3_Val extends Machine
   {
      
      public static const intRegCount:int = 3;
      
      public static const NumberRegCount:int = 0;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public function FSM__Z21b2SimplexCache_deletePvP8_AS3_Val()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__Z21b2SimplexCache_deletePvP8_AS3_Val = null;
         _loc1_ = new FSM__Z21b2SimplexCache_deletePvP8_AS3_Val();
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
               mstate.esp -= 4;
               this.i0 = cmodule.Box2D.__2E_str26233;
               mstate.esp -= 12;
               this.i1 = li32(mstate.ebp + 12);
               this.i2 = mstate.ebp + -4;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               si32(this.i2,mstate.esp + 8);
               state = 1;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_ArrayValue]();
               return;
            case 1:
               mstate.esp += 12;
               this.i0 = li32(mstate.ebp + -4);
               if(this.i0 != 0)
               {
                  this.i1 = 0;
                  mstate.esp -= 8;
                  si32(this.i0,mstate.esp);
                  si32(this.i1,mstate.esp + 4);
                  state = 2;
                  mstate.esp -= 4;
                  FSM_pubrealloc.start();
                  return;
               }
               break;
            case 2:
               this.i0 = mstate.eax;
               mstate.esp += 8;
               break;
            case 3:
               this.i0 = mstate.eax;
               mstate.eax = this.i0;
               mstate.esp = mstate.ebp;
               mstate.ebp = li32(mstate.esp);
               mstate.esp += 4;
               mstate.esp += 4;
               mstate.gworker = caller;
               return;
            default:
               throw "Invalid state in __Z21b2SimplexCache_deletePvP8_AS3_Val";
         }
         state = 3;
         mstate.esp -= 4;
         mstate.funcs[cmodule.Box2D._AS3_Null]();
      }
   }
}

