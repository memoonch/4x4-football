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
   
   public final class FSM__Z15b2World_RayCastPvP8_AS3_Val extends Machine
   {
      
      public static const intRegCount:int = 26;
      
      public static const NumberRegCount:int = 24;
      
      public var f10:Number;
      
      public var f11:Number;
      
      public var f12:Number;
      
      public var f13:Number;
      
      public var f14:Number;
      
      public var f16:Number;
      
      public var f18:Number;
      
      public var f15:Number;
      
      public var f17:Number;
      
      public var f19:Number;
      
      public var f21:Number;
      
      public var f23:Number;
      
      public var f20:Number;
      
      public var f22:Number;
      
      public var i10:int;
      
      public var i11:int;
      
      public var i12:int;
      
      public var i13:int;
      
      public var i14:int;
      
      public var i15:int;
      
      public var i16:int;
      
      public var i17:int;
      
      public var i18:int;
      
      public var i19:int;
      
      public var i20:int;
      
      public var i21:int;
      
      public var i22:int;
      
      public var i23:int;
      
      public var i24:int;
      
      public var i25:int;
      
      public var f0:Number;
      
      public var f1:Number;
      
      public var f2:Number;
      
      public var f3:Number;
      
      public var f4:Number;
      
      public var f5:Number;
      
      public var f7:Number;
      
      public var f9:Number;
      
      public var f6:Number;
      
      public var f8:Number;
      
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
      
      public function FSM__Z15b2World_RayCastPvP8_AS3_Val()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__Z15b2World_RayCastPvP8_AS3_Val = null;
         _loc1_ = new FSM__Z15b2World_RayCastPvP8_AS3_Val();
         cmodule.Box2D.gstate.gworker = _loc1_;
      }
      
      final override public function work() : void
      {
         loop2:
         switch(state)
         {
            case 0:
               mstate.esp -= 4;
               si32(mstate.ebp,mstate.esp);
               mstate.ebp = mstate.esp;
               mstate.esp -= 1152;
               this.i0 = cmodule.Box2D.__ZTV15RayCastCallback;
               this.i0 += 8;
               si32(this.i0,mstate.ebp + -1152);
               mstate.esp -= 32;
               this.i0 = li32(mstate.ebp + 12);
               this.i1 = cmodule.Box2D.__2E_str126318;
               this.i2 = mstate.ebp + -1136;
               this.i3 = mstate.ebp + -1120;
               this.i4 = mstate.ebp + -1128;
               this.i5 = mstate.ebp + -1112;
               this.i6 = mstate.ebp + -1140;
               this.i7 = mstate.ebp + -1100;
               si32(this.i0,mstate.esp);
               si32(this.i1,mstate.esp + 4);
               si32(this.i7,mstate.esp + 8);
               si32(this.i6,mstate.esp + 12);
               si32(this.i5,mstate.esp + 16);
               si32(this.i4,mstate.esp + 20);
               si32(this.i3,mstate.esp + 24);
               si32(this.i2,mstate.esp + 28);
               state = 1;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_ArrayValue]();
               return;
            case 1:
               mstate.esp += 32;
               this.f0 = 0;
               this.f1 = lf64(mstate.ebp + -1128);
               this.f2 = lf64(mstate.ebp + -1112);
               this.f3 = lf64(mstate.ebp + -1136);
               this.f4 = lf64(mstate.ebp + -1120);
               this.f4 = this.f4;
               this.f3 = this.f3;
               this.f2 = this.f2;
               this.f1 = this.f1;
               this.f5 = this.f1;
               this.f6 = this.f3;
               this.f7 = this.f2;
               this.f8 = this.f4;
               this.f5 = this.f6 - this.f5;
               this.f6 = this.f8 - this.f7;
               this.f5 = this.f5;
               this.f6 = this.f6;
               this.f7 = this.f5;
               this.f8 = this.f6;
               this.f7 *= this.f7;
               this.f8 *= this.f8;
               this.i0 = li32(mstate.ebp + -1140);
               this.f7 = this.f7;
               this.f8 = this.f8;
               this.f7 = this.f7;
               this.f8 = this.f8;
               si32(this.i0,mstate.ebp + -1148);
               this.f7 = this.f8 + this.f7;
               this.i0 = li32(mstate.ebp + -1100);
               this.f7 = this.f7;
               this.i1 = mstate.ebp + -1152;
               this.f0 = this.f0;
               this.f0 = this.f0;
               this.f8 = this.f7;
               if(this.f8 <= this.f0)
               {
                  this.i0 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i1 = cmodule.Box2D.__2E_str1670;
                  this.i2 = cmodule.Box2D.__2E_str147;
                  this.i3 = cmodule.Box2D.__ZZNK14b2PolygonShape7RayCastEP15b2RayCastOutputRK14b2RayCastInputRK11b2TransformiE8__func__;
                  this.i4 = cmodule.Box2D.__2E_str2209;
                  this.i5 = 192;
                  this.i0 += 176;
                  si32(this.i0,mstate.esp);
                  si32(this.i1,mstate.esp + 4);
                  si32(this.i2,mstate.esp + 8);
                  si32(this.i3,mstate.esp + 12);
                  si32(this.i4,mstate.esp + 16);
                  si32(this.i5,mstate.esp + 20);
                  state = 2;
                  mstate.esp -= 4;
                  FSM_fprintf.start();
                  return;
               }
            case 3:
               this.f0 = 1.19209e-7;
               this.f7 = this.f7;
               this.f7 = Math.sqrt(this.f7);
               this.f7 = this.f7;
               this.f0 = this.f0;
               this.f0 = this.f0;
               this.f8 = this.f7;
               if(this.f8 < this.f0)
               {
                  this.f7 = this.f6;
                  this.f0 = this.f5;
               }
               else
               {
                  this.f0 = 1;
                  this.f0 = this.f0;
                  this.f7 = this.f7;
                  this.f0 = this.f0;
                  this.f0 /= this.f7;
                  this.f0 = this.f0;
                  this.f7 = this.f6;
                  this.f0 = this.f0;
                  this.f8 = this.f5;
                  this.f7 *= this.f0;
                  this.f0 = this.f8 * this.f0;
                  this.f7 = this.f7;
                  this.f0 = this.f0;
               }
               this.i2 = mstate.ebp + -1040;
               this.i3 = this.i2 + 4;
               this.f0 = this.f0;
               this.f8 = this.f7;
               si32(this.i3,mstate.ebp + -1040);
               this.i4 = 0;
               this.f9 = this.f5;
               this.f10 = this.f1;
               this.f11 = this.f6;
               this.f12 = this.f2;
               this.f13 = -this.f0;
               this.f14 = -this.f8;
               this.f9 = this.f10 + this.f9;
               this.f11 = this.f12 + this.f11;
               this.f15 = 0;
               si32(this.i4,mstate.ebp + -12);
               this.i4 = 256;
               si32(this.i4,mstate.ebp + -8);
               this.f13 = this.f13;
               this.f14 = this.f14;
               this.f9 = this.f9;
               this.f11 = this.f11;
               this.f15 = this.f15;
               this.i4 = li32(this.i0 + 102872);
               this.f9 = this.f9;
               this.f11 = this.f11;
               this.f16 = this.f13;
               this.f15 = this.f15;
               this.f14 = this.f14;
               this.i5 = mstate.ebp + -1072;
               this.f0 = this.f16 <= this.f15 ? this.f0 : this.f16;
               this.f8 = this.f8 <= this.f15 ? this.f14 : this.f8;
               this.f14 = this.f10 < this.f9 ? this.f10 : this.f9;
               this.f9 = this.f10 > this.f9 ? this.f10 : this.f9;
               this.f10 = this.f12 < this.f11 ? this.f12 : this.f11;
               this.f11 = this.f12 > this.f11 ? this.f12 : this.f11;
               this.f12 = 1;
               this.i6 = mstate.ebp + -1096;
               this.i7 = mstate.ebp + -1088;
               si32(this.i4,mstate.ebp + -1036);
               this.i4 = 1;
               si32(this.i4,mstate.ebp + -12);
               this.i8 = this.i0 + 102876;
               this.f0 = this.f0;
               this.f8 = this.f8;
               this.f14 = this.f14;
               this.f9 = this.f9;
               this.f10 = this.f10;
               this.f11 = this.f11;
               this.f12 = this.f12;
               this.i9 = this.i5 + 12;
               this.i0 += 102884;
               this.i10 = mstate.ebp + -1152;
               this.i11 = this.i6 + 4;
               this.i12 = this.i7 + 8;
               this.i13 = this.i5 + 16;
               this.i14 = this.i5 + 8;
               this.i15 = this.i5 + 4;
               this.i16 = this.i2 + 1032;
               this.i17 = this.i2 + 1028;
               this.i18 = this.i8;
               this.i19 = this.i4;
               addr17da:
               this.f15 = this.f10;
               this.f10 = this.f9;
               this.f9 = this.f12;
               if(this.i4 >= 1)
               {
                  addr08f5:
                  this.i19 += -1;
                  si32(this.i19,this.i17);
                  this.i4 = li32(this.i2);
                  this.i20 = this.i19 << 2;
                  this.i20 = this.i4 + this.i20;
                  this.i20 = li32(this.i20);
                  if(this.i20 == -1)
                  {
                     this.f12 = this.f15;
                     while(true)
                     {
                        this.f15 = this.f10;
                        this.f16 = this.f9;
                        this.i4 = li32(this.i17);
                        if(this.i4 >= 1)
                        {
                           this.i19 = this.i4;
                           this.f10 = this.f12;
                           this.f9 = this.f15;
                           this.f12 = this.f16;
                           §§goto(addr17da);
                        }
                        else
                        {
                           addr1882:
                           this.i0 = li32(this.i2);
                           if(this.i0 == this.i3)
                           {
                              break loop2;
                           }
                        }
                        this.i1 = 0;
                        mstate.esp -= 8;
                        si32(this.i0,mstate.esp);
                        si32(this.i1,mstate.esp + 4);
                        state = 15;
                        mstate.esp -= 4;
                        FSM_pubrealloc.start();
                        return;
                        this.f12 = this.f15;
                     }
                     addr0806:
                     this.i0 = cmodule.Box2D.___sF;
                     mstate.esp -= 24;
                     this.i1 = cmodule.Box2D.__2E_str1670;
                     this.i2 = cmodule.Box2D.__2E_str38245;
                     this.i3 = cmodule.Box2D.__ZZN15b2GrowableStackIiLi256EE3PopEvE8__func__;
                     this.i4 = cmodule.Box2D.__2E_str37244;
                     this.i5 = 67;
                     this.i0 += 176;
                     si32(this.i0,mstate.esp);
                     si32(this.i1,mstate.esp + 4);
                     si32(this.i2,mstate.esp + 8);
                     si32(this.i3,mstate.esp + 12);
                     si32(this.i4,mstate.esp + 16);
                     si32(this.i5,mstate.esp + 20);
                     state = 4;
                     mstate.esp -= 4;
                     FSM_fprintf.start();
                     return;
                     addr1796:
                  }
                  this.f12 = 0;
                  this.i21 = li32(this.i8);
                  this.i22 = this.i20 * 36;
                  this.i22 = this.i21 + this.i22;
                  this.f16 = lf32(this.i22 + 4);
                  this.f17 = lf32(this.i22);
                  this.f18 = lf32(this.i22 + 8);
                  this.f19 = this.f10;
                  this.f20 = this.f16;
                  this.f21 = this.f11;
                  this.f22 = this.f17;
                  this.f19 = this.f20 - this.f19;
                  this.f20 = this.f22 - this.f21;
                  this.f21 = this.f18;
                  this.f22 = this.f15;
                  this.f21 = this.f22 - this.f21;
                  this.f19 = this.f19;
                  this.f20 = this.f20;
                  this.f21 = this.f21;
                  this.f12 = this.f12;
                  this.f12 = this.f12;
                  this.f21 = this.f21;
                  if(this.f21 <= this.f12)
                  {
                     this.f12 = 0;
                     this.i22 = this.i20 * 36;
                     this.i22 = this.i21 + this.i22;
                     this.f21 = lf32(this.i22 + 12);
                     this.f22 = this.f21;
                     this.f23 = this.f14;
                     this.f22 = this.f23 - this.f22;
                     this.f22 = this.f22;
                     this.f12 = this.f12;
                     this.f12 = this.f12;
                     this.f22 = this.f22;
                     while(true)
                     {
                        while(true)
                        {
                           if(this.f22 <= this.f12)
                           {
                              this.f12 = 0;
                              this.f12 = this.f12;
                              this.f12 = this.f12;
                              this.f20 = this.f20;
                              if(this.f20 <= this.f12)
                              {
                                 this.f12 = 0;
                                 this.f12 = this.f12;
                                 this.f12 = this.f12;
                                 this.f19 = this.f19;
                                 if(this.f19 <= this.f12)
                                 {
                                    this.f12 = 0.5;
                                    this.f16 = this.f16;
                                    this.f19 = this.f21;
                                    this.f17 = this.f17;
                                    this.f18 = this.f18;
                                    this.f20 = this.f16 + this.f19;
                                    this.f21 = this.f17 + this.f18;
                                    this.f20 = this.f20;
                                    this.f21 = this.f21;
                                    this.f12 = this.f12;
                                    this.f20 = this.f20;
                                    this.f12 = this.f12;
                                    this.f21 = this.f21;
                                    this.f20 *= this.f12;
                                    this.f21 *= this.f12;
                                    this.f20 = this.f20;
                                    this.f21 = this.f21;
                                    this.f20 = this.f20;
                                    this.f22 = this.f1;
                                    this.f21 = this.f21;
                                    this.f23 = this.f2;
                                    this.f20 = this.f22 - this.f20;
                                    this.f21 = this.f23 - this.f21;
                                    this.f20 = this.f20;
                                    this.f21 = this.f21;
                                    this.f20 = this.f20;
                                    this.f22 = this.f7;
                                    this.f21 = this.f21;
                                    this.f23 = this.f13;
                                    this.f20 = this.f22 * this.f20;
                                    this.f16 = this.f19 - this.f16;
                                    this.f19 = this.f23 * this.f21;
                                    this.f17 = this.f18 - this.f17;
                                    this.f18 = this.f20;
                                    this.f16 = this.f16;
                                    this.f19 = this.f19;
                                    this.f17 = this.f17;
                                    this.f16 = this.f16;
                                    this.f17 = this.f17;
                                    this.f18 = this.f18;
                                    this.f19 = this.f19;
                                    this.f18 = this.f19 + this.f18;
                                    this.f16 *= this.f12;
                                    this.f12 = this.f17 * this.f12;
                                    this.f17 = this.f18;
                                    this.f16 = this.f16;
                                    this.f12 = this.f12;
                                    this.f17 = this.f17;
                                    this.f16 = this.f16;
                                    this.f18 = this.f8;
                                    this.f12 = this.f12;
                                    this.f19 = this.f0;
                                    this.f20 = -this.f17;
                                    this.f16 = this.f18 * this.f16;
                                    this.f12 = this.f19 * this.f12;
                                    this.f18 = 0;
                                    this.f19 = this.f20;
                                    this.f16 = this.f16;
                                    this.f12 = this.f12;
                                    this.f18 = this.f18;
                                    this.f19 = this.f19;
                                    this.f18 = this.f18;
                                    this.f16 = this.f16;
                                    this.f12 = this.f12;
                                    this.f17 = this.f17 <= this.f18 ? this.f19 : this.f17;
                                    this.f12 += this.f16;
                                    this.f16 = this.f17;
                                    this.f12 = this.f12;
                                    this.f12 = this.f12;
                                    this.f16 = this.f16;
                                    this.f12 = this.f16 - this.f12;
                                    this.f12 = this.f12;
                                    this.f12 = this.f12;
                                    if(this.f12 <= this.f18)
                                    {
                                       this.i22 = this.i20 * 36;
                                       this.i22 = this.i21 + this.i22;
                                       this.i23 = li32(this.i22 + 24);
                                       this.i22 += 24;
                                       if(this.i23 == -1)
                                       {
                                          sf32(this.f2,this.i5);
                                          sf32(this.f1,this.i15);
                                          sf32(this.f4,this.i14);
                                          sf32(this.f3,this.i9);
                                          sf32(this.f9,this.i13);
                                          if(this.i20 >= 0)
                                          {
                                             this.i19 = li32(this.i0);
                                             if(this.i19 > this.i20)
                                             {
                                                §§goto(addr0f26);
                                             }
                                          }
                                          this.i19 = cmodule.Box2D.___sF;
                                          mstate.esp -= 24;
                                          this.i4 = cmodule.Box2D.__2E_str1670;
                                          this.i0 = cmodule.Box2D.__2E_str3210;
                                          this.i1 = cmodule.Box2D.__ZZNK13b2DynamicTree11GetUserDataEiE8__func__;
                                          this.i2 = cmodule.Box2D.__2E_str2209;
                                          this.i3 = 141;
                                          this.i19 += 176;
                                          si32(this.i19,mstate.esp);
                                          si32(this.i4,mstate.esp + 4);
                                          si32(this.i0,mstate.esp + 8);
                                          si32(this.i1,mstate.esp + 12);
                                          si32(this.i2,mstate.esp + 16);
                                          si32(this.i3,mstate.esp + 20);
                                          state = 6;
                                          mstate.esp -= 4;
                                          FSM_fprintf.start();
                                          return;
                                       }
                                       this.i23 = li32(this.i16);
                                       if(this.i19 == this.i23)
                                       {
                                          this.i24 = 0;
                                          this.i25 = this.i23 << 1;
                                          si32(this.i25,this.i16);
                                          mstate.esp -= 8;
                                          this.i23 <<= 3;
                                          si32(this.i24,mstate.esp);
                                          si32(this.i23,mstate.esp + 4);
                                          state = 10;
                                          mstate.esp -= 4;
                                          FSM_pubrealloc.start();
                                          return;
                                       }
                                       this.i19 = li32(this.i17);
                                       this.i4 = li32(this.i2);
                                       this.i22 = li32(this.i22);
                                       this.i19 <<= 2;
                                       this.i19 = this.i4 + this.i19;
                                       si32(this.i22,this.i19);
                                       this.i19 = li32(this.i17);
                                       this.i19 += 1;
                                       this.i4 = this.i20 * 36;
                                       this.i4 = this.i21 + this.i4;
                                       si32(this.i19,this.i17);
                                       this.i20 = li32(this.i16);
                                       this.i4 += 28;
                                       if(this.i19 == this.i20)
                                       {
                                          this.i21 = 0;
                                          this.i22 = li32(this.i2);
                                          this.i23 = this.i20 << 1;
                                          si32(this.i23,this.i16);
                                          mstate.esp -= 8;
                                          this.i20 <<= 3;
                                          si32(this.i21,mstate.esp);
                                          si32(this.i20,mstate.esp + 4);
                                          state = 12;
                                          mstate.esp -= 4;
                                          FSM_pubrealloc.start();
                                          return;
                                       }
                                       addr1735:
                                       while(true)
                                       {
                                          this.i19 = li32(this.i17);
                                          this.i20 = li32(this.i2);
                                          this.i4 = li32(this.i4);
                                          this.i19 <<= 2;
                                          this.i19 = this.i20 + this.i19;
                                          si32(this.i4,this.i19);
                                          this.i19 = li32(this.i17);
                                          this.i19 += 1;
                                          si32(this.i19,this.i17);
                                          this.f12 = this.f15;
                                          §§goto(addr1796);
                                       }
                                       break;
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr1882);
                     }
                     §§goto(addr0806);
                  }
                  addr0943:
                  §§goto(addr0944);
               }
               break loop3;
            case 5:
               §§goto(addr08f5);
            case 8:
               this.i19 = mstate.eax;
               mstate.esp += 20;
               this.i19 &= 255;
               if(this.i19 != 0)
               {
                  this.f12 = 1;
                  this.f16 = lf32(this.i12);
                  this.f12 = this.f12;
                  this.f17 = this.f16;
                  this.f12 = this.f12;
                  this.f12 -= this.f17;
                  this.f12 = this.f12;
                  this.f18 = lf32(this.i14);
                  this.f19 = lf32(this.i5);
                  this.f12 = this.f12;
                  this.f20 = lf32(this.i9);
                  this.f21 = lf32(this.i15);
                  this.f18 *= this.f17;
                  this.f19 *= this.f12;
                  this.f17 = this.f20 * this.f17;
                  this.f18 = this.f18;
                  this.f12 = this.f21 * this.f12;
                  this.f19 = this.f19;
                  this.f17 = this.f17;
                  this.f12 = this.f12;
                  this.f18 = this.f18;
                  this.f19 = this.f19;
                  this.f18 = this.f19 + this.f18;
                  this.f17 = this.f17;
                  this.f12 = this.f12;
                  this.f12 += this.f17;
                  this.f17 = this.f18;
                  sf32(this.f17,this.i6);
                  this.f12 = this.f12;
                  sf32(this.f12,this.i11);
                  this.i19 = li32(this.i10);
                  this.i19 = li32(this.i19 + 8);
                  mstate.esp -= 20;
                  this.i4 = mstate.ebp + -1096;
                  si32(this.i1,mstate.esp);
                  si32(this.i20,mstate.esp + 4);
                  si32(this.i4,mstate.esp + 8);
                  si32(this.i7,mstate.esp + 12);
                  sf32(this.f16,mstate.esp + 16);
                  state = 9;
                  mstate.esp -= 4;
                  mstate.funcs[this.i19]();
                  return;
               }
               this.f12 = lf32(this.i13);
               addr124f:
               this.f16 = this.f12;
               this.f12 = 0;
               this.f12 = this.f12;
               this.f12 = this.f12;
               this.f17 = this.f16;
               if(this.f17 == this.f12)
               {
                  this.i2 = li32(this.i2);
                  if(this.i2 != this.i3)
                  {
                     this.i3 = 0;
                     mstate.esp -= 8;
                     si32(this.i2,mstate.esp);
                     si32(this.i3,mstate.esp + 4);
                     state = 14;
                     mstate.esp -= 4;
                     FSM_pubrealloc.start();
                     return;
                  }
                  break;
               }
               this.f12 = 0;
               this.f12 = this.f12;
               this.f12 = this.f12;
               this.f17 = this.f16;
               while(true)
               {
                  if(this.f17 > this.f12)
                  {
                     this.f9 = this.f5;
                     this.f10 = this.f16;
                     this.f11 = this.f6;
                     this.f9 *= this.f10;
                     this.f10 = this.f11 * this.f10;
                     this.f9 = this.f9;
                     this.f10 = this.f10;
                     this.f9 = this.f9;
                     this.f11 = this.f1;
                     this.f10 = this.f10;
                     this.f12 = this.f2;
                     this.f9 = this.f11 + this.f9;
                     this.f10 = this.f12 + this.f10;
                     this.f9 = this.f9;
                     this.f10 = this.f10;
                     this.f9 = this.f9;
                     this.f14 = this.f10;
                     this.f15 = this.f11 < this.f9 ? this.f11 : this.f9;
                     this.f9 = this.f11 > this.f9 ? this.f11 : this.f9;
                     this.f11 = this.f12 < this.f14 ? this.f12 : this.f14;
                     this.f15 = this.f15;
                     this.f9 = this.f9;
                     this.f11 = this.f11;
                     if(this.f12 > this.f14)
                     {
                        this.f12 = this.f11;
                        this.f14 = this.f15;
                        this.f11 = this.f2;
                        this.f10 = this.f9;
                        this.f9 = this.f16;
                     }
                     else
                     {
                        this.f12 = this.f11;
                        this.f14 = this.f15;
                        this.f11 = this.f10;
                        this.f10 = this.f9;
                        this.f9 = this.f16;
                     }
                     §§goto(addr1796);
                  }
                  §§goto(addr0943);
               }
               §§goto(addr1882);
               break;
            case 9:
               this.f12 = mstate.st0;
               mstate.esp += 20;
               §§goto(addr124f);
            case 10:
               this.i23 = mstate.eax;
               mstate.esp += 8;
               si32(this.i23,this.i2);
               this.i24 = this.i4;
               this.i19 <<= 2;
               cmodule.Box2D.memcpy(this.i23,this.i24,this.i19);
               this.i19 = this.i4;
               if(this.i3 != this.i4)
               {
                  this.i4 = 0;
                  mstate.esp -= 8;
                  si32(this.i19,mstate.esp);
                  si32(this.i4,mstate.esp + 4);
                  state = 11;
                  mstate.esp -= 4;
                  FSM_pubrealloc.start();
                  return;
               }
               §§goto(addr1568);
               break;
            case 11:
               this.i19 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr1568);
            case 12:
               this.i20 = mstate.eax;
               mstate.esp += 8;
               si32(this.i20,this.i2);
               this.i21 = this.i22;
               this.i19 <<= 2;
               cmodule.Box2D.memcpy(this.i20,this.i21,this.i19);
               this.i19 = this.i22;
               if(this.i3 != this.i22)
               {
                  this.i20 = 0;
                  mstate.esp -= 8;
                  si32(this.i19,mstate.esp);
                  si32(this.i20,mstate.esp + 4);
                  state = 13;
                  mstate.esp -= 4;
                  FSM_pubrealloc.start();
                  return;
               }
               §§goto(addr1735);
               break;
            case 13:
               this.i19 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr1735);
            case 7:
               addr0f26:
               this.i19 = mstate.ebp + -1072;
               this.i4 = li32(this.i18);
               this.i20 *= 36;
               this.i4 += this.i20;
               this.i4 = li32(this.i4 + 16);
               this.i20 = li32(this.i4 + 16);
               this.i21 = li32(this.i20 + 16);
               this.i22 = li32(this.i21);
               this.i23 = li32(this.i20 + 12);
               this.i4 = li32(this.i4 + 20);
               this.i22 = li32(this.i22 + 20);
               mstate.esp -= 20;
               this.i24 = mstate.ebp + -1088;
               this.i23 += 12;
               si32(this.i21,mstate.esp);
               si32(this.i24,mstate.esp + 4);
               si32(this.i19,mstate.esp + 8);
               si32(this.i23,mstate.esp + 12);
               si32(this.i4,mstate.esp + 16);
               state = 8;
               mstate.esp -= 4;
               mstate.funcs[this.i22]();
               return;
            case 2:
               mstate.esp += 24;
               state = 3;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 4:
               mstate.esp += 24;
               state = 5;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 6:
               mstate.esp += 24;
               state = 7;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 14:
               this.i2 = mstate.eax;
               mstate.esp += 8;
               break;
            case 15:
               this.i0 = mstate.eax;
               mstate.esp += 8;
               break;
            case 16:
               mstate.esp += 4;
               state = 17;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Null]();
               return;
            case 17:
               this.i0 = mstate.eax;
               mstate.eax = this.i0;
               mstate.esp = mstate.ebp;
               mstate.ebp = li32(mstate.esp);
               mstate.esp += 4;
               mstate.esp += 4;
               mstate.gworker = caller;
               return;
            default:
               throw "Invalid state in __Z15b2World_RayCastPvP8_AS3_Val";
         }
         this.i0 = li32(mstate.ebp + -1140);
         mstate.esp -= 4;
         si32(this.i0,mstate.esp);
         state = 16;
         mstate.esp -= 4;
         mstate.funcs[cmodule.Box2D._AS3_Release]();
      }
   }
}

