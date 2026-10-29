package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZNK20b2SeparationFunction17FindMinSeparationEPiS0_f extends Machine
   {
      
      public static const intRegCount:int = 10;
      
      public static const NumberRegCount:int = 24;
      
      public var f10:Number;
      
      public var f11:Number;
      
      public var f12:Number;
      
      public var f13:Number;
      
      public var f14:Number;
      
      public var f15:Number;
      
      public var f1:Number;
      
      public var f2:Number;
      
      public var f3:Number;
      
      public var f4:Number;
      
      public var f5:Number;
      
      public var f6:Number;
      
      public var f0:Number;
      
      public var f8:Number;
      
      public var f9:Number;
      
      public var f7:Number;
      
      public var f18:Number;
      
      public var f16:Number;
      
      public var f17:Number;
      
      public var f19:Number;
      
      public var f20:Number;
      
      public var f21:Number;
      
      public var f22:Number;
      
      public var f23:Number;
      
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
      
      public function FSM__ZNK20b2SeparationFunction17FindMinSeparationEPiS0_f()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZNK20b2SeparationFunction17FindMinSeparationEPiS0_f = null;
         _loc1_ = new FSM__ZNK20b2SeparationFunction17FindMinSeparationEPiS0_f();
         cmodule.Box2D.gstate.gworker = _loc1_;
      }
      
      final override public function work() : void
      {
         loop4:
         switch(state)
         {
            case 0:
               mstate.esp -= 4;
               si32(mstate.ebp,mstate.esp);
               mstate.ebp = mstate.esp;
               mstate.esp -= 0;
               this.f0 = 1;
               this.f0 = this.f0;
               this.f1 = lf32(mstate.ebp + 20);
               this.f0 = this.f0;
               this.f0 -= this.f1;
               this.f0 = this.f0;
               this.i0 = li32(mstate.ebp + 8);
               this.f2 = lf32(this.i0 + 36);
               this.f3 = lf32(this.i0 + 32);
               this.f4 = this.f0;
               this.f0 = this.f2 * this.f1;
               this.f2 = this.f4 * this.f3;
               this.f0 = this.f0;
               this.f2 = this.f2;
               this.f0 = this.f0;
               this.f2 = this.f2;
               this.f3 = lf32(this.i0 + 28);
               this.f5 = lf32(this.i0 + 24);
               this.f6 = lf32(this.i0 + 20);
               this.f7 = lf32(this.i0 + 16);
               this.f0 = this.f2 + this.f0;
               this.f2 = this.f0;
               this.f0 = this.f2;
               this.f0 = Math.cos(this.f0);
               this.f8 = this.f0;
               this.f0 = this.f2;
               this.f0 = Math.sin(this.f0);
               this.f2 = this.f0;
               this.f0 = lf32(this.i0 + 68);
               this.f9 = lf32(this.i0 + 72);
               this.f9 *= this.f1;
               this.f0 = this.f4 * this.f0;
               this.f9 = this.f9;
               this.f0 = this.f0;
               this.f9 = this.f9;
               this.f0 = this.f0;
               this.f10 = lf32(this.i0 + 64);
               this.f11 = lf32(this.i0 + 60);
               this.f12 = lf32(this.i0 + 56);
               this.f13 = lf32(this.i0 + 52);
               this.f0 += this.f9;
               this.f9 = lf32(this.i0 + 8);
               this.f14 = lf32(this.i0 + 12);
               this.f15 = this.f0;
               this.f0 = this.f15;
               this.f0 = Math.cos(this.f0);
               this.f16 = this.f0;
               this.f0 = this.f15;
               this.f0 = Math.sin(this.f0);
               this.f15 = this.f2;
               this.f17 = this.f8;
               this.f18 = this.f0;
               this.f19 = lf32(this.i0 + 44);
               this.f20 = lf32(this.i0 + 48);
               this.f21 = this.f16;
               this.f22 = this.f15 * this.f9;
               this.f9 = this.f17 * this.f9;
               this.f23 = this.f18 * this.f19;
               this.f19 = this.f21 * this.f19;
               this.f21 *= this.f20;
               this.f20 *= this.f18;
               this.f12 *= this.f4;
               this.f13 *= this.f4;
               this.f10 *= this.f1;
               this.f11 *= this.f1;
               this.f17 *= this.f14;
               this.f14 *= this.f15;
               this.f6 *= this.f4;
               this.f4 = this.f7 * this.f4;
               this.f3 *= this.f1;
               this.f1 = this.f5 * this.f1;
               this.f5 = this.f22;
               this.f7 = this.f9;
               this.f9 = this.f23;
               this.f19 = this.f19;
               this.f21 = this.f21;
               this.f20 = this.f20;
               this.f12 = this.f12;
               this.f13 = this.f13;
               this.f10 = this.f10;
               this.f11 = this.f11;
               this.f17 = this.f17;
               this.f14 = this.f14;
               this.f6 = this.f6;
               this.f4 = this.f4;
               this.f3 = this.f3;
               this.f1 = this.f1;
               this.f17 = this.f17;
               this.f5 = this.f5;
               this.f14 = this.f14;
               this.f7 = this.f7;
               this.f21 = this.f21;
               this.f9 = this.f9;
               this.f20 = this.f20;
               this.f19 = this.f19;
               this.f10 = this.f10;
               this.f12 = this.f12;
               this.f11 = this.f11;
               this.f13 = this.f13;
               this.f3 = this.f3;
               this.f6 = this.f6;
               this.f1 = this.f1;
               this.f4 = this.f4;
               this.f5 += this.f17;
               this.f7 -= this.f14;
               this.f9 += this.f21;
               this.f14 = this.f19 - this.f20;
               this.f10 = this.f12 + this.f10;
               this.f11 = this.f13 + this.f11;
               this.f3 = this.f6 + this.f3;
               this.f1 = this.f4 + this.f1;
               this.f4 = this.f5;
               this.f5 = this.f7;
               this.f6 = this.f9;
               this.f7 = this.f14;
               this.f9 = this.f10;
               this.f10 = this.f11;
               this.f3 = this.f3;
               this.f1 = this.f1;
               this.f4 = this.f4;
               this.f3 = this.f3;
               this.f5 = this.f5;
               this.f1 = this.f1;
               this.f6 = this.f6;
               this.f9 = this.f9;
               this.f7 = this.f7;
               this.f10 = this.f10;
               this.i1 = li32(this.i0 + 80);
               this.f3 -= this.f4;
               this.f1 -= this.f5;
               this.f4 = -this.f18;
               this.f5 = this.f9 - this.f6;
               this.f6 = this.f10 - this.f7;
               this.f7 = -this.f15;
               this.f3 = this.f3;
               this.f1 = this.f1;
               this.f4 = this.f4;
               this.f5 = this.f5;
               this.f6 = this.f6;
               this.f7 = this.f7;
               this.i2 = li32(mstate.ebp + 12);
               this.i3 = li32(mstate.ebp + 16);
               loop5:
               while(true)
               {
                  while(true)
                  {
                     if(this.i1 != 2)
                     {
                        if(this.i1 != 1)
                        {
                           if(this.i1 == 0)
                           {
                              this.f9 = lf32(this.i0 + 92);
                              this.f10 = this.f7;
                              this.f11 = this.f8;
                              this.f12 = lf32(this.i0 + 96);
                              this.f13 = this.f2;
                              this.f10 = this.f9 * this.f10;
                              this.f14 = this.f9 * this.f11;
                              this.f11 = this.f12 * this.f11;
                              this.f13 = this.f12 * this.f13;
                              this.f10 = this.f10;
                              this.f14 = this.f14;
                              this.f11 = this.f11;
                              this.f13 = this.f13;
                              this.f11 = this.f11;
                              this.f10 = this.f10;
                              this.f13 = this.f13;
                              this.f14 = this.f14;
                              this.f10 += this.f11;
                              this.f11 = this.f14 + this.f13;
                              this.f13 = -this.f9;
                              this.i1 = li32(this.i0);
                              this.f10 = this.f10;
                              this.f11 = this.f11;
                              this.f13 = this.f13;
                              this.i4 = li32(this.i1 + 16);
                              this.f14 = this.f0;
                              this.f15 = this.f16;
                              this.f13 = this.f13;
                              this.f17 = lf32(this.i4);
                              this.f18 = this.f11;
                              this.f19 = lf32(this.i4 + 4);
                              this.f20 = this.f10;
                              this.f19 *= this.f20;
                              this.f17 *= this.f18;
                              this.f13 = this.f15 * this.f13;
                              this.f9 *= this.f14;
                              this.f15 *= this.f12;
                              this.f12 = this.f14 * this.f12;
                              this.f14 = this.f19;
                              this.f17 = this.f17;
                              this.f13 = this.f13;
                              this.f9 = this.f9;
                              this.f15 = this.f15;
                              this.f12 = this.f12;
                              this.f14 = this.f14;
                              this.f17 = this.f17;
                              this.f12 = this.f12;
                              this.f13 = this.f13;
                              this.f15 = this.f15;
                              this.f9 = this.f9;
                              this.i1 = li32(this.i1 + 20);
                              this.f14 = this.f17 + this.f14;
                              this.f12 = this.f13 - this.f12;
                              this.f9 -= this.f15;
                              this.f13 = this.f14;
                              this.f12 = this.f12;
                              this.f9 = this.f9;
                              this.i5 = this.i0 + 96;
                              this.i6 = this.i0 + 92;
                              this.i7 = this.i0;
                              if(this.i1 <= 1)
                              {
                                 this.i1 = 0;
                              }
                              else
                              {
                                 this.i8 = 0;
                                 this.i9 = 1;
                                 do
                                 {
                                    this.f14 = lf32(this.i4 + 8);
                                    this.f15 = lf32(this.i4 + 12);
                                    this.f17 = this.f11;
                                    this.f18 = this.f10;
                                    this.f14 *= this.f17;
                                    this.f15 *= this.f18;
                                    this.f14 = this.f14;
                                    this.f15 = this.f15;
                                    this.f15 = this.f15;
                                    this.f14 = this.f14;
                                    this.f14 += this.f15;
                                    this.f14 = this.f14;
                                    this.f13 = this.f13;
                                    this.f14 = this.f14;
                                    this.f15 = this.f14 > this.f13 ? this.f14 : this.f13;
                                    this.i8 = this.f14 > this.f13 ? this.i9 : this.i8;
                                    this.f13 = this.f15;
                                    this.i9 += 1;
                                    this.i4 += 8;
                                 }
                                 while(this.i1 > this.i9);
                                 this.i1 = this.i8;
                              }
                              si32(this.i1,this.i2);
                              this.i1 = li32(this.i0 + 4);
                              this.i4 = li32(this.i1 + 16);
                              this.f10 = lf32(this.i4);
                              this.f11 = this.f12;
                              this.f13 = lf32(this.i4 + 4);
                              this.f14 = this.f9;
                              this.f10 *= this.f11;
                              this.f11 = this.f13 * this.f14;
                              this.f10 = this.f10;
                              this.f11 = this.f11;
                              this.f11 = this.f11;
                              this.f10 = this.f10;
                              this.i1 = li32(this.i1 + 20);
                              this.f10 += this.f11;
                              this.f10 = this.f10;
                              this.i0 += 4;
                              if(this.i1 <= 1)
                              {
                                 this.i1 = 0;
                              }
                              else
                              {
                                 this.i8 = 0;
                                 this.i9 = 1;
                                 do
                                 {
                                    this.f11 = lf32(this.i4 + 8);
                                    this.f13 = lf32(this.i4 + 12);
                                    this.f14 = this.f12;
                                    this.f15 = this.f9;
                                    this.f11 *= this.f14;
                                    this.f13 *= this.f15;
                                    this.f11 = this.f11;
                                    this.f13 = this.f13;
                                    this.f13 = this.f13;
                                    this.f11 = this.f11;
                                    this.f11 += this.f13;
                                    this.f11 = this.f11;
                                    this.f10 = this.f10;
                                    this.f11 = this.f11;
                                    this.f13 = this.f11 > this.f10 ? this.f11 : this.f10;
                                    this.i8 = this.f11 > this.f10 ? this.i9 : this.i8;
                                    this.f10 = this.f13;
                                    this.i9 += 1;
                                    this.i4 += 8;
                                 }
                                 while(this.i1 > this.i9);
                                 this.i1 = this.i8;
                              }
                              si32(this.i1,this.i3);
                              this.i2 = li32(this.i2);
                              this.i1 = li32(this.i7);
                              if(this.i2 >= 0)
                              {
                                 this.i4 = li32(this.i1 + 20);
                                 if(this.i4 > this.i2)
                                 {
                                    this.i1 = li32(this.i1 + 16);
                                    this.i2 <<= 3;
                                    this.i2 = this.i1 + this.i2;
                                    this.f9 = lf32(this.i2);
                                    this.f10 = lf32(this.i2 + 4);
                                    this.i2 = li32(this.i3);
                                    this.i0 = li32(this.i0);
                                    if(this.i2 >= 0)
                                    {
                                       this.i3 = li32(this.i0 + 20);
                                       if(this.i3 > this.i2)
                                       {
                                          this.i0 = li32(this.i0 + 16);
                                          this.i2 <<= 3;
                                          this.i0 += this.i2;
                                          this.f11 = lf32(this.i0);
                                          this.f0 = this.f0;
                                          this.f12 = this.f16;
                                          this.f8 = this.f8;
                                          this.f9 = this.f9;
                                          this.f2 = this.f2;
                                          this.f13 = this.f12 * this.f11;
                                          this.f0 *= this.f11;
                                          this.f11 = this.f8 * this.f9;
                                          this.f2 *= this.f9;
                                          this.f16 = this.f13;
                                          this.f0 = this.f0;
                                          this.f9 = this.f11;
                                          this.f2 = this.f2;
                                          this.f11 = lf32(this.i0 + 4);
                                          this.f4 = this.f4;
                                          this.f10 = this.f10;
                                          this.f7 = this.f7;
                                          this.f13 = this.f16;
                                          this.f6 = this.f6;
                                          this.f0 = this.f0;
                                          this.f5 = this.f5;
                                          this.f9 = this.f9;
                                          this.f1 = this.f1;
                                          this.f2 = this.f2;
                                          this.f3 = this.f3;
                                          this.f6 += this.f13;
                                          this.f0 = this.f5 + this.f0;
                                          this.f4 = this.f11 * this.f4;
                                          this.f5 = this.f12 * this.f11;
                                          this.f1 += this.f9;
                                          this.f8 *= this.f10;
                                          this.f2 = this.f3 + this.f2;
                                          this.f3 = this.f10 * this.f7;
                                          this.f6 = this.f6;
                                          this.f0 = this.f0;
                                          this.f4 = this.f4;
                                          this.f5 = this.f5;
                                          this.f1 = this.f1;
                                          this.f7 = this.f8;
                                          this.f2 = this.f2;
                                          this.f3 = this.f3;
                                          this.f4 = this.f4;
                                          this.f6 = this.f6;
                                          this.f5 = this.f5;
                                          this.f0 = this.f0;
                                          this.f3 = this.f3;
                                          this.f1 = this.f1;
                                          this.f7 = this.f7;
                                          this.f2 = this.f2;
                                          this.f4 = this.f6 + this.f4;
                                          this.f0 += this.f5;
                                          this.f1 += this.f3;
                                          this.f2 += this.f7;
                                          this.f3 = this.f4;
                                          this.f0 = this.f0;
                                          this.f1 = this.f1;
                                          this.f2 = this.f2;
                                          this.f1 = this.f1;
                                          this.f3 = this.f3;
                                          this.f2 = this.f2;
                                          this.f0 = this.f0;
                                          this.f1 = this.f3 - this.f1;
                                          this.f0 -= this.f2;
                                          this.f1 = this.f1;
                                          this.f0 = this.f0;
                                          this.f2 = lf32(this.i6);
                                          this.f3 = lf32(this.i5);
                                          this.f1 = this.f1;
                                          §§goto(addr16a2);
                                       }
                                    }
                                    this.i0 = cmodule.Box2D.___sF;
                                    mstate.esp -= 24;
                                    this.i2 = cmodule.Box2D.__2E_str1670;
                                    this.i3 = cmodule.Box2D.__2E_str1208;
                                    this.i5 = cmodule.Box2D.__ZZNK11b2LoopShape9GetVertexEiE8__func__;
                                    this.i6 = cmodule.Box2D.__2E_str4211;
                                    this.i1 = 103;
                                    this.i0 += 176;
                                    si32(this.i0,mstate.esp);
                                    si32(this.i2,mstate.esp + 4);
                                    si32(this.i3,mstate.esp + 8);
                                    si32(this.i5,mstate.esp + 12);
                                    si32(this.i6,mstate.esp + 16);
                                    si32(this.i1,mstate.esp + 20);
                                    break loop5;
                                 }
                              }
                              this.i0 = cmodule.Box2D.___sF;
                              mstate.esp -= 24;
                              this.i2 = cmodule.Box2D.__2E_str1670;
                              this.i1 = cmodule.Box2D.__2E_str1208;
                              this.i3 = cmodule.Box2D.__ZZNK11b2LoopShape9GetVertexEiE8__func__;
                              this.i5 = cmodule.Box2D.__2E_str4211;
                              this.i6 = 103;
                              this.i0 += 176;
                              si32(this.i0,mstate.esp);
                              si32(this.i2,mstate.esp + 4);
                              si32(this.i1,mstate.esp + 8);
                              si32(this.i3,mstate.esp + 12);
                              si32(this.i5,mstate.esp + 16);
                              si32(this.i6,mstate.esp + 20);
                              break loop5;
                           }
                           this.i0 = cmodule.Box2D.___sF;
                           mstate.esp -= 24;
                           this.i1 = cmodule.Box2D.__2E_str1670;
                           this.i2 = cmodule.Box2D.__2E_str46253;
                           this.i3 = cmodule.Box2D.__ZZNK20b2SeparationFunction17FindMinSeparationEPiS0_fE8__func__;
                           this.i4 = cmodule.Box2D.__2E_str128320;
                           this.i5 = 183;
                           addr1c25:
                           this.i0 += 176;
                           si32(this.i0,mstate.esp);
                           si32(this.i1,mstate.esp + 4);
                           si32(this.i2,mstate.esp + 8);
                           si32(this.i3,mstate.esp + 12);
                           break;
                        }
                        this.i1 = -1;
                        this.f9 = lf32(this.i0 + 92);
                        this.f8 = this.f8;
                        this.f10 = lf32(this.i0 + 96);
                        this.f7 = this.f7;
                        this.f11 = this.f8 * this.f9;
                        this.f12 = this.f10 * this.f7;
                        this.f11 = this.f11;
                        this.f12 = this.f12;
                        this.f2 = this.f2;
                        this.f12 = this.f12;
                        this.f11 = this.f11;
                        this.f9 = this.f2 * this.f9;
                        this.f11 += this.f12;
                        this.f10 = this.f8 * this.f10;
                        this.f9 = this.f9;
                        this.f11 = this.f11;
                        this.f10 = this.f10;
                        this.f12 = this.f11;
                        this.f10 = this.f10;
                        this.f9 = this.f9;
                        this.f9 += this.f10;
                        this.f10 = -this.f12;
                        this.f9 = this.f9;
                        this.f10 = this.f10;
                        this.f13 = this.f0;
                        this.f14 = this.f9;
                        this.f15 = this.f16;
                        this.f10 = this.f10;
                        this.f17 = lf32(this.i0 + 84);
                        this.f18 = lf32(this.i0 + 88);
                        this.f19 = this.f15 * this.f14;
                        this.f14 = this.f13 * this.f14;
                        this.f10 = this.f15 * this.f10;
                        this.f12 *= this.f13;
                        this.f13 = this.f19;
                        this.f14 = this.f14;
                        this.f10 = this.f10;
                        this.f12 = this.f12;
                        si32(this.i1,this.i2);
                        this.f13 = this.f13;
                        this.f12 = this.f12;
                        this.f14 = this.f14;
                        this.f10 = this.f10;
                        this.i2 = li32(this.i0 + 4);
                        this.f12 -= this.f13;
                        this.f10 -= this.f14;
                        this.f13 = this.f8 * this.f17;
                        this.f2 *= this.f17;
                        this.i1 = li32(this.i2 + 16);
                        this.f12 = this.f12;
                        this.f10 = this.f10;
                        this.f13 = this.f13;
                        this.f2 = this.f2;
                        this.f14 = lf32(this.i1);
                        this.f15 = this.f10;
                        this.f17 = lf32(this.i1 + 4);
                        this.f19 = this.f12;
                        this.f13 = this.f13;
                        this.f1 = this.f1;
                        this.f2 = this.f2;
                        this.f3 = this.f3;
                        this.f17 *= this.f19;
                        this.f14 *= this.f15;
                        this.f1 += this.f13;
                        this.f2 = this.f3 + this.f2;
                        this.f3 = this.f18 * this.f7;
                        this.f7 = this.f8 * this.f18;
                        this.f8 = this.f17;
                        this.f13 = this.f14;
                        this.f1 = this.f1;
                        this.f2 = this.f2;
                        this.f3 = this.f3;
                        this.f7 = this.f7;
                        this.f8 = this.f8;
                        this.f13 = this.f13;
                        this.f3 = this.f3;
                        this.f1 = this.f1;
                        this.f7 = this.f7;
                        this.f2 = this.f2;
                        this.i2 = li32(this.i2 + 20);
                        this.f8 = this.f13 + this.f8;
                        this.f1 += this.f3;
                        this.f2 += this.f7;
                        this.f3 = this.f8;
                        this.f1 = this.f1;
                        this.f2 = this.f2;
                        this.i0 += 4;
                        if(this.i2 <= 1)
                        {
                           this.i2 = 0;
                        }
                        else
                        {
                           this.i4 = 0;
                           this.i5 = 1;
                           do
                           {
                              this.f7 = lf32(this.i1 + 8);
                              this.f8 = lf32(this.i1 + 12);
                              this.f13 = this.f10;
                              this.f14 = this.f12;
                              this.f7 *= this.f13;
                              this.f8 *= this.f14;
                              this.f7 = this.f7;
                              this.f8 = this.f8;
                              this.f8 = this.f8;
                              this.f7 = this.f7;
                              this.f7 += this.f8;
                              this.f7 = this.f7;
                              this.f3 = this.f3;
                              this.f7 = this.f7;
                              this.f8 = this.f7 > this.f3 ? this.f7 : this.f3;
                              this.i4 = this.f7 > this.f3 ? this.i5 : this.i4;
                              this.f3 = this.f8;
                              this.i5 += 1;
                              this.i1 += 8;
                           }
                           while(this.i2 > this.i5);
                           this.i2 = this.i4;
                        }
                        si32(this.i2,this.i3);
                        this.i0 = li32(this.i0);
                        if(this.i2 >= 0)
                        {
                           this.i3 = li32(this.i0 + 20);
                           if(this.i3 > this.i2)
                           {
                              this.i0 = li32(this.i0 + 16);
                              this.i2 <<= 3;
                              this.i0 += this.i2;
                              this.f3 = lf32(this.i0);
                              this.f0 = this.f0;
                              this.f7 = this.f16;
                              this.f8 = this.f7 * this.f3;
                              this.f0 *= this.f3;
                              this.f3 = this.f8;
                              this.f0 = this.f0;
                              this.f8 = lf32(this.i0 + 4);
                              this.f4 = this.f4;
                              this.f3 = this.f3;
                              this.f6 = this.f6;
                              this.f0 = this.f0;
                              this.f5 = this.f5;
                              this.f3 = this.f6 + this.f3;
                              this.f0 = this.f5 + this.f0;
                              this.f4 = this.f8 * this.f4;
                              this.f5 = this.f7 * this.f8;
                              this.f3 = this.f3;
                              this.f0 = this.f0;
                              this.f4 = this.f4;
                              this.f5 = this.f5;
                              this.f4 = this.f4;
                              this.f3 = this.f3;
                              this.f5 = this.f5;
                              this.f0 = this.f0;
                              this.f3 += this.f4;
                              this.f0 += this.f5;
                              this.f3 = this.f3;
                              this.f0 = this.f0;
                              this.f1 = this.f1;
                              this.f3 = this.f3;
                              this.f2 = this.f2;
                              this.f0 = this.f0;
                              this.f1 = this.f3 - this.f1;
                              this.f0 -= this.f2;
                              this.f1 = this.f1;
                              this.f0 = this.f0;
                              this.f2 = this.f11;
                              addr1692:
                              this.f1 = this.f1;
                              this.f3 = this.f9;
                              §§goto(addr16a2);
                           }
                        }
                        this.i0 = cmodule.Box2D.___sF;
                        mstate.esp -= 24;
                        this.i2 = cmodule.Box2D.__2E_str1670;
                        this.i3 = cmodule.Box2D.__2E_str1208;
                        this.i1 = cmodule.Box2D.__ZZNK11b2LoopShape9GetVertexEiE8__func__;
                        this.i4 = cmodule.Box2D.__2E_str4211;
                        this.i5 = 103;
                        this.i0 += 176;
                        si32(this.i0,mstate.esp);
                        si32(this.i2,mstate.esp + 4);
                        si32(this.i3,mstate.esp + 8);
                        si32(this.i1,mstate.esp + 12);
                        break;
                        addr16a2:
                        this.f0 = this.f0;
                        this.f1 *= this.f2;
                        this.f0 *= this.f3;
                        this.f1 = this.f1;
                        this.f0 = this.f0;
                        this.f0 = this.f0;
                        this.f1 = this.f1;
                        this.f0 = this.f1 + this.f0;
                        this.f0 = this.f0;
                        mstate.st0 = this.f0;
                        mstate.esp = mstate.ebp;
                        mstate.ebp = li32(mstate.esp);
                        mstate.esp += 4;
                        mstate.esp += 4;
                        mstate.gworker = caller;
                        return;
                     }
                     this.i1 = -1;
                     this.f9 = lf32(this.i0 + 92);
                     this.f10 = this.f16;
                     this.f11 = lf32(this.i0 + 96);
                     this.f4 = this.f4;
                     this.f12 = this.f10 * this.f9;
                     this.f13 = this.f11 * this.f4;
                     this.f12 = this.f12;
                     this.f13 = this.f13;
                     this.f0 = this.f0;
                     this.f13 = this.f13;
                     this.f12 = this.f12;
                     this.f9 = this.f0 * this.f9;
                     this.f12 += this.f13;
                     this.f11 = this.f10 * this.f11;
                     this.f9 = this.f9;
                     this.f12 = this.f12;
                     this.f11 = this.f11;
                     this.f13 = this.f12;
                     this.f11 = this.f11;
                     this.f9 = this.f9;
                     this.f9 += this.f11;
                     this.f11 = -this.f13;
                     this.f9 = this.f9;
                     this.f11 = this.f11;
                     this.f14 = this.f2;
                     this.f15 = this.f9;
                     this.f16 = this.f8;
                     this.f11 = this.f11;
                     this.f17 = lf32(this.i0 + 84);
                     this.f18 = lf32(this.i0 + 88);
                     this.f19 = this.f16 * this.f15;
                     this.f15 = this.f14 * this.f15;
                     this.f11 = this.f16 * this.f11;
                     this.f13 *= this.f14;
                     this.f14 = this.f19;
                     this.f15 = this.f15;
                     this.f11 = this.f11;
                     this.f13 = this.f13;
                     si32(this.i1,this.i3);
                     this.f14 = this.f14;
                     this.f13 = this.f13;
                     this.f15 = this.f15;
                     this.f11 = this.f11;
                     this.i1 = li32(this.i0);
                     this.f13 -= this.f14;
                     this.f11 -= this.f15;
                     this.f14 = this.f10 * this.f17;
                     this.f0 *= this.f17;
                     this.i3 = li32(this.i1 + 16);
                     this.f13 = this.f13;
                     this.f11 = this.f11;
                     this.f14 = this.f14;
                     this.f0 = this.f0;
                     this.f15 = lf32(this.i3);
                     this.f16 = this.f11;
                     this.f17 = lf32(this.i3 + 4);
                     this.f19 = this.f13;
                     this.f14 = this.f14;
                     this.f6 = this.f6;
                     this.f0 = this.f0;
                     this.f5 = this.f5;
                     this.f17 *= this.f19;
                     this.f15 *= this.f16;
                     this.f6 += this.f14;
                     this.f0 = this.f5 + this.f0;
                     this.f4 = this.f18 * this.f4;
                     this.f5 = this.f10 * this.f18;
                     this.f10 = this.f17;
                     this.f14 = this.f15;
                     this.f6 = this.f6;
                     this.f0 = this.f0;
                     this.f4 = this.f4;
                     this.f5 = this.f5;
                     this.f10 = this.f10;
                     this.f14 = this.f14;
                     this.f4 = this.f4;
                     this.f6 = this.f6;
                     this.f5 = this.f5;
                     this.f0 = this.f0;
                     this.i1 = li32(this.i1 + 20);
                     this.f10 = this.f14 + this.f10;
                     this.f4 = this.f6 + this.f4;
                     this.f0 += this.f5;
                     this.f5 = this.f10;
                     this.f4 = this.f4;
                     this.f0 = this.f0;
                     if(this.i1 <= 1)
                     {
                        this.i1 = 0;
                     }
                     else
                     {
                        this.i4 = 0;
                        this.i5 = 1;
                        do
                        {
                           this.f6 = lf32(this.i3 + 8);
                           this.f10 = lf32(this.i3 + 12);
                           this.f14 = this.f11;
                           this.f15 = this.f13;
                           this.f6 *= this.f14;
                           this.f10 *= this.f15;
                           this.f6 = this.f6;
                           this.f10 = this.f10;
                           this.f10 = this.f10;
                           this.f6 = this.f6;
                           this.f6 += this.f10;
                           this.f6 = this.f6;
                           this.f5 = this.f5;
                           this.f6 = this.f6;
                           this.f10 = this.f6 > this.f5 ? this.f6 : this.f5;
                           this.i4 = this.f6 > this.f5 ? this.i5 : this.i4;
                           this.f5 = this.f10;
                           this.i5 += 1;
                           this.i3 += 8;
                        }
                        while(this.i1 > this.i5);
                        this.i1 = this.i4;
                     }
                     si32(this.i1,this.i2);
                     this.i0 = li32(this.i0);
                     if(this.i1 >= 0)
                     {
                        this.i2 = li32(this.i0 + 20);
                        if(this.i2 > this.i1)
                        {
                           break loop4;
                        }
                     }
                     this.i0 = cmodule.Box2D.___sF;
                     mstate.esp -= 24;
                     this.i1 = cmodule.Box2D.__2E_str1670;
                     this.i2 = cmodule.Box2D.__2E_str1208;
                     this.i3 = cmodule.Box2D.__ZZNK11b2LoopShape9GetVertexEiE8__func__;
                     this.i4 = cmodule.Box2D.__2E_str4211;
                     this.i5 = 103;
                     §§goto(addr1c25);
                  }
                  si32(this.i4,mstate.esp + 16);
                  si32(this.i5,mstate.esp + 20);
                  break;
               }
               state = 1;
               mstate.esp -= 4;
               FSM_fprintf.start();
               return;
            case 2:
               break;
            case 1:
               mstate.esp += 24;
               state = 2;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            default:
               throw "Invalid state in __ZNK20b2SeparationFunction17FindMinSeparationEPiS0_f";
         }
         this.i0 = li32(this.i0 + 16);
         this.i1 <<= 3;
         this.i0 += this.i1;
         this.f5 = lf32(this.i0);
         this.f2 = this.f2;
         this.f6 = this.f8;
         this.f8 = this.f6 * this.f5;
         this.f2 *= this.f5;
         this.f5 = this.f8;
         this.f2 = this.f2;
         this.f8 = lf32(this.i0 + 4);
         this.f7 = this.f7;
         this.f5 = this.f5;
         this.f1 = this.f1;
         this.f2 = this.f2;
         this.f3 = this.f3;
         this.f1 += this.f5;
         this.f2 = this.f3 + this.f2;
         this.f3 = this.f8 * this.f7;
         this.f5 = this.f6 * this.f8;
         this.f1 = this.f1;
         this.f2 = this.f2;
         this.f3 = this.f3;
         this.f5 = this.f5;
         this.f3 = this.f3;
         this.f1 = this.f1;
         this.f5 = this.f5;
         this.f2 = this.f2;
         this.f1 += this.f3;
         this.f2 += this.f5;
         this.f1 = this.f1;
         this.f2 = this.f2;
         this.f3 = this.f4;
         this.f1 = this.f1;
         this.f0 = this.f0;
         this.f2 = this.f2;
         this.f1 -= this.f3;
         this.f0 = this.f2 - this.f0;
         this.f1 = this.f1;
         this.f0 = this.f0;
         this.f2 = this.f12;
         §§goto(addr1692);
      }
   }
}

