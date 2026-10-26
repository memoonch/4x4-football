package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZN14b2PolygonShape11ComputeMassEP10b2MassDataf extends Machine
   {
      
      public static const intRegCount:int = 7;
      
      public static const NumberRegCount:int = 18;
      
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
      
      public var f17:Number;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public var i6:int;
      
      public function FSM__ZN14b2PolygonShape11ComputeMassEP10b2MassDataf()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZN14b2PolygonShape11ComputeMassEP10b2MassDataf = null;
         _loc1_ = new FSM__ZN14b2PolygonShape11ComputeMassEP10b2MassDataf();
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
               this.i1 = li32(this.i0 + 152);
               this.i2 = li32(mstate.ebp + 12);
               this.f0 = lf32(mstate.ebp + 16);
               this.i3 = this.i0;
               if(this.i1 >= 3)
               {
                  this.f1 = 0;
                  this.f1 = this.f1;
                  this.i4 = 0;
                  this.i5 = this.i0 + 24;
                  this.f2 = this.f1;
                  this.f3 = this.f1;
                  this.f4 = this.f1;
                  this.i6 = this.i3;
                  this.i3 = this.i4;
                  this.f5 = this.f2;
                  this.f2 = this.f3;
                  this.f3 = this.f4;
                  if(this.i1 > this.i3)
                  {
                     break;
                  }
                  this.f4 = 1.19209e-7;
                  this.f6 = this.f0;
                  this.f7 = this.f3;
                  this.f6 = this.f7 * this.f6;
                  this.f4 = this.f4;
                  this.f6 = this.f6;
                  sf32(this.f6,this.i2);
                  this.f4 = this.f4;
                  if(this.f7 > this.f4)
                  {
                     this.f4 = 1;
                     this.f4 = this.f4;
                     this.f6 = this.f3;
                     this.f4 = this.f4;
                     this.f4 /= this.f6;
                     this.f4 = this.f4;
                     this.f5 = this.f5;
                     this.f4 = this.f4;
                     this.f5 *= this.f4;
                     this.f2 = this.f2;
                     this.f2 *= this.f4;
                     this.f4 = this.f5;
                     sf32(this.f4,this.i2 + 4);
                     this.f2 = this.f2;
                     this.f0 = this.f0;
                     this.f1 = this.f1;
                     this.f0 = this.f1 * this.f0;
                     sf32(this.f2,this.i2 + 8);
                     sf32(this.f3,this.i0 + 12);
                     this.f0 = this.f0;
                     sf32(this.f0,this.i2 + 12);
                     mstate.esp = mstate.ebp;
                     mstate.ebp = li32(mstate.esp);
                     mstate.esp += 4;
                     mstate.esp += 4;
                     mstate.gworker = caller;
                     return;
                  }
                  this.i0 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i2 = cmodule.Box2D.__2E_str1670;
                  this.i1 = cmodule.Box2D.__2E_str51258;
                  this.i3 = cmodule.Box2D.__ZZN14b2PolygonShape11ComputeMassEP10b2MassDatafE8__func__;
                  this.i4 = cmodule.Box2D.__2E_str49256;
                  this.i5 = 358;
                  this.i0 += 176;
                  si32(this.i0,mstate.esp);
                  si32(this.i2,mstate.esp + 4);
                  si32(this.i1,mstate.esp + 8);
               }
               else
               {
                  this.i0 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i1 = cmodule.Box2D.__2E_str1670;
                  this.i2 = cmodule.Box2D.__2E_str52259;
                  this.i3 = cmodule.Box2D.__ZZN14b2PolygonShape11ComputeMassEP10b2MassDatafE8__func__;
                  this.i4 = cmodule.Box2D.__2E_str49256;
                  this.i5 = 306;
                  this.i0 += 176;
                  si32(this.i0,mstate.esp);
                  si32(this.i1,mstate.esp + 4);
                  si32(this.i2,mstate.esp + 8);
               }
               §§goto(addr0146);
            case 2:
               break;
            case 1:
               mstate.esp += 24;
               state = 2;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            default:
               throw "Invalid state in __ZN14b2PolygonShape11ComputeMassEP10b2MassDataf";
         }
         while(true)
         {
            this.f4 = lf32(this.i6 + 24);
            this.f6 = lf32(this.i6 + 28);
            this.i4 = this.i3 + 1;
            if(this.i4 >= this.i1)
            {
               this.i4 = this.i5;
            }
            else
            {
               this.i4 = this.i6 + 32;
            }
            this.f7 = 0;
            this.f7 = this.f7;
            this.f8 = lf32(this.i4);
            this.f9 = lf32(this.i4 + 4);
            this.f7 = this.f7;
            this.f6 = this.f6;
            this.f4 = this.f4;
            this.f10 = this.f8 - this.f7;
            this.f11 = this.f9 - this.f7;
            this.f12 = this.f6 - this.f7;
            this.f13 = this.f4 - this.f7;
            this.f10 = this.f10;
            this.f11 = this.f11;
            this.f12 = this.f12;
            this.f13 = this.f13;
            this.f10 = this.f10;
            this.f12 = this.f12;
            this.f11 = this.f11;
            this.f13 = this.f13;
            this.f14 = this.f10 * this.f13;
            this.f15 = this.f11 * this.f12;
            this.f16 = this.f12 * this.f12;
            this.f17 = this.f13 * this.f13;
            this.f14 = this.f14;
            this.f15 = this.f15;
            this.f16 = this.f16;
            this.f17 = this.f17;
            this.f14 = this.f14;
            this.f17 = this.f17;
            this.f15 = this.f15;
            this.f16 = this.f16;
            this.f14 = this.f17 + this.f14;
            this.f17 = this.f10 * this.f10;
            this.f15 = this.f16 + this.f15;
            this.f16 = this.f11 * this.f11;
            this.f14 = this.f14;
            this.f17 = this.f17;
            this.f15 = this.f15;
            this.f16 = this.f16;
            this.f17 = this.f17;
            this.f14 = this.f14;
            this.f16 = this.f16;
            this.f15 = this.f15;
            this.f14 += this.f17;
            this.f15 += this.f16;
            this.f16 = 0.25;
            this.f14 = this.f14;
            this.f15 = this.f15;
            this.f16 = this.f16;
            this.f14 = this.f14;
            this.f16 = this.f16;
            this.f15 = this.f15;
            this.f14 *= this.f16;
            this.f15 *= this.f16;
            this.f14 = this.f14;
            this.f15 = this.f15;
            this.f14 = this.f14;
            this.f15 = this.f15;
            this.f10 = this.f12 * this.f10;
            this.f12 = this.f14 + this.f7;
            this.f11 = this.f13 * this.f11;
            this.f13 = this.f15 + this.f7;
            this.f14 = 0.333333;
            this.f10 = this.f10;
            this.f12 = this.f12;
            this.f11 = this.f11;
            this.f13 = this.f13;
            this.f14 = this.f14;
            this.f10 = this.f10;
            this.f11 = this.f11;
            this.f12 = this.f12;
            this.f14 = this.f14;
            this.f13 = this.f13;
            this.f10 = this.f11 - this.f10;
            this.f11 = this.f12 * this.f14;
            this.f12 = this.f13 * this.f14;
            this.f13 = 0.5;
            this.f10 = this.f10;
            this.f11 = this.f11;
            this.f12 = this.f12;
            this.f13 = this.f13;
            this.f11 = this.f11;
            this.f12 = this.f12;
            this.f13 = this.f13;
            this.f10 = this.f10;
            this.f13 = this.f10 * this.f13;
            this.f11 += this.f7;
            this.f12 += this.f7;
            this.f6 += this.f7;
            this.f4 += this.f7;
            this.f7 = this.f13;
            this.f11 = this.f11;
            this.f12 = this.f12;
            this.f6 = this.f6;
            this.f4 = this.f4;
            this.f7 = this.f7;
            this.f4 = this.f4;
            this.f6 = this.f6;
            this.f12 = this.f12;
            this.f11 = this.f11;
            this.f13 = this.f7 * this.f14;
            this.f11 += this.f12;
            this.f4 += this.f8;
            this.f6 += this.f9;
            this.f8 = this.f13;
            this.f9 = this.f11;
            this.f4 = this.f4;
            this.f6 = this.f6;
            this.f9 = this.f9;
            this.f6 = this.f6;
            this.f8 = this.f8;
            this.f4 = this.f4;
            this.f6 *= this.f8;
            this.f4 *= this.f8;
            this.f8 = this.f9 * this.f10;
            this.f6 = this.f6;
            this.f4 = this.f4;
            this.f8 = this.f8;
            this.f3 = this.f3;
            this.f6 = this.f6;
            this.f2 = this.f2;
            this.f4 = this.f4;
            this.f5 = this.f5;
            this.f1 = this.f1;
            this.f8 = this.f8;
            this.f3 += this.f7;
            this.f2 += this.f6;
            this.f4 = this.f5 + this.f4;
            this.f1 = this.f8 + this.f1;
            this.f5 = this.f3;
            this.f3 = this.f2;
            this.f2 = this.f4;
            this.f1 = this.f1;
            this.i4 = this.i6 + 8;
            this.i6 = this.i3 + 1;
            this.i3 = this.i4;
            this.i4 = this.i6;
            this.f4 = this.f5;
            §§goto(addr071d);
            addr071d:
         }
         addr0146:
         si32(this.i3,mstate.esp + 12);
         si32(this.i4,mstate.esp + 16);
         si32(this.i5,mstate.esp + 20);
         state = 1;
         mstate.esp -= 4;
         FSM_fprintf.start();
      }
   }
}

