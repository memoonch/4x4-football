package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public final class FSM__Z22b2CollideEdgeAndCircleP10b2ManifoldPK11b2EdgeShapeRK11b2TransformPK13b2CircleShapeS6_ extends Machine
   {
      
      public static const intRegCount:int = 6;
      
      public static const NumberRegCount:int = 17;
      
      public var f15:Number;
      
      public var f10:Number;
      
      public var f11:Number;
      
      public var f12:Number;
      
      public var f13:Number;
      
      public var f14:Number;
      
      public var f0:Number;
      
      public var f1:Number;
      
      public var f2:Number;
      
      public var f3:Number;
      
      public var f5:Number;
      
      public var f7:Number;
      
      public var f9:Number;
      
      public var f4:Number;
      
      public var f6:Number;
      
      public var f8:Number;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public var f16:Number;
      
      public function FSM__Z22b2CollideEdgeAndCircleP10b2ManifoldPK11b2EdgeShapeRK11b2TransformPK13b2CircleShapeS6_()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__Z22b2CollideEdgeAndCircleP10b2ManifoldPK11b2EdgeShapeRK11b2TransformPK13b2CircleShapeS6_ = null;
         _loc1_ = new FSM__Z22b2CollideEdgeAndCircleP10b2ManifoldPK11b2EdgeShapeRK11b2TransformPK13b2CircleShapeS6_();
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
               this.i0 = 0;
               this.i1 = li32(mstate.ebp + 8);
               this.i2 = li32(mstate.ebp + 20);
               si32(this.i0,this.i1 + 68);
               this.i0 = li32(mstate.ebp + 24);
               this.f0 = lf32(this.i0 + 8);
               this.f1 = lf32(this.i2 + 16);
               this.f2 = lf32(this.i0 + 12);
               this.f0 *= this.f1;
               this.f1 = this.f2 * this.f1;
               this.f0 = this.f0;
               this.f1 = this.f1;
               this.f2 = lf32(this.i0);
               this.f0 = this.f0;
               this.f3 = lf32(this.i0 + 16);
               this.f4 = lf32(this.i2 + 20);
               this.f5 = lf32(this.i0 + 20);
               this.f6 = lf32(this.i0 + 4);
               this.f1 = this.f1;
               this.f0 = this.f2 + this.f0;
               this.f1 = this.f6 + this.f1;
               this.f2 = this.f3 * this.f4;
               this.f3 = this.f5 * this.f4;
               this.f0 = this.f0;
               this.f1 = this.f1;
               this.f2 = this.f2;
               this.f3 = this.f3;
               this.f2 = this.f2;
               this.f0 = this.f0;
               this.f3 = this.f3;
               this.f1 = this.f1;
               this.f0 += this.f2;
               this.f1 += this.f3;
               this.i0 = li32(mstate.ebp + 16);
               this.f0 = this.f0;
               this.f1 = this.f1;
               this.f2 = lf32(this.i0 + 4);
               this.f1 = this.f1;
               this.f3 = lf32(this.i0);
               this.f0 = this.f0;
               this.f0 -= this.f3;
               this.f1 -= this.f2;
               this.f0 = this.f0;
               this.f1 = this.f1;
               this.f2 = lf32(this.i0 + 16);
               this.f0 = this.f0;
               this.f3 = lf32(this.i0 + 8);
               this.f4 = lf32(this.i0 + 20);
               this.f1 = this.f1;
               this.f5 = lf32(this.i0 + 12);
               this.f2 = this.f0 * this.f2;
               this.f0 *= this.f3;
               this.f3 = this.f1 * this.f4;
               this.f1 *= this.f5;
               this.f2 = this.f2;
               this.f0 = this.f0;
               this.f3 = this.f3;
               this.f1 = this.f1;
               this.f3 = this.f3;
               this.f2 = this.f2;
               this.f1 = this.f1;
               this.f0 = this.f0;
               this.i0 = li32(mstate.ebp + 12);
               this.f2 += this.f3;
               this.f0 += this.f1;
               this.f1 = lf32(this.i0 + 16);
               this.f3 = lf32(this.i0 + 20);
               this.f4 = lf32(this.i0 + 24);
               this.f5 = lf32(this.i0 + 28);
               this.f2 = this.f2;
               this.f0 = this.f0;
               this.f6 = this.f2;
               this.f7 = this.f3;
               this.f8 = this.f5;
               this.f9 = this.f0;
               this.f10 = this.f1;
               this.f11 = this.f4;
               this.f12 = this.f8 - this.f6;
               this.f6 -= this.f7;
               this.f13 = this.f11 - this.f9;
               this.f9 -= this.f10;
               this.f10 = this.f11 - this.f10;
               this.f7 = this.f8 - this.f7;
               this.f8 = this.f12;
               this.f6 = this.f6;
               this.f11 = this.f13;
               this.f9 = this.f9;
               this.f10 = this.f10;
               this.f7 = this.f7;
               this.f8 = this.f8;
               this.f12 = this.f7;
               this.f13 = this.f6;
               this.f11 = this.f11;
               this.f14 = this.f10;
               this.f15 = this.f9;
               this.f8 = this.f12 * this.f8;
               this.f12 *= this.f13;
               this.f11 = this.f14 * this.f11;
               this.f13 = this.f14 * this.f15;
               this.f8 = this.f8;
               this.f12 = this.f12;
               this.f11 = this.f11;
               this.f13 = this.f13;
               this.f14 = lf32(this.i0 + 8);
               this.f15 = lf32(this.i2 + 8);
               this.f8 = this.f8;
               this.f11 = this.f11;
               this.f12 = this.f12;
               this.f13 = this.f13;
               this.f8 = this.f11 + this.f8;
               this.f11 = this.f13 + this.f12;
               this.f12 = this.f14 + this.f15;
               this.f11 = this.f11;
               this.f8 = this.f8;
               this.f12 = this.f12;
               this.f13 = 0;
               this.i3 = this.i2 + 20;
               this.i2 += 16;
               this.i4 = this.i1 + 68;
               this.f13 = this.f13;
               this.f13 = this.f13;
               this.f14 = this.f11;
               if(this.f14 <= this.f13)
               {
                  this.f4 = this.f9;
                  this.f5 = this.f6;
                  this.f4 *= this.f4;
                  this.f5 *= this.f5;
                  this.f4 = this.f4;
                  this.f5 = this.f5;
                  this.f6 = this.f12;
                  this.f5 = this.f5;
                  this.f4 = this.f4;
                  this.f4 += this.f5;
                  this.f5 = this.f6 * this.f6;
                  this.f4 = this.f4;
                  this.f5 = this.f5;
                  this.f4 = this.f4;
                  this.f5 = this.f5;
                  if(this.f5 >= this.f4)
                  {
                     this.i5 = li8(this.i0 + 48);
                     while(true)
                     {
                        if(this.i5 != 0)
                        {
                           this.f4 = 0;
                           this.f5 = lf32(this.i0 + 32);
                           this.f6 = lf32(this.i0 + 36);
                           this.f7 = this.f3;
                           this.f2 = this.f2;
                           this.f8 = this.f1;
                           this.f0 = this.f0;
                           this.f5 = this.f8 - this.f5;
                           this.f6 = this.f7 - this.f6;
                           this.f2 = this.f7 - this.f2;
                           this.f0 = this.f8 - this.f0;
                           this.f5 = this.f5;
                           this.f6 = this.f6;
                           this.f2 = this.f2;
                           this.f0 = this.f0;
                           this.f0 = this.f0;
                           this.f5 = this.f5;
                           this.f2 = this.f2;
                           this.f6 = this.f6;
                           this.f0 = this.f5 * this.f0;
                           this.f2 = this.f6 * this.f2;
                           this.f0 = this.f0;
                           this.f2 = this.f2;
                           this.f2 = this.f2;
                           this.f0 = this.f0;
                           this.f0 += this.f2;
                           this.f0 = this.f0;
                           this.f2 = this.f4;
                           this.f2 = this.f2;
                           this.f0 = this.f0;
                           if(this.f0 > this.f2)
                           {
                              break;
                           }
                        }
                        this.i0 = 1;
                        si32(this.i0,this.i4);
                        this.i0 = 0;
                        si32(this.i0,this.i1 + 64);
                        si32(this.i0,this.i1 + 48);
                        si32(this.i0,this.i1 + 52);
                        sf32(this.f1,this.i1 + 56);
                        sf32(this.f3,this.i1 + 60);
                        si32(this.i0,this.i1 + 16);
                        si8(this.i0,this.i1 + 16);
                        si8(this.i0,this.i1 + 17);
                        si8(this.i0,this.i1 + 18);
                        si8(this.i0,this.i1 + 19);
                        addr0a34:
                        this.f0 = lf32(this.i2);
                        this.f1 = lf32(this.i3);
                        sf32(this.f0,this.i1);
                        sf32(this.f1,this.i1 + 4);
                        break;
                     }
                  }
               }
               else
               {
                  this.f13 = 0;
                  this.f13 = this.f13;
                  this.f13 = this.f13;
                  this.f14 = this.f8;
                  if(this.f14 > this.f13)
                  {
                     this.f13 = 0;
                     this.f14 = this.f10;
                     this.f15 = this.f7;
                     this.f14 *= this.f14;
                     this.f15 *= this.f15;
                     this.f14 = this.f14;
                     this.f15 = this.f15;
                     this.f15 = this.f15;
                     this.f14 = this.f14;
                     this.f14 += this.f15;
                     this.f14 = this.f14;
                     this.f13 = this.f13;
                     this.f13 = this.f13;
                     this.f15 = this.f14;
                     if(this.f15 <= this.f13)
                     {
                        this.i1 = cmodule.Box2D.___sF;
                        mstate.esp -= 24;
                        this.i2 = cmodule.Box2D.__2E_str1670;
                        this.i3 = cmodule.Box2D.__2E_str139328;
                        this.i4 = cmodule.Box2D.__ZZ22b2CollideEdgeAndCircleP10b2ManifoldPK11b2EdgeShapeRK11b2TransformPK13b2CircleShapeS6_E8__func__;
                        this.i0 = cmodule.Box2D.__2E_str42249;
                        this.i5 = 134;
                        this.i1 += 176;
                        si32(this.i1,mstate.esp);
                        si32(this.i2,mstate.esp + 4);
                        si32(this.i3,mstate.esp + 8);
                        si32(this.i4,mstate.esp + 12);
                        si32(this.i0,mstate.esp + 16);
                        si32(this.i5,mstate.esp + 20);
                        state = 1;
                        mstate.esp -= 4;
                        FSM_fprintf.start();
                        return;
                     }
                     break;
                  }
                  this.f1 = this.f5;
                  this.f2 = this.f2;
                  this.f3 = this.f4;
                  this.f0 = this.f0;
                  this.f1 = this.f2 - this.f1;
                  this.f0 -= this.f3;
                  this.f1 = this.f1;
                  this.f0 = this.f0;
                  this.f2 = this.f1;
                  this.f3 = this.f0;
                  this.f2 *= this.f2;
                  this.f3 *= this.f3;
                  this.f2 = this.f2;
                  this.f3 = this.f3;
                  this.f6 = this.f12;
                  this.f2 = this.f2;
                  this.f3 = this.f3;
                  this.f2 = this.f3 + this.f2;
                  this.f3 = this.f6 * this.f6;
                  this.f2 = this.f2;
                  this.f3 = this.f3;
                  this.f2 = this.f2;
                  this.f3 = this.f3;
                  if(this.f3 >= this.f2)
                  {
                     this.i5 = li8(this.i0 + 49);
                     while(true)
                     {
                        if(this.i5 != 0)
                        {
                           this.f2 = 0;
                           this.f3 = lf32(this.i0 + 40);
                           this.f6 = lf32(this.i0 + 44);
                           this.f7 = this.f4;
                           this.f8 = this.f5;
                           this.f3 -= this.f7;
                           this.f6 -= this.f8;
                           this.f3 = this.f3;
                           this.f6 = this.f6;
                           this.f0 = this.f0;
                           this.f3 = this.f3;
                           this.f1 = this.f1;
                           this.f6 = this.f6;
                           this.f0 = this.f3 * this.f0;
                           this.f1 = this.f6 * this.f1;
                           this.f0 = this.f0;
                           this.f1 = this.f1;
                           this.f1 = this.f1;
                           this.f0 = this.f0;
                           this.f0 += this.f1;
                           this.f0 = this.f0;
                           this.f1 = this.f2;
                           this.f1 = this.f1;
                           this.f0 = this.f0;
                           if(this.f0 > this.f1)
                           {
                              break;
                           }
                        }
                        this.i0 = 1;
                        si32(this.i0,this.i4);
                        this.i4 = 0;
                        si32(this.i4,this.i1 + 64);
                        si32(this.i4,this.i1 + 48);
                        si32(this.i4,this.i1 + 52);
                        sf32(this.f4,this.i1 + 56);
                        sf32(this.f5,this.i1 + 60);
                        si32(this.i4,this.i1 + 16);
                        si8(this.i0,this.i1 + 16);
                        si8(this.i4,this.i1 + 17);
                        si8(this.i4,this.i1 + 18);
                        addr0a28:
                        si8(this.i4,this.i1 + 19);
                        §§goto(addr0a34);
                     }
                  }
               }
               §§goto(addr0a64);
            case 2:
               break;
            case 1:
               mstate.esp += 24;
               state = 2;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            default:
               throw "Invalid state in __Z22b2CollideEdgeAndCircleP10b2ManifoldPK11b2EdgeShapeRK11b2TransformPK13b2CircleShapeS6_";
         }
         this.f13 = 1;
         this.f5 = this.f5;
         this.f11 = this.f11;
         this.f4 = this.f4;
         this.f15 = this.f3;
         this.f8 = this.f8;
         this.f16 = this.f1;
         this.f5 *= this.f11;
         this.f4 *= this.f11;
         this.f11 = this.f15 * this.f8;
         this.f8 = this.f16 * this.f8;
         this.f5 = this.f5;
         this.f4 = this.f4;
         this.f11 = this.f11;
         this.f8 = this.f8;
         this.f13 = this.f13;
         this.f5 = this.f5;
         this.f11 = this.f11;
         this.f4 = this.f4;
         this.f8 = this.f8;
         this.f14 = this.f14;
         this.f13 = this.f13;
         this.f5 = this.f11 + this.f5;
         this.f4 = this.f8 + this.f4;
         this.f8 = this.f13 / this.f14;
         this.f5 = this.f5;
         this.f4 = this.f4;
         this.f8 = this.f8;
         this.f5 = this.f5;
         this.f8 = this.f8;
         this.f4 = this.f4;
         this.f5 *= this.f8;
         this.f4 *= this.f8;
         this.f5 = this.f5;
         this.f4 = this.f4;
         this.f5 = this.f5;
         this.f2 = this.f2;
         this.f4 = this.f4;
         this.f0 = this.f0;
         this.f2 -= this.f5;
         this.f0 -= this.f4;
         this.f2 = this.f2;
         this.f0 = this.f0;
         this.f2 = this.f2;
         this.f0 = this.f0;
         this.f2 *= this.f2;
         this.f0 *= this.f0;
         this.f2 = this.f2;
         this.f0 = this.f0;
         this.f4 = this.f12;
         this.f2 = this.f2;
         this.f0 = this.f0;
         this.f0 += this.f2;
         this.f2 = this.f4 * this.f4;
         this.f0 = this.f0;
         this.f2 = this.f2;
         this.f0 = this.f0;
         this.f2 = this.f2;
         if(this.f2 >= this.f0)
         {
            this.f0 = 0;
            this.f2 = this.f7;
            this.f4 = this.f9;
            this.f5 = this.f10;
            this.f6 = this.f6;
            this.f4 *= this.f2;
            this.f6 = this.f5 * this.f6;
            this.f4 = this.f4;
            this.f6 = this.f6;
            this.f4 = this.f4;
            this.f6 = this.f6;
            this.f7 = -this.f2;
            this.f4 = this.f6 - this.f4;
            this.f6 = -this.f5;
            this.f7 = this.f7;
            this.f4 = this.f4;
            this.f6 = this.f6;
            this.f0 = this.f0;
            this.f7 = this.f7;
            this.f6 = this.f6;
            this.f0 = this.f0;
            this.f4 = this.f4;
            this.f2 = this.f4 < this.f0 ? this.f2 : this.f7;
            this.f0 = this.f4 < this.f0 ? this.f6 : this.f5;
            this.f2 = this.f2;
            this.f0 = this.f0;
            this.f4 = this.f2;
            this.f5 = this.f0;
            this.f4 *= this.f4;
            this.f5 *= this.f5;
            this.f4 = this.f4;
            this.f5 = this.f5;
            this.f5 = this.f5;
            this.f4 = this.f4;
            this.f4 += this.f5;
            this.f4 = this.f4;
            this.f4 = this.f4;
            this.f4 = Math.sqrt(this.f4);
            this.f4 = this.f4;
            this.f5 = 1.19209e-7;
            this.f5 = this.f5;
            this.f5 = this.f5;
            this.f6 = this.f4;
            if(this.f6 >= this.f5)
            {
               this.f5 = 1;
               this.f5 = this.f5;
               this.f4 = this.f4;
               this.f5 = this.f5;
               this.f4 = this.f5 / this.f4;
               this.f4 = this.f4;
               this.f2 = this.f2;
               this.f4 = this.f4;
               this.f0 = this.f0;
               this.f2 *= this.f4;
               this.f0 *= this.f4;
               this.f2 = this.f2;
               this.f0 = this.f0;
            }
            this.i0 = 1;
            si32(this.i0,this.i4);
            si32(this.i0,this.i1 + 64);
            sf32(this.f2,this.i1 + 48);
            sf32(this.f0,this.i1 + 52);
            sf32(this.f1,this.i1 + 56);
            sf32(this.f3,this.i1 + 60);
            this.i4 = 0;
            si32(this.i4,this.i1 + 16);
            si8(this.i4,this.i1 + 16);
            si8(this.i4,this.i1 + 17);
            si8(this.i0,this.i1 + 18);
            §§goto(addr0a28);
         }
         addr0a64:
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp += 4;
         mstate.esp += 4;
         mstate.gworker = caller;
      }
   }
}

