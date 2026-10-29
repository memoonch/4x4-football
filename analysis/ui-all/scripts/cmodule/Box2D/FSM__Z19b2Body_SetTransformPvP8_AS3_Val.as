package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.system.*;
   import flash.text.*;
   import flash.utils.*;
   
   public final class FSM__Z19b2Body_SetTransformPvP8_AS3_Val extends Machine
   {
      
      public static const intRegCount:int = 6;
      
      public static const NumberRegCount:int = 8;
      
      public var f0:Number;
      
      public var f1:Number;
      
      public var f2:Number;
      
      public var f3:Number;
      
      public var f5:Number;
      
      public var f7:Number;
      
      public var f4:Number;
      
      public var f6:Number;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public function FSM__Z19b2Body_SetTransformPvP8_AS3_Val()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__Z19b2Body_SetTransformPvP8_AS3_Val = null;
         _loc1_ = new FSM__Z19b2Body_SetTransformPvP8_AS3_Val();
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
               mstate.esp -= 32;
               this.i0 = cmodule.Box2D.__2E_str125317;
               mstate.esp -= 24;
               this.i1 = li32(mstate.ebp + 12);
               this.i2 = mstate.ebp + -32;
               this.i3 = mstate.ebp + -24;
               this.i4 = mstate.ebp + -16;
               this.i5 = mstate.ebp + -4;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               si32(this.i5,mstate.esp + 8);
               si32(this.i4,mstate.esp + 12);
               si32(this.i3,mstate.esp + 16);
               si32(this.i2,mstate.esp + 20);
               state = 1;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_ArrayValue]();
               return;
            case 1:
               mstate.esp += 24;
               this.i0 = li32(mstate.ebp + -4);
               this.i1 = li32(this.i0 + 96);
               this.f0 = lf64(mstate.ebp + -24);
               this.f1 = lf64(mstate.ebp + -16);
               this.f2 = lf64(mstate.ebp + -32);
               this.i2 = li32(this.i1 + 102868);
               this.i3 = this.i0 + 96;
               this.f2 = this.f2;
               this.f1 = this.f1;
               this.f3 = this.f0;
               this.i2 &= 2;
               if(this.i2 != 0)
               {
                  this.i0 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i1 = cmodule.Box2D.__2E_str1670;
                  this.i3 = cmodule.Box2D.__2E_str54261;
                  this.i2 = cmodule.Box2D.__ZZN6b2Body12SetTransformERK6b2Vec2fE8__func__;
                  this.i4 = cmodule.Box2D.__2E_str53260;
                  this.i5 = 390;
                  this.i0 += 176;
                  si32(this.i0,mstate.esp);
                  si32(this.i1,mstate.esp + 4);
                  si32(this.i3,mstate.esp + 8);
                  si32(this.i2,mstate.esp + 12);
                  si32(this.i4,mstate.esp + 16);
                  si32(this.i5,mstate.esp + 20);
                  state = 2;
                  mstate.esp -= 4;
                  FSM_fprintf.start();
                  return;
               }
            case 3:
               this.f0 = this.f2;
               this.f0 = Math.cos(this.f0);
               this.f4 = this.f0;
               this.f0 = this.f2;
               this.f0 = Math.sin(this.f0);
               this.f5 = this.f0;
               this.f6 = -this.f5;
               sf32(this.f4,this.i0 + 20);
               this.f6 = this.f6;
               sf32(this.f6,this.i0 + 28);
               sf32(this.f0,this.i0 + 24);
               sf32(this.f4,this.i0 + 32);
               sf32(this.f1,this.i0 + 12);
               sf32(this.f3,this.i0 + 16);
               this.f0 = lf32(this.i0 + 36);
               this.f4 = this.f4;
               this.f6 = this.f4 * this.f0;
               this.f6 = this.f6;
               this.f0 = this.f5 * this.f0;
               this.f7 = lf32(this.i0 + 40);
               this.f0 = this.f0;
               this.f6 = this.f6;
               this.f1 = this.f1;
               this.f1 += this.f6;
               this.f5 = this.f7 * this.f5;
               this.f0 = this.f0;
               this.f3 = this.f3;
               this.f1 = this.f1;
               this.f0 = this.f3 + this.f0;
               this.f3 = this.f5;
               this.f4 *= this.f7;
               this.f0 = this.f0;
               this.f4 = this.f4;
               this.f3 = this.f3;
               this.f1 = this.f1;
               this.f1 -= this.f3;
               this.f3 = this.f4;
               this.f0 = this.f0;
               this.f0 += this.f3;
               this.f1 = this.f1;
               sf32(this.f1,this.i0 + 52);
               this.f0 = this.f0;
               sf32(this.f0,this.i0 + 56);
               sf32(this.f1,this.i0 + 44);
               sf32(this.f0,this.i0 + 48);
               sf32(this.f2,this.i0 + 64);
               sf32(this.f2,this.i0 + 60);
               this.i2 = li32(this.i0 + 108);
               this.i1 += 102872;
               if(this.i2 == 0)
               {
                  break;
               }
               this.i0 += 12;
               §§goto(addr04c7);
               break;
            case 2:
               mstate.esp += 24;
               state = 3;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 4:
               mstate.esp += 16;
               this.i2 = li32(this.i2 + 8);
               if(this.i2 != 0)
               {
                  addr04c7:
                  mstate.esp -= 16;
                  si32(this.i2,mstate.esp);
                  si32(this.i1,mstate.esp + 4);
                  si32(this.i0,mstate.esp + 8);
                  si32(this.i0,mstate.esp + 12);
                  state = 4;
                  mstate.esp -= 4;
                  FSM__ZN9b2Fixture11SynchronizeEP12b2BroadPhaseRK11b2TransformS4_.start();
                  return;
               }
               break;
            case 5:
               mstate.esp += 8;
               state = 6;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Null]();
               return;
            case 6:
               this.i0 = mstate.eax;
               mstate.eax = this.i0;
               mstate.esp = mstate.ebp;
               mstate.ebp = li32(mstate.esp);
               mstate.esp += 4;
               mstate.esp += 4;
               mstate.gworker = caller;
               return;
            default:
               throw "Invalid state in __Z19b2Body_SetTransformPvP8_AS3_Val";
         }
         this.i0 = li32(this.i3);
         mstate.esp -= 8;
         this.i0 += 102872;
         si32(this.i0,mstate.esp);
         si32(this.i0,mstate.esp + 4);
         state = 5;
         mstate.esp -= 4;
         FSM__ZN12b2BroadPhase11UpdatePairsI16b2ContactManagerEEvPT_.start();
      }
   }
}

