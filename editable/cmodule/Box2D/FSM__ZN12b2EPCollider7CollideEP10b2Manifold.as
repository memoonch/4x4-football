package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public final class FSM__ZN12b2EPCollider7CollideEP10b2Manifold extends Machine
   {
      
      public static const intRegCount:int = 20;
      
      public static const NumberRegCount:int = 22;
      
      public var f10:Number;
      
      public var f11:Number;
      
      public var f12:Number;
      
      public var f13:Number;
      
      public var f14:Number;
      
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
      
      public var f16:Number;
      
      public var f18:Number;
      
      public var f20:Number;
      
      public var f21:Number;
      
      public var f15:Number;
      
      public var f17:Number;
      
      public var f19:Number;
      
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
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public var i6:int;
      
      public var i7:int;
      
      public var i8:int;
      
      public var i9:int;
      
      public function FSM__ZN12b2EPCollider7CollideEP10b2Manifold()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZN12b2EPCollider7CollideEP10b2Manifold = null;
         _loc1_ = new FSM__ZN12b2EPCollider7CollideEP10b2Manifold();
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
               mstate.esp -= 128;
               this.i0 = 0;
               this.i1 = li32(mstate.ebp + 12);
               this.i2 = li32(mstate.ebp + 8);
               si32(this.i0,this.i1 + 68);
               this.f0 = lf32(this.i2);
               this.f1 = lf32(this.i2 + 4);
               this.f2 = lf32(this.i2 + 8);
               this.f3 = lf32(this.i2 + 12);
               this.f4 = lf32(this.i2 + 16);
               this.f5 = lf32(this.i2 + 20);
               this.f6 = lf32(this.i2 + 24);
               this.f7 = lf32(this.i2 + 28);
               this.f8 = lf32(this.i2 + 312);
               this.f9 = lf32(this.i2 + 316);
               this.i0 = li8(this.i2 + 40);
               this.i3 = this.i1 + 68;
               this.i4 = mstate.ebp + -128;
               this.i5 = this.i2;
               loop6:
               while(true)
               {
                  if(this.i0 != 0)
                  {
                     this.f10 = 1.19209e-7;
                     this.f11 = this.f1;
                     this.f12 = this.f3;
                     this.f13 = this.f0;
                     this.f14 = this.f2;
                     this.f11 = this.f12 - this.f11;
                     this.f15 = this.f14 - this.f13;
                     this.f11 = this.f11;
                     this.f15 = this.f15;
                     this.f16 = this.f11;
                     this.f15 = this.f15;
                     this.f16 *= this.f16;
                     this.f15 *= this.f15;
                     this.f16 = this.f16;
                     this.f15 = this.f15;
                     this.f15 = this.f15;
                     this.f16 = this.f16;
                     this.f15 = this.f16 + this.f15;
                     this.f15 = this.f15;
                     this.f16 = this.f4;
                     this.f15 = this.f15;
                     this.f17 = this.f5;
                     this.f15 = Math.sqrt(this.f15);
                     this.f12 = this.f17 - this.f12;
                     this.f17 = this.f16 - this.f14;
                     this.f13 -= this.f14;
                     this.f14 -= this.f16;
                     this.f15 = this.f15;
                     this.f12 = this.f12;
                     this.f16 = this.f17;
                     this.f13 = this.f13;
                     this.f14 = this.f14;
                     this.f10 = this.f10;
                     this.f10 = this.f10;
                     this.f17 = this.f15;
                     if(this.f17 >= this.f10)
                     {
                        this.f10 = 1;
                        this.f10 = this.f10;
                        this.f15 = this.f15;
                        this.f10 = this.f10;
                        this.f10 /= this.f15;
                        this.f10 = this.f10;
                        this.f11 = this.f11;
                        this.f10 = this.f10;
                        this.f13 = this.f13;
                        this.f11 *= this.f10;
                        this.f10 *= this.f13;
                        this.f11 = this.f11;
                        this.f13 = this.f10;
                     }
                     this.f10 = this.f11;
                     this.f11 = this.f13;
                     this.f13 = 1.19209e-7;
                     this.f15 = this.f12;
                     this.f16 = this.f16;
                     this.f15 *= this.f15;
                     this.f16 *= this.f16;
                     this.f15 = this.f15;
                     this.f16 = this.f16;
                     this.f16 = this.f16;
                     this.f15 = this.f15;
                     this.f15 += this.f16;
                     this.f15 = this.f15;
                     this.f15 = this.f15;
                     this.f15 = Math.sqrt(this.f15);
                     this.f15 = this.f15;
                     this.f13 = this.f13;
                     this.f13 = this.f13;
                     this.f16 = this.f15;
                     if(this.f16 >= this.f13)
                     {
                        this.f13 = 1;
                        this.f13 = this.f13;
                        this.f15 = this.f15;
                        this.f13 = this.f13;
                        this.f13 /= this.f15;
                        this.f13 = this.f13;
                        this.f12 = this.f12;
                        this.f13 = this.f13;
                        this.f14 = this.f14;
                        this.f12 *= this.f13;
                        this.f13 *= this.f14;
                        this.f12 = this.f12;
                        this.f14 = this.f13;
                     }
                     this.f13 = this.f14;
                     this.f14 = 0;
                     this.f1 = this.f1;
                     this.f15 = this.f9;
                     this.f16 = this.f3;
                     this.f0 = this.f0;
                     this.f17 = this.f8;
                     this.f18 = this.f2;
                     this.f1 = this.f15 - this.f1;
                     this.f15 -= this.f16;
                     this.f0 = this.f17 - this.f0;
                     this.f16 = this.f17 - this.f18;
                     this.f1 = this.f1;
                     this.f15 = this.f15;
                     this.f0 = this.f0;
                     this.f16 = this.f16;
                     this.f0 = this.f0;
                     this.f17 = this.f10;
                     this.f18 = this.f13;
                     this.f15 = this.f15;
                     this.f1 = this.f1;
                     this.f19 = this.f11;
                     this.f20 = this.f12;
                     this.f16 = this.f16;
                     this.f0 = this.f17 * this.f0;
                     this.f15 = this.f18 * this.f15;
                     this.f1 = this.f19 * this.f1;
                     this.f16 = this.f20 * this.f16;
                     this.f17 *= this.f18;
                     this.f0 = this.f0;
                     this.f15 = this.f15;
                     this.f18 = this.f19 * this.f20;
                     this.f1 = this.f1;
                     this.f16 = this.f16;
                     this.f17 = this.f17;
                     this.f18 = this.f18;
                     this.f1 = this.f1;
                     this.f0 = this.f0;
                     this.f15 = this.f15;
                     this.f16 = this.f16;
                     this.f0 += this.f1;
                     this.f1 = this.f16 + this.f15;
                     this.f15 = this.f18;
                     this.f16 = this.f17;
                     this.f15 = this.f16 - this.f15;
                     this.f0 = this.f0;
                     this.f1 = this.f1;
                     this.f15 = this.f15;
                     this.f14 = this.f14;
                     this.f14 = this.f14;
                     this.f15 = this.f15;
                     if(this.f15 >= this.f14)
                     {
                        this.f14 = 0;
                        this.f14 = this.f14;
                        this.f14 = this.f14;
                        this.f1 = this.f1;
                        loop7:
                        while(true)
                        {
                           while(true)
                           {
                              if(this.f1 < this.f14)
                              {
                                 this.f1 = 0;
                                 this.f1 = this.f1;
                                 this.f1 = this.f1;
                                 this.f0 = this.f0;
                                 if(this.f0 < this.f1)
                                 {
                                    this.f0 = this.f12;
                                    this.f1 = this.f13;
                                    this.f0 = -this.f0;
                                    this.f1 = -this.f1;
                                    this.f10 = this.f10;
                                    this.f0 = this.f0;
                                    this.f11 = this.f11;
                                    this.f10 = -this.f10;
                                    sf32(this.f0,this.i2 + 364);
                                    this.f0 = this.f1;
                                    this.f1 = -this.f11;
                                    sf32(this.f0,this.i2 + 368);
                                    this.f0 = this.f10;
                                    sf32(this.f0,this.i2 + 372);
                                    this.f0 = this.f1;
                                    sf32(this.f0,this.i2 + 376);
                                    this.i0 = li8(this.i2 + 41);
                                    if(this.i0 != 0)
                                    {
                                       break;
                                    }
                                    break loop7;
                                 }
                              }
                              sf32(this.f12,this.i2 + 364);
                              sf32(this.f13,this.i2 + 368);
                              sf32(this.f10,this.i2 + 372);
                              sf32(this.f11,this.i2 + 376);
                              this.i0 = li8(this.i2 + 41);
                              if(this.i0 != 0)
                              {
                                 break;
                              }
                              break loop7;
                           }
                           addr0867:
                           this.f0 = 1.19209e-7;
                           this.f1 = this.f3;
                           this.f10 = this.f5;
                           this.f11 = this.f2;
                           this.f12 = this.f4;
                           this.f1 = this.f10 - this.f1;
                           this.f13 = this.f12 - this.f11;
                           this.f1 = this.f1;
                           this.f13 = this.f13;
                           this.f14 = this.f1;
                           this.f13 = this.f13;
                           this.f14 *= this.f14;
                           this.f13 *= this.f13;
                           this.f14 = this.f14;
                           this.f13 = this.f13;
                           this.f13 = this.f13;
                           this.f14 = this.f14;
                           this.f13 = this.f14 + this.f13;
                           this.f13 = this.f13;
                           this.f6 = this.f6;
                           this.f13 = this.f13;
                           this.f7 = this.f7;
                           this.f13 = Math.sqrt(this.f13);
                           this.f7 -= this.f10;
                           this.f10 = this.f6 - this.f12;
                           this.f11 -= this.f12;
                           this.f6 = this.f12 - this.f6;
                           this.f12 = this.f13;
                           this.f7 = this.f7;
                           this.f10 = this.f10;
                           this.f11 = this.f11;
                           this.f6 = this.f6;
                           this.f0 = this.f0;
                           this.f0 = this.f0;
                           this.f13 = this.f12;
                           if(this.f13 >= this.f0)
                           {
                              this.f0 = 1;
                              this.f0 = this.f0;
                              this.f12 = this.f12;
                              this.f0 = this.f0;
                              this.f0 /= this.f12;
                              this.f0 = this.f0;
                              this.f1 = this.f1;
                              this.f0 = this.f0;
                              this.f11 = this.f11;
                              this.f1 *= this.f0;
                              this.f0 *= this.f11;
                              this.f1 = this.f1;
                              this.f11 = this.f0;
                           }
                           this.f0 = this.f1;
                           this.f1 = this.f11;
                           this.f11 = 1.19209e-7;
                           this.f12 = this.f7;
                           this.f10 = this.f10;
                           this.f12 *= this.f12;
                           this.f10 *= this.f10;
                           this.f12 = this.f12;
                           this.f10 = this.f10;
                           this.f10 = this.f10;
                           this.f12 = this.f12;
                           this.f10 = this.f12 + this.f10;
                           this.f10 = this.f10;
                           this.f10 = this.f10;
                           this.f10 = Math.sqrt(this.f10);
                           this.f10 = this.f10;
                           this.f11 = this.f11;
                           this.f11 = this.f11;
                           this.f12 = this.f10;
                           if(this.f12 >= this.f11)
                           {
                              this.f11 = 1;
                              this.f11 = this.f11;
                              this.f10 = this.f10;
                              this.f11 = this.f11;
                              this.f10 = this.f11 / this.f10;
                              this.f10 = this.f10;
                              this.f7 = this.f7;
                              this.f10 = this.f10;
                              this.f6 = this.f6;
                              this.f7 *= this.f10;
                              this.f6 = this.f10 * this.f6;
                              this.f7 = this.f7;
                              this.f6 = this.f6;
                           }
                           this.f10 = 0;
                           this.f11 = this.f3;
                           this.f9 = this.f9;
                           this.f12 = this.f5;
                           this.f13 = this.f2;
                           this.f8 = this.f8;
                           this.f14 = this.f4;
                           this.f11 = this.f9 - this.f11;
                           this.f9 -= this.f12;
                           this.f12 = this.f8 - this.f13;
                           this.f8 -= this.f14;
                           this.f11 = this.f11;
                           this.f9 = this.f9;
                           this.f12 = this.f12;
                           this.f8 = this.f8;
                           this.f12 = this.f12;
                           this.f13 = this.f0;
                           this.f14 = this.f6;
                           this.f9 = this.f9;
                           this.f11 = this.f11;
                           this.f15 = this.f1;
                           this.f16 = this.f7;
                           this.f8 = this.f8;
                           this.f12 = this.f13 * this.f12;
                           this.f9 = this.f14 * this.f9;
                           this.f11 = this.f15 * this.f11;
                           this.f8 = this.f16 * this.f8;
                           this.f13 *= this.f14;
                           this.f12 = this.f12;
                           this.f9 = this.f9;
                           this.f14 = this.f15 * this.f16;
                           this.f11 = this.f11;
                           this.f8 = this.f8;
                           this.f13 = this.f13;
                           this.f14 = this.f14;
                           this.f11 = this.f11;
                           this.f12 = this.f12;
                           this.f9 = this.f9;
                           this.f8 = this.f8;
                           this.f11 = this.f12 + this.f11;
                           this.f8 += this.f9;
                           this.f9 = this.f14;
                           this.f12 = this.f13;
                           this.f9 = this.f12 - this.f9;
                           this.f11 = this.f11;
                           this.f8 = this.f8;
                           this.f9 = this.f9;
                           this.f10 = this.f10;
                           this.f10 = this.f10;
                           this.f9 = this.f9;
                           if(this.f9 >= this.f10)
                           {
                              this.f9 = 0;
                              this.f9 = this.f9;
                              this.f9 = this.f9;
                              this.f8 = this.f8;
                              if(this.f8 < this.f9)
                              {
                                 this.f8 = 0;
                                 this.f8 = this.f8;
                                 this.f8 = this.f8;
                                 this.f9 = this.f11;
                                 if(this.f9 < this.f8)
                                 {
                                    this.f7 = this.f7;
                                    this.f6 = this.f6;
                                    this.f7 = -this.f7;
                                    this.f6 = -this.f6;
                                    this.f0 = this.f0;
                                    this.f7 = this.f7;
                                    this.f1 = this.f1;
                                    this.f0 = -this.f0;
                                    sf32(this.f7,this.i2 + 380);
                                    this.f6 = this.f6;
                                    this.f1 = -this.f1;
                                    sf32(this.f6,this.i2 + 384);
                                    this.f0 = this.f0;
                                    sf32(this.f0,this.i2 + 388);
                                    this.f0 = this.f1;
                                    sf32(this.f0,this.i2 + 392);
                                    break loop6;
                                 }
                              }
                              sf32(this.f7,this.i2 + 380);
                              sf32(this.f6,this.i2 + 384);
                              sf32(this.f0,this.i2 + 388);
                              sf32(this.f1,this.i2 + 392);
                              break loop6;
                           }
                           this.f9 = 0;
                           this.f9 = this.f9;
                           this.f9 = this.f9;
                           this.f8 = this.f8;
                           if(this.f8 >= this.f9)
                           {
                              this.f8 = 0;
                              this.f8 = this.f8;
                              this.f8 = this.f8;
                              this.f9 = this.f11;
                              if(this.f9 >= this.f8)
                              {
                                 sf32(this.f0,this.i2 + 380);
                                 sf32(this.f1,this.i2 + 384);
                                 sf32(this.f7,this.i2 + 388);
                                 sf32(this.f6,this.i2 + 392);
                                 break loop6;
                              }
                           }
                           this.f0 = this.f0;
                           this.f1 = this.f1;
                           this.f0 = -this.f0;
                           this.f1 = -this.f1;
                           this.f7 = this.f7;
                           this.f0 = this.f0;
                           this.f6 = this.f6;
                           this.f7 = -this.f7;
                           sf32(this.f0,this.i2 + 380);
                           this.f0 = this.f1;
                           this.f1 = -this.f6;
                           sf32(this.f0,this.i2 + 384);
                           this.f0 = this.f7;
                           sf32(this.f0,this.i2 + 388);
                           this.f0 = this.f1;
                           sf32(this.f0,this.i2 + 392);
                           break loop6;
                        }
                     }
                     else
                     {
                        this.f14 = 0;
                        this.f14 = this.f14;
                        this.f14 = this.f14;
                        this.f1 = this.f1;
                        while(true)
                        {
                           if(this.f1 >= this.f14)
                           {
                              this.f1 = 0;
                              this.f1 = this.f1;
                              this.f1 = this.f1;
                              this.f0 = this.f0;
                              if(this.f0 >= this.f1)
                              {
                                 sf32(this.f10,this.i2 + 364);
                                 sf32(this.f11,this.i2 + 368);
                                 sf32(this.f12,this.i2 + 372);
                                 sf32(this.f13,this.i2 + 376);
                                 this.i0 = li8(this.i2 + 41);
                                 if(this.i0 != 0)
                                 {
                                    break;
                                 }
                                 break loop7;
                              }
                           }
                           this.f0 = this.f10;
                           this.f1 = this.f11;
                           this.f0 = -this.f0;
                           this.f1 = -this.f1;
                           this.f10 = this.f12;
                           this.f0 = this.f0;
                           this.f11 = this.f13;
                           this.f10 = -this.f10;
                           sf32(this.f0,this.i2 + 364);
                           this.f0 = this.f1;
                           this.f1 = -this.f11;
                           sf32(this.f0,this.i2 + 368);
                           this.f0 = this.f10;
                           sf32(this.f0,this.i2 + 372);
                           this.f0 = this.f1;
                           sf32(this.f0,this.i2 + 376);
                           this.i0 = li8(this.i2 + 41);
                           if(this.i0 != 0)
                           {
                              break;
                           }
                           break loop7;
                        }
                        §§goto(addr0867);
                     }
                     break loop7;
                  }
                  this.i0 = 0;
                  si32(this.i0,this.i2 + 364);
                  si32(this.i0,this.i2 + 368);
                  si32(this.i0,this.i2 + 372);
                  si32(this.i0,this.i2 + 376);
                  this.i0 = li8(this.i2 + 41);
                  if(this.i0 == 0)
                  {
                     break loop7;
                  }
                  §§goto(addr0867);
                  break loop7;
               }
               this.f0 = -3.40282e+38;
               this.f1 = lf32(this.i2 + 32);
               this.f6 = lf32(this.i2 + 36);
               this.f7 = lf32(cmodule.Box2D._b2_angularSlop);
               this.f8 = this.f1;
               this.f9 = this.f6;
               this.f10 = this.f7;
               this.f8 = -this.f8;
               this.f9 = -this.f9;
               this.f10 = -this.f10;
               this.f11 = lf32(this.i2 + 368);
               this.f12 = lf32(this.i2 + 364);
               this.f13 = lf32(this.i2 + 384);
               this.f14 = lf32(this.i2 + 380);
               this.f8 = this.f8;
               this.f9 = this.f9;
               this.f10 = this.f10;
               this.f0 = this.f0;
               this.i0 = this.i2 + 376;
               this.i6 = this.i2 + 392;
               this.i7 = this.i2 + 320;
               this.i8 = -1;
               this.i9 = 0;
               this.i10 = this.i2 + 396;
               this.i11 = this.i2 + 388;
               this.i12 = this.i2 + 372;
               this.i13 = this.i9;
               loop0:
               while(true)
               {
                  this.f15 = this.f1;
                  this.f16 = this.f8;
                  this.f17 = this.f6;
                  this.f18 = this.f9;
                  this.f15 = this.i13 != 0 ? this.f16 : this.f15;
                  this.f16 = this.i13 != 0 ? this.f18 : this.f17;
                  this.f15 = this.f15;
                  this.f16 = this.f16;
                  this.f17 = this.f11;
                  this.f18 = this.f15;
                  this.f19 = this.f12;
                  this.f20 = this.f16;
                  this.f17 = this.f18 * this.f17;
                  this.f18 = this.f20 * this.f19;
                  this.f17 = this.f17;
                  this.f18 = this.f18;
                  this.f18 = this.f18;
                  this.f17 = this.f17;
                  this.f17 -= this.f18;
                  this.f17 = this.f17;
                  this.f18 = this.f10;
                  this.f17 = this.f17;
                  while(true)
                  {
                     if(this.f17 >= this.f18)
                     {
                        this.f17 = lf32(this.i12);
                        this.f18 = lf32(this.i0);
                        this.f19 = this.f16;
                        this.f20 = this.f15;
                        this.f17 *= this.f19;
                        this.f18 *= this.f20;
                        this.f17 = this.f17;
                        this.f18 = this.f18;
                        this.f18 = this.f18;
                        this.f17 = this.f17;
                        this.f17 -= this.f18;
                        this.f17 = this.f17;
                        this.f18 = this.f10;
                        this.f17 = this.f17;
                        if(this.f17 >= this.f18)
                        {
                           this.i14 = 0;
                           break;
                        }
                     }
                     this.i14 = 1;
                     break;
                  }
                  this.f17 = this.f13;
                  this.f18 = this.f15;
                  this.f19 = this.f14;
                  this.f20 = this.f16;
                  this.f17 = this.f18 * this.f17;
                  this.f18 = this.f20 * this.f19;
                  this.f17 = this.f17;
                  this.f18 = this.f18;
                  this.f18 = this.f18;
                  this.f17 = this.f17;
                  this.f17 -= this.f18;
                  this.f17 = this.f17;
                  this.f18 = this.f10;
                  this.f17 = this.f17;
                  while(true)
                  {
                     if(this.f17 >= this.f18)
                     {
                        this.f17 = lf32(this.i11);
                        this.f18 = lf32(this.i6);
                        this.f19 = this.f16;
                        this.f20 = this.f15;
                        this.f17 *= this.f19;
                        this.f18 *= this.f20;
                        this.f17 = this.f17;
                        this.f18 = this.f18;
                        this.f18 = this.f18;
                        this.f17 = this.f17;
                        this.f17 -= this.f18;
                        this.f17 = this.f17;
                        this.f18 = this.f10;
                        this.f17 = this.f17;
                        this.i15 = this.f17 < this.f18 ? 1 : 0;
                        this.i14 = this.i15 | this.i14;
                        this.i14 &= 1;
                        if(this.i14 == 0)
                        {
                           this.i14 = li32(this.i7);
                           if(this.i14 <= 0)
                           {
                              this.f15 = 3.40282e+38;
                              this.f15 = this.f15;
                           }
                           else
                           {
                              this.f17 = 3.40282e+38;
                              this.f17 = this.f17;
                              this.i15 = 0;
                              this.i16 = this.i5;
                              do
                              {
                                 this.f18 = lf32(this.i16 + 188);
                                 this.f19 = lf32(this.i16 + 184);
                                 this.f20 = this.f3;
                                 this.f21 = this.f2;
                                 this.f18 -= this.f20;
                                 this.f19 -= this.f21;
                                 this.f18 = this.f18;
                                 this.f19 = this.f19;
                                 this.f18 = this.f18;
                                 this.f20 = this.f16;
                                 this.f19 = this.f19;
                                 this.f21 = this.f15;
                                 this.f18 = this.f20 * this.f18;
                                 this.f19 = this.f21 * this.f19;
                                 this.f18 = this.f18;
                                 this.f19 = this.f19;
                                 this.f18 = this.f18;
                                 this.f19 = this.f19;
                                 this.f18 = this.f19 + this.f18;
                                 this.f18 = this.f18;
                                 this.f18 = this.f18;
                                 this.f17 = this.f17;
                                 this.f17 = this.f17 > this.f18 ? this.f18 : this.f17;
                                 this.f17 = this.f17;
                                 this.i16 += 8;
                                 this.i15 += 1;
                              }
                              while(this.i14 > this.i15);
                              this.f15 = this.f17;
                           }
                           this.f16 = lf32(this.i10);
                           this.f17 = this.f15;
                           if(this.f17 > this.f16)
                           {
                              this.i8 = 1;
                              si32(this.i8,mstate.ebp + -16);
                              si32(this.i13,mstate.ebp + -12);
                              sf32(this.f15,mstate.ebp + -8);
                              break loop0;
                           }
                           this.f16 = this.f0;
                           this.f17 = this.f15;
                           if(this.f17 > this.f16)
                           {
                              this.i9 = 1;
                              this.f0 = this.f15;
                              this.i8 = this.i13;
                              break;
                           }
                        }
                     }
                     break;
                  }
                  this.i13 += 1;
                  if(this.i13 > 1)
                  {
                     si32(this.i9,mstate.ebp + -16);
                     si32(this.i8,mstate.ebp + -12);
                     sf32(this.f0,mstate.ebp + -8);
                     break;
                  }
               }
               this.i8 = mstate.ebp + -16;
               this.i9 = li32(mstate.ebp + -16);
               if(this.i9 != 0)
               {
                  this.f0 = lf32(mstate.ebp + -8);
                  this.f1 = lf32(this.i10);
                  this.f6 = this.f1;
                  this.f8 = this.f0;
                  if(this.f8 <= this.f6)
                  {
                     this.i9 = 0;
                     si32(this.i9,mstate.ebp + -32);
                     this.i9 = -1;
                     si32(this.i9,mstate.ebp + -28);
                     this.i9 = -8388609;
                     this.i13 = mstate.ebp + -32;
                     si32(this.i9,mstate.ebp + -24);
                     this.i7 = li32(this.i7);
                     this.i9 = this.i13 + 8;
                     this.i14 = this.i13 + 4;
                     if(this.i7 <= 0)
                     {
                        this.f2 = -3.40282e+38;
                        this.f2 = this.f2;
                        this.i0 = 0;
                     }
                     else
                     {
                        this.f6 = -3.40282e+38;
                        this.f7 = this.f7;
                        this.f7 = -this.f7;
                        this.f7 = this.f7;
                        this.f6 = this.f6;
                        this.i15 = -1;
                        this.i16 = 0;
                        this.i17 = this.i16;
                        this.f8 = this.f6;
                        while(true)
                        {
                           this.f9 = lf32(this.i5 + 252);
                           this.f10 = lf32(this.i5 + 248);
                           this.f15 = this.f12;
                           this.f16 = this.f11;
                           this.f15 *= this.f9;
                           this.f16 *= this.f10;
                           this.f15 = this.f15;
                           this.f16 = this.f16;
                           this.f9 = -this.f9;
                           this.f10 = -this.f10;
                           this.f16 = this.f16;
                           this.f15 = this.f15;
                           this.f15 -= this.f16;
                           this.f9 = this.f9;
                           this.f10 = this.f10;
                           this.f15 = this.f15;
                           this.f16 = this.f7;
                           this.f15 = this.f15;
                           while(true)
                           {
                              if(this.f15 >= this.f16)
                              {
                                 this.f15 = lf32(this.i12);
                                 this.f16 = lf32(this.i0);
                                 this.f17 = this.f9;
                                 this.f18 = this.f10;
                                 this.f15 *= this.f17;
                                 this.f16 *= this.f18;
                                 this.f15 = this.f15;
                                 this.f16 = this.f16;
                                 this.f16 = this.f16;
                                 this.f15 = this.f15;
                                 this.f15 -= this.f16;
                                 this.f15 = this.f15;
                                 this.f16 = this.f7;
                                 this.f15 = this.f15;
                                 if(this.f15 >= this.f16)
                                 {
                                    this.i18 = 0;
                                    break;
                                 }
                              }
                              this.i18 = 1;
                              break;
                           }
                           this.f15 = this.f10;
                           this.f16 = this.f13;
                           this.f17 = this.f9;
                           this.f18 = this.f14;
                           this.f15 = this.f16 * this.f15;
                           this.f16 = this.f18 * this.f17;
                           this.f15 = this.f15;
                           this.f16 = this.f16;
                           this.f16 = this.f16;
                           this.f15 = this.f15;
                           this.f15 -= this.f16;
                           this.f15 = this.f15;
                           this.f16 = this.f7;
                           this.f15 = this.f15;
                           while(true)
                           {
                              if(this.f15 >= this.f16)
                              {
                                 this.f15 = lf32(this.i11);
                                 this.f16 = lf32(this.i6);
                                 this.f17 = this.f9;
                                 this.f18 = this.f10;
                                 this.f15 *= this.f17;
                                 this.f16 *= this.f18;
                                 this.f15 = this.f15;
                                 this.f16 = this.f16;
                                 this.f16 = this.f16;
                                 this.f15 = this.f15;
                                 this.f15 -= this.f16;
                                 this.f15 = this.f15;
                                 this.f16 = this.f7;
                                 this.f15 = this.f15;
                                 if(this.f15 >= this.f16)
                                 {
                                    this.i19 = 0;
                                    break;
                                 }
                              }
                              this.i19 = 1;
                              break;
                           }
                           this.i18 = this.i19 & this.i18;
                           this.i18 ^= 1;
                           this.i18 &= 1;
                           if(this.i18 != 0)
                           {
                              this.f15 = lf32(this.i5 + 188);
                              this.f16 = lf32(this.i5 + 184);
                              this.f17 = this.f3;
                              this.f18 = this.f5;
                              this.f19 = this.f2;
                              this.f20 = this.f4;
                              this.f17 = this.f15 - this.f17;
                              this.f15 -= this.f18;
                              this.f18 = this.f16 - this.f19;
                              this.f16 -= this.f20;
                              this.f17 = this.f17;
                              this.f15 = this.f15;
                              this.f18 = this.f18;
                              this.f16 = this.f16;
                              this.f17 = this.f17;
                              this.f9 = this.f9;
                              this.f15 = this.f15;
                              this.f18 = this.f18;
                              this.f10 = this.f10;
                              this.f16 = this.f16;
                              this.f17 *= this.f9;
                              this.f9 = this.f15 * this.f9;
                              this.f15 = this.f18 * this.f10;
                              this.f10 = this.f16 * this.f10;
                              this.f16 = this.f17;
                              this.f9 = this.f9;
                              this.f15 = this.f15;
                              this.f10 = this.f10;
                              this.f16 = this.f16;
                              this.f15 = this.f15;
                              this.f9 = this.f9;
                              this.f10 = this.f10;
                              this.f15 += this.f16;
                              this.f9 = this.f10 + this.f9;
                              this.f10 = this.f15;
                              this.f9 = this.f9;
                              this.f9 = this.f9;
                              this.f10 = this.f10;
                              this.f9 = this.f10 < this.f9 ? this.f10 : this.f9;
                              this.f9 = this.f9;
                              this.f10 = this.f9;
                              this.f15 = this.f1;
                              if(this.f15 < this.f10)
                              {
                                 this.i16 = 2;
                                 this.f8 = this.f9;
                                 this.i15 = this.i17;
                                 this.f6 = this.f9;
                              }
                              this.f10 = this.f9;
                              this.f15 = this.f6;
                              if(this.f15 < this.f10)
                              {
                                 this.i16 = 2;
                                 this.f8 = this.f9;
                                 this.i15 = this.i17;
                                 this.f6 = this.f9;
                              }
                           }
                           this.i5 += 8;
                           this.i17 += 1;
                           if(this.i7 <= this.i17)
                           {
                              break;
                           }
                        }
                        si32(this.i16,this.i13);
                        si32(this.i15,this.i14);
                        sf32(this.f8,this.i9);
                        this.f2 = this.f8;
                        this.i0 = this.i16;
                     }
                     loop14:
                     while(true)
                     {
                        while(true)
                        {
                           if(this.i0 != 0)
                           {
                              this.f1 = this.f1;
                              this.f3 = this.f2;
                              if(this.f3 > this.f1)
                              {
                                 break;
                              }
                              if(this.i0 != 0)
                              {
                                 this.f1 = 0.98;
                                 this.f1 = this.f1;
                                 this.f1 = this.f1;
                                 this.f0 = this.f0;
                                 this.f0 *= this.f1;
                                 this.f1 = 0.001;
                                 this.f0 = this.f0;
                                 this.f1 = this.f1;
                                 this.f1 = this.f1;
                                 this.f0 = this.f0;
                                 this.f0 += this.f1;
                                 this.f0 = this.f0;
                                 this.f0 = this.f0;
                                 this.f1 = this.f2;
                                 if(this.f1 > this.f0)
                                 {
                                    this.i8 = this.i13;
                                    this.i13 = this.i14;
                                    break loop14;
                                 }
                                 this.i13 = mstate.ebp + -16;
                                 this.i13 += 4;
                                 break loop14;
                              }
                           }
                           this.i13 = mstate.ebp + -16;
                           this.i13 += 4;
                           break loop14;
                        }
                     }
                     this.i0 = this.i8;
                     this.i5 = this.i13;
                     this.i5 = li32(this.i5);
                     this.i0 = li32(this.i0);
                     if(this.i0 == 1)
                     {
                        this.i6 = 1;
                        si32(this.i6,this.i1 + 64);
                        this.i6 = this.i2 + 184;
                        this.i7 = this.i2 + 44;
                     }
                     else
                     {
                        this.i6 = 2;
                        si32(this.i6,this.i1 + 64);
                        this.i6 = this.i2 + 44;
                        this.i7 = this.i2 + 184;
                     }
                     this.i8 = li32(this.i7 + 136);
                     this.i9 = li32(this.i6 + 136);
                     this.i11 = this.i7 + 136;
                     this.i12 = this.i6;
                     if(this.i5 < this.i8)
                     {
                        if(this.i5 > -1)
                        {
                           addr1fa7:
                           this.i8 = this.i5 << 3;
                           this.i8 = this.i7 + this.i8;
                           this.f0 = lf32(this.i8 + 64);
                           this.f1 = lf32(this.i8 + 68);
                           if(this.i9 <= 0)
                           {
                              this.i12 = 0;
                           }
                           else
                           {
                              this.f2 = 3.40282e+38;
                              this.f2 = this.f2;
                              this.i8 = 0;
                              this.i13 = this.i8;
                              do
                              {
                                 this.f3 = lf32(this.i12 + 64);
                                 this.f4 = lf32(this.i12 + 68);
                                 this.f5 = this.f0;
                                 this.f6 = this.f1;
                                 this.f3 = this.f5 * this.f3;
                                 this.f4 = this.f6 * this.f4;
                                 this.f3 = this.f3;
                                 this.f4 = this.f4;
                                 this.f4 = this.f4;
                                 this.f3 = this.f3;
                                 this.f3 += this.f4;
                                 this.f3 = this.f3;
                                 this.f2 = this.f2;
                                 this.f3 = this.f3;
                                 this.f4 = this.f3 < this.f2 ? this.f3 : this.f2;
                                 this.i8 = this.f3 < this.f2 ? this.i13 : this.i8;
                                 this.f2 = this.f4;
                                 this.i12 += 8;
                                 this.i13 += 1;
                              }
                              while(this.i13 != this.i9);
                              this.i12 = this.i8;
                           }
                           this.i8 = this.i12;
                           this.i12 = 1;
                           this.i13 = this.i8 << 3;
                           this.i13 = this.i6 + this.i13;
                           this.f0 = lf32(this.i13);
                           this.f1 = lf32(this.i13 + 4);
                           sf32(this.f0,mstate.ebp + -64);
                           sf32(this.f1,mstate.ebp + -60);
                           si8(this.i5,mstate.ebp + -56);
                           this.i13 = this.i8 + 1;
                           si8(this.i8,mstate.ebp + -55);
                           this.i8 = this.i13 < this.i9 ? this.i13 : 0;
                           this.i9 = this.i8 << 3;
                           si8(this.i12,mstate.ebp + -54);
                           this.i13 = 0;
                           si8(this.i13,mstate.ebp + -53);
                           this.i6 += this.i9;
                           this.f0 = lf32(this.i6);
                           this.f1 = lf32(this.i6 + 4);
                           sf32(this.f0,mstate.ebp + -52);
                           sf32(this.f1,mstate.ebp + -48);
                           si8(this.i5,mstate.ebp + -44);
                           si8(this.i8,mstate.ebp + -43);
                           si8(this.i12,mstate.ebp + -42);
                           si8(this.i13,mstate.ebp + -41);
                           this.i6 = li32(this.i11);
                           this.i8 = this.i5 + 1;
                           this.i6 = this.i8 < this.i6 ? this.i8 : 0;
                           this.i8 = this.i6 << 3;
                           this.i9 = this.i5 << 3;
                           this.i8 = this.i7 + this.i8;
                           this.i7 += this.i9;
                           this.f0 = lf32(this.i7);
                           this.f1 = lf32(this.i7 + 4);
                           this.f2 = lf32(this.i8);
                           this.f3 = lf32(this.i8 + 4);
                           this.f4 = this.f0;
                           this.f5 = this.f2;
                           this.f6 = this.f1;
                           this.f7 = this.f3;
                           this.f4 = this.f5 - this.f4;
                           this.f5 = this.f7 - this.f6;
                           this.f4 = this.f4;
                           this.f5 = this.f5;
                           this.f6 = this.f4;
                           this.f7 = this.f5;
                           this.f6 *= this.f6;
                           this.f7 *= this.f7;
                           this.f6 = this.f6;
                           this.f7 = this.f7;
                           this.f7 = this.f7;
                           this.f6 = this.f6;
                           this.f6 += this.f7;
                           this.f6 = this.f6;
                           this.f6 = this.f6;
                           this.f6 = Math.sqrt(this.f6);
                           this.f6 = this.f6;
                           this.f7 = 1.19209e-7;
                           this.f7 = this.f7;
                           this.f7 = this.f7;
                           this.f8 = this.f6;
                           if(this.f8 < this.f7)
                           {
                              this.f6 = this.f4;
                              this.f7 = this.f5;
                           }
                           else
                           {
                              this.f7 = 1;
                              this.f7 = this.f7;
                              this.f6 = this.f6;
                              this.f7 = this.f7;
                              this.f6 = this.f7 / this.f6;
                              this.f6 = this.f6;
                              this.f4 = this.f4;
                              this.f6 = this.f6;
                              this.f5 = this.f5;
                              this.f4 *= this.f6;
                              this.f5 *= this.f6;
                              this.f4 = this.f4;
                              this.f5 = this.f5;
                              this.f6 = this.f4;
                              this.f7 = this.f5;
                           }
                           this.f8 = 0.5;
                           this.f9 = this.f5;
                           this.f1 = this.f1;
                           this.f0 = this.f0;
                           this.f10 = this.f4;
                           this.f11 = this.f9 * this.f1;
                           this.f12 = this.f10 * this.f0;
                           this.f11 = this.f11;
                           this.f12 = this.f12;
                           this.f11 = this.f11;
                           this.f12 = this.f12;
                           this.f11 = this.f12 + this.f11;
                           this.f12 = lf32(this.i10);
                           this.f11 = this.f11;
                           this.f10 = -this.f10;
                           this.f10 = this.f10;
                           this.f11 = this.f11;
                           this.f13 = this.f12;
                           this.f14 = this.f10;
                           this.f15 = this.f3;
                           this.f16 = this.f2;
                           this.f11 = this.f13 - this.f11;
                           this.f13 = -this.f9;
                           mstate.esp -= 24;
                           this.f14 *= this.f1;
                           this.f1 += this.f15;
                           this.f15 = this.f0 + this.f16;
                           this.f0 = this.f9 * this.f0;
                           this.f9 = this.f11;
                           this.f11 = this.f13;
                           this.i7 = mstate.ebp + -64;
                           this.i8 = mstate.ebp + -96;
                           this.f13 = this.f14;
                           this.f1 = this.f1;
                           this.f14 = this.f15;
                           this.f0 = this.f0;
                           this.f8 = this.f8;
                           si32(this.i8,mstate.esp);
                           si32(this.i7,mstate.esp + 4);
                           sf32(this.f10,mstate.esp + 8);
                           sf32(this.f11,mstate.esp + 12);
                           sf32(this.f9,mstate.esp + 16);
                           si32(this.i5,mstate.esp + 20);
                           this.f9 = this.f13;
                           this.f0 = this.f0;
                           this.f1 = this.f1;
                           this.f8 = this.f8;
                           this.f11 = this.f14;
                           this.f0 += this.f9;
                           this.f1 *= this.f8;
                           this.f8 = this.f11 * this.f8;
                           mstate.esp -= 4;
                           FSM__Z19b2ClipSegmentToLineP12b2ClipVertexPKS_RK6b2Vec2fi342.start();
                           addr2671:
                           this.i5 = mstate.eax;
                           mstate.esp += 24;
                           this.f0 = this.f0;
                           this.f1 = this.f1;
                           this.f8 = this.f8;
                           if(this.i5 >= 2)
                           {
                              this.i5 = mstate.ebp + -128;
                              this.f3 = this.f3;
                              this.f9 = this.f5;
                              this.f2 = this.f2;
                              this.f4 = this.f4;
                              this.f3 = this.f9 * this.f3;
                              this.f2 = this.f4 * this.f2;
                              this.f3 = this.f3;
                              this.f2 = this.f2;
                              this.f3 = this.f3;
                              this.f2 = this.f2;
                              this.f2 += this.f3;
                              this.f2 = this.f2;
                              this.f3 = this.f12;
                              this.f2 = this.f2;
                              this.f2 += this.f3;
                              mstate.esp -= 24;
                              this.f2 = this.f2;
                              si32(this.i5,mstate.esp);
                              si32(this.i8,mstate.esp + 4);
                              sf32(this.f6,mstate.esp + 8);
                              sf32(this.f7,mstate.esp + 12);
                              sf32(this.f2,mstate.esp + 16);
                              si32(this.i6,mstate.esp + 20);
                              mstate.esp -= 4;
                              FSM__Z19b2ClipSegmentToLineP12b2ClipVertexPKS_RK6b2Vec2fi342.start();
                              break;
                           }
                           break loop15;
                        }
                     }
                     this.i0 = cmodule.Box2D.___sF;
                     mstate.esp -= 24;
                     this.i1 = cmodule.Box2D.__2E_str1670;
                     this.i2 = cmodule.Box2D.__2E_str43250;
                     this.i3 = cmodule.Box2D.__ZZN12b2EPCollider16FindIncidentEdgeEP12b2ClipVertexPK9b2EPProxyiS4_E8__func__;
                     this.i4 = cmodule.Box2D.__2E_str42249;
                     this.i5 = 632;
                     this.i0 += 176;
                     si32(this.i0,mstate.esp);
                     si32(this.i1,mstate.esp + 4);
                     si32(this.i2,mstate.esp + 8);
                     si32(this.i3,mstate.esp + 12);
                     si32(this.i4,mstate.esp + 16);
                     si32(this.i5,mstate.esp + 20);
                     state = 1;
                     mstate.esp -= 4;
                     FSM_fprintf.start();
                     return;
                  }
               }
               §§goto(addr2fa3);
            case 2:
               §§goto(addr1fa7);
            case 3:
               §§goto(addr2671);
            case 4:
               break;
            case 1:
               mstate.esp += 24;
               state = 2;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            default:
               throw "Invalid state in __ZN12b2EPCollider7CollideEP10b2Manifold";
         }
         this.i5 = mstate.eax;
         mstate.esp += 24;
         if(this.i5 >= 2)
         {
            if(this.i0 == 1)
            {
               sf32(this.f5,this.i1 + 48);
               sf32(this.f10,this.i1 + 52);
               sf32(this.f8,this.i1 + 56);
               sf32(this.f1,this.i1 + 60);
            }
            else
            {
               this.f2 = lf32(this.i2 + 332);
               this.f3 = this.f5;
               this.f4 = lf32(this.i2 + 336);
               this.f6 = this.f10;
               this.f7 = lf32(this.i2 + 340);
               this.f9 = lf32(this.i2 + 344);
               this.f4 = this.f6 * this.f4;
               this.f2 = this.f3 * this.f2;
               this.f4 = this.f4;
               this.f6 *= this.f9;
               this.f3 *= this.f7;
               this.f2 = this.f2;
               this.f6 = this.f6;
               this.f3 = this.f3;
               this.f4 = this.f4;
               this.f2 = this.f2;
               this.f2 += this.f4;
               this.f4 = this.f6;
               this.f3 = this.f3;
               this.f3 += this.f4;
               this.f2 = this.f2;
               sf32(this.f2,this.i1 + 48);
               this.f2 = this.f3;
               sf32(this.f2,this.i1 + 52);
               this.f2 = lf32(this.i2 + 328);
               this.f1 = this.f1;
               this.f3 = lf32(this.i2 + 324);
               this.f4 = this.f8;
               this.f3 = this.f4 - this.f3;
               this.f1 -= this.f2;
               this.f2 = this.f3;
               this.f1 = this.f1;
               this.f3 = lf32(this.i2 + 332);
               this.f2 = this.f2;
               this.f4 = lf32(this.i2 + 336);
               this.f1 = this.f1;
               this.f6 = lf32(this.i2 + 340);
               this.f7 = lf32(this.i2 + 344);
               this.f3 = this.f2 * this.f3;
               this.f4 = this.f1 * this.f4;
               this.f2 *= this.f6;
               this.f3 = this.f3;
               this.f1 *= this.f7;
               this.f4 = this.f4;
               this.f2 = this.f2;
               this.f1 = this.f1;
               this.f4 = this.f4;
               this.f3 = this.f3;
               this.f3 += this.f4;
               this.f1 = this.f1;
               this.f2 = this.f2;
               this.f1 = this.f2 + this.f1;
               this.f2 = this.f3;
               sf32(this.f2,this.i1 + 56);
               this.f1 = this.f1;
               sf32(this.f1,this.i1 + 60);
            }
            this.i5 = this.i2 + 328;
            this.i6 = this.i2 + 332;
            this.i7 = this.i2 + 340;
            this.i8 = this.i2 + 344;
            this.i9 = this.i2 + 336;
            this.i2 += 324;
            if(this.i0 != 1)
            {
               this.i2 = 0;
               this.i5 = this.i4;
               this.i6 = this.i2;
               while(true)
               {
                  this.i0 = this.i5;
                  this.i5 = this.i6;
                  this.f1 = lf32(this.i0);
                  this.f2 = lf32(this.i0 + 4);
                  this.f3 = this.f1;
                  this.f4 = this.f5;
                  this.f6 = this.f2;
                  this.f7 = this.f10;
                  this.f3 = this.f4 * this.f3;
                  this.f4 = this.f7 * this.f6;
                  this.f3 = this.f3;
                  this.f4 = this.f4;
                  this.f4 = this.f4;
                  this.f3 = this.f3;
                  this.f3 += this.f4;
                  this.f3 = this.f3;
                  this.f4 = lf32(this.i10);
                  this.f6 = this.f0;
                  this.f3 = this.f3;
                  this.f3 -= this.f6;
                  this.f3 = this.f3;
                  this.f3 = this.f3;
                  if(this.f4 >= this.f3)
                  {
                     this.i6 = this.i2 * 24;
                     this.i6 = this.i1 + this.i6;
                     sf32(this.f1,this.i6);
                     sf32(this.f2,this.i6 + 4);
                     this.i7 = li8(this.i0 + 11);
                     si8(this.i7,this.i6 + 18);
                     this.i7 = li8(this.i0 + 10);
                     si8(this.i7,this.i6 + 19);
                     this.i7 = li8(this.i0 + 9);
                     si8(this.i7,this.i6 + 16);
                     this.i7 = li8(this.i0 + 8);
                     si8(this.i7,this.i6 + 17);
                     this.i2 += 1;
                  }
                  this.i0 += 12;
                  this.i6 = this.i5 + 1;
                  if(this.i6 == 2)
                  {
                     break;
                  }
                  this.i5 = this.i0;
               }
               this.i0 = this.i2;
            }
            else
            {
               this.f1 = lf32(mstate.ebp + -128);
               this.f2 = lf32(mstate.ebp + -124);
               this.f3 = this.f1;
               this.f4 = this.f5;
               this.f6 = this.f2;
               this.f7 = this.f10;
               this.f3 = this.f4 * this.f3;
               this.f4 = this.f7 * this.f6;
               this.f3 = this.f3;
               this.f4 = this.f4;
               this.f4 = this.f4;
               this.f3 = this.f3;
               this.f3 += this.f4;
               this.f3 = this.f3;
               this.f4 = lf32(this.i10);
               this.f6 = this.f0;
               this.f3 = this.f3;
               this.f3 -= this.f6;
               this.f3 = this.f3;
               this.f3 = this.f3;
               if(this.f4 < this.f3)
               {
                  this.i0 = 0;
               }
               else
               {
                  this.i0 = 1;
                  this.f3 = lf32(this.i5);
                  this.f2 = this.f2;
                  this.f4 = lf32(this.i2);
                  this.f1 = this.f1;
                  this.f2 -= this.f3;
                  this.f1 -= this.f4;
                  this.f2 = this.f2;
                  this.f1 = this.f1;
                  this.f3 = lf32(this.i6);
                  this.f1 = this.f1;
                  this.f4 = lf32(this.i9);
                  this.f2 = this.f2;
                  this.f6 = lf32(this.i7);
                  this.f7 = lf32(this.i8);
                  this.f4 = this.f2 * this.f4;
                  this.f3 = this.f1 * this.f3;
                  this.f2 *= this.f7;
                  this.f4 = this.f4;
                  this.f1 *= this.f6;
                  this.f3 = this.f3;
                  this.f2 = this.f2;
                  this.f1 = this.f1;
                  this.f4 = this.f4;
                  this.f3 = this.f3;
                  this.f3 += this.f4;
                  this.f2 = this.f2;
                  this.f1 = this.f1;
                  this.f1 += this.f2;
                  this.f2 = this.f3;
                  sf32(this.f2,this.i1);
                  this.f1 = this.f1;
                  sf32(this.f1,this.i1 + 4);
                  this.i4 = li32(mstate.ebp + -120);
                  si32(this.i4,this.i1 + 16);
               }
               this.f1 = lf32(mstate.ebp + -116);
               this.f2 = lf32(mstate.ebp + -112);
               this.f3 = this.f1;
               this.f4 = this.f5;
               this.f5 = this.f2;
               this.f6 = this.f10;
               this.f3 = this.f4 * this.f3;
               this.f4 = this.f6 * this.f5;
               this.f5 = this.f3;
               this.f10 = this.f4;
               this.f3 = this.f10;
               this.f4 = this.f5;
               this.f3 = this.f4 + this.f3;
               this.f5 = this.f3;
               this.f3 = lf32(this.i10);
               this.f0 = this.f0;
               this.f4 = this.f5;
               this.f0 = this.f4 - this.f0;
               this.f0 = this.f0;
               this.f0 = this.f0;
               if(this.f3 >= this.f0)
               {
                  this.f0 = lf32(this.i5);
                  this.f2 = this.f2;
                  this.f3 = lf32(this.i2);
                  this.f1 = this.f1;
                  this.f0 = this.f2 - this.f0;
                  this.f1 -= this.f3;
                  this.f0 = this.f0;
                  this.f1 = this.f1;
                  this.f2 = lf32(this.i6);
                  this.f1 = this.f1;
                  this.f3 = lf32(this.i9);
                  this.f0 = this.f0;
                  this.f4 = lf32(this.i7);
                  this.f5 = lf32(this.i8);
                  this.f3 = this.f0 * this.f3;
                  this.f2 = this.f1 * this.f2;
                  this.f0 *= this.f5;
                  this.f3 = this.f3;
                  this.f1 *= this.f4;
                  this.f2 = this.f2;
                  this.f0 = this.f0;
                  this.f1 = this.f1;
                  this.f3 = this.f3;
                  this.f2 = this.f2;
                  this.f2 += this.f3;
                  this.f0 = this.f0;
                  this.f1 = this.f1;
                  this.i2 = this.i0 * 24;
                  this.f0 = this.f1 + this.f0;
                  this.f1 = this.f2;
                  this.i1 += this.i2;
                  sf32(this.f1,this.i1);
                  this.f0 = this.f0;
                  sf32(this.f0,this.i1 + 4);
                  this.i2 = li32(mstate.ebp + -108);
                  si32(this.i2,this.i1 + 16);
                  this.i0 += 1;
               }
            }
            si32(this.i0,this.i3);
         }
         addr2fa3:
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp += 4;
         mstate.esp += 4;
         mstate.gworker = caller;
      }
   }
}

