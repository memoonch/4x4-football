package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__Z16b2EdgeSeparationPK14b2PolygonShapeRK11b2TransformiS1_S4_ extends Machine
   {
      
      public static const intRegCount:int = 9;
      
      public static const NumberRegCount:int = 17;
      
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
      
      public var f16:Number;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public var i6:int;
      
      public var i7:int;
      
      public var i8:int;
      
      public function FSM__Z16b2EdgeSeparationPK14b2PolygonShapeRK11b2TransformiS1_S4_()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__Z16b2EdgeSeparationPK14b2PolygonShapeRK11b2TransformiS1_S4_ = null;
         _loc1_ = new FSM__Z16b2EdgeSeparationPK14b2PolygonShapeRK11b2TransformiS1_S4_();
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
               this.i1 = li32(mstate.ebp + 20);
               this.i2 = li32(this.i0 + 152);
               this.i3 = li32(this.i1 + 152);
               this.i4 = li32(mstate.ebp + 12);
               this.i5 = li32(mstate.ebp + 16);
               this.i6 = li32(mstate.ebp + 24);
               this.i7 = this.i1;
               if(this.i2 > this.i5)
               {
                  if(this.i5 > -1)
                  {
                     break;
                  }
               }
               this.i0 = cmodule.Box2D.___sF;
               mstate.esp -= 24;
               this.i1 = cmodule.Box2D.__2E_str1670;
               this.i3 = cmodule.Box2D.__2E_str43250;
               this.i4 = cmodule.Box2D.__ZZ16b2EdgeSeparationPK14b2PolygonShapeRK11b2TransformiS1_S4_E8__func__;
               this.i5 = cmodule.Box2D.__2E_str58265;
               this.i6 = 33;
               this.i0 += 176;
               si32(this.i0,mstate.esp);
               si32(this.i1,mstate.esp + 4);
               si32(this.i3,mstate.esp + 8);
               si32(this.i4,mstate.esp + 12);
               si32(this.i5,mstate.esp + 16);
               si32(this.i6,mstate.esp + 20);
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
               throw "Invalid state in __Z16b2EdgeSeparationPK14b2PolygonShapeRK11b2TransformiS1_S4_";
         }
         this.i2 = this.i5 << 3;
         this.f0 = lf32(this.i4 + 12);
         this.f1 = lf32(this.i4 + 20);
         this.f2 = lf32(this.i4 + 8);
         this.f3 = lf32(this.i4 + 16);
         this.i2 = this.i0 + this.i2;
         this.f4 = lf32(this.i2 + 88);
         this.f5 = this.f2;
         this.f6 = this.f0;
         this.f7 = lf32(this.i2 + 92);
         this.f8 = this.f1;
         this.f9 = this.f3;
         this.f5 *= this.f4;
         this.f8 *= this.f7;
         this.f7 = this.f9 * this.f7;
         this.f4 = this.f6 * this.f4;
         this.f5 = this.f5;
         this.f6 = this.f8;
         this.f7 = this.f7;
         this.f4 = this.f4;
         this.f7 = this.f7;
         this.f5 = this.f5;
         this.f6 = this.f6;
         this.f4 = this.f4;
         this.f5 += this.f7;
         this.f4 += this.f6;
         this.f6 = lf32(this.i6 + 16);
         this.f7 = lf32(this.i6 + 20);
         this.f8 = lf32(this.i6 + 8);
         this.f9 = lf32(this.i6 + 12);
         this.f5 = this.f5;
         this.f4 = this.f4;
         this.f10 = this.f6;
         this.f11 = this.f5;
         this.f12 = this.f8;
         this.f13 = this.f7;
         this.f14 = this.f4;
         this.f15 = this.f9;
         this.f10 = this.f11 * this.f10;
         this.f11 *= this.f12;
         this.f12 = this.f14 * this.f13;
         this.f13 = this.f14 * this.f15;
         this.f10 = this.f10;
         this.f11 = this.f11;
         this.f12 = this.f12;
         this.f13 = this.f13;
         this.f12 = this.f12;
         this.f10 = this.f10;
         this.f13 = this.f13;
         this.f11 = this.f11;
         this.f10 += this.f12;
         this.f11 += this.f13;
         this.f10 = this.f10;
         this.f11 = this.f11;
         if(this.i3 <= 0)
         {
            this.i3 = 0;
         }
         else
         {
            this.f12 = 3.40282e+38;
            this.f12 = this.f12;
            this.i2 = 0;
            this.i8 = this.i2;
            do
            {
               this.f13 = lf32(this.i7 + 24);
               this.f14 = lf32(this.i7 + 28);
               this.f15 = this.f11;
               this.f16 = this.f10;
               this.f13 *= this.f15;
               this.f14 *= this.f16;
               this.f13 = this.f13;
               this.f14 = this.f14;
               this.f14 = this.f14;
               this.f13 = this.f13;
               this.f13 += this.f14;
               this.f13 = this.f13;
               this.f12 = this.f12;
               this.f13 = this.f13;
               this.f14 = this.f13 < this.f12 ? this.f13 : this.f12;
               this.i2 = this.f13 < this.f12 ? this.i8 : this.i2;
               this.f12 = this.f14;
               this.i7 += 8;
               this.i8 += 1;
            }
            while(this.i8 != this.i3);
            this.i3 = this.i2;
         }
         this.i2 = this.i3;
         this.i2 <<= 3;
         this.i3 = this.i5 << 3;
         this.i0 += this.i3;
         this.i1 += this.i2;
         this.f10 = lf32(this.i0 + 24);
         this.f2 = this.f2;
         this.f0 = this.f0;
         this.f11 = lf32(this.i1 + 24);
         this.f8 = this.f8;
         this.f9 = this.f9;
         this.f2 *= this.f10;
         this.f0 *= this.f10;
         this.f8 *= this.f11;
         this.f9 *= this.f11;
         this.f2 = this.f2;
         this.f0 = this.f0;
         this.f8 = this.f8;
         this.f9 = this.f9;
         this.f10 = lf32(this.i4);
         this.f2 = this.f2;
         this.f11 = lf32(this.i0 + 28);
         this.f3 = this.f3;
         this.f1 = this.f1;
         this.f12 = lf32(this.i4 + 4);
         this.f0 = this.f0;
         this.f13 = lf32(this.i6);
         this.f8 = this.f8;
         this.f14 = lf32(this.i1 + 28);
         this.f15 = lf32(this.i6 + 4);
         this.f9 = this.f9;
         this.f6 = this.f6;
         this.f7 = this.f7;
         this.f2 = this.f10 + this.f2;
         this.f0 = this.f12 + this.f0;
         this.f3 *= this.f11;
         this.f1 *= this.f11;
         this.f8 = this.f13 + this.f8;
         this.f9 = this.f15 + this.f9;
         this.f6 *= this.f14;
         this.f7 *= this.f14;
         this.f2 = this.f2;
         this.f0 = this.f0;
         this.f3 = this.f3;
         this.f1 = this.f1;
         this.f8 = this.f8;
         this.f9 = this.f9;
         this.f6 = this.f6;
         this.f7 = this.f7;
         this.f3 = this.f3;
         this.f2 = this.f2;
         this.f1 = this.f1;
         this.f0 = this.f0;
         this.f6 = this.f6;
         this.f8 = this.f8;
         this.f7 = this.f7;
         this.f9 = this.f9;
         this.f2 += this.f3;
         this.f0 += this.f1;
         this.f1 = this.f8 + this.f6;
         this.f3 = this.f9 + this.f7;
         this.f2 = this.f2;
         this.f0 = this.f0;
         this.f1 = this.f1;
         this.f3 = this.f3;
         this.f2 = this.f2;
         this.f1 = this.f1;
         this.f0 = this.f0;
         this.f3 = this.f3;
         this.f1 -= this.f2;
         this.f0 = this.f3 - this.f0;
         this.f1 = this.f1;
         this.f0 = this.f0;
         this.f2 = this.f5;
         this.f1 = this.f1;
         this.f3 = this.f4;
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
      }
   }
}

