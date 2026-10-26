package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public final class FSM__ZN16b2PolygonContact8EvaluateEP10b2ManifoldRK11b2TransformS4_ extends Machine
   {
      
      public static const intRegCount:int = 12;
      
      public static const NumberRegCount:int = 31;
      
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
      
      public var f18:Number;
      
      public var f24:Number;
      
      public var f26:Number;
      
      public var f16:Number;
      
      public var f17:Number;
      
      public var f19:Number;
      
      public var f27:Number;
      
      public var f20:Number;
      
      public var f21:Number;
      
      public var f22:Number;
      
      public var f23:Number;
      
      public var f15:Number;
      
      public var f25:Number;
      
      public var f28:Number;
      
      public var f29:Number;
      
      public var f30:Number;
      
      public var i10:int;
      
      public var i11:int;
      
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
      
      public function FSM__ZN16b2PolygonContact8EvaluateEP10b2ManifoldRK11b2TransformS4_()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZN16b2PolygonContact8EvaluateEP10b2ManifoldRK11b2TransformS4_ = null;
         _loc1_ = new FSM__ZN16b2PolygonContact8EvaluateEP10b2ManifoldRK11b2TransformS4_();
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
               mstate.esp -= 96;
               this.i0 = 0;
               this.i1 = li32(mstate.ebp + 8);
               this.i2 = li32(this.i1 + 52);
               this.i1 = li32(this.i1 + 48);
               this.i2 = li32(this.i2 + 16);
               this.i1 = li32(this.i1 + 16);
               this.i3 = li32(mstate.ebp + 12);
               si32(this.i0,this.i3 + 68);
               this.f0 = lf32(this.i1 + 8);
               this.f1 = lf32(this.i2 + 8);
               si32(this.i0,mstate.ebp + -4);
               mstate.esp -= 20;
               this.i0 = li32(mstate.ebp + 16);
               this.i4 = li32(mstate.ebp + 20);
               this.i5 = mstate.ebp + -4;
               si32(this.i5,mstate.esp);
               si32(this.i1,mstate.esp + 4);
               si32(this.i0,mstate.esp + 8);
               si32(this.i2,mstate.esp + 12);
               si32(this.i4,mstate.esp + 16);
               state = 1;
               mstate.esp -= 4;
               FSM__Z19b2FindMaxSeparationPiPK14b2PolygonShapeRK11b2TransformS2_S5_.start();
               return;
            case 1:
               this.f2 = mstate.st0;
               this.f0 += this.f1;
               mstate.esp += 20;
               this.f0 = this.f0;
               this.i5 = this.i3 + 68;
               this.i6 = mstate.ebp + -96;
               this.f1 = this.f0;
               this.f3 = this.f2;
               if(this.f3 <= this.f1)
               {
                  this.i7 = 0;
                  si32(this.i7,mstate.ebp + -8);
                  mstate.esp -= 20;
                  this.i7 = mstate.ebp + -8;
                  si32(this.i7,mstate.esp);
                  si32(this.i2,mstate.esp + 4);
                  si32(this.i4,mstate.esp + 8);
                  si32(this.i1,mstate.esp + 12);
                  si32(this.i0,mstate.esp + 16);
                  state = 2;
                  mstate.esp -= 4;
                  FSM__Z19b2FindMaxSeparationPiPK14b2PolygonShapeRK11b2TransformS2_S5_.start();
                  return;
               }
               break;
            case 2:
               this.f1 = mstate.st0;
               mstate.esp += 20;
               this.f3 = this.f0;
               this.f4 = this.f1;
               if(this.f4 <= this.f3)
               {
                  this.f3 = 0.98;
                  this.f3 = this.f3;
                  this.f3 = this.f3;
                  this.f2 = this.f2;
                  this.f2 *= this.f3;
                  this.f3 = 0.001;
                  this.f2 = this.f2;
                  this.f3 = this.f3;
                  this.f3 = this.f3;
                  this.f2 = this.f2;
                  this.f2 += this.f3;
                  this.f2 = this.f2;
                  this.f1 = this.f1;
                  this.f2 = this.f2;
                  if(this.f2 < this.f1)
                  {
                     this.i7 = 2;
                     this.f1 = lf32(this.i4);
                     this.f2 = lf32(this.i4 + 4);
                     this.f3 = lf32(this.i4 + 8);
                     this.f4 = lf32(this.i4 + 12);
                     this.f5 = lf32(this.i4 + 16);
                     this.f6 = lf32(this.i4 + 20);
                     this.f7 = lf32(this.i0);
                     this.f8 = lf32(this.i0 + 4);
                     this.f9 = lf32(this.i0 + 8);
                     this.f10 = lf32(this.i0 + 12);
                     this.f11 = lf32(this.i0 + 16);
                     this.f12 = lf32(this.i0 + 20);
                     this.i0 = li32(mstate.ebp + -8);
                     si32(this.i7,this.i3 + 64);
                     this.i4 = 1;
                     this.i7 = this.i2;
                     this.i2 = this.i4;
                  }
                  else
                  {
                     this.i7 = 1;
                     this.f1 = lf32(this.i0);
                     this.f2 = lf32(this.i0 + 4);
                     this.f3 = lf32(this.i0 + 8);
                     this.f4 = lf32(this.i0 + 12);
                     this.f5 = lf32(this.i0 + 16);
                     this.f6 = lf32(this.i0 + 20);
                     this.f7 = lf32(this.i4);
                     this.f8 = lf32(this.i4 + 4);
                     this.f9 = lf32(this.i4 + 8);
                     this.f10 = lf32(this.i4 + 12);
                     this.f11 = lf32(this.i4 + 16);
                     this.f12 = lf32(this.i4 + 20);
                     this.i0 = li32(mstate.ebp + -4);
                     si32(this.i7,this.i3 + 64);
                     this.i4 = 0;
                     this.i7 = this.i1;
                     this.i1 = this.i2;
                     this.i2 = this.i4;
                  }
                  this.i4 = this.i7;
                  this.i7 = li32(this.i4 + 152);
                  this.i8 = li32(this.i1 + 152);
                  this.i9 = this.i4 + 152;
                  this.i10 = this.i1;
                  if(this.i7 > this.i0)
                  {
                     if(this.i0 > -1)
                     {
                        addr05e9:
                        this.i7 = this.i0 << 3;
                        this.i7 = this.i4 + this.i7;
                        this.f13 = lf32(this.i7 + 88);
                        this.f14 = lf32(this.i7 + 92);
                        this.f15 = this.f4;
                        this.f16 = this.f3;
                        this.f17 = this.f6;
                        this.f18 = this.f5;
                        this.f15 *= this.f13;
                        this.f13 = this.f16 * this.f13;
                        this.f16 = this.f17 * this.f14;
                        this.f14 = this.f18 * this.f14;
                        this.f15 = this.f15;
                        this.f13 = this.f13;
                        this.f16 = this.f16;
                        this.f14 = this.f14;
                        this.f16 = this.f16;
                        this.f15 = this.f15;
                        this.f14 = this.f14;
                        this.f13 = this.f13;
                        this.f15 += this.f16;
                        this.f13 += this.f14;
                        this.f14 = this.f15;
                        this.f13 = this.f13;
                        this.f15 = this.f12;
                        this.f14 = this.f14;
                        this.f16 = this.f10;
                        this.f17 = this.f11;
                        this.f13 = this.f13;
                        this.f18 = this.f9;
                        this.f15 = this.f14 * this.f15;
                        this.f14 *= this.f16;
                        this.f16 = this.f13 * this.f17;
                        this.f13 *= this.f18;
                        this.f15 = this.f15;
                        this.f14 = this.f14;
                        this.f16 = this.f16;
                        this.f13 = this.f13;
                        this.f15 = this.f15;
                        this.f16 = this.f16;
                        this.f14 = this.f14;
                        this.f13 = this.f13;
                        this.f15 = this.f16 + this.f15;
                        this.f13 += this.f14;
                        this.f14 = this.f15;
                        this.f13 = this.f13;
                        if(this.i8 <= 0)
                        {
                           this.i10 = 0;
                        }
                        else
                        {
                           this.f15 = 3.40282e+38;
                           this.f15 = this.f15;
                           this.i7 = 0;
                           this.i11 = this.i7;
                           do
                           {
                              this.f16 = lf32(this.i10 + 88);
                              this.f17 = lf32(this.i10 + 92);
                              this.f18 = this.f13;
                              this.f19 = this.f14;
                              this.f16 = this.f18 * this.f16;
                              this.f17 = this.f19 * this.f17;
                              this.f16 = this.f16;
                              this.f17 = this.f17;
                              this.f17 = this.f17;
                              this.f16 = this.f16;
                              this.f16 += this.f17;
                              this.f16 = this.f16;
                              this.f15 = this.f15;
                              this.f16 = this.f16;
                              this.f17 = this.f16 < this.f15 ? this.f16 : this.f15;
                              this.i7 = this.f16 < this.f15 ? this.i11 : this.i7;
                              this.f15 = this.f17;
                              this.i10 += 8;
                              this.i11 += 1;
                           }
                           while(this.i11 != this.i8);
                           this.i10 = this.i7;
                        }
                        this.i7 = this.i10;
                        this.i10 = 1;
                        this.i11 = this.i7 << 3;
                        this.i1 += 24;
                        this.i11 = this.i1 + this.i11;
                        this.f13 = lf32(this.i11);
                        this.f14 = this.f9;
                        this.f15 = this.f14 * this.f13;
                        this.f16 = this.f10;
                        this.f15 = this.f15;
                        this.f13 = this.f16 * this.f13;
                        this.f17 = lf32(this.i11 + 4);
                        this.f13 = this.f13;
                        this.f18 = this.f11;
                        this.f15 = this.f15;
                        this.f19 = this.f7;
                        this.f15 = this.f19 + this.f15;
                        this.f20 = this.f18 * this.f17;
                        this.f21 = this.f12;
                        this.f13 = this.f13;
                        this.f22 = this.f8;
                        this.f15 = this.f15;
                        this.f13 = this.f22 + this.f13;
                        this.f20 = this.f20;
                        this.f17 = this.f21 * this.f17;
                        this.f13 = this.f13;
                        this.f17 = this.f17;
                        this.f20 = this.f20;
                        this.f15 = this.f15;
                        this.f15 += this.f20;
                        this.f17 = this.f17;
                        this.f13 = this.f13;
                        this.f13 += this.f17;
                        this.f15 = this.f15;
                        sf32(this.f15,mstate.ebp + -32);
                        this.f13 = this.f13;
                        sf32(this.f13,mstate.ebp + -28);
                        si8(this.i0,mstate.ebp + -24);
                        this.i11 = this.i7 + 1;
                        si8(this.i7,mstate.ebp + -23);
                        this.i7 = this.i11 < this.i8 ? this.i11 : 0;
                        this.i8 = this.i7 << 3;
                        si8(this.i10,mstate.ebp + -22);
                        this.i11 = 0;
                        si8(this.i11,mstate.ebp + -21);
                        this.i1 += this.i8;
                        this.f13 = lf32(this.i1);
                        this.f14 *= this.f13;
                        this.f14 = this.f14;
                        this.f13 = this.f16 * this.f13;
                        this.f15 = lf32(this.i1 + 4);
                        this.f14 = this.f14;
                        this.f13 = this.f13;
                        this.f14 = this.f19 + this.f14;
                        this.f13 = this.f13;
                        this.f16 = this.f18 * this.f15;
                        this.f14 = this.f14;
                        this.f13 = this.f22 + this.f13;
                        this.f16 = this.f16;
                        this.f15 = this.f21 * this.f15;
                        this.f13 = this.f13;
                        this.f15 = this.f15;
                        this.f16 = this.f16;
                        this.f14 = this.f14;
                        this.f14 += this.f16;
                        this.f15 = this.f15;
                        this.f13 = this.f13;
                        this.f13 += this.f15;
                        this.f14 = this.f14;
                        sf32(this.f14,mstate.ebp + -20);
                        this.f13 = this.f13;
                        sf32(this.f13,mstate.ebp + -16);
                        si8(this.i0,mstate.ebp + -12);
                        si8(this.i7,mstate.ebp + -11);
                        si8(this.i10,mstate.ebp + -10);
                        si8(this.i11,mstate.ebp + -9);
                        this.i1 = li32(this.i9);
                        this.i7 = this.i0 + 1;
                        this.i1 = this.i7 < this.i1 ? this.i7 : 0;
                        this.i7 = this.i1 << 3;
                        this.i4 += 24;
                        this.i8 = this.i0 << 3;
                        this.i7 = this.i4 + this.i7;
                        this.i4 += this.i8;
                        this.f13 = lf32(this.i4);
                        this.f14 = lf32(this.i4 + 4);
                        this.f15 = lf32(this.i7);
                        this.f16 = lf32(this.i7 + 4);
                        this.f17 = this.f13;
                        this.f18 = this.f15;
                        this.f19 = this.f14;
                        this.f20 = this.f16;
                        this.f17 = this.f18 - this.f17;
                        this.f18 = this.f20 - this.f19;
                        this.f17 = this.f17;
                        this.f18 = this.f18;
                        this.f19 = this.f17;
                        this.f20 = this.f18;
                        this.f19 *= this.f19;
                        this.f20 *= this.f20;
                        this.f19 = this.f19;
                        this.f20 = this.f20;
                        this.f20 = this.f20;
                        this.f19 = this.f19;
                        this.f19 += this.f20;
                        this.f19 = this.f19;
                        this.f19 = this.f19;
                        this.f19 = Math.sqrt(this.f19);
                        this.f19 = this.f19;
                        this.f20 = 1.19209e-7;
                        this.f20 = this.f20;
                        this.f20 = this.f20;
                        this.f21 = this.f19;
                        if(this.f21 >= this.f20)
                        {
                           this.f20 = 1;
                           this.f20 = this.f20;
                           this.f19 = this.f19;
                           this.f20 = this.f20;
                           this.f19 = this.f20 / this.f19;
                           this.f19 = this.f19;
                           this.f17 = this.f17;
                           this.f19 = this.f19;
                           this.f18 = this.f18;
                           this.f17 *= this.f19;
                           this.f18 *= this.f19;
                           this.f17 = this.f17;
                           this.f18 = this.f18;
                        }
                        this.f19 = 0.5;
                        this.f13 = this.f13;
                        this.f20 = this.f4;
                        this.f21 = this.f3;
                        this.f22 = this.f20 * this.f13;
                        this.f23 = this.f21 * this.f13;
                        this.f22 = this.f22;
                        this.f23 = this.f23;
                        this.f17 = this.f17;
                        this.f22 = this.f22;
                        this.f24 = this.f2;
                        this.f14 = this.f14;
                        this.f25 = this.f6;
                        this.f26 = this.f18;
                        this.f27 = this.f5;
                        this.f23 = this.f23;
                        this.f28 = this.f1;
                        this.f29 = this.f25 * this.f14;
                        this.f22 = this.f24 + this.f22;
                        this.f24 = this.f27 * this.f14;
                        this.f23 = this.f28 + this.f23;
                        this.f25 *= this.f26;
                        this.f20 *= this.f17;
                        this.f26 = this.f27 * this.f26;
                        this.f21 *= this.f17;
                        this.f27 = this.f29;
                        this.f22 = this.f22;
                        this.f24 = this.f24;
                        this.f23 = this.f23;
                        this.f25 = this.f25;
                        this.f20 = this.f20;
                        this.f26 = this.f26;
                        this.f21 = this.f21;
                        this.f27 = this.f27;
                        this.f22 = this.f22;
                        this.f24 = this.f24;
                        this.f23 = this.f23;
                        this.f25 = this.f25;
                        this.f20 = this.f20;
                        this.f26 = this.f26;
                        this.f21 = this.f21;
                        this.f22 += this.f27;
                        this.f23 += this.f24;
                        this.f20 += this.f25;
                        this.f21 += this.f26;
                        this.f22 = this.f22;
                        this.f23 = this.f23;
                        this.f20 = this.f20;
                        this.f21 = this.f21;
                        this.f24 = this.f20;
                        this.f22 = this.f22;
                        this.f23 = this.f23;
                        this.f25 = this.f21;
                        this.f26 = this.f24 * this.f22;
                        this.f27 = this.f25 * this.f23;
                        this.f26 = this.f26;
                        this.f27 = this.f27;
                        this.f26 = this.f26;
                        this.f27 = this.f27;
                        this.f26 = this.f27 + this.f26;
                        this.f26 = this.f26;
                        this.f25 = -this.f25;
                        this.f25 = this.f25;
                        this.f26 = this.f26;
                        this.f27 = this.f0;
                        this.f28 = this.f25;
                        this.f29 = this.f16;
                        this.f30 = this.f15;
                        this.f26 = this.f27 - this.f26;
                        this.f27 = -this.f24;
                        mstate.esp -= 24;
                        this.f23 = this.f24 * this.f23;
                        this.f22 = this.f28 * this.f22;
                        this.f14 += this.f29;
                        this.f13 += this.f30;
                        this.f24 = this.f26;
                        this.f26 = this.f27;
                        this.i4 = mstate.ebp + -32;
                        this.i7 = mstate.ebp + -64;
                        this.f23 = this.f23;
                        this.f22 = this.f22;
                        this.f14 = this.f14;
                        this.f13 = this.f13;
                        this.f19 = this.f19;
                        si32(this.i7,mstate.esp);
                        si32(this.i4,mstate.esp + 4);
                        sf32(this.f25,mstate.esp + 8);
                        sf32(this.f26,mstate.esp + 12);
                        sf32(this.f24,mstate.esp + 16);
                        si32(this.i0,mstate.esp + 20);
                        this.f22 = this.f22;
                        this.f23 = this.f23;
                        this.f14 = this.f14;
                        this.f19 = this.f19;
                        this.f13 = this.f13;
                        this.f17 = -this.f17;
                        this.f22 = this.f23 + this.f22;
                        this.f14 *= this.f19;
                        this.f13 *= this.f19;
                        mstate.esp -= 4;
                        FSM__Z19b2ClipSegmentToLineP12b2ClipVertexPKS_RK6b2Vec2fi342.start();
                        addr11db:
                        this.i0 = mstate.eax;
                        mstate.esp += 24;
                        this.f17 = this.f17;
                        this.f19 = this.f22;
                        this.f14 = this.f14;
                        this.f13 = this.f13;
                        if(this.i0 >= 2)
                        {
                           this.i0 = mstate.ebp + -96;
                           this.f4 = this.f4;
                           this.f15 = this.f15;
                           this.f3 = this.f3;
                           this.f4 *= this.f15;
                           this.f3 *= this.f15;
                           this.f4 = this.f4;
                           this.f3 = this.f3;
                           this.f6 = this.f6;
                           this.f15 = this.f16;
                           this.f5 = this.f5;
                           this.f4 = this.f4;
                           this.f2 = this.f2;
                           this.f3 = this.f3;
                           this.f1 = this.f1;
                           this.f6 *= this.f15;
                           this.f2 += this.f4;
                           this.f4 = this.f5 * this.f15;
                           this.f1 += this.f3;
                           this.f3 = this.f6;
                           this.f2 = this.f2;
                           this.f4 = this.f4;
                           this.f1 = this.f1;
                           this.f3 = this.f3;
                           this.f2 = this.f2;
                           this.f4 = this.f4;
                           this.f1 = this.f1;
                           this.f2 += this.f3;
                           this.f1 += this.f4;
                           this.f2 = this.f2;
                           this.f1 = this.f1;
                           this.f2 = this.f2;
                           this.f3 = this.f20;
                           this.f1 = this.f1;
                           this.f4 = this.f21;
                           this.f2 = this.f3 * this.f2;
                           this.f1 = this.f4 * this.f1;
                           this.f2 = this.f2;
                           this.f1 = this.f1;
                           this.f2 = this.f2;
                           this.f1 = this.f1;
                           this.f1 += this.f2;
                           this.f1 = this.f1;
                           this.f2 = this.f0;
                           this.f1 = this.f1;
                           this.f1 += this.f2;
                           mstate.esp -= 24;
                           this.f1 = this.f1;
                           si32(this.i0,mstate.esp);
                           si32(this.i7,mstate.esp + 4);
                           sf32(this.f21,mstate.esp + 8);
                           sf32(this.f20,mstate.esp + 12);
                           sf32(this.f1,mstate.esp + 16);
                           si32(this.i1,mstate.esp + 20);
                           mstate.esp -= 4;
                           FSM__Z19b2ClipSegmentToLineP12b2ClipVertexPKS_RK6b2Vec2fi342.start();
                           addr144f:
                           this.i0 = mstate.eax;
                           mstate.esp += 24;
                           if(this.i0 >= 2)
                           {
                              sf32(this.f18,this.i3 + 48);
                              sf32(this.f17,this.i3 + 52);
                              this.i0 = this.i2 ^ 1;
                              sf32(this.f13,this.i3 + 56);
                              sf32(this.f14,this.i3 + 60);
                              this.i0 &= 1;
                              if(this.i0 == 0)
                              {
                                 this.i0 = 0;
                                 this.i1 = this.i6;
                                 this.i2 = this.i0;
                                 do
                                 {
                                    this.f1 = lf32(this.i1);
                                    this.f2 = lf32(this.i1 + 4);
                                    this.f3 = this.f1;
                                    this.f4 = this.f20;
                                    this.f5 = this.f2;
                                    this.f6 = this.f25;
                                    this.f3 = this.f4 * this.f3;
                                    this.f4 = this.f6 * this.f5;
                                    this.f3 = this.f3;
                                    this.f4 = this.f4;
                                    this.f4 = this.f4;
                                    this.f3 = this.f3;
                                    this.f3 += this.f4;
                                    this.f3 = this.f3;
                                    this.f4 = this.f19;
                                    this.f3 = this.f3;
                                    this.f3 -= this.f4;
                                    this.f3 = this.f3;
                                    this.f4 = this.f0;
                                    this.f3 = this.f3;
                                    if(this.f3 <= this.f4)
                                    {
                                       this.f3 = this.f8;
                                       this.f2 = this.f2;
                                       this.f4 = this.f7;
                                       this.f1 = this.f1;
                                       this.f2 -= this.f3;
                                       this.f1 -= this.f4;
                                       this.f2 = this.f2;
                                       this.f1 = this.f1;
                                       this.f3 = this.f10;
                                       this.f2 = this.f2;
                                       this.f4 = this.f9;
                                       this.f1 = this.f1;
                                       this.f5 = this.f12;
                                       this.f3 = this.f2 * this.f3;
                                       this.f6 = this.f11;
                                       this.f4 = this.f1 * this.f4;
                                       this.f2 *= this.f5;
                                       this.f3 = this.f3;
                                       this.f1 *= this.f6;
                                       this.f4 = this.f4;
                                       this.f2 = this.f2;
                                       this.f1 = this.f1;
                                       this.f3 = this.f3;
                                       this.f4 = this.f4;
                                       this.f3 = this.f4 + this.f3;
                                       this.f2 = this.f2;
                                       this.f1 = this.f1;
                                       this.i4 = this.i0 * 24;
                                       this.f1 += this.f2;
                                       this.f2 = this.f3;
                                       this.i4 = this.i3 + this.i4;
                                       sf32(this.f2,this.i4);
                                       this.f1 = this.f1;
                                       sf32(this.f1,this.i4 + 4);
                                       this.i6 = li32(this.i1 + 8);
                                       si32(this.i6,this.i4 + 16);
                                       this.i6 = li8(this.i4 + 16);
                                       this.i7 = li8(this.i4 + 17);
                                       this.i8 = li8(this.i4 + 18);
                                       this.i9 = li8(this.i4 + 19);
                                       si8(this.i7,this.i4 + 16);
                                       si8(this.i6,this.i4 + 17);
                                       si8(this.i9,this.i4 + 18);
                                       si8(this.i8,this.i4 + 19);
                                       this.i0 += 1;
                                    }
                                    this.i1 += 12;
                                    this.i2 += 1;
                                 }
                                 while(this.i2 != 2);
                              }
                              else
                              {
                                 this.f1 = lf32(mstate.ebp + -96);
                                 this.f2 = lf32(mstate.ebp + -92);
                                 this.f3 = this.f1;
                                 this.f4 = this.f20;
                                 this.f5 = this.f2;
                                 this.f6 = this.f25;
                                 this.f3 = this.f4 * this.f3;
                                 this.f4 = this.f6 * this.f5;
                                 this.f3 = this.f3;
                                 this.f4 = this.f4;
                                 this.f4 = this.f4;
                                 this.f3 = this.f3;
                                 this.f3 += this.f4;
                                 this.f3 = this.f3;
                                 this.f4 = this.f19;
                                 this.f3 = this.f3;
                                 this.f3 -= this.f4;
                                 this.f3 = this.f3;
                                 this.f4 = this.f0;
                                 this.f3 = this.f3;
                                 if(this.f3 > this.f4)
                                 {
                                    this.i0 = 0;
                                 }
                                 else
                                 {
                                    this.i0 = 1;
                                    this.f3 = this.f8;
                                    this.f2 = this.f2;
                                    this.f4 = this.f7;
                                    this.f1 = this.f1;
                                    this.f2 -= this.f3;
                                    this.f1 -= this.f4;
                                    this.f2 = this.f2;
                                    this.f1 = this.f1;
                                    this.f3 = this.f10;
                                    this.f2 = this.f2;
                                    this.f4 = this.f9;
                                    this.f1 = this.f1;
                                    this.f5 = this.f12;
                                    this.f3 = this.f2 * this.f3;
                                    this.f6 = this.f11;
                                    this.f4 = this.f1 * this.f4;
                                    this.f2 *= this.f5;
                                    this.f3 = this.f3;
                                    this.f1 *= this.f6;
                                    this.f4 = this.f4;
                                    this.f2 = this.f2;
                                    this.f1 = this.f1;
                                    this.f3 = this.f3;
                                    this.f4 = this.f4;
                                    this.f3 = this.f4 + this.f3;
                                    this.f2 = this.f2;
                                    this.f1 = this.f1;
                                    this.f1 += this.f2;
                                    this.f2 = this.f3;
                                    sf32(this.f2,this.i3);
                                    this.f1 = this.f1;
                                    sf32(this.f1,this.i3 + 4);
                                    this.i1 = li32(mstate.ebp + -88);
                                    si32(this.i1,this.i3 + 16);
                                 }
                                 this.f1 = lf32(mstate.ebp + -84);
                                 this.f2 = lf32(mstate.ebp + -80);
                                 this.f3 = this.f1;
                                 this.f4 = this.f20;
                                 this.f5 = this.f2;
                                 this.f6 = this.f25;
                                 this.f3 = this.f4 * this.f3;
                                 this.f4 = this.f6 * this.f5;
                                 this.f3 = this.f3;
                                 this.f4 = this.f4;
                                 this.f4 = this.f4;
                                 this.f3 = this.f3;
                                 this.f3 += this.f4;
                                 this.f3 = this.f3;
                                 this.f4 = this.f19;
                                 this.f3 = this.f3;
                                 this.f3 -= this.f4;
                                 this.f3 = this.f3;
                                 this.f0 = this.f0;
                                 this.f3 = this.f3;
                                 if(this.f3 <= this.f0)
                                 {
                                    this.f0 = this.f8;
                                    this.f2 = this.f2;
                                    this.f3 = this.f7;
                                    this.f1 = this.f1;
                                    this.f0 = this.f2 - this.f0;
                                    this.f1 -= this.f3;
                                    this.f0 = this.f0;
                                    this.f1 = this.f1;
                                    this.f2 = this.f10;
                                    this.f0 = this.f0;
                                    this.f3 = this.f9;
                                    this.f1 = this.f1;
                                    this.f4 = this.f12;
                                    this.f2 = this.f0 * this.f2;
                                    this.f5 = this.f11;
                                    this.f3 = this.f1 * this.f3;
                                    this.f0 *= this.f4;
                                    this.f2 = this.f2;
                                    this.f1 *= this.f5;
                                    this.f3 = this.f3;
                                    this.f0 = this.f0;
                                    this.f1 = this.f1;
                                    this.f2 = this.f2;
                                    this.f3 = this.f3;
                                    this.f2 = this.f3 + this.f2;
                                    this.f0 = this.f0;
                                    this.f1 = this.f1;
                                    this.i1 = this.i0 * 24;
                                    this.f0 = this.f1 + this.f0;
                                    this.f1 = this.f2;
                                    this.i1 = this.i3 + this.i1;
                                    sf32(this.f1,this.i1);
                                    this.f0 = this.f0;
                                    sf32(this.f0,this.i1 + 4);
                                    this.i2 = li32(mstate.ebp + -76);
                                    si32(this.i2,this.i1 + 16);
                                    this.i0 += 1;
                                 }
                              }
                              si32(this.i0,this.i5);
                           }
                        }
                        break;
                     }
                  }
                  this.i0 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i1 = cmodule.Box2D.__2E_str1670;
                  this.i2 = cmodule.Box2D.__2E_str43250;
                  this.i3 = cmodule.Box2D.__ZZ18b2FindIncidentEdgeP12b2ClipVertexPK14b2PolygonShapeRK11b2TransformiS3_S6_E8__func__;
                  this.i4 = cmodule.Box2D.__2E_str58265;
                  this.i5 = 153;
                  this.i0 += 176;
                  si32(this.i0,mstate.esp);
                  si32(this.i1,mstate.esp + 4);
                  si32(this.i2,mstate.esp + 8);
                  si32(this.i3,mstate.esp + 12);
                  si32(this.i4,mstate.esp + 16);
                  si32(this.i5,mstate.esp + 20);
                  state = 3;
                  mstate.esp -= 4;
                  FSM_fprintf.start();
                  return;
               }
               break;
            case 4:
               §§goto(addr05e9);
            case 5:
               §§goto(addr11db);
            case 6:
               §§goto(addr144f);
            case 3:
               mstate.esp += 24;
               state = 4;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            default:
               throw "Invalid state in __ZN16b2PolygonContact8EvaluateEP10b2ManifoldRK11b2TransformS4_";
         }
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp += 4;
         mstate.esp += 4;
         mstate.gworker = caller;
      }
   }
}

