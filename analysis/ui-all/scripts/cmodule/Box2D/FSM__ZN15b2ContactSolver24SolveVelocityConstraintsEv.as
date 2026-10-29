package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZN15b2ContactSolver24SolveVelocityConstraintsEv extends Machine
   {
      
      public static const intRegCount:int = 18;
      
      public static const NumberRegCount:int = 32;
      
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
      
      public var f24:Number;
      
      public var f26:Number;
      
      public var f27:Number;
      
      public var f28:Number;
      
      public var f22:Number;
      
      public var f25:Number;
      
      public var f20:Number;
      
      public var f29:Number;
      
      public var f30:Number;
      
      public var f31:Number;
      
      public var i10:int;
      
      public var i11:int;
      
      public var i12:int;
      
      public var i13:int;
      
      public var i14:int;
      
      public var i15:int;
      
      public var i16:int;
      
      public var i17:int;
      
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
      
      public function FSM__ZN15b2ContactSolver24SolveVelocityConstraintsEv()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZN15b2ContactSolver24SolveVelocityConstraintsEv = null;
         _loc1_ = new FSM__ZN15b2ContactSolver24SolveVelocityConstraintsEv();
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
               this.i0 = li32(mstate.ebp + 8);
               this.i1 = li32(this.i0 + 8);
               this.i2 = this.i0 + 8;
               if(this.i1 >= 1)
               {
                  this.i1 = 0;
                  this.i0 += 4;
                  this.i3 = this.i1;
                  addr0099:
                  this.i4 = li32(this.i0);
                  this.i5 = this.i4 + this.i3;
                  this.f0 = lf32(this.i5 + 104);
                  sf32(this.f0,mstate.ebp + -8);
                  this.i6 = li32(this.i5 + 144);
                  this.i7 = li32(this.i5 + 148);
                  this.f0 = this.f0;
                  this.i8 = li32(this.i5 + 172);
                  this.f0 = -this.f0;
                  this.f1 = lf32(this.i6 + 80);
                  this.f2 = lf32(this.i7 + 80);
                  this.f3 = lf32(this.i6 + 72);
                  this.f4 = lf32(this.i6 + 76);
                  this.f5 = lf32(this.i7 + 72);
                  this.f6 = lf32(this.i7 + 76);
                  this.f7 = lf32(this.i6 + 128);
                  this.f8 = lf32(this.i6 + 136);
                  this.f9 = lf32(this.i7 + 128);
                  this.f10 = lf32(this.i7 + 136);
                  this.f11 = lf32(this.i5 + 108);
                  this.f12 = lf32(this.i5 + 164);
                  this.f0 = this.f0;
                  this.i5 = this.i6 + 76;
                  this.i9 = this.i7 + 76;
                  this.i10 = this.i7 + 72;
                  this.i11 = this.i6 + 72;
                  this.i7 += 80;
                  this.i6 += 80;
                  this.i12 = this.i8 + -1;
                  if(uint(this.i12) <= uint(1))
                  {
                     this.i12 = 0;
                     this.i13 = this.i4 + this.i3;
                     this.i14 = this.i13 + 184;
                     this.i15 = this.i13 + 180;
                     this.i16 = this.i13 + 176;
                     while(this.i8 <= this.i12)
                     {
                        if(this.i8 == 1)
                        {
                           this.f0 = 0;
                           this.i4 += this.i3;
                           this.f12 = lf32(this.i4 + 16);
                           this.f2 = this.f2;
                           this.f13 = lf32(this.i4 + 20);
                           this.f14 = this.f12 * this.f2;
                           this.f15 = this.f13 * this.f2;
                           this.f14 = this.f14;
                           this.f15 = this.f15;
                           this.f14 = this.f14;
                           this.f6 = this.f6;
                           this.f15 = this.f15;
                           this.f5 = this.f5;
                           this.f14 = this.f6 + this.f14;
                           this.f15 = this.f5 - this.f15;
                           this.f14 = this.f14;
                           this.f15 = this.f15;
                           this.f16 = lf32(this.i4 + 8);
                           this.f1 = this.f1;
                           this.f17 = lf32(this.i4 + 12);
                           this.f4 = this.f4;
                           this.f14 = this.f14;
                           this.f3 = this.f3;
                           this.f15 = this.f15;
                           this.f18 = this.f16 * this.f1;
                           this.f19 = this.f17 * this.f1;
                           this.f14 -= this.f4;
                           this.f15 -= this.f3;
                           this.f18 = this.f18;
                           this.f19 = this.f19;
                           this.f14 = this.f14;
                           this.f15 = this.f15;
                           this.f18 = this.f18;
                           this.f14 = this.f14;
                           this.f19 = this.f19;
                           this.f15 = this.f15;
                           this.f14 -= this.f18;
                           this.f15 += this.f19;
                           this.f14 = this.f14;
                           this.f15 = this.f15;
                           this.f11 = this.f11;
                           this.f14 = this.f14;
                           this.f18 = lf32(mstate.ebp + -8);
                           this.f18 = this.f18;
                           this.f15 = this.f15;
                           this.f14 *= this.f11;
                           this.f15 *= this.f18;
                           this.f14 = this.f14;
                           this.f15 = this.f15;
                           this.f14 = this.f14;
                           this.f15 = this.f15;
                           this.f14 = this.f15 + this.f14;
                           this.f14 = this.f14;
                           this.f15 = lf32(this.i4 + 40);
                           this.f14 = this.f14;
                           this.f14 -= this.f15;
                           this.f14 = this.f14;
                           this.f15 = lf32(this.i4 + 32);
                           this.f14 = this.f14;
                           this.f14 *= this.f15;
                           this.f14 = this.f14;
                           this.f15 = lf32(this.i4 + 24);
                           this.f14 = this.f14;
                           this.f14 = this.f15 - this.f14;
                           this.f14 = this.f14;
                           this.f0 = this.f0;
                           this.f0 = this.f0;
                           this.f14 = this.f14;
                           this.f0 = this.f14 > this.f0 ? this.f14 : this.f0;
                           this.f0 = this.f0;
                           this.f14 = this.f0;
                           this.f14 -= this.f15;
                           this.f14 = this.f14;
                           this.f14 = this.f14;
                           this.f11 *= this.f14;
                           this.f14 = this.f18 * this.f14;
                           this.f11 = this.f11;
                           this.f14 = this.f14;
                           this.f11 = this.f11;
                           this.f14 = this.f14;
                           this.f15 = this.f16 * this.f11;
                           this.f12 *= this.f11;
                           this.f16 = this.f17 * this.f14;
                           this.f13 *= this.f14;
                           this.f15 = this.f15;
                           this.f12 = this.f12;
                           this.f16 = this.f16;
                           this.f13 = this.f13;
                           this.f16 = this.f16;
                           this.f15 = this.f15;
                           this.f13 = this.f13;
                           this.f12 = this.f12;
                           this.f15 -= this.f16;
                           this.f12 -= this.f13;
                           this.f13 = this.f15;
                           this.f12 = this.f12;
                           this.f7 = this.f7;
                           this.f9 = this.f9;
                           this.f8 = this.f8;
                           this.f13 = this.f13;
                           this.f10 = this.f10;
                           this.f12 = this.f12;
                           this.f15 = this.f11 * this.f7;
                           this.f8 = this.f13 * this.f8;
                           this.f11 *= this.f9;
                           this.f10 = this.f12 * this.f10;
                           this.f7 = this.f14 * this.f7;
                           this.f9 = this.f14 * this.f9;
                           this.f12 = this.f15;
                           this.f8 = this.f8;
                           this.f11 = this.f11;
                           this.f10 = this.f10;
                           this.f7 = this.f7;
                           this.f9 = this.f9;
                           this.f12 = this.f12;
                           this.f8 = this.f8;
                           this.f11 = this.f11;
                           this.f10 = this.f10;
                           this.f7 = this.f7;
                           this.f9 = this.f9;
                           this.f4 -= this.f12;
                           this.f1 -= this.f8;
                           this.f6 += this.f11;
                           this.f2 = this.f10 + this.f2;
                           this.f3 -= this.f7;
                           this.f5 += this.f9;
                           sf32(this.f0,this.i4 + 24);
                           this.f4 = this.f4;
                           this.f1 = this.f1;
                           this.f6 = this.f6;
                           this.f2 = this.f2;
                           this.f3 = this.f3;
                           this.f5 = this.f5;
                           addr2b9f:
                           this.f0 = this.f3;
                           this.f3 = this.f4;
                           this.f4 = this.f5;
                           this.f5 = this.f6;
                           sf32(this.f0,this.i11);
                           sf32(this.f3,this.i5);
                           sf32(this.f1,this.i6);
                           sf32(this.f4,this.i10);
                           sf32(this.f5,this.i9);
                           sf32(this.f2,this.i7);
                           this.i4 = li32(this.i2);
                           this.i3 += 188;
                           this.i1 += 1;
                           if(this.i4 <= this.i1)
                           {
                              break;
                           }
                           §§goto(addr0099);
                        }
                        else
                        {
                           this.f0 = 0;
                           this.i8 = this.i4 + this.i3;
                           this.f12 = lf32(this.i8 + 24);
                           this.f13 = lf32(this.i8 + 68);
                           this.i12 = this.i8 + 24;
                           this.i8 += 68;
                           this.f0 = this.f0;
                           this.f0 = this.f0;
                           this.f14 = this.f12;
                           while(true)
                           {
                              if(this.f14 >= this.f0)
                              {
                                 this.f0 = 0;
                                 this.f0 = this.f0;
                                 this.f0 = this.f0;
                                 this.f14 = this.f13;
                                 if(this.f14 >= this.f0)
                                 {
                                    this.i13 = this.i4 + this.i3;
                                    this.f0 = lf32(this.i13 + 16);
                                    this.f14 = lf32(this.i13 + 20);
                                    sf32(this.f14,mstate.ebp + -16);
                                    this.f14 = lf32(this.i13 + 60);
                                    this.f15 = lf32(this.i13 + 64);
                                    this.f16 = this.f0;
                                    this.f17 = this.f2;
                                    this.f18 = lf32(mstate.ebp + -16);
                                    this.f18 = this.f18;
                                    this.f19 = this.f14;
                                    this.f20 = this.f15;
                                    this.f16 *= this.f17;
                                    this.f18 *= this.f17;
                                    this.f19 *= this.f17;
                                    this.f17 = this.f20 * this.f17;
                                    this.f16 = this.f16;
                                    this.f18 = this.f18;
                                    this.f19 = this.f19;
                                    this.f17 = this.f17;
                                    this.f16 = this.f16;
                                    this.f20 = this.f6;
                                    this.f19 = this.f19;
                                    this.f18 = this.f18;
                                    this.f21 = this.f5;
                                    this.f17 = this.f17;
                                    this.f16 = this.f20 + this.f16;
                                    this.f18 = this.f21 - this.f18;
                                    this.f19 = this.f20 + this.f19;
                                    this.f17 = this.f21 - this.f17;
                                    this.f20 = lf32(this.i13 + 8);
                                    this.f21 = lf32(this.i13 + 12);
                                    this.f22 = lf32(this.i13 + 52);
                                    this.f23 = lf32(this.i13 + 56);
                                    this.f16 = this.f16;
                                    this.f18 = this.f18;
                                    this.f19 = this.f19;
                                    this.f17 = this.f17;
                                    this.f24 = this.f20;
                                    this.f25 = this.f1;
                                    this.f26 = this.f21;
                                    this.f27 = this.f22;
                                    this.f28 = this.f23;
                                    this.f16 = this.f16;
                                    this.f29 = this.f4;
                                    this.f19 = this.f19;
                                    this.f18 = this.f18;
                                    this.f30 = this.f3;
                                    this.f17 = this.f17;
                                    this.f24 *= this.f25;
                                    this.f26 *= this.f25;
                                    this.f16 -= this.f29;
                                    this.f18 -= this.f30;
                                    this.f27 *= this.f25;
                                    this.f25 = this.f28 * this.f25;
                                    this.f19 -= this.f29;
                                    this.f17 -= this.f30;
                                    this.f24 = this.f24;
                                    this.f26 = this.f26;
                                    this.f16 = this.f16;
                                    this.f18 = this.f18;
                                    this.f27 = this.f27;
                                    this.f25 = this.f25;
                                    this.f19 = this.f19;
                                    this.f17 = this.f17;
                                    this.f24 = this.f24;
                                    this.f16 = this.f16;
                                    this.f26 = this.f26;
                                    this.f18 = this.f18;
                                    this.f27 = this.f27;
                                    this.f19 = this.f19;
                                    this.f25 = this.f25;
                                    this.f17 = this.f17;
                                    this.f16 -= this.f24;
                                    this.f18 += this.f26;
                                    this.f19 -= this.f27;
                                    this.f17 += this.f25;
                                    this.f16 = this.f16;
                                    this.f18 = this.f18;
                                    this.f19 = this.f19;
                                    this.f17 = this.f17;
                                    this.f16 = this.f16;
                                    this.f24 = this.f11;
                                    this.f19 = this.f19;
                                    this.f18 = this.f18;
                                    this.f25 = lf32(mstate.ebp + -8);
                                    this.f25 = this.f25;
                                    this.f17 = this.f17;
                                    this.f16 *= this.f24;
                                    this.f18 *= this.f25;
                                    this.f19 *= this.f24;
                                    this.f17 *= this.f25;
                                    this.f24 = lf32(this.i13 + 132);
                                    this.f25 = lf32(this.i13 + 136);
                                    this.f16 = this.f16;
                                    this.f18 = this.f18;
                                    this.f19 = this.f19;
                                    this.f17 = this.f17;
                                    this.f26 = lf32(this.i13 + 140);
                                    this.f27 = this.f13;
                                    this.f28 = this.f25;
                                    this.f29 = lf32(this.i13 + 128);
                                    this.f30 = this.f12;
                                    this.f31 = this.f24;
                                    this.f16 = this.f16;
                                    this.f18 = this.f18;
                                    this.f19 = this.f19;
                                    this.f17 = this.f17;
                                    this.f16 = this.f18 + this.f16;
                                    this.f17 += this.f19;
                                    this.f18 = this.f31 * this.f30;
                                    this.f19 = this.f26 * this.f27;
                                    this.f26 = this.f29 * this.f30;
                                    this.f27 = this.f28 * this.f27;
                                    this.f16 = this.f16;
                                    this.f17 = this.f17;
                                    this.f18 = this.f18;
                                    this.f19 = this.f19;
                                    this.f26 = this.f26;
                                    this.f27 = this.f27;
                                    this.f28 = lf32(this.i13 + 40);
                                    this.f16 = this.f16;
                                    this.f29 = lf32(this.i13 + 84);
                                    this.f17 = this.f17;
                                    this.f19 = this.f19;
                                    this.f18 = this.f18;
                                    this.f27 = this.f27;
                                    this.f26 = this.f26;
                                    this.f16 -= this.f28;
                                    this.f17 -= this.f29;
                                    this.f18 += this.f19;
                                    this.f19 = this.f26 + this.f27;
                                    this.f16 = this.f16;
                                    this.f17 = this.f17;
                                    this.f18 = this.f18;
                                    this.f19 = this.f19;
                                    this.f19 = this.f19;
                                    this.f16 = this.f16;
                                    this.f18 = this.f18;
                                    this.f17 = this.f17;
                                    this.f16 -= this.f19;
                                    this.f17 -= this.f18;
                                    this.f16 = this.f16;
                                    this.f17 = this.f17;
                                    this.f18 = lf32(this.i13 + 116);
                                    this.f19 = this.f16;
                                    this.f26 = lf32(this.i13 + 112);
                                    this.f27 = lf32(this.i13 + 124);
                                    this.f28 = lf32(this.i13 + 120);
                                    this.f29 = this.f17;
                                    this.f18 *= this.f19;
                                    this.f19 = this.f26 * this.f19;
                                    this.f26 = this.f27 * this.f29;
                                    this.f27 = this.f28 * this.f29;
                                    this.f18 = this.f18;
                                    this.f19 = this.f19;
                                    this.f26 = this.f26;
                                    this.f27 = this.f27;
                                    this.f26 = this.f26;
                                    this.f18 = this.f18;
                                    this.f27 = this.f27;
                                    this.f19 = this.f19;
                                    this.f18 += this.f26;
                                    this.f19 += this.f27;
                                    this.f18 = this.f18;
                                    this.f19 = this.f19;
                                    this.f18 = this.f18;
                                    this.f19 = this.f19;
                                    this.f18 = -this.f18;
                                    this.f19 = -this.f19;
                                    this.f19 = this.f19;
                                    this.f18 = this.f18;
                                    this.f26 = 0;
                                    this.f26 = this.f26;
                                    this.f26 = this.f26;
                                    this.f27 = this.f19;
                                    while(true)
                                    {
                                       if(this.f27 >= this.f26)
                                       {
                                          this.f26 = 0;
                                          this.f26 = this.f26;
                                          this.f26 = this.f26;
                                          this.f27 = this.f18;
                                          if(this.f27 >= this.f26)
                                          {
                                             this.f13 = this.f13;
                                             this.f16 = this.f18;
                                             this.f12 = this.f12;
                                             this.f17 = this.f19;
                                             this.f13 = this.f16 - this.f13;
                                             this.f12 = this.f17 - this.f12;
                                             this.f13 = this.f13;
                                             this.f12 = this.f12;
                                             this.f13 = this.f13;
                                             this.f11 = this.f11;
                                             this.f12 = this.f12;
                                             this.f16 = lf32(mstate.ebp + -8);
                                             this.f16 = this.f16;
                                             this.f17 = this.f11 * this.f13;
                                             this.f13 = this.f16 * this.f13;
                                             this.f11 *= this.f12;
                                             this.f12 = this.f16 * this.f12;
                                             this.f16 = this.f17;
                                             this.f13 = this.f13;
                                             this.f11 = this.f11;
                                             this.f12 = this.f12;
                                             this.f17 = this.f22;
                                             this.f16 = this.f16;
                                             this.f14 = this.f14;
                                             this.f11 = this.f11;
                                             this.f20 = this.f20;
                                             this.f0 = this.f0;
                                             this.f22 = this.f23;
                                             this.f13 = this.f13;
                                             this.f15 = this.f15;
                                             this.f12 = this.f12;
                                             this.f21 = this.f21;
                                             this.f23 = lf32(mstate.ebp + -16);
                                             this.f23 = this.f23;
                                             this.f17 *= this.f16;
                                             this.f14 *= this.f16;
                                             this.f22 *= this.f13;
                                             this.f15 *= this.f13;
                                             this.f20 *= this.f11;
                                             this.f0 *= this.f11;
                                             this.f21 *= this.f12;
                                             this.f23 *= this.f12;
                                             this.f17 = this.f17;
                                             this.f14 = this.f14;
                                             this.f22 = this.f22;
                                             this.f15 = this.f15;
                                             this.f20 = this.f20;
                                             this.f0 = this.f0;
                                             this.f21 = this.f21;
                                             this.f23 = this.f23;
                                             this.f22 = this.f22;
                                             this.f17 = this.f17;
                                             this.f15 = this.f15;
                                             this.f14 = this.f14;
                                             this.f21 = this.f21;
                                             this.f20 = this.f20;
                                             this.f23 = this.f23;
                                             this.f0 = this.f0;
                                             this.f17 -= this.f22;
                                             this.f14 -= this.f15;
                                             this.f15 = this.f20 - this.f21;
                                             this.f0 -= this.f23;
                                             this.f17 = this.f17;
                                             this.f14 = this.f14;
                                             this.f15 = this.f15;
                                             this.f0 = this.f0;
                                             this.f17 = this.f17;
                                             this.f15 = this.f15;
                                             this.f14 = this.f14;
                                             this.f0 = this.f0;
                                             this.f11 += this.f16;
                                             this.f15 += this.f17;
                                             this.f0 += this.f14;
                                             this.f12 += this.f13;
                                             this.f11 = this.f11;
                                             this.f13 = this.f15;
                                             this.f0 = this.f0;
                                             this.f12 = this.f12;
                                             this.f11 = this.f11;
                                             this.f7 = this.f7;
                                             this.f9 = this.f9;
                                             this.f12 = this.f12;
                                             this.f8 = this.f8;
                                             this.f13 = this.f13;
                                             this.f10 = this.f10;
                                             this.f0 = this.f0;
                                             this.f14 = this.f11 * this.f7;
                                             this.f11 *= this.f9;
                                             this.f8 = this.f13 * this.f8;
                                             this.f0 *= this.f10;
                                             this.f7 = this.f12 * this.f7;
                                             this.f9 = this.f12 * this.f9;
                                             this.f10 = this.f14;
                                             this.f11 = this.f11;
                                             this.f8 = this.f8;
                                             this.f0 = this.f0;
                                             this.f7 = this.f7;
                                             this.f9 = this.f9;
                                             this.f10 = this.f10;
                                             this.f4 = this.f4;
                                             this.f11 = this.f11;
                                             this.f6 = this.f6;
                                             this.f8 = this.f8;
                                             this.f1 = this.f1;
                                             this.f2 = this.f2;
                                             this.f0 = this.f0;
                                             this.f7 = this.f7;
                                             this.f3 = this.f3;
                                             this.f9 = this.f9;
                                             this.f5 = this.f5;
                                             this.f4 -= this.f10;
                                             this.f6 += this.f11;
                                             this.f1 -= this.f8;
                                             this.f0 += this.f2;
                                             this.f2 = this.f3 - this.f7;
                                             this.f3 = this.f5 + this.f9;
                                             sf32(this.f19,this.i12);
                                             sf32(this.f18,this.i8);
                                             this.f4 = this.f4;
                                             this.f6 = this.f6;
                                             this.f1 = this.f1;
                                             this.f0 = this.f0;
                                             this.f2 = this.f2;
                                             this.f5 = this.f3;
                                             this.f3 = this.f2;
                                             this.f2 = this.f0;
                                             break;
                                          }
                                       }
                                       this.f18 = 0;
                                       this.i13 = this.i4 + this.i3;
                                       this.f19 = lf32(this.i13 + 32);
                                       this.f19 = -this.f19;
                                       this.f19 = this.f19;
                                       this.f19 = this.f19;
                                       this.f26 = this.f16;
                                       this.f19 = this.f26 * this.f19;
                                       this.f19 = this.f19;
                                       this.f18 = this.f18;
                                       this.f18 = this.f18;
                                       this.f26 = this.f19;
                                       if(this.f26 >= this.f18)
                                       {
                                          this.f18 = 0;
                                          this.f26 = this.f19;
                                          this.f24 = this.f24;
                                          this.f24 *= this.f26;
                                          this.f24 = this.f24;
                                          this.f26 = this.f17;
                                          this.f24 = this.f24;
                                          this.f24 += this.f26;
                                          this.f24 = this.f24;
                                          this.f18 = this.f18;
                                          this.f18 = this.f18;
                                          this.f24 = this.f24;
                                          if(this.f24 >= this.f18)
                                          {
                                             this.f16 = 0;
                                             this.f16 = this.f16;
                                             this.f13 = this.f13;
                                             this.f16 = this.f16;
                                             this.f12 = this.f12;
                                             this.f17 = this.f19;
                                             this.f13 = this.f16 - this.f13;
                                             this.f12 = this.f17 - this.f12;
                                             this.f13 = this.f13;
                                             this.f12 = this.f12;
                                             this.f13 = this.f13;
                                             this.f11 = this.f11;
                                             this.f12 = this.f12;
                                             this.f16 = lf32(mstate.ebp + -8);
                                             this.f16 = this.f16;
                                             this.f17 = this.f11 * this.f13;
                                             this.f13 = this.f16 * this.f13;
                                             this.f11 *= this.f12;
                                             this.f12 = this.f16 * this.f12;
                                             this.f16 = this.f17;
                                             this.f13 = this.f13;
                                             this.f11 = this.f11;
                                             this.f12 = this.f12;
                                             this.f17 = this.f22;
                                             this.f16 = this.f16;
                                             this.f14 = this.f14;
                                             this.f11 = this.f11;
                                             this.f18 = this.f20;
                                             this.f0 = this.f0;
                                             this.f20 = this.f23;
                                             this.f13 = this.f13;
                                             this.f15 = this.f15;
                                             this.f12 = this.f12;
                                             this.f21 = this.f21;
                                             this.f22 = lf32(mstate.ebp + -16);
                                             this.f22 = this.f22;
                                             this.f17 *= this.f16;
                                             this.f14 *= this.f16;
                                             this.f20 *= this.f13;
                                             this.f15 *= this.f13;
                                             this.f18 *= this.f11;
                                             this.f0 *= this.f11;
                                             this.f21 *= this.f12;
                                             this.f22 *= this.f12;
                                             this.f17 = this.f17;
                                             this.f14 = this.f14;
                                             this.f20 = this.f20;
                                             this.f15 = this.f15;
                                             this.f23 = this.f18;
                                             this.f0 = this.f0;
                                             this.f21 = this.f21;
                                             this.f22 = this.f22;
                                             this.f18 = this.f20;
                                             this.f17 = this.f17;
                                             this.f15 = this.f15;
                                             this.f14 = this.f14;
                                             this.f20 = this.f21;
                                             this.f21 = this.f23;
                                             this.f22 = this.f22;
                                             this.f0 = this.f0;
                                             this.f17 -= this.f18;
                                             this.f14 -= this.f15;
                                             this.f15 = this.f21 - this.f20;
                                             this.f0 -= this.f22;
                                             this.f17 = this.f17;
                                             this.f14 = this.f14;
                                             this.f15 = this.f15;
                                             this.f0 = this.f0;
                                             this.f17 = this.f17;
                                             this.f15 = this.f15;
                                             this.f14 = this.f14;
                                             this.f0 = this.f0;
                                             this.f11 += this.f16;
                                             this.f15 += this.f17;
                                             this.f0 += this.f14;
                                             this.f12 += this.f13;
                                             this.f11 = this.f11;
                                             this.f13 = this.f15;
                                             this.f0 = this.f0;
                                             this.f12 = this.f12;
                                             this.f11 = this.f11;
                                             this.f7 = this.f7;
                                             this.f9 = this.f9;
                                             this.f12 = this.f12;
                                             this.f8 = this.f8;
                                             this.f13 = this.f13;
                                             this.f10 = this.f10;
                                             this.f0 = this.f0;
                                             this.f14 = this.f11 * this.f7;
                                             this.f11 *= this.f9;
                                             this.f8 = this.f13 * this.f8;
                                             this.f0 *= this.f10;
                                             this.f7 = this.f12 * this.f7;
                                             this.f9 = this.f12 * this.f9;
                                             this.f10 = this.f14;
                                             this.f11 = this.f11;
                                             this.f8 = this.f8;
                                             this.f0 = this.f0;
                                             this.f7 = this.f7;
                                             this.f9 = this.f9;
                                             this.f10 = this.f10;
                                             this.f4 = this.f4;
                                             this.f11 = this.f11;
                                             this.f6 = this.f6;
                                             this.f8 = this.f8;
                                             this.f1 = this.f1;
                                             this.f2 = this.f2;
                                             this.f0 = this.f0;
                                             this.f7 = this.f7;
                                             this.f3 = this.f3;
                                             this.f9 = this.f9;
                                             this.f5 = this.f5;
                                             this.f4 -= this.f10;
                                             this.f6 += this.f11;
                                             this.f1 -= this.f8;
                                             this.f0 += this.f2;
                                             this.f2 = this.f3 - this.f7;
                                             this.f3 = this.f5 + this.f9;
                                             sf32(this.f19,this.i12);
                                             this.i4 = 0;
                                             si32(this.i4,this.i8);
                                             this.f4 = this.f4;
                                             this.f6 = this.f6;
                                             this.f1 = this.f1;
                                             this.f0 = this.f0;
                                             this.f2 = this.f2;
                                             this.f5 = this.f3;
                                             this.f3 = this.f2;
                                             this.f2 = this.f0;
                                             break;
                                          }
                                       }
                                       this.f18 = 0;
                                       this.i4 += this.i3;
                                       this.f19 = lf32(this.i4 + 76);
                                       this.f19 = -this.f19;
                                       this.f19 = this.f19;
                                       this.f19 = this.f19;
                                       this.f24 = this.f17;
                                       this.f19 = this.f24 * this.f19;
                                       this.f19 = this.f19;
                                       this.f18 = this.f18;
                                       this.f18 = this.f18;
                                       this.f24 = this.f19;
                                       if(this.f24 >= this.f18)
                                       {
                                          this.f18 = 0;
                                          this.f24 = this.f19;
                                          this.f25 = this.f25;
                                          this.f24 = this.f25 * this.f24;
                                          this.f24 = this.f24;
                                          this.f25 = this.f16;
                                          this.f24 = this.f24;
                                          this.f24 += this.f25;
                                          this.f24 = this.f24;
                                          this.f18 = this.f18;
                                          this.f18 = this.f18;
                                          this.f24 = this.f24;
                                          if(this.f24 >= this.f18)
                                          {
                                             this.f16 = 0;
                                             this.f16 = this.f16;
                                             this.f13 = this.f13;
                                             this.f17 = this.f19;
                                             this.f12 = this.f12;
                                             this.f16 = this.f16;
                                             this.f13 = this.f17 - this.f13;
                                             this.f12 = this.f16 - this.f12;
                                             this.f13 = this.f13;
                                             this.f12 = this.f12;
                                             this.f13 = this.f13;
                                             this.f11 = this.f11;
                                             this.f12 = this.f12;
                                             this.f16 = lf32(mstate.ebp + -8);
                                             this.f16 = this.f16;
                                             this.f17 = this.f11 * this.f13;
                                             this.f13 = this.f16 * this.f13;
                                             this.f11 *= this.f12;
                                             this.f12 = this.f16 * this.f12;
                                             this.f16 = this.f17;
                                             this.f13 = this.f13;
                                             this.f11 = this.f11;
                                             this.f12 = this.f12;
                                             this.f17 = this.f22;
                                             this.f16 = this.f16;
                                             this.f14 = this.f14;
                                             this.f11 = this.f11;
                                             this.f18 = this.f20;
                                             this.f0 = this.f0;
                                             this.f20 = this.f23;
                                             this.f13 = this.f13;
                                             this.f15 = this.f15;
                                             this.f12 = this.f12;
                                             this.f21 = this.f21;
                                             this.f22 = lf32(mstate.ebp + -16);
                                             this.f22 = this.f22;
                                             this.f17 *= this.f16;
                                             this.f14 *= this.f16;
                                             this.f20 *= this.f13;
                                             this.f15 *= this.f13;
                                             this.f18 *= this.f11;
                                             this.f0 *= this.f11;
                                             this.f21 *= this.f12;
                                             this.f22 *= this.f12;
                                             this.f17 = this.f17;
                                             this.f14 = this.f14;
                                             this.f20 = this.f20;
                                             this.f15 = this.f15;
                                             this.f23 = this.f18;
                                             this.f0 = this.f0;
                                             this.f21 = this.f21;
                                             this.f22 = this.f22;
                                             this.f18 = this.f20;
                                             this.f17 = this.f17;
                                             this.f15 = this.f15;
                                             this.f14 = this.f14;
                                             this.f20 = this.f21;
                                             this.f21 = this.f23;
                                             this.f22 = this.f22;
                                             this.f0 = this.f0;
                                             this.f17 -= this.f18;
                                             this.f14 -= this.f15;
                                             this.f15 = this.f21 - this.f20;
                                             this.f0 -= this.f22;
                                             this.f17 = this.f17;
                                             this.f14 = this.f14;
                                             this.f15 = this.f15;
                                             this.f0 = this.f0;
                                             this.f17 = this.f17;
                                             this.f15 = this.f15;
                                             this.f14 = this.f14;
                                             this.f0 = this.f0;
                                             this.f11 += this.f16;
                                             this.f15 += this.f17;
                                             this.f0 += this.f14;
                                             this.f12 += this.f13;
                                             this.f11 = this.f11;
                                             this.f13 = this.f15;
                                             this.f0 = this.f0;
                                             this.f12 = this.f12;
                                             this.f11 = this.f11;
                                             this.f7 = this.f7;
                                             this.f9 = this.f9;
                                             this.f12 = this.f12;
                                             this.f8 = this.f8;
                                             this.f13 = this.f13;
                                             this.f10 = this.f10;
                                             this.f0 = this.f0;
                                             this.f14 = this.f11 * this.f7;
                                             this.f11 *= this.f9;
                                             this.f8 = this.f13 * this.f8;
                                             this.f0 *= this.f10;
                                             this.f7 = this.f12 * this.f7;
                                             this.f9 = this.f12 * this.f9;
                                             this.f10 = this.f14;
                                             this.f11 = this.f11;
                                             this.f8 = this.f8;
                                             this.f0 = this.f0;
                                             this.f7 = this.f7;
                                             this.f9 = this.f9;
                                             this.f10 = this.f10;
                                             this.f4 = this.f4;
                                             this.f11 = this.f11;
                                             this.f6 = this.f6;
                                             this.f8 = this.f8;
                                             this.f1 = this.f1;
                                             this.f2 = this.f2;
                                             this.f0 = this.f0;
                                             this.f7 = this.f7;
                                             this.f3 = this.f3;
                                             this.f9 = this.f9;
                                             this.f5 = this.f5;
                                             this.i4 = 0;
                                             this.f4 -= this.f10;
                                             this.f6 += this.f11;
                                             this.f1 -= this.f8;
                                             this.f0 += this.f2;
                                             this.f2 = this.f3 - this.f7;
                                             this.f3 = this.f5 + this.f9;
                                             si32(this.i4,this.i12);
                                             sf32(this.f19,this.i8);
                                             this.f4 = this.f4;
                                             this.f6 = this.f6;
                                             this.f1 = this.f1;
                                             this.f0 = this.f0;
                                             this.f2 = this.f2;
                                             this.f5 = this.f3;
                                             this.f3 = this.f2;
                                             this.f2 = this.f0;
                                             break;
                                          }
                                       }
                                       this.f18 = 0;
                                       this.f18 = this.f18;
                                       this.f18 = this.f18;
                                       this.f16 = this.f16;
                                       if(this.f16 >= this.f18)
                                       {
                                          this.f16 = 0;
                                          this.f16 = this.f16;
                                          this.f16 = this.f16;
                                          this.f17 = this.f17;
                                          if(this.f17 >= this.f16)
                                          {
                                             this.f16 = 0;
                                             this.f16 = this.f16;
                                             this.f13 = this.f13;
                                             this.f16 = this.f16;
                                             this.f12 = this.f12;
                                             this.f13 = this.f16 - this.f13;
                                             this.f12 = this.f16 - this.f12;
                                             this.f13 = this.f13;
                                             this.f12 = this.f12;
                                             this.f13 = this.f13;
                                             this.f11 = this.f11;
                                             this.f12 = this.f12;
                                             this.f16 = lf32(mstate.ebp + -8);
                                             this.f16 = this.f16;
                                             this.f17 = this.f11 * this.f13;
                                             this.f13 = this.f16 * this.f13;
                                             this.f11 *= this.f12;
                                             this.f12 = this.f16 * this.f12;
                                             this.f16 = this.f17;
                                             this.f13 = this.f13;
                                             this.f11 = this.f11;
                                             this.f12 = this.f12;
                                             this.f17 = this.f22;
                                             this.f16 = this.f16;
                                             this.f14 = this.f14;
                                             this.f11 = this.f11;
                                             this.f18 = this.f20;
                                             this.f0 = this.f0;
                                             this.f19 = this.f23;
                                             this.f13 = this.f13;
                                             this.f15 = this.f15;
                                             this.f12 = this.f12;
                                             this.f20 = this.f21;
                                             this.f21 = lf32(mstate.ebp + -16);
                                             this.f21 = this.f21;
                                             this.f17 *= this.f16;
                                             this.f14 *= this.f16;
                                             this.f19 *= this.f13;
                                             this.f15 *= this.f13;
                                             this.f18 *= this.f11;
                                             this.f0 *= this.f11;
                                             this.f20 *= this.f12;
                                             this.f21 *= this.f12;
                                             this.f17 = this.f17;
                                             this.f14 = this.f14;
                                             this.f19 = this.f19;
                                             this.f15 = this.f15;
                                             this.f18 = this.f18;
                                             this.f0 = this.f0;
                                             this.f20 = this.f20;
                                             this.f21 = this.f21;
                                             this.f19 = this.f19;
                                             this.f17 = this.f17;
                                             this.f15 = this.f15;
                                             this.f14 = this.f14;
                                             this.f20 = this.f20;
                                             this.f18 = this.f18;
                                             this.f21 = this.f21;
                                             this.f0 = this.f0;
                                             this.f17 -= this.f19;
                                             this.f14 -= this.f15;
                                             this.f15 = this.f18 - this.f20;
                                             this.f0 -= this.f21;
                                             this.f17 = this.f17;
                                             this.f14 = this.f14;
                                             this.f15 = this.f15;
                                             this.f0 = this.f0;
                                             this.f17 = this.f17;
                                             this.f15 = this.f15;
                                             this.f14 = this.f14;
                                             this.f0 = this.f0;
                                             this.f11 += this.f16;
                                             this.f15 += this.f17;
                                             this.f0 += this.f14;
                                             this.f12 += this.f13;
                                             this.f11 = this.f11;
                                             this.f13 = this.f15;
                                             this.f0 = this.f0;
                                             this.f12 = this.f12;
                                             this.f11 = this.f11;
                                             this.f7 = this.f7;
                                             this.f9 = this.f9;
                                             this.f12 = this.f12;
                                             this.f8 = this.f8;
                                             this.f13 = this.f13;
                                             this.f10 = this.f10;
                                             this.f0 = this.f0;
                                             this.f14 = this.f11 * this.f7;
                                             this.f11 *= this.f9;
                                             this.f8 = this.f13 * this.f8;
                                             this.f0 *= this.f10;
                                             this.f7 = this.f12 * this.f7;
                                             this.f9 = this.f12 * this.f9;
                                             this.f10 = this.f14;
                                             this.f11 = this.f11;
                                             this.f8 = this.f8;
                                             this.f0 = this.f0;
                                             this.f7 = this.f7;
                                             this.f9 = this.f9;
                                             this.f10 = this.f10;
                                             this.f4 = this.f4;
                                             this.f11 = this.f11;
                                             this.f6 = this.f6;
                                             this.f8 = this.f8;
                                             this.f1 = this.f1;
                                             this.f2 = this.f2;
                                             this.f0 = this.f0;
                                             this.f7 = this.f7;
                                             this.f3 = this.f3;
                                             this.f9 = this.f9;
                                             this.f5 = this.f5;
                                             this.i4 = 0;
                                             this.f4 -= this.f10;
                                             this.f6 += this.f11;
                                             this.f1 -= this.f8;
                                             this.f0 += this.f2;
                                             this.f2 = this.f3 - this.f7;
                                             this.f3 = this.f5 + this.f9;
                                             si32(this.i4,this.i12);
                                             si32(this.i4,this.i8);
                                             this.f4 = this.f4;
                                             this.f6 = this.f6;
                                             this.f1 = this.f1;
                                             this.f0 = this.f0;
                                             this.f2 = this.f2;
                                             this.f5 = this.f3;
                                             this.f3 = this.f2;
                                             this.f2 = this.f0;
                                             break;
                                          }
                                       }
                                       break;
                                    }
                                    §§goto(addr2b9f);
                                 }
                              }
                              addr0f58:
                              this.i1 = cmodule.Box2D.___sF;
                              mstate.esp -= 24;
                              this.i3 = cmodule.Box2D.__2E_str1670;
                              this.i0 = cmodule.Box2D.__2E_str62269;
                              this.i2 = cmodule.Box2D.__ZZN15b2ContactSolver24SolveVelocityConstraintsEvE8__func__;
                              this.i4 = cmodule.Box2D.__2E_str60267;
                              this.i5 = 374;
                              break;
                           }
                        }
                        this.i1 += 176;
                        si32(this.i1,mstate.esp);
                        si32(this.i3,mstate.esp + 4);
                        si32(this.i0,mstate.esp + 8);
                        si32(this.i2,mstate.esp + 12);
                        si32(this.i4,mstate.esp + 16);
                        si32(this.i5,mstate.esp + 20);
                        state = 1;
                        mstate.esp -= 4;
                        FSM_fprintf.start();
                        return;
                        this.i12 = 0;
                        this.i13 = this.i4 + this.i3;
                        this.i14 = this.i13 + 184;
                        this.i15 = this.i13 + 180;
                        this.i16 = this.i13 + 176;
                     }
                     break;
                     §§goto(addr2c26);
                  }
                  this.i1 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i3 = cmodule.Box2D.__2E_str1670;
                  this.i0 = cmodule.Box2D.__2E_str61268;
                  this.i2 = cmodule.Box2D.__ZZN15b2ContactSolver24SolveVelocityConstraintsEvE8__func__;
                  this.i4 = cmodule.Box2D.__2E_str60267;
                  this.i5 = 269;
                  §§goto(addr027e);
               }
               addr2c26:
               mstate.esp = mstate.ebp;
               mstate.ebp = li32(mstate.esp);
               mstate.esp += 4;
               mstate.esp += 4;
               mstate.gworker = caller;
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
               throw "Invalid state in __ZN15b2ContactSolver24SolveVelocityConstraintsEv";
         }
         while(true)
         {
            this.f13 = -1;
            this.f14 = lf32(this.i13 + 16);
            this.f2 = this.f2;
            this.f15 = lf32(this.i13 + 20);
            this.f16 = this.f14 * this.f2;
            this.f17 = this.f15 * this.f2;
            this.f16 = this.f16;
            this.f17 = this.f17;
            this.f16 = this.f16;
            this.f6 = this.f6;
            this.f17 = this.f17;
            this.f5 = this.f5;
            this.f16 = this.f6 + this.f16;
            this.f17 = this.f5 - this.f17;
            this.f16 = this.f16;
            this.f17 = this.f17;
            this.f18 = lf32(this.i13 + 8);
            this.f1 = this.f1;
            this.f19 = lf32(this.i13 + 12);
            this.f4 = this.f4;
            this.f16 = this.f16;
            this.f3 = this.f3;
            this.f17 = this.f17;
            this.f20 = this.f18 * this.f1;
            this.f21 = this.f19 * this.f1;
            this.f16 -= this.f4;
            this.f17 -= this.f3;
            this.f20 = this.f20;
            this.f21 = this.f21;
            this.f16 = this.f16;
            this.f17 = this.f17;
            this.f20 = this.f20;
            this.f16 = this.f16;
            this.f21 = this.f21;
            this.f17 = this.f17;
            this.f16 -= this.f20;
            this.f17 += this.f21;
            this.f20 = 1;
            this.f16 = this.f16;
            this.f17 = this.f17;
            this.f13 = this.f13;
            this.f20 = this.f20;
            this.i17 = li32(this.i16);
            this.i17 = li32(this.i17 + 64);
            this.f21 = this.f0;
            this.f16 = this.f16;
            this.f22 = this.f11;
            this.f17 = this.f17;
            this.f20 = this.f20;
            this.f13 = this.f13;
            this.f16 *= this.f21;
            this.f17 *= this.f22;
            this.f13 = this.i17 == 2 ? this.f13 : this.f20;
            this.f16 = this.f16;
            this.f17 = this.f17;
            this.f13 = this.f13;
            this.i17 = li32(this.i15);
            this.f20 = lf32(this.i17 + 48);
            this.f13 = this.f13;
            this.f16 = this.f16;
            this.f17 = this.f17;
            this.f16 = this.f17 + this.f16;
            this.f17 = this.f20 * this.f13;
            this.f16 = this.f16;
            this.f17 = this.f17;
            this.i17 = li32(this.i14);
            this.f20 = lf32(this.i17 + 48);
            this.f16 = this.f16;
            this.f17 = this.f17;
            this.f16 = this.f17 + this.f16;
            this.f13 = this.f20 * this.f13;
            this.f16 = this.f16;
            this.f13 = this.f13;
            this.f16 = this.f16;
            this.f13 = this.f13;
            this.f13 -= this.f16;
            this.f13 = this.f13;
            this.f16 = lf32(this.i13 + 36);
            this.f13 = this.f13;
            this.f13 = this.f16 * this.f13;
            this.f13 = this.f13;
            this.f16 = lf32(this.i13 + 24);
            this.f17 = lf32(this.i13 + 28);
            this.f13 = this.f13;
            this.f20 = this.f12;
            this.f13 = this.f17 + this.f13;
            this.f16 *= this.f20;
            this.f13 = this.f13;
            this.f16 = this.f16;
            this.f16 = this.f16;
            this.f13 = this.f13;
            this.f13 = this.f13 < this.f16 ? this.f13 : this.f16;
            this.f16 = -this.f16;
            this.f13 = this.f13;
            this.f16 = this.f16;
            this.f16 = this.f16;
            this.f13 = this.f13;
            this.f13 = this.f13 < this.f16 ? this.f16 : this.f13;
            this.f13 = this.f13;
            this.f16 = this.f13;
            this.f16 -= this.f17;
            this.f16 = this.f16;
            this.f16 = this.f16;
            this.f17 = this.f21 * this.f16;
            this.f16 = this.f22 * this.f16;
            this.f17 = this.f17;
            this.f16 = this.f16;
            this.f17 = this.f17;
            this.f16 = this.f16;
            this.f18 *= this.f17;
            this.f14 *= this.f17;
            this.f19 *= this.f16;
            this.f15 *= this.f16;
            this.f18 = this.f18;
            this.f14 = this.f14;
            this.f19 = this.f19;
            this.f15 = this.f15;
            this.f19 = this.f19;
            this.f18 = this.f18;
            this.f15 = this.f15;
            this.f14 = this.f14;
            this.f18 -= this.f19;
            this.f14 -= this.f15;
            this.f15 = this.f18;
            this.f14 = this.f14;
            this.f18 = this.f7;
            this.f19 = this.f9;
            this.f20 = this.f8;
            this.f15 = this.f15;
            this.f21 = this.f10;
            this.f14 = this.f14;
            this.f22 = this.f17 * this.f18;
            this.f15 *= this.f20;
            this.f17 *= this.f19;
            this.f14 *= this.f21;
            this.f18 = this.f16 * this.f18;
            this.f16 *= this.f19;
            this.f19 = this.f22;
            this.f15 = this.f15;
            this.f17 = this.f17;
            this.f14 = this.f14;
            this.f18 = this.f18;
            this.f16 = this.f16;
            this.f19 = this.f19;
            this.f15 = this.f15;
            this.f17 = this.f17;
            this.f14 = this.f14;
            this.f18 = this.f18;
            this.f16 = this.f16;
            this.f4 -= this.f19;
            this.f1 -= this.f15;
            this.f6 += this.f17;
            this.f2 = this.f14 + this.f2;
            this.f3 -= this.f18;
            this.f5 += this.f16;
            sf32(this.f13,this.i13 + 28);
            this.f4 = this.f4;
            this.f1 = this.f1;
            this.f6 = this.f6;
            this.f2 = this.f2;
            this.f3 = this.f3;
            this.f5 = this.f5;
            this.i13 += 44;
            this.i12 += 1;
            §§goto(addr098a);
            addr098a:
         }
         §§goto(addr0f58);
      }
   }
}

