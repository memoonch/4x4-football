package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.system.*;
   import flash.text.*;
   import flash.utils.*;
   
   public final class FSM__Z15b2LoopShape_newPvP8_AS3_Val extends Machine
   {
      
      public static const intRegCount:int = 2;
      
      public static const NumberRegCount:int = 1;
      
      public var i0:int;
      
      public var i1:int;
      
      public var f0:Number;
      
      public function FSM__Z15b2LoopShape_newPvP8_AS3_Val()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__Z15b2LoopShape_newPvP8_AS3_Val = null;
         _loc1_ = new FSM__Z15b2LoopShape_newPvP8_AS3_Val();
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
               this.i0 = 24;
               this.i1 = li32(cmodule.Box2D._as3_ptr);
               mstate.esp -= 4;
               si32(this.i1,mstate.esp);
               state = 1;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Release]();
               return;
            case 1:
               mstate.esp += 4;
               mstate.esp -= 4;
               si32(this.i0,mstate.esp);
               this.i0 = cmodule.Box2D.__ZTV11b2LoopShape;
               state = 2;
               mstate.esp -= 4;
               FSM__Znwm.start();
               return;
            case 2:
               this.i1 = mstate.eax;
               mstate.esp += 4;
               this.i0 += 8;
               si32(this.i0,this.i1);
               this.i0 = 3;
               si32(this.i0,this.i1 + 4);
               this.f0 = lf32(cmodule.Box2D._b2_polygonRadius);
               sf32(this.f0,this.i1 + 8);
               this.i0 = 0;
               si32(this.i0,this.i1 + 16);
               si32(this.i0,this.i1 + 20);
               mstate.esp -= 4;
               si32(this.i1,mstate.esp);
               state = 3;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Ptr]();
               return;
            case 3:
               this.i0 = mstate.eax;
               mstate.esp += 4;
               si32(this.i0,cmodule.Box2D._as3_ptr);
               mstate.eax = this.i0;
               mstate.esp = mstate.ebp;
               mstate.ebp = li32(mstate.esp);
               mstate.esp += 4;
               mstate.esp += 4;
               mstate.gworker = caller;
               return;
            default:
               throw "Invalid state in __Z15b2LoopShape_newPvP8_AS3_Val";
         }
      }
   }
}

