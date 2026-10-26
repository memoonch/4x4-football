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
   
   public final class FSM__ZN9b2Fixture11SynchronizeEP12b2BroadPhaseRK11b2TransformS4_ extends Machine
   {
      
      public static const intRegCount:int = 32;
      
      public static const NumberRegCount:int = 10;
      
      public var i21:int;
      
      public var i30:int;
      
      public var i31:int;
      
      public var f0:Number;
      
      public var f1:Number;
      
      public var f3:Number;
      
      public var f5:Number;
      
      public var f7:Number;
      
      public var f2:Number;
      
      public var f4:Number;
      
      public var f6:Number;
      
      public var f8:Number;
      
      public var f9:Number;
      
      public var i10:int;
      
      public var i11:int;
      
      public var i12:int;
      
      public var i13:int;
      
      public var i14:int;
      
      public var i15:int;
      
      public var i17:int;
      
      public var i19:int;
      
      public var i16:int;
      
      public var i18:int;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i22:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public var i6:int;
      
      public var i7:int;
      
      public var i8:int;
      
      public var i2:int;
      
      public var i23:int;
      
      public var i24:int;
      
      public var i25:int;
      
      public var i26:int;
      
      public var i27:int;
      
      public var i20:int;
      
      public var i9:int;
      
      public var i28:int;
      
      public var i29:int;
      
      public function FSM__ZN9b2Fixture11SynchronizeEP12b2BroadPhaseRK11b2TransformS4_()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZN9b2Fixture11SynchronizeEP12b2BroadPhaseRK11b2TransformS4_ = null;
         _loc1_ = new FSM__ZN9b2Fixture11SynchronizeEP12b2BroadPhaseRK11b2TransformS4_();
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
               this.i0 = li32(mstate.ebp + 8);
               this.i1 = li32(mstate.ebp + 12);
               this.i2 = li32(mstate.ebp + 16);
               this.i3 = li32(mstate.ebp + 20);
               this.i4 = li32(this.i0 + 32);
               this.i5 = this.i0 + 32;
               if(this.i4 < 1)
               {
                  break;
               }
               this.i4 = mstate.ebp + -16;
               this.i6 = mstate.ebp + -32;
               this.i7 = this.i6 + 12;
               this.i8 = this.i4 + 12;
               this.i9 = 0;
               this.i10 = this.i1 + 4;
               this.i11 = this.i1 + 12;
               this.i12 = this.i1 + 32;
               this.i13 = this.i1 + 36;
               this.i14 = this.i1 + 40;
               this.i15 = this.i2 + 4;
               this.i16 = this.i3 + 4;
               this.i17 = this.i4 + 8;
               this.i18 = this.i6 + 8;
               this.i19 = this.i4 + 4;
               this.i20 = this.i6 + 4;
               this.i21 = this.i0 + 16;
               this.i0 += 28;
               this.i22 = this.i2;
               this.i23 = this.i3;
               this.i24 = this.i9;
               §§goto(addr0199);
               break;
            case 1:
               mstate.esp += 16;
               this.i25 = li32(this.i21);
               this.i26 = li32(this.i25);
               this.i26 = li32(this.i26 + 24);
               this.i28 = li32(this.i27 + 20);
               mstate.esp -= 16;
               this.i29 = mstate.ebp + -32;
               si32(this.i25,mstate.esp);
               si32(this.i29,mstate.esp + 4);
               si32(this.i3,mstate.esp + 8);
               si32(this.i28,mstate.esp + 12);
               state = 2;
               mstate.esp -= 4;
               mstate.funcs[this.i26]();
               return;
            case 2:
               mstate.esp += 16;
               this.f0 = lf32(this.i6);
               this.f1 = lf32(this.i4);
               this.f0 = this.f1 < this.f0 ? this.f1 : this.f0;
               this.f1 = lf32(this.i20);
               this.f2 = lf32(this.i19);
               this.f1 = this.f2 < this.f1 ? this.f2 : this.f1;
               this.f0 = this.f0;
               sf32(this.f0,this.i27);
               this.f1 = this.f1;
               sf32(this.f1,this.i27 + 4);
               this.f2 = lf32(this.i18);
               this.f3 = lf32(this.i17);
               this.f2 = this.f3 > this.f2 ? this.f3 : this.f2;
               this.f3 = lf32(this.i7);
               this.f4 = lf32(this.i8);
               this.f3 = this.f4 > this.f3 ? this.f4 : this.f3;
               this.f2 = this.f2;
               sf32(this.f2,this.i27 + 8);
               this.f3 = this.f3;
               sf32(this.f3,this.i27 + 12);
               this.f4 = lf32(this.i16);
               this.f5 = lf32(this.i15);
               this.f6 = lf32(this.i23);
               this.f7 = lf32(this.i22);
               this.i25 = li32(this.i27 + 24);
               this.f4 -= this.f5;
               this.f5 = this.f6 - this.f7;
               this.f4 = this.f4;
               this.f5 = this.f5;
               this.i26 = this.i27 + 12;
               this.i28 = this.i27 + 8;
               this.i29 = this.i27 + 4;
               while(true)
               {
                  if(this.i25 >= 0)
                  {
                     this.i30 = li32(this.i11);
                     if(this.i30 > this.i25)
                     {
                        §§goto(addr05ad);
                     }
                  }
                  this.i9 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i24 = cmodule.Box2D.__2E_str1670;
                  this.i0 = cmodule.Box2D.__2E_str3210;
                  this.i1 = cmodule.Box2D.__ZZN13b2DynamicTree9MoveProxyEiRK6b2AABBRK6b2Vec2E8__func__;
                  this.i2 = cmodule.Box2D.__2E_str5212;
                  this.i3 = 128;
                  break;
               }
               this.i9 += 176;
               si32(this.i9,mstate.esp);
               si32(this.i24,mstate.esp + 4);
               si32(this.i0,mstate.esp + 8);
               si32(this.i1,mstate.esp + 12);
               si32(this.i2,mstate.esp + 16);
               si32(this.i3,mstate.esp + 20);
               state = 3;
               mstate.esp -= 4;
               FSM_fprintf.start();
               return;
            case 4:
               addr05ad:
               this.i30 = li32(this.i10);
               this.i31 = this.i25 * 36;
               this.i31 = this.i30 + this.i31;
               this.i31 = li32(this.i31 + 24);
               if(this.i31 != -1)
               {
                  this.i9 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i24 = cmodule.Box2D.__2E_str1670;
                  this.i0 = cmodule.Box2D.__2E_str107;
                  this.i1 = cmodule.Box2D.__ZZN13b2DynamicTree9MoveProxyEiRK6b2AABBRK6b2Vec2E8__func__;
                  this.i2 = cmodule.Box2D.__2E_str5212;
                  this.i3 = 130;
                  break loop1;
               }
               this.i31 = this.i25 * 36;
               this.i31 = this.i30 + this.i31;
               this.f6 = lf32(this.i31);
               this.f0 = this.f0;
               if(this.f6 <= this.f0)
               {
                  this.i31 = this.i25 * 36;
                  this.i31 = this.i30 + this.i31;
                  this.f0 = lf32(this.i31 + 4);
                  this.f1 = this.f1;
                  if(this.f0 <= this.f1)
                  {
                     this.i31 = this.i25 * 36;
                     this.i31 = this.i30 + this.i31;
                     this.f0 = lf32(this.i31 + 8);
                     this.f1 = this.f2;
                     if(this.f1 <= this.f0)
                     {
                        this.i31 = this.i25 * 36;
                        this.i30 += this.i31;
                        this.f0 = lf32(this.i30 + 12);
                        this.f1 = this.f3;
                        if(this.f1 <= this.f0)
                        {
                           §§goto(addr0ba1);
                        }
                     }
                  }
               }
               this.f0 = 0;
               mstate.esp -= 8;
               si32(this.i1,mstate.esp);
               si32(this.i25,mstate.esp + 4);
               state = 5;
               mstate.esp -= 4;
               FSM__ZN13b2DynamicTree10RemoveLeafEi.start();
               return;
            case 3:
               mstate.esp += 24;
               state = 4;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 5:
               mstate.esp += 8;
               this.f1 = lf32(this.i27);
               this.f2 = lf32(cmodule.Box2D._b2_aabbExtension);
               this.f3 = lf32(cmodule.Box2D._b2_aabbMultiplier);
               this.f5 = this.f5;
               this.f6 = lf32(this.i29);
               this.f1 -= this.f2;
               this.f4 = this.f4;
               this.f5 *= this.f3;
               this.f7 = lf32(this.i28);
               this.f1 = this.f1;
               this.f6 -= this.f2;
               this.f3 = this.f4 * this.f3;
               this.f4 = this.f5;
               this.f5 = lf32(this.i26);
               this.f6 = this.f6;
               this.f7 += this.f2;
               this.f3 = this.f3;
               this.f1 = this.f1;
               this.f4 = this.f4;
               this.f8 = this.f1 + this.f4;
               this.f7 = this.f7;
               this.f2 = this.f5 + this.f2;
               this.f5 = this.f6;
               this.f3 = this.f3;
               this.f6 = this.f8;
               this.f8 = this.f5 + this.f3;
               this.f7 = this.f7;
               this.f2 = this.f2;
               this.f0 = this.f0;
               this.f8 = this.f8;
               this.f9 = this.f7 + this.f4;
               this.f2 = this.f2;
               this.f6 = this.f6;
               this.f0 = this.f0;
               this.i26 = li32(this.i10);
               this.f1 = this.f4 < this.f0 ? this.f6 : this.f1;
               this.f6 = this.f8;
               this.f8 = this.f9;
               this.f9 = this.f2 + this.f3;
               this.i27 = this.i25 * 36;
               this.f5 = this.f3 < this.f0 ? this.f6 : this.f5;
               this.f6 = this.f8;
               this.f8 = this.f9;
               this.f1 = this.f1;
               this.i26 += this.i27;
               this.f4 = this.f4 < this.f0 ? this.f7 : this.f6;
               this.f6 = this.f8;
               sf32(this.f1,this.i26);
               this.f1 = this.f5;
               this.f0 = this.f3 < this.f0 ? this.f2 : this.f6;
               sf32(this.f1,this.i26 + 4);
               this.f1 = this.f4;
               sf32(this.f1,this.i26 + 8);
               this.f0 = this.f0;
               sf32(this.f0,this.i26 + 12);
               mstate.esp -= 8;
               si32(this.i1,mstate.esp);
               si32(this.i25,mstate.esp + 4);
               state = 6;
               mstate.esp -= 4;
               FSM__ZN13b2DynamicTree10InsertLeafEi.start();
               return;
            case 6:
               mstate.esp += 8;
               this.i26 = li32(this.i14);
               this.i27 = li32(this.i13);
               if(this.i26 == this.i27)
               {
                  this.i28 = 0;
                  this.i29 = li32(this.i12);
                  this.i30 = this.i27 << 1;
                  si32(this.i30,this.i13);
                  mstate.esp -= 8;
                  this.i27 <<= 3;
                  si32(this.i28,mstate.esp);
                  si32(this.i27,mstate.esp + 4);
                  state = 7;
                  mstate.esp -= 4;
                  FSM_pubrealloc.start();
                  return;
               }
               §§goto(addr0b51);
               break;
            case 7:
               this.i27 = mstate.eax;
               mstate.esp += 8;
               si32(this.i27,this.i12);
               this.i26 <<= 2;
               cmodule.Box2D.memcpy(this.i27,this.i29,this.i26);
               mstate.esp -= 8;
               si32(this.i29,mstate.esp);
               si32(this.i28,mstate.esp + 4);
               state = 8;
               mstate.esp -= 4;
               FSM_pubrealloc.start();
               return;
            case 8:
               this.i26 = mstate.eax;
               mstate.esp += 8;
               addr0b51:
               this.i26 = li32(this.i14);
               this.i27 = li32(this.i12);
               this.i26 <<= 2;
               this.i26 = this.i27 + this.i26;
               si32(this.i25,this.i26);
               this.i25 = li32(this.i14);
               this.i25 += 1;
               si32(this.i25,this.i14);
               addr0ba1:
               this.i25 = li32(this.i5);
               this.i24 += 28;
               this.i9 += 1;
               if(this.i25 <= this.i9)
               {
                  break;
               }
               addr0199:
               this.i25 = mstate.ebp + -16;
               this.i26 = li32(this.i21);
               this.i27 = li32(this.i0);
               this.i27 += this.i24;
               this.i28 = li32(this.i26);
               this.i28 = li32(this.i28 + 24);
               this.i29 = li32(this.i27 + 20);
               mstate.esp -= 16;
               si32(this.i26,mstate.esp);
               si32(this.i25,mstate.esp + 4);
               si32(this.i2,mstate.esp + 8);
               si32(this.i29,mstate.esp + 12);
               state = 1;
               mstate.esp -= 4;
               mstate.funcs[this.i28]();
               return;
            default:
               throw "Invalid state in __ZN9b2Fixture11SynchronizeEP12b2BroadPhaseRK11b2TransformS4_";
         }
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp += 4;
         mstate.esp += 4;
         mstate.gworker = caller;
      }
   }
}

