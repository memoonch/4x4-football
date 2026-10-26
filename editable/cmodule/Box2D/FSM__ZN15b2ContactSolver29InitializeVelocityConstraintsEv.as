package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZN15b2ContactSolver29InitializeVelocityConstraintsEv extends Machine
   {
      
      public static const intRegCount:int = 25;
      
      public static const NumberRegCount:int = 23;
      
      public var i21:int;
      
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
      
      public var f22:Number;
      
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
      
      public var i20:int;
      
      public var i9:int;
      
      public function FSM__ZN15b2ContactSolver29InitializeVelocityConstraintsEv()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZN15b2ContactSolver29InitializeVelocityConstraintsEv = null;
         _loc1_ = new FSM__ZN15b2ContactSolver29InitializeVelocityConstraintsEv();
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
               mstate.esp -= 16;
               this.i0 = mstate.ebp + -16;
               this.i1 = li32(mstate.ebp + 8);
               this.i2 = li32(this.i1 + 8);
               this.i3 = this.i1 + 8;
               if(this.i2 >= 1)
               {
                  this.i2 = mstate.ebp + -16;
                  this.i4 = 0;
                  this.i5 = this.i2 + 4;
                  this.i1 += 4;
                  this.i6 = this.i4;
                  this.f1 = this.f0;
                  addr00c6:
                  this.i7 = li32(this.i1);
                  this.i8 = this.i7 + this.i6;
                  this.i9 = li32(this.i8 + 176);
                  this.i10 = li32(this.i8 + 144);
                  this.i11 = li32(this.i8 + 148);
                  this.f2 = lf32(this.i8 + 156);
                  this.f3 = lf32(this.i8 + 160);
                  this.f4 = lf32(this.i10 + 72);
                  this.f5 = lf32(this.i10 + 76);
                  this.f6 = lf32(this.i11 + 72);
                  this.f7 = lf32(this.i11 + 76);
                  this.f8 = lf32(this.i10 + 80);
                  this.f9 = lf32(this.i11 + 80);
                  this.i8 = li32(this.i9 + 68);
                  this.i12 = this.i9 + 68;
                  this.i13 = this.i9;
                  if(this.i8 > 0)
                  {
                     if(this.i8 == 0)
                     {
                        this.i8 = this.i7 + this.i6;
                        sf32(this.f0,this.i8 + 104);
                        sf32(this.f1,this.i8 + 108);
                        this.i9 = li32(this.i8 + 172);
                        this.i8 += 172;
                        if(this.i9 >= 1)
                        {
                           this.i12 = 0;
                           this.f2 = this.f8;
                           this.f3 = this.f9;
                           this.f2 = -this.f2;
                           this.f3 = -this.f3;
                           this.i13 = this.i7 + this.i6;
                           this.f2 = this.f2;
                           this.f3 = this.f3;
                           this.i14 = this.i10 + 52;
                           this.i15 = this.i10 + 56;
                           this.i16 = this.i11 + 52;
                           this.i17 = this.i11 + 56;
                           this.i18 = this.i13 + 168;
                           this.i19 = this.i11 + 136;
                           this.i20 = this.i10 + 136;
                           this.i21 = this.i11 + 128;
                           this.i22 = this.i10 + 128;
                           this.i23 = this.i0;
                           this.f10 = 1.19209e-7;
                           this.f11 = lf32(this.i23);
                           this.f12 = lf32(this.i14);
                           this.f11 -= this.f12;
                           this.f12 = lf32(this.i23 + 4);
                           this.f13 = lf32(this.i15);
                           this.f12 -= this.f13;
                           this.f11 = this.f11;
                           this.f12 = this.f12;
                           sf32(this.f11,this.i13 + 8);
                           sf32(this.f12,this.i13 + 12);
                           this.f13 = lf32(this.i23 + 4);
                           this.f14 = lf32(this.i17);
                           this.f15 = lf32(this.i23);
                           this.f16 = lf32(this.i16);
                           this.f17 = this.f0;
                           this.f18 = this.f12;
                           this.f19 = this.f1;
                           this.f20 = this.f11;
                           this.f13 -= this.f14;
                           this.f14 = this.f15 - this.f16;
                           this.f15 = this.f18 * this.f17;
                           this.f16 = this.f20 * this.f19;
                           this.f13 = this.f13;
                           this.f14 = this.f14;
                           this.f15 = this.f15;
                           this.f16 = this.f16;
                           this.f18 = this.f13;
                           this.f20 = this.f14;
                           this.f15 = this.f15;
                           this.f16 = this.f16;
                           this.f17 = this.f18 * this.f17;
                           this.f18 = this.f20 * this.f19;
                           this.f15 = this.f16 - this.f15;
                           this.f16 = this.f17;
                           this.f17 = this.f18;
                           this.f15 = this.f15;
                           this.f15 = this.f15;
                           this.f16 = this.f16;
                           this.f17 = this.f17;
                           sf32(this.f14,this.i13 + 16);
                           this.f16 = this.f17 - this.f16;
                           this.f15 *= this.f15;
                           this.f16 = this.f16;
                           this.f15 = this.f15;
                           sf32(this.f13,this.i13 + 20);
                           this.f16 = this.f16;
                           this.f17 = lf32(this.i22);
                           this.f18 = lf32(this.i21);
                           this.f19 = lf32(this.i20);
                           this.f15 = this.f15;
                           this.f17 += this.f18;
                           this.f15 = this.f19 * this.f15;
                           this.f16 *= this.f16;
                           this.f17 = this.f17;
                           this.f15 = this.f15;
                           this.f16 = this.f16;
                           this.f18 = lf32(this.i19);
                           this.f16 = this.f16;
                           this.f15 = this.f15;
                           this.f17 = this.f17;
                           this.f15 = this.f17 + this.f15;
                           this.f16 = this.f18 * this.f16;
                           this.f15 = this.f15;
                           this.f16 = this.f16;
                           this.f16 = this.f16;
                           this.f15 = this.f15;
                           this.f15 += this.f16;
                           this.f15 = this.f15;
                           this.f10 = this.f10;
                           this.f10 = this.f10;
                           this.f16 = this.f15;
                           if(this.f16 > this.f10)
                           {
                              break;
                           }
                           this.i4 = cmodule.Box2D.___sF;
                           mstate.esp -= 24;
                           this.i6 = cmodule.Box2D.__2E_str1670;
                           this.i12 = cmodule.Box2D.__2E_str140;
                           this.i13 = cmodule.Box2D.__ZZN15b2ContactSolver29InitializeVelocityConstraintsEvE8__func__;
                           this.i23 = cmodule.Box2D.__2E_str60267;
                           this.i0 = 159;
                           this.i4 += 176;
                           si32(this.i4,mstate.esp);
                           si32(this.i6,mstate.esp + 4);
                           si32(this.i12,mstate.esp + 8);
                           si32(this.i13,mstate.esp + 12);
                           si32(this.i23,mstate.esp + 16);
                           si32(this.i0,mstate.esp + 20);
                           §§goto(addr1a40);
                        }
                        while(true)
                        {
                           if(this.i9 == 2)
                           {
                              this.f2 = 100;
                              this.i9 = this.i7 + this.i6;
                              this.f3 = lf32(this.i9 + 8);
                              this.f4 = this.f1;
                              this.f5 = lf32(this.i9 + 52);
                              this.f6 = lf32(this.i9 + 12);
                              this.f7 = this.f0;
                              this.f8 = lf32(this.i9 + 56);
                              this.f3 *= this.f4;
                              this.f6 *= this.f7;
                              this.f5 *= this.f4;
                              this.f8 *= this.f7;
                              this.f3 = this.f3;
                              this.f6 = this.f6;
                              this.f5 = this.f5;
                              this.f8 = this.f8;
                              this.f9 = lf32(this.i9 + 16);
                              this.f10 = lf32(this.i9 + 20);
                              this.f11 = lf32(this.i9 + 60);
                              this.f12 = lf32(this.i9 + 64);
                              this.f6 = this.f6;
                              this.f3 = this.f3;
                              this.f8 = this.f8;
                              this.f5 = this.f5;
                              this.f3 -= this.f6;
                              this.f6 = this.f9 * this.f4;
                              this.f9 = this.f10 * this.f7;
                              this.f5 -= this.f8;
                              this.f4 = this.f11 * this.f4;
                              this.f7 = this.f12 * this.f7;
                              this.f3 = this.f3;
                              this.f6 = this.f6;
                              this.f8 = this.f9;
                              this.f5 = this.f5;
                              this.f4 = this.f4;
                              this.f7 = this.f7;
                              this.f9 = lf32(this.i10 + 136);
                              this.f3 = this.f3;
                              this.f5 = this.f5;
                              this.f8 = this.f8;
                              this.f6 = this.f6;
                              this.f7 = this.f7;
                              this.f4 = this.f4;
                              this.f10 = this.f9 * this.f3;
                              this.f9 *= this.f5;
                              this.f6 -= this.f8;
                              this.f4 -= this.f7;
                              this.f7 = this.f10;
                              this.f8 = this.f9;
                              this.f6 = this.f6;
                              this.f4 = this.f4;
                              this.f7 = this.f7;
                              this.f8 = this.f8;
                              this.f9 = lf32(this.i10 + 128);
                              this.f10 = lf32(this.i11 + 128);
                              this.f11 = lf32(this.i11 + 136);
                              this.f6 = this.f6;
                              this.f4 = this.f4;
                              this.f9 += this.f10;
                              this.f3 = this.f7 * this.f3;
                              this.f7 *= this.f5;
                              this.f5 = this.f8 * this.f5;
                              this.f8 = this.f11 * this.f6;
                              this.f10 = this.f11 * this.f4;
                              this.f9 = this.f9;
                              this.f3 = this.f3;
                              this.f7 = this.f7;
                              this.f5 = this.f5;
                              this.f8 = this.f8;
                              this.f10 = this.f10;
                              this.f8 = this.f8;
                              this.f10 = this.f10;
                              this.f3 = this.f3;
                              this.f9 = this.f9;
                              this.f5 = this.f5;
                              this.f7 = this.f7;
                              this.f3 = this.f9 + this.f3;
                              this.f5 = this.f9 + this.f5;
                              this.f7 = this.f9 + this.f7;
                              this.f6 = this.f8 * this.f6;
                              this.f8 *= this.f4;
                              this.f4 = this.f10 * this.f4;
                              this.f3 = this.f3;
                              this.f5 = this.f5;
                              this.f7 = this.f7;
                              this.f6 = this.f6;
                              this.f8 = this.f8;
                              this.f4 = this.f4;
                              this.f6 = this.f6;
                              this.f3 = this.f3;
                              this.f4 = this.f4;
                              this.f5 = this.f5;
                              this.f8 = this.f8;
                              this.f7 = this.f7;
                              this.f3 += this.f6;
                              this.f4 = this.f5 + this.f4;
                              this.f5 = this.f7 + this.f8;
                              this.f3 = this.f3;
                              this.f4 = this.f4;
                              this.f5 = this.f5;
                              this.f6 = this.f3;
                              this.f7 = this.f4;
                              this.f8 = this.f5;
                              this.f7 = this.f6 * this.f7;
                              this.f8 *= this.f8;
                              this.f7 = this.f7;
                              this.f8 = this.f8;
                              this.f8 = this.f8;
                              this.f7 = this.f7;
                              this.f7 -= this.f8;
                              this.f7 = this.f7;
                              this.f2 = this.f2;
                              this.f2 = this.f2;
                              this.f8 = this.f7;
                              this.f6 *= this.f6;
                              this.f2 = this.f8 * this.f2;
                              this.f6 = this.f6;
                              this.f2 = this.f2;
                              this.f2 = this.f2;
                              this.f6 = this.f6;
                              if(this.f6 < this.f2)
                              {
                                 this.f2 = 0;
                                 this.i8 = this.i7 + this.i6;
                                 sf32(this.f3,this.i8 + 128);
                                 sf32(this.f5,this.i8 + 132);
                                 this.f2 = this.f2;
                                 sf32(this.f5,this.i8 + 136);
                                 sf32(this.f4,this.i8 + 140);
                                 this.f2 = this.f2;
                                 this.f6 = this.f7;
                                 if(this.f6 != this.f2)
                                 {
                                    this.f2 = 1;
                                    this.f2 = this.f2;
                                    this.f6 = this.f7;
                                    this.f2 = this.f2;
                                    this.f2 /= this.f6;
                                    this.f7 = this.f2;
                                 }
                                 this.f2 = this.f7;
                                 this.f2 = this.f2;
                                 this.f6 = -this.f2;
                                 this.f4 = this.f4;
                                 this.f6 = this.f6;
                                 this.f4 = this.f2 * this.f4;
                                 this.f6 = this.f6;
                                 this.f5 = this.f5;
                                 this.f5 *= this.f6;
                                 this.f4 = this.f4;
                                 this.i8 = this.i7 + this.i6;
                                 this.f3 = this.f3;
                                 sf32(this.f4,this.i8 + 112);
                                 this.f4 = this.f5;
                                 sf32(this.f4,this.i8 + 116);
                                 this.f2 *= this.f3;
                                 sf32(this.f4,this.i8 + 120);
                                 this.f2 = this.f2;
                                 sf32(this.f2,this.i8 + 124);
                              }
                              else
                              {
                                 this.i7 = 1;
                                 si32(this.i7,this.i8);
                              }
                           }
                           this.i7 = li32(this.i3);
                           this.i6 += 188;
                           this.i4 += 1;
                           if(this.i7 <= this.i4)
                           {
                              §§goto(addr2666);
                           }
                           §§goto(addr00c6);
                        }
                        addr1a40:
                        state = 1;
                        mstate.esp -= 4;
                        FSM_fprintf.start();
                        return;
                        addr023f:
                        addr2007:
                     }
                     this.i14 = li32(this.i13 + 64);
                     if(this.i14 != 2)
                     {
                        if(this.i14 != 1)
                        {
                           if(this.i14 == 0)
                           {
                              this.f0 = 1.42109e-14;
                              this.f1 = lf32(this.i10 + 20);
                              this.f10 = lf32(this.i13 + 56);
                              this.f11 = lf32(this.i10 + 24);
                              this.f12 = lf32(this.i11 + 20);
                              this.f13 = lf32(this.i13);
                              this.f14 = lf32(this.i11 + 24);
                              this.f11 *= this.f10;
                              this.f1 *= this.f10;
                              this.f10 = this.f12 * this.f13;
                              this.f12 = this.f14 * this.f13;
                              this.f11 = this.f11;
                              this.f1 = this.f1;
                              this.f10 = this.f10;
                              this.f12 = this.f12;
                              this.f13 = lf32(this.i10 + 12);
                              this.f1 = this.f1;
                              this.f14 = lf32(this.i10 + 28);
                              this.f15 = lf32(this.i13 + 60);
                              this.f16 = lf32(this.i10 + 32);
                              this.f17 = lf32(this.i10 + 16);
                              this.f11 = this.f11;
                              this.f18 = lf32(this.i11 + 12);
                              this.f10 = this.f10;
                              this.f19 = lf32(this.i11 + 28);
                              this.f20 = lf32(this.i13 + 4);
                              this.f21 = lf32(this.i11 + 32);
                              this.f22 = lf32(this.i11 + 16);
                              this.f12 = this.f12;
                              this.f1 = this.f13 + this.f1;
                              this.f13 = this.f16 * this.f15;
                              this.f11 = this.f17 + this.f11;
                              this.f14 *= this.f15;
                              this.f10 = this.f18 + this.f10;
                              this.f12 = this.f22 + this.f12;
                              this.f15 = this.f19 * this.f20;
                              this.f16 = this.f21 * this.f20;
                              this.f1 = this.f1;
                              this.f13 = this.f13;
                              this.f11 = this.f11;
                              this.f14 = this.f14;
                              this.f10 = this.f10;
                              this.f12 = this.f12;
                              this.f15 = this.f15;
                              this.f16 = this.f16;
                              this.f14 = this.f14;
                              this.f1 = this.f1;
                              this.f13 = this.f13;
                              this.f11 = this.f11;
                              this.f15 = this.f15;
                              this.f10 = this.f10;
                              this.f16 = this.f16;
                              this.f12 = this.f12;
                              this.f1 += this.f14;
                              this.f11 += this.f13;
                              this.f10 += this.f15;
                              this.f12 += this.f16;
                              this.f1 = this.f1;
                              this.f11 = this.f11;
                              this.f10 = this.f10;
                              this.f12 = this.f12;
                              this.f13 = this.f10;
                              this.f14 = this.f1;
                              this.f15 = this.f12;
                              this.f16 = this.f11;
                              this.f13 = this.f14 - this.f13;
                              this.f14 = this.f16 - this.f15;
                              this.f13 = this.f13;
                              this.f14 = this.f14;
                              this.f13 = this.f13;
                              this.f14 = this.f14;
                              this.f13 *= this.f13;
                              this.f14 *= this.f14;
                              this.f13 = this.f13;
                              this.f14 = this.f14;
                              this.f14 = this.f14;
                              this.f13 = this.f13;
                              this.f13 += this.f14;
                              this.f13 = this.f13;
                              this.f0 = this.f0;
                              this.f0 = this.f0;
                              this.f13 = this.f13;
                              if(this.f13 <= this.f0)
                              {
                                 this.f0 = 0;
                                 this.f13 = 1;
                                 this.f0 = this.f0;
                                 this.f13 = this.f13;
                                 this.f14 = this.f0;
                                 this.f15 = this.f13;
                                 addr0776:
                                 this.f16 = 0.5;
                                 this.f2 = this.f2;
                                 this.f13 = this.f13;
                                 this.f3 = this.f3;
                                 this.f0 = this.f0;
                                 this.f17 = this.f13 * this.f2;
                                 this.f13 *= this.f3;
                                 this.f2 = this.f0 * this.f2;
                                 this.f0 *= this.f3;
                                 this.f3 = this.f17;
                                 this.f13 = this.f13;
                                 this.f2 = this.f2;
                                 this.f0 = this.f0;
                                 this.f3 = this.f3;
                                 this.f1 = this.f1;
                                 this.f13 = this.f13;
                                 this.f10 = this.f10;
                                 this.f1 += this.f3;
                                 this.f3 = this.f10 - this.f13;
                                 this.f2 = this.f2;
                                 this.f10 = this.f11;
                                 this.f0 = this.f0;
                                 this.f11 = this.f12;
                                 this.f2 = this.f10 + this.f2;
                                 this.f0 = this.f11 - this.f0;
                                 this.f1 = this.f1;
                                 this.f3 = this.f3;
                                 this.f2 = this.f2;
                                 this.f0 = this.f0;
                                 this.f3 = this.f3;
                                 this.f1 = this.f1;
                                 this.f1 += this.f3;
                                 this.f0 = this.f0;
                                 this.f2 = this.f2;
                                 this.f0 = this.f2 + this.f0;
                                 this.f1 = this.f1;
                                 this.f2 = this.f16;
                                 this.f0 = this.f0;
                                 this.f2 = this.f2;
                                 this.f1 = this.f1;
                                 this.f0 = this.f0;
                                 this.f1 *= this.f2;
                                 this.f0 *= this.f2;
                                 this.f1 = this.f1;
                                 sf32(this.f1,this.i2);
                                 this.f0 = this.f0;
                                 sf32(this.f0,this.i5);
                                 this.f1 = this.f14;
                                 this.f0 = this.f15;
                                 §§goto(addr15db);
                              }
                              this.f0 = 1.19209e-7;
                              this.f13 = this.f11;
                              this.f14 = this.f12;
                              this.f15 = this.f1;
                              this.f16 = this.f10;
                              this.f13 = this.f14 - this.f13;
                              this.f14 = this.f16 - this.f15;
                              this.f16 = this.f13;
                              this.f13 = this.f14;
                              this.f14 = this.f16;
                              this.f15 = this.f13;
                              this.f14 *= this.f14;
                              this.f15 *= this.f15;
                              this.f14 = this.f14;
                              this.f15 = this.f15;
                              this.f14 = this.f14;
                              this.f15 = this.f15;
                              this.f14 = this.f15 + this.f14;
                              this.f14 = this.f14;
                              this.f14 = this.f14;
                              this.f14 = Math.sqrt(this.f14);
                              this.f14 = this.f14;
                              this.f0 = this.f0;
                              this.f0 = this.f0;
                              this.f15 = this.f14;
                              if(this.f15 < this.f0)
                              {
                                 this.f14 = this.f16;
                                 this.f15 = this.f13;
                                 this.f0 = this.f16;
                                 §§goto(addr0776);
                              }
                              this.f0 = 1;
                              this.f0 = this.f0;
                              this.f14 = this.f14;
                              this.f0 = this.f0;
                              this.f0 /= this.f14;
                              this.f0 = this.f0;
                              this.f13 = this.f13;
                              this.f0 = this.f0;
                              this.f14 = this.f16;
                              this.f13 *= this.f0;
                              this.f0 = this.f14 * this.f0;
                              this.f13 = this.f13;
                              this.f0 = this.f0;
                              this.f14 = this.f0;
                              this.f15 = this.f13;
                              §§goto(addr0776);
                           }
                           §§goto(addr023f);
                        }
                        this.f0 = lf32(this.i10 + 24);
                        this.f1 = lf32(this.i13 + 56);
                        this.f10 = lf32(this.i10 + 20);
                        this.f11 = this.f0 * this.f1;
                        this.f1 = this.f10 * this.f1;
                        this.f11 = this.f11;
                        this.f1 = this.f1;
                        this.f12 = lf32(this.i13 + 48);
                        this.f13 = lf32(this.i10 + 32);
                        this.f14 = lf32(this.i13 + 52);
                        this.f15 = lf32(this.i10 + 28);
                        this.f16 = lf32(this.i13 + 60);
                        this.f17 = lf32(this.i10 + 12);
                        this.f18 = lf32(this.i10 + 16);
                        this.f1 = this.f1;
                        this.f11 = this.f11;
                        this.f1 = this.f17 + this.f1;
                        this.f11 = this.f18 + this.f11;
                        this.f17 = this.f13 * this.f14;
                        this.f13 *= this.f16;
                        this.f14 = this.f15 * this.f14;
                        this.f15 *= this.f16;
                        this.f0 *= this.f12;
                        this.f10 *= this.f12;
                        this.f1 = this.f1;
                        this.f11 = this.f11;
                        this.f12 = this.f17;
                        this.f13 = this.f13;
                        this.f14 = this.f14;
                        this.f15 = this.f15;
                        this.f0 = this.f0;
                        this.f10 = this.f10;
                        this.f15 = this.f15;
                        this.f1 = this.f1;
                        this.f13 = this.f13;
                        this.f11 = this.f11;
                        this.f12 = this.f12;
                        this.f0 = this.f0;
                        this.f14 = this.f14;
                        this.f10 = this.f10;
                        this.f1 += this.f15;
                        this.f11 += this.f13;
                        this.f0 += this.f12;
                        this.f10 += this.f14;
                        this.f1 = this.f1;
                        this.f11 = this.f11;
                        this.f0 = this.f0;
                        this.f10 = this.f10;
                        if(this.i8 <= 0)
                        {
                           addr0b3c:
                           this.f1 = this.f0;
                           this.f0 = this.f10;
                           §§goto(addr15db);
                        }
                        this.i8 = 0;
                        this.f12 = this.f0;
                        this.f3 = this.f3;
                        this.f13 = this.f10;
                        this.f12 *= this.f3;
                        this.f3 = this.f13 * this.f3;
                        this.f12 = this.f12;
                        this.f3 = this.f3;
                        this.i13 = this.i11 + 20;
                        this.i14 = this.i11 + 28;
                        this.i15 = this.i11 + 16;
                        this.i16 = this.i11 + 24;
                        this.i17 = this.i11 + 32;
                        this.i18 = this.i11 + 12;
                        this.i19 = this.i0;
                        do
                        {
                           this.f13 = 0.5;
                           this.f14 = lf32(this.i13);
                           this.f15 = lf32(this.i9);
                           this.f16 = lf32(this.i16);
                           this.f14 *= this.f15;
                           this.f15 = this.f16 * this.f15;
                           this.f14 = this.f14;
                           this.f15 = this.f15;
                           this.f16 = lf32(this.i18);
                           this.f14 = this.f14;
                           this.f17 = lf32(this.i14);
                           this.f18 = lf32(this.i9 + 4);
                           this.f19 = lf32(this.i17);
                           this.f20 = lf32(this.i15);
                           this.f15 = this.f15;
                           this.f14 = this.f16 + this.f14;
                           this.f15 = this.f20 + this.f15;
                           this.f16 = this.f17 * this.f18;
                           this.f17 = this.f19 * this.f18;
                           this.f14 = this.f14;
                           this.f15 = this.f15;
                           this.f16 = this.f16;
                           this.f17 = this.f17;
                           this.f16 = this.f16;
                           this.f14 = this.f14;
                           this.f17 = this.f17;
                           this.f15 = this.f15;
                           this.f14 += this.f16;
                           this.f15 += this.f17;
                           this.f14 = this.f14;
                           this.f15 = this.f15;
                           this.f16 = this.f1;
                           this.f14 = this.f14;
                           this.f17 = this.f11;
                           this.f15 = this.f15;
                           this.f16 = this.f14 - this.f16;
                           this.f17 = this.f15 - this.f17;
                           this.f16 = this.f16;
                           this.f17 = this.f17;
                           this.f18 = this.f10;
                           this.f16 = this.f16;
                           this.f19 = this.f0;
                           this.f17 = this.f17;
                           this.f16 *= this.f18;
                           this.f17 *= this.f19;
                           this.f16 = this.f16;
                           this.f17 = this.f17;
                           this.f17 = this.f17;
                           this.f16 = this.f16;
                           this.f16 += this.f17;
                           this.f16 = this.f16;
                           this.f16 = this.f16;
                           this.f17 = this.f2;
                           this.f16 = this.f17 - this.f16;
                           this.f16 = this.f16;
                           this.f16 = this.f16;
                           this.f17 = this.f18 * this.f16;
                           this.f16 = this.f19 * this.f16;
                           this.f17 = this.f17;
                           this.f16 = this.f16;
                           this.f17 = this.f17;
                           this.f18 = this.f3;
                           this.f16 = this.f16;
                           this.f17 = this.f14 + this.f17;
                           this.f14 -= this.f18;
                           this.f18 = this.f12;
                           this.f16 = this.f15 + this.f16;
                           this.f17 = this.f17;
                           this.f14 = this.f14;
                           this.f15 -= this.f18;
                           this.f16 = this.f16;
                           this.f15 = this.f15;
                           this.f14 = this.f14;
                           this.f17 = this.f17;
                           this.f14 = this.f17 + this.f14;
                           this.f15 = this.f15;
                           this.f16 = this.f16;
                           this.f15 = this.f16 + this.f15;
                           this.f14 = this.f14;
                           this.f13 = this.f13;
                           this.f15 = this.f15;
                           this.f13 = this.f13;
                           this.f14 = this.f14;
                           this.f15 = this.f15;
                           this.f14 *= this.f13;
                           this.f13 = this.f15 * this.f13;
                           this.f14 = this.f14;
                           sf32(this.f14,this.i19);
                           this.f13 = this.f13;
                           sf32(this.f13,this.i19 + 4);
                           this.i20 = li32(this.i12);
                           this.i9 += 24;
                           this.i19 += 8;
                           this.i8 += 1;
                        }
                        while(this.i20 > this.i8);
                        §§goto(addr0b3c);
                     }
                     this.f0 = lf32(this.i11 + 24);
                     this.f1 = lf32(this.i13 + 56);
                     this.f10 = lf32(this.i11 + 20);
                     this.f11 = this.f0 * this.f1;
                     this.f1 = this.f10 * this.f1;
                     this.f11 = this.f11;
                     this.f1 = this.f1;
                     this.f12 = lf32(this.i13 + 48);
                     this.f13 = lf32(this.i11 + 32);
                     this.f14 = lf32(this.i13 + 52);
                     this.f15 = lf32(this.i11 + 28);
                     this.f16 = lf32(this.i13 + 60);
                     this.f17 = lf32(this.i11 + 12);
                     this.f18 = lf32(this.i11 + 16);
                     this.f1 = this.f1;
                     this.f11 = this.f11;
                     this.f1 = this.f17 + this.f1;
                     this.f11 = this.f18 + this.f11;
                     this.f17 = this.f13 * this.f14;
                     this.f13 *= this.f16;
                     this.f14 = this.f15 * this.f14;
                     this.f15 *= this.f16;
                     this.f0 *= this.f12;
                     this.f10 *= this.f12;
                     this.f1 = this.f1;
                     this.f11 = this.f11;
                     this.f12 = this.f17;
                     this.f13 = this.f13;
                     this.f14 = this.f14;
                     this.f15 = this.f15;
                     this.f0 = this.f0;
                     this.f10 = this.f10;
                     this.f15 = this.f15;
                     this.f1 = this.f1;
                     this.f13 = this.f13;
                     this.f11 = this.f11;
                     this.f12 = this.f12;
                     this.f0 = this.f0;
                     this.f14 = this.f14;
                     this.f10 = this.f10;
                     this.f1 += this.f15;
                     this.f11 += this.f13;
                     this.f0 += this.f12;
                     this.f10 += this.f14;
                     this.f1 = this.f1;
                     this.f11 = this.f11;
                     this.f0 = this.f0;
                     this.f10 = this.f10;
                     if(this.i8 >= 1)
                     {
                        this.i8 = 0;
                        this.f12 = this.f0;
                        this.f2 = this.f2;
                        this.f13 = this.f10;
                        this.f12 *= this.f2;
                        this.f2 = this.f13 * this.f2;
                        this.f12 = this.f12;
                        this.f2 = this.f2;
                        this.i13 = this.i10 + 20;
                        this.i14 = this.i10 + 28;
                        this.i15 = this.i10 + 16;
                        this.i16 = this.i10 + 24;
                        this.i17 = this.i10 + 32;
                        this.i18 = this.i10 + 12;
                        this.i19 = this.i0;
                        do
                        {
                           this.f13 = 0.5;
                           this.f14 = lf32(this.i13);
                           this.f15 = lf32(this.i9);
                           this.f16 = lf32(this.i16);
                           this.f14 *= this.f15;
                           this.f15 = this.f16 * this.f15;
                           this.f14 = this.f14;
                           this.f15 = this.f15;
                           this.f16 = lf32(this.i18);
                           this.f14 = this.f14;
                           this.f17 = lf32(this.i14);
                           this.f18 = lf32(this.i9 + 4);
                           this.f19 = lf32(this.i17);
                           this.f20 = lf32(this.i15);
                           this.f15 = this.f15;
                           this.f14 = this.f16 + this.f14;
                           this.f15 = this.f20 + this.f15;
                           this.f16 = this.f17 * this.f18;
                           this.f17 = this.f19 * this.f18;
                           this.f14 = this.f14;
                           this.f15 = this.f15;
                           this.f16 = this.f16;
                           this.f17 = this.f17;
                           this.f16 = this.f16;
                           this.f14 = this.f14;
                           this.f17 = this.f17;
                           this.f15 = this.f15;
                           this.f14 += this.f16;
                           this.f15 += this.f17;
                           this.f14 = this.f14;
                           this.f15 = this.f15;
                           this.f16 = this.f1;
                           this.f14 = this.f14;
                           this.f17 = this.f11;
                           this.f15 = this.f15;
                           this.f16 = this.f14 - this.f16;
                           this.f17 = this.f15 - this.f17;
                           this.f16 = this.f16;
                           this.f17 = this.f17;
                           this.f18 = this.f10;
                           this.f16 = this.f16;
                           this.f19 = this.f0;
                           this.f17 = this.f17;
                           this.f16 *= this.f18;
                           this.f17 *= this.f19;
                           this.f16 = this.f16;
                           this.f17 = this.f17;
                           this.f17 = this.f17;
                           this.f16 = this.f16;
                           this.f16 += this.f17;
                           this.f16 = this.f16;
                           this.f16 = this.f16;
                           this.f17 = this.f3;
                           this.f16 = this.f17 - this.f16;
                           this.f16 = this.f16;
                           this.f16 = this.f16;
                           this.f17 = this.f18 * this.f16;
                           this.f16 = this.f19 * this.f16;
                           this.f17 = this.f17;
                           this.f16 = this.f16;
                           this.f17 = this.f17;
                           this.f18 = this.f2;
                           this.f16 = this.f16;
                           this.f17 = this.f14 + this.f17;
                           this.f14 -= this.f18;
                           this.f18 = this.f12;
                           this.f16 = this.f15 + this.f16;
                           this.f17 = this.f17;
                           this.f14 = this.f14;
                           this.f15 -= this.f18;
                           this.f16 = this.f16;
                           this.f15 = this.f15;
                           this.f17 = this.f17;
                           this.f14 = this.f14;
                           this.f14 += this.f17;
                           this.f16 = this.f16;
                           this.f15 = this.f15;
                           this.f15 += this.f16;
                           this.f14 = this.f14;
                           this.f13 = this.f13;
                           this.f15 = this.f15;
                           this.f13 = this.f13;
                           this.f14 = this.f14;
                           this.f15 = this.f15;
                           this.f14 *= this.f13;
                           this.f13 = this.f15 * this.f13;
                           this.f14 = this.f14;
                           sf32(this.f14,this.i19);
                           this.f13 = this.f13;
                           sf32(this.f13,this.i19 + 4);
                           this.i20 = li32(this.i12);
                           this.i9 += 24;
                           this.i19 += 8;
                           this.i8 += 1;
                        }
                        while(this.i20 > this.i8);
                     }
                     this.f0 = this.f0;
                     this.f1 = this.f10;
                     this.f0 = -this.f0;
                     this.f1 = -this.f1;
                     this.f0 = this.f0;
                     this.f2 = this.f1;
                     this.f1 = this.f0;
                     this.f0 = this.f2;
                     §§goto(addr15db);
                  }
                  this.i4 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i6 = cmodule.Box2D.__2E_str1670;
                  this.i0 = cmodule.Box2D.__2E_str138327;
                  this.i1 = cmodule.Box2D.__ZZN15b2ContactSolver29InitializeVelocityConstraintsEvE8__func__;
                  this.i2 = cmodule.Box2D.__2E_str60267;
                  this.i3 = 137;
                  this.i4 += 176;
                  si32(this.i4,mstate.esp);
                  si32(this.i6,mstate.esp + 4);
                  si32(this.i0,mstate.esp + 8);
                  si32(this.i1,mstate.esp + 12);
                  si32(this.i2,mstate.esp + 16);
                  si32(this.i3,mstate.esp + 20);
                  §§goto(addr1a40);
               }
               §§goto(addr2666);
            case 2:
               break;
            case 1:
               mstate.esp += 24;
               state = 2;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            default:
               throw "Invalid state in __ZN15b2ContactSolver29InitializeVelocityConstraintsEv";
         }
         while(true)
         {
            this.f10 = 1;
            this.f16 = this.f0;
            this.f16 = -this.f16;
            this.f16 = this.f16;
            this.f17 = this.f11;
            this.f16 = this.f16;
            this.f18 = this.f12;
            this.f19 = this.f1;
            this.f17 *= this.f16;
            this.f18 *= this.f19;
            this.f17 = this.f17;
            this.f18 = this.f18;
            this.f20 = this.f14;
            this.f21 = this.f13;
            this.f18 = this.f18;
            this.f17 = this.f17;
            this.f17 -= this.f18;
            this.f16 = this.f20 * this.f16;
            this.f18 = this.f21 * this.f19;
            this.f10 = this.f10;
            this.f17 = this.f17;
            this.f16 = this.f16;
            this.f18 = this.f18;
            this.f15 = this.f15;
            this.f10 = this.f10;
            this.f10 /= this.f15;
            this.f15 = this.f17;
            this.f17 = this.f18;
            this.f16 = this.f16;
            this.f15 *= this.f15;
            this.f16 -= this.f17;
            this.f10 = this.f10;
            this.f15 = this.f15;
            this.f16 = this.f16;
            sf32(this.f10,this.i13 + 32);
            this.f10 = this.f16;
            this.f16 = lf32(this.i22);
            this.f17 = lf32(this.i21);
            this.f18 = lf32(this.i20);
            this.f15 = this.f15;
            this.f16 += this.f17;
            this.f15 = this.f18 * this.f15;
            this.f10 *= this.f10;
            this.f16 = this.f16;
            this.f15 = this.f15;
            this.f10 = this.f10;
            this.f17 = lf32(this.i19);
            this.f10 = this.f10;
            this.f15 = this.f15;
            this.f16 = this.f16;
            this.f15 = this.f16 + this.f15;
            this.f10 = this.f17 * this.f10;
            this.f15 = this.f15;
            this.f10 = this.f10;
            this.f10 = this.f10;
            this.f15 = this.f15;
            this.f10 = this.f15 + this.f10;
            this.f15 = 1.19209e-7;
            this.f10 = this.f10;
            this.f15 = this.f15;
            this.f15 = this.f15;
            this.f16 = this.f10;
            while(true)
            {
               if(this.f16 <= this.f15)
               {
                  this.i4 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i6 = cmodule.Box2D.__2E_str1670;
                  this.i12 = cmodule.Box2D.__2E_str141;
                  this.i13 = cmodule.Box2D.__ZZN15b2ContactSolver29InitializeVelocityConstraintsEvE8__func__;
                  this.i23 = cmodule.Box2D.__2E_str60267;
                  this.i0 = 171;
               }
               else
               {
                  this.f15 = 1;
                  this.f16 = this.f9;
                  this.f14 = this.f14;
                  this.f17 = this.f3;
                  this.f13 = this.f13;
                  this.f14 *= this.f16;
                  this.f13 *= this.f17;
                  this.f14 = this.f14;
                  this.f13 = this.f13;
                  this.f14 = this.f14;
                  this.f16 = this.f7;
                  this.f13 = this.f13;
                  this.f17 = this.f6;
                  this.f14 = this.f16 + this.f14;
                  this.f13 = this.f17 + this.f13;
                  this.f14 = this.f14;
                  this.f13 = this.f13;
                  this.f16 = this.f8;
                  this.f11 = this.f11;
                  this.f17 = this.f2;
                  this.f12 = this.f12;
                  this.f18 = this.f5;
                  this.f14 = this.f14;
                  this.f19 = this.f4;
                  this.f13 = this.f13;
                  this.f11 *= this.f16;
                  this.f12 *= this.f17;
                  this.f14 -= this.f18;
                  this.f13 -= this.f19;
                  this.f11 = this.f11;
                  this.f12 = this.f12;
                  this.f14 = this.f14;
                  this.f13 = this.f13;
                  this.f11 = this.f11;
                  this.f14 = this.f14;
                  this.f12 = this.f12;
                  this.f13 = this.f13;
                  this.f11 = this.f14 - this.f11;
                  this.f12 = this.f13 - this.f12;
                  this.f13 = this.f15;
                  this.f11 = this.f11;
                  this.f12 = this.f12;
                  this.f10 = this.f10;
                  this.f13 = this.f13;
                  this.f10 = this.f13 / this.f10;
                  this.f11 = this.f11;
                  this.f13 = this.f1;
                  this.f12 = this.f12;
                  this.f14 = this.f0;
                  this.f11 = this.f13 * this.f11;
                  this.f12 = this.f14 * this.f12;
                  this.f10 = this.f10;
                  this.f11 = this.f11;
                  this.f12 = this.f12;
                  sf32(this.f10,this.i13 + 36);
                  this.i24 = 0;
                  si32(this.i24,this.i13 + 40);
                  this.f10 = this.f11;
                  this.f11 = this.f12;
                  this.f12 = lf32(cmodule.Box2D._b2_velocityThreshold);
                  this.f10 = this.f11 + this.f10;
                  this.f10 = this.f10;
                  this.f11 = -this.f12;
                  this.i24 = this.i13 + 40;
                  this.f11 = this.f11;
                  this.f11 = this.f11;
                  this.f12 = this.f10;
                  if(this.f12 < this.f11)
                  {
                     this.f11 = lf32(this.i18);
                     this.f11 = -this.f11;
                     this.f11 = this.f11;
                     this.f11 = this.f11;
                     this.f10 = this.f10;
                     this.f10 *= this.f11;
                     this.f10 = this.f10;
                     sf32(this.f10,this.i24);
                  }
                  this.i13 += 44;
                  this.i23 += 8;
                  this.i12 += 1;
                  if(this.i9 <= this.i12)
                  {
                     §§goto(addr2007);
                  }
                  §§goto(addr16de);
               }
               §§goto(addr19e3);
            }
            §§goto(addr1a40);
         }
         addr2666:
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp += 4;
         mstate.esp += 4;
         mstate.gworker = caller;
      }
   }
}

