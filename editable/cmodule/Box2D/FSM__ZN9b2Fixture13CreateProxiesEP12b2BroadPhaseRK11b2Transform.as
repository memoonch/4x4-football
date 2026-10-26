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
   
   public final class FSM__ZN9b2Fixture13CreateProxiesEP12b2BroadPhaseRK11b2Transform extends Machine
   {
      
      public static const intRegCount:int = 20;
      
      public static const NumberRegCount:int = 3;
      
      public var f1:Number;
      
      public var i10:int;
      
      public var i11:int;
      
      public var i12:int;
      
      public var i13:int;
      
      public var i14:int;
      
      public var i15:int;
      
      public var i17:int;
      
      public var i19:int;
      
      public var f2:Number;
      
      public var i16:int;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public var i6:int;
      
      public var i7:int;
      
      public var i8:int;
      
      public var i9:int;
      
      public var i18:int;
      
      public var f0:Number;
      
      public function FSM__ZN9b2Fixture13CreateProxiesEP12b2BroadPhaseRK11b2Transform()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZN9b2Fixture13CreateProxiesEP12b2BroadPhaseRK11b2Transform = null;
         _loc1_ = new FSM__ZN9b2Fixture13CreateProxiesEP12b2BroadPhaseRK11b2Transform();
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
               this.i1 = li32(mstate.ebp + 12);
               this.i2 = li32(mstate.ebp + 16);
               this.i3 = li32(this.i0 + 32);
               this.i4 = this.i0 + 32;
               if(this.i3 != 0)
               {
                  this.i0 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i1 = cmodule.Box2D.__2E_str1670;
                  this.i2 = cmodule.Box2D.__2E_str122315;
                  this.i4 = cmodule.Box2D.__ZZN9b2Fixture13CreateProxiesEP12b2BroadPhaseRK11b2TransformE8__func__;
                  this.i3 = cmodule.Box2D.__2E_str121314;
                  this.i5 = 132;
                  this.i0 += 176;
                  si32(this.i0,mstate.esp);
                  si32(this.i1,mstate.esp + 4);
                  si32(this.i2,mstate.esp + 8);
                  si32(this.i4,mstate.esp + 12);
                  si32(this.i3,mstate.esp + 16);
                  si32(this.i5,mstate.esp + 20);
                  state = 1;
                  mstate.esp -= 4;
                  FSM_fprintf.start();
                  return;
               }
            case 2:
               this.i3 = li32(this.i0 + 16);
               this.i5 = li32(this.i3);
               this.i5 = li32(this.i5 + 12);
               mstate.esp -= 4;
               si32(this.i3,mstate.esp);
               state = 3;
               mstate.esp -= 4;
               mstate.funcs[this.i5]();
               return;
            case 1:
               mstate.esp += 24;
               state = 2;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 3:
               this.i3 = mstate.eax;
               mstate.esp += 4;
               si32(this.i3,this.i4);
               this.i5 = this.i0 + 16;
               if(this.i3 < 1)
               {
                  break;
               }
               this.i3 = 0;
               this.i6 = this.i1 + 32;
               this.i7 = this.i1 + 36;
               this.i8 = this.i1 + 40;
               this.i9 = this.i1 + 28;
               this.i10 = this.i1 + 4;
               this.i11 = this.i0 + 28;
               this.i12 = this.i3;
               §§goto(addr0284);
               break;
            case 4:
               mstate.esp += 16;
               mstate.esp -= 4;
               si32(this.i1,mstate.esp);
               state = 5;
               mstate.esp -= 4;
               FSM__ZN13b2DynamicTree12AllocateNodeEv.start();
               return;
            case 5:
               this.i14 = mstate.eax;
               mstate.esp += 4;
               this.f0 = lf32(cmodule.Box2D._b2_aabbExtension);
               this.f1 = lf32(this.i17);
               this.f2 = lf32(this.i17 + 4);
               this.i15 = li32(this.i10);
               this.f1 -= this.f0;
               this.i18 = this.i14 * 36;
               this.f2 -= this.f0;
               this.f1 = this.f1;
               this.i15 += this.i18;
               sf32(this.f1,this.i15);
               this.f1 = this.f2;
               sf32(this.f1,this.i15 + 4);
               this.f1 = lf32(this.i17 + 8);
               this.i15 = li32(this.i10);
               this.f2 = lf32(this.i17 + 12);
               this.f1 += this.f0;
               this.f0 = this.f2 + this.f0;
               this.f1 = this.f1;
               this.i15 += this.i18;
               sf32(this.f1,this.i15 + 8);
               this.f0 = this.f0;
               sf32(this.f0,this.i15 + 12);
               this.i15 = li32(this.i10);
               this.i15 += this.i18;
               si32(this.i17,this.i15 + 16);
               this.i15 = li32(this.i10);
               this.i15 += this.i18;
               si32(this.i13,this.i15 + 32);
               mstate.esp -= 8;
               si32(this.i1,mstate.esp);
               si32(this.i14,mstate.esp + 4);
               state = 6;
               mstate.esp -= 4;
               FSM__ZN13b2DynamicTree10InsertLeafEi.start();
               return;
            case 6:
               mstate.esp += 8;
               this.i13 = li32(this.i9);
               this.i13 += 1;
               si32(this.i13,this.i9);
               this.i13 = li32(this.i8);
               this.i15 = li32(this.i7);
               if(this.i13 == this.i15)
               {
                  this.i17 = 0;
                  this.i18 = li32(this.i6);
                  this.i19 = this.i15 << 1;
                  si32(this.i19,this.i7);
                  mstate.esp -= 8;
                  this.i15 <<= 3;
                  si32(this.i17,mstate.esp);
                  si32(this.i15,mstate.esp + 4);
                  state = 7;
                  mstate.esp -= 4;
                  FSM_pubrealloc.start();
                  return;
               }
               addr066a:
               this.i13 = li32(this.i8);
               this.i15 = li32(this.i6);
               this.i13 <<= 2;
               this.i13 = this.i15 + this.i13;
               si32(this.i14,this.i13);
               this.i13 = li32(this.i8);
               this.i13 += 1;
               si32(this.i13,this.i8);
               this.i13 = this.i16 + this.i12;
               si32(this.i14,this.i13 + 24);
               si32(this.i0,this.i13 + 16);
               si32(this.i3,this.i13 + 20);
               this.i13 = li32(this.i4);
               this.i12 += 28;
               this.i3 += 1;
               if(this.i13 > this.i3)
               {
                  addr0284:
                  this.i13 = 1;
                  this.i14 = li32(this.i5);
                  this.i15 = li32(this.i14);
                  this.i16 = li32(this.i11);
                  this.i15 = li32(this.i15 + 24);
                  mstate.esp -= 16;
                  this.i17 = this.i16 + this.i12;
                  si32(this.i14,mstate.esp);
                  si32(this.i17,mstate.esp + 4);
                  si32(this.i2,mstate.esp + 8);
                  si32(this.i3,mstate.esp + 12);
                  state = 4;
                  mstate.esp -= 4;
                  mstate.funcs[this.i15]();
                  return;
               }
               break;
            case 7:
               this.i15 = mstate.eax;
               mstate.esp += 8;
               si32(this.i15,this.i6);
               this.i13 <<= 2;
               cmodule.Box2D.memcpy(this.i15,this.i18,this.i13);
               mstate.esp -= 8;
               si32(this.i18,mstate.esp);
               si32(this.i17,mstate.esp + 4);
               state = 8;
               mstate.esp -= 4;
               FSM_pubrealloc.start();
               return;
            case 8:
               this.i13 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr066a);
            default:
               throw "Invalid state in __ZN9b2Fixture13CreateProxiesEP12b2BroadPhaseRK11b2Transform";
         }
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp += 4;
         mstate.esp += 4;
         mstate.gworker = caller;
      }
   }
}

