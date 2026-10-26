package cmodule.Box2D
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.system.*;
   import flash.text.*;
   import flash.utils.*;
   
   public final class FSM__Z18b2WeldJointDef_newPvP8_AS3_Val extends Machine
   {
      
      public static const intRegCount:int = 3;
      
      public static const NumberRegCount:int = 0;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public function FSM__Z18b2WeldJointDef_newPvP8_AS3_Val()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__Z18b2WeldJointDef_newPvP8_AS3_Val = null;
         _loc1_ = new FSM__Z18b2WeldJointDef_newPvP8_AS3_Val();
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
               this.i0 = 40;
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
               state = 2;
               mstate.esp -= 4;
               FSM__Znwm.start();
               return;
            case 2:
               this.i0 = mstate.eax;
               mstate.esp += 4;
               this.i1 = 0;
               si32(this.i1,this.i0 + 4);
               si32(this.i1,this.i0 + 8);
               si32(this.i1,this.i0 + 12);
               si8(this.i1,this.i0 + 16);
               this.i2 = 8;
               si32(this.i2,this.i0);
               si32(this.i1,this.i0 + 20);
               si32(this.i1,this.i0 + 24);
               si32(this.i1,this.i0 + 28);
               si32(this.i1,this.i0 + 32);
               si32(this.i1,this.i0 + 36);
               mstate.esp -= 4;
               si32(this.i0,mstate.esp);
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
               throw "Invalid state in __Z18b2WeldJointDef_newPvP8_AS3_Val";
         }
      }
   }
}

