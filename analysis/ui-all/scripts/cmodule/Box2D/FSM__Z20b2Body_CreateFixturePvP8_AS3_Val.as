package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.system.*;
   import flash.text.*;
   import flash.utils.*;
   
   public final class FSM__Z20b2Body_CreateFixturePvP8_AS3_Val extends Machine
   {
      
      public static const intRegCount:int = 13;
      
      public static const NumberRegCount:int = 2;
      
      public var i10:int;
      
      public var i11:int;
      
      public var i12:int;
      
      public var f1:Number;
      
      public var f0:Number;
      
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
      
      public function FSM__Z20b2Body_CreateFixturePvP8_AS3_Val()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__Z20b2Body_CreateFixturePvP8_AS3_Val = null;
         _loc1_ = new FSM__Z20b2Body_CreateFixturePvP8_AS3_Val();
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
               mstate.esp -= 12;
               this.i0 = cmodule.Box2D.__2E_str117310;
               mstate.esp -= 20;
               this.i1 = li32(mstate.ebp + 12);
               this.i2 = mstate.ebp + -12;
               this.i3 = mstate.ebp + -8;
               this.i4 = mstate.ebp + -4;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               si32(this.i4,mstate.esp + 8);
               si32(this.i3,mstate.esp + 12);
               si32(this.i2,mstate.esp + 16);
               state = 1;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_ArrayValue]();
               return;
            case 1:
               mstate.esp += 20;
               this.i0 = li32(mstate.ebp + -8);
               this.i1 = li32(this.i0 + 96);
               this.i2 = li32(this.i1 + 102868);
               this.i3 = li32(mstate.ebp + -12);
               this.i4 = this.i0 + 96;
               this.i2 &= 2;
               if(this.i2 != 0)
               {
                  this.i0 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i1 = cmodule.Box2D.__2E_str1670;
                  this.i3 = cmodule.Box2D.__2E_str54261;
                  this.i4 = cmodule.Box2D.__ZZN6b2Body13CreateFixtureEPK12b2FixtureDefE8__func__;
                  this.i2 = cmodule.Box2D.__2E_str53260;
                  this.i5 = 141;
                  this.i0 += 176;
                  si32(this.i0,mstate.esp);
                  si32(this.i1,mstate.esp + 4);
                  si32(this.i3,mstate.esp + 8);
                  si32(this.i4,mstate.esp + 12);
                  si32(this.i2,mstate.esp + 16);
                  si32(this.i5,mstate.esp + 20);
                  state = 2;
                  mstate.esp -= 4;
                  FSM_fprintf.start();
                  return;
               }
            case 3:
               this.i2 = 52;
               mstate.esp -= 8;
               si32(this.i1,mstate.esp);
               si32(this.i2,mstate.esp + 4);
               state = 4;
               mstate.esp -= 4;
               FSM__ZN16b2BlockAllocator8AllocateEi.start();
               return;
            case 2:
               mstate.esp += 24;
               state = 3;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 4:
               this.i2 = mstate.eax;
               mstate.esp += 8;
               this.i5 = this.i2;
               if(this.i2 != 0)
               {
                  this.i6 = 0;
                  si32(this.i6,this.i5 + 44);
                  si32(this.i6,this.i5 + 12);
                  si32(this.i6,this.i5 + 8);
                  si32(this.i6,this.i5 + 28);
                  si32(this.i6,this.i5 + 32);
                  si32(this.i6,this.i5 + 16);
                  si32(this.i6,this.i5 + 4);
                  si8(this.i6,this.i2);
                  si8(this.i6,this.i5 + 1);
                  si8(this.i6,this.i5 + 2);
                  si8(this.i6,this.i5 + 3);
                  si32(this.i6,this.i5 + 48);
               }
               this.i6 = 0;
               this.i7 = li32(this.i3 + 8);
               si32(this.i7,this.i5 + 44);
               this.f0 = lf32(this.i3 + 12);
               sf32(this.f0,this.i5 + 20);
               this.f0 = lf32(this.i3 + 16);
               sf32(this.f0,this.i5 + 24);
               si32(this.i0,this.i5 + 12);
               si32(this.i6,this.i5 + 8);
               this.i6 = li16(this.i3 + 26);
               si16(this.i6,this.i5 + 36);
               this.i6 = li16(this.i3 + 28);
               si16(this.i6,this.i5 + 38);
               this.i6 = li16(this.i3 + 30);
               si16(this.i6,this.i5 + 40);
               this.i6 = li8(this.i3 + 24);
               si8(this.i6,this.i5 + 42);
               this.i6 = li32(this.i3 + 4);
               this.i7 = li32(this.i6);
               this.i7 = li32(this.i7 + 8);
               mstate.esp -= 8;
               si32(this.i6,mstate.esp);
               si32(this.i1,mstate.esp + 4);
               state = 5;
               mstate.esp -= 4;
               mstate.funcs[this.i7]();
               return;
            case 5:
               this.i6 = mstate.eax;
               mstate.esp += 8;
               si32(this.i6,this.i5 + 16);
               this.i7 = li32(this.i6);
               this.i7 = li32(this.i7 + 12);
               mstate.esp -= 4;
               si32(this.i6,mstate.esp);
               state = 6;
               mstate.esp -= 4;
               mstate.funcs[this.i7]();
               return;
            case 6:
               this.i6 = mstate.eax;
               mstate.esp += 4;
               mstate.esp -= 8;
               this.i7 = this.i6 * 28;
               si32(this.i1,mstate.esp);
               si32(this.i7,mstate.esp + 4);
               state = 7;
               mstate.esp -= 4;
               FSM__ZN16b2BlockAllocator8AllocateEi.start();
               return;
            case 7:
               this.i1 = mstate.eax;
               mstate.esp += 8;
               si32(this.i1,this.i5 + 28);
               this.i1 = this.i5 + 28;
               this.i7 = this.i5 + 8;
               this.i8 = this.i5 + 12;
               if(this.i6 >= 1)
               {
                  this.i9 = 0;
                  this.i10 = this.i9;
                  do
                  {
                     this.i11 = 0;
                     this.i12 = li32(this.i1);
                     this.i12 += this.i10;
                     si32(this.i11,this.i12 + 16);
                     this.i11 = li32(this.i1);
                     this.i12 = -1;
                     this.i11 += this.i10;
                     si32(this.i12,this.i11 + 24);
                     this.i10 += 28;
                     this.i9 += 1;
                  }
                  while(this.i9 != this.i6);
               }
               this.i1 = 0;
               si32(this.i1,this.i5 + 32);
               this.f0 = lf32(this.i3 + 20);
               sf32(this.f0,this.i5 + 4);
               this.i1 = li16(this.i0 + 4);
               this.i3 = this.i5 + 4;
               this.i1 &= 32;
               if(this.i1 != 0)
               {
                  this.i1 = li32(this.i4);
                  mstate.esp -= 12;
                  this.i6 = this.i0 + 12;
                  this.i1 += 102872;
                  si32(this.i5,mstate.esp);
                  si32(this.i1,mstate.esp + 4);
                  si32(this.i6,mstate.esp + 8);
                  state = 8;
                  mstate.esp -= 4;
                  FSM__ZN9b2Fixture13CreateProxiesEP12b2BroadPhaseRK11b2Transform.start();
                  return;
               }
               addr0752:
               this.f0 = 0;
               this.i1 = li32(this.i0 + 108);
               si32(this.i1,this.i7);
               si32(this.i5,this.i0 + 108);
               this.i1 = li32(this.i0 + 112);
               this.i1 += 1;
               si32(this.i1,this.i0 + 112);
               this.f0 = this.f0;
               si32(this.i0,this.i8);
               this.f1 = lf32(this.i3);
               this.f0 = this.f0;
               if(this.f1 > this.f0)
               {
                  mstate.esp -= 4;
                  si32(this.i0,mstate.esp);
                  state = 9;
                  mstate.esp -= 4;
                  FSM__ZN6b2Body13ResetMassDataEv.start();
                  return;
               }
               break;
            case 8:
               mstate.esp += 12;
               §§goto(addr0752);
            case 9:
               mstate.esp += 4;
               break;
            case 10:
               mstate.esp += 4;
               mstate.esp -= 4;
               si32(this.i2,mstate.esp);
               state = 11;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Ptr]();
               return;
            case 11:
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
               throw "Invalid state in __Z20b2Body_CreateFixturePvP8_AS3_Val";
         }
         this.i0 = li32(this.i4);
         this.i1 = li32(this.i0 + 102868);
         this.i1 |= 1;
         si32(this.i1,this.i0 + 102868);
         this.i0 = li32(mstate.ebp + -4);
         si32(this.i0,this.i5 + 44);
         this.i0 = li32(cmodule.Box2D._as3_ptr);
         mstate.esp -= 4;
         si32(this.i0,mstate.esp);
         state = 10;
         mstate.esp -= 4;
         mstate.funcs[cmodule.Box2D._AS3_Release]();
      }
   }
}

