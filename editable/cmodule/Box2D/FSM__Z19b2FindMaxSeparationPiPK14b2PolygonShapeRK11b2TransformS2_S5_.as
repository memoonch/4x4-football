package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__Z19b2FindMaxSeparationPiPK14b2PolygonShapeRK11b2TransformS2_S5_ extends Machine
   {
      
      public static const intRegCount:int = 9;
      
      public static const NumberRegCount:int = 16;
      
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
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public var i6:int;
      
      public var i7:int;
      
      public var i8:int;
      
      public function FSM__Z19b2FindMaxSeparationPiPK14b2PolygonShapeRK11b2TransformS2_S5_()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__Z19b2FindMaxSeparationPiPK14b2PolygonShapeRK11b2TransformS2_S5_ = null;
         _loc1_ = new FSM__Z19b2FindMaxSeparationPiPK14b2PolygonShapeRK11b2TransformS2_S5_();
         cmodule.Box2D.gstate.gworker = _loc1_;
      }
      
      final override public function work() : void
      {
         loop1:
         switch(state)
         {
            case 0:
               mstate.esp -= 4;
               si32(mstate.ebp,mstate.esp);
               mstate.ebp = mstate.esp;
               mstate.esp -= 0;
               this.i0 = li32(mstate.ebp + 12);
               this.i1 = li32(mstate.ebp + 16);
               this.i2 = li32(mstate.ebp + 20);
               this.i3 = li32(mstate.ebp + 24);
               this.f0 = lf32(this.i1 + 8);
               this.f1 = lf32(this.i0 + 16);
               this.f2 = lf32(this.i1 + 12);
               this.f3 = lf32(this.i3 + 8);
               this.f4 = lf32(this.i2 + 16);
               this.f5 = lf32(this.i3 + 12);
               this.f6 = this.f0 * this.f1;
               this.f1 = this.f2 * this.f1;
               this.f3 *= this.f4;
               this.f4 = this.f5 * this.f4;
               this.f5 = this.f6;
               this.f1 = this.f1;
               this.f3 = this.f3;
               this.f4 = this.f4;
               this.f6 = lf32(this.i1);
               this.f5 = this.f5;
               this.f7 = lf32(this.i1 + 16);
               this.f8 = lf32(this.i0 + 20);
               this.f9 = lf32(this.i1 + 20);
               this.f10 = lf32(this.i1 + 4);
               this.f1 = this.f1;
               this.f11 = lf32(this.i3);
               this.f3 = this.f3;
               this.f12 = lf32(this.i3 + 16);
               this.f13 = lf32(this.i2 + 20);
               this.f14 = lf32(this.i3 + 20);
               this.f15 = lf32(this.i3 + 4);
               this.f4 = this.f4;
               this.f5 = this.f6 + this.f5;
               this.f1 = this.f10 + this.f1;
               this.f6 = this.f7 * this.f8;
               this.f8 = this.f9 * this.f8;
               this.f3 = this.f11 + this.f3;
               this.f4 = this.f15 + this.f4;
               this.f10 = this.f12 * this.f13;
               this.f11 = this.f14 * this.f13;
               this.f5 = this.f5;
               this.f1 = this.f1;
               this.f6 = this.f6;
               this.f8 = this.f8;
               this.f3 = this.f3;
               this.f4 = this.f4;
               this.f10 = this.f10;
               this.f11 = this.f11;
               this.f6 = this.f6;
               this.f5 = this.f5;
               this.f8 = this.f8;
               this.f1 = this.f1;
               this.f10 = this.f10;
               this.f3 = this.f3;
               this.f11 = this.f11;
               this.f4 = this.f4;
               this.f5 += this.f6;
               this.f1 += this.f8;
               this.f3 += this.f10;
               this.f4 += this.f11;
               this.f5 = this.f5;
               this.f1 = this.f1;
               this.f3 = this.f3;
               this.f4 = this.f4;
               this.f5 = this.f5;
               this.f3 = this.f3;
               this.f1 = this.f1;
               this.f4 = this.f4;
               this.f3 -= this.f5;
               this.f1 = this.f4 - this.f1;
               this.f3 = this.f3;
               this.f1 = this.f1;
               this.f3 = this.f3;
               this.f1 = this.f1;
               this.f4 = this.f3 * this.f7;
               this.f0 = this.f3 * this.f0;
               this.f3 = this.f1 * this.f9;
               this.f1 *= this.f2;
               this.f2 = this.f4;
               this.f0 = this.f0;
               this.f3 = this.f3;
               this.f1 = this.f1;
               this.f3 = this.f3;
               this.f2 = this.f2;
               this.f1 = this.f1;
               this.f0 = this.f0;
               this.i4 = li32(this.i0 + 152);
               this.f2 += this.f3;
               this.f0 += this.f1;
               this.f1 = this.f2;
               this.f0 = this.f0;
               this.i5 = li32(mstate.ebp + 8);
               this.i6 = this.i0;
               if(this.i4 <= 0)
               {
                  this.i6 = 0;
               }
               else
               {
                  this.f2 = -3.40282e+38;
                  this.f2 = this.f2;
                  this.i7 = 0;
                  this.i8 = this.i7;
                  do
                  {
                     this.f3 = lf32(this.i6 + 88);
                     this.f4 = lf32(this.i6 + 92);
                     this.f5 = this.f0;
                     this.f6 = this.f1;
                     this.f3 *= this.f5;
                     this.f4 *= this.f6;
                     this.f3 = this.f3;
                     this.f4 = this.f4;
                     this.f4 = this.f4;
                     this.f3 = this.f3;
                     this.f3 += this.f4;
                     this.f3 = this.f3;
                     this.f2 = this.f2;
                     this.f3 = this.f3;
                     this.f4 = this.f3 > this.f2 ? this.f3 : this.f2;
                     this.i7 = this.f3 > this.f2 ? this.i8 : this.i7;
                     this.f2 = this.f4;
                     this.i6 += 8;
                     this.i8 += 1;
                  }
                  while(this.i8 != this.i4);
                  this.i6 = this.i7;
               }
               mstate.esp -= 20;
               si32(this.i0,mstate.esp);
               si32(this.i1,mstate.esp + 4);
               si32(this.i6,mstate.esp + 8);
               si32(this.i2,mstate.esp + 12);
               si32(this.i3,mstate.esp + 16);
               state = 1;
               mstate.esp -= 4;
               FSM__Z16b2EdgeSeparationPK14b2PolygonShapeRK11b2TransformiS1_S4_.start();
               return;
            case 1:
               this.f0 = mstate.st0;
               this.i7 = this.i6 + -1;
               mstate.esp += 20;
               this.i7 = this.i7 > -1 ? this.i6 : this.i4;
               mstate.esp -= 20;
               this.i7 += -1;
               si32(this.i0,mstate.esp);
               si32(this.i1,mstate.esp + 4);
               si32(this.i7,mstate.esp + 8);
               si32(this.i2,mstate.esp + 12);
               si32(this.i3,mstate.esp + 16);
               state = 2;
               mstate.esp -= 4;
               FSM__Z16b2EdgeSeparationPK14b2PolygonShapeRK11b2TransformiS1_S4_.start();
               return;
            case 2:
               this.f1 = mstate.st0;
               mstate.esp += 20;
               this.i8 = this.i6 + 1;
               mstate.esp -= 20;
               this.i8 = this.i8 < this.i4 ? this.i8 : 0;
               si32(this.i0,mstate.esp);
               si32(this.i1,mstate.esp + 4);
               si32(this.i8,mstate.esp + 8);
               si32(this.i2,mstate.esp + 12);
               si32(this.i3,mstate.esp + 16);
               state = 3;
               mstate.esp -= 4;
               FSM__Z16b2EdgeSeparationPK14b2PolygonShapeRK11b2TransformiS1_S4_.start();
               return;
            case 3:
               this.f2 = mstate.st0;
               mstate.esp += 20;
               this.f3 = this.f2;
               this.f4 = this.f1;
               while(true)
               {
                  if(this.f4 > this.f3)
                  {
                     this.f3 = this.f0;
                     this.f4 = this.f1;
                     if(this.f4 > this.f3)
                     {
                        this.i6 = 1;
                        this.i8 = this.i7;
                        this.f0 = this.f1;
                        break;
                     }
                  }
                  this.f1 = this.f0;
                  this.f3 = this.f2;
                  if(this.f3 <= this.f1)
                  {
                     this.i8 = this.i6;
                     break loop1;
                  }
                  this.i6 = 0;
                  this.f0 = this.f2;
                  break;
               }
               this.i6 &= 1;
               if(this.i6 == 0)
               {
                  §§goto(addr07e5);
               }
               else
               {
                  §§goto(addr08d0);
               }
            case 4:
               this.f1 = mstate.st0;
               mstate.esp += 20;
               this.f2 = this.f0;
               this.f3 = this.f1;
               if(this.f3 <= this.f2)
               {
                  break;
               }
               this.i8 = this.i6;
               this.f0 = this.f1;
               addr07e5:
               this.i6 = this.i8 + 1;
               mstate.esp -= 20;
               this.i6 = this.i6 < this.i4 ? this.i6 : 0;
               si32(this.i0,mstate.esp);
               si32(this.i1,mstate.esp + 4);
               si32(this.i6,mstate.esp + 8);
               si32(this.i2,mstate.esp + 12);
               si32(this.i3,mstate.esp + 16);
               state = 4;
               mstate.esp -= 4;
               FSM__Z16b2EdgeSeparationPK14b2PolygonShapeRK11b2TransformiS1_S4_.start();
               return;
               break;
            case 5:
               this.f1 = mstate.st0;
               mstate.esp += 20;
               this.f2 = this.f0;
               this.f3 = this.f1;
               if(this.f3 <= this.f2)
               {
                  break;
               }
               this.i8 = this.i6;
               this.f0 = this.f1;
               addr08d0:
               this.i6 = this.i8 + -1;
               this.i6 = this.i6 > -1 ? this.i8 : this.i4;
               mstate.esp -= 20;
               this.i6 += -1;
               si32(this.i0,mstate.esp);
               si32(this.i1,mstate.esp + 4);
               si32(this.i6,mstate.esp + 8);
               si32(this.i2,mstate.esp + 12);
               si32(this.i3,mstate.esp + 16);
               state = 5;
               mstate.esp -= 4;
               FSM__Z16b2EdgeSeparationPK14b2PolygonShapeRK11b2TransformiS1_S4_.start();
               return;
               break;
            default:
               throw "Invalid state in __Z19b2FindMaxSeparationPiPK14b2PolygonShapeRK11b2TransformS2_S5_";
         }
         this.i0 = this.i8;
         si32(this.i0,this.i5);
         mstate.st0 = this.f0;
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp += 4;
         mstate.esp += 4;
         mstate.gworker = caller;
      }
   }
}

