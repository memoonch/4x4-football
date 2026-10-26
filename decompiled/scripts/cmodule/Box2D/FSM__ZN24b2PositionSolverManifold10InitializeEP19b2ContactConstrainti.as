package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZN24b2PositionSolverManifold10InitializeEP19b2ContactConstrainti extends Machine
   {
      
      public static const intRegCount:int = 6;
      
      public static const NumberRegCount:int = 16;
      
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
      
      public function FSM__ZN24b2PositionSolverManifold10InitializeEP19b2ContactConstrainti()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZN24b2PositionSolverManifold10InitializeEP19b2ContactConstrainti = null;
         _loc1_ = new FSM__ZN24b2PositionSolverManifold10InitializeEP19b2ContactConstrainti();
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
               this.i1 = li32(mstate.ebp + 12);
               this.i2 = li32(mstate.ebp + 16);
               this.i3 = li32(this.i1 + 172);
               if(this.i3 <= 0)
               {
                  this.i0 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i1 = cmodule.Box2D.__2E_str1670;
                  this.i2 = cmodule.Box2D.__2E_str148331;
                  this.i3 = cmodule.Box2D.__ZZN16b2PulleyJointDef10InitializeEP6b2BodyS1_RK6b2Vec2S4_S4_S4_fE8__func__;
                  this.i4 = cmodule.Box2D.__2E_str60267;
                  this.i5 = 583;
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
               break;
            case 2:
               break;
            case 1:
               mstate.esp += 24;
               state = 2;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            default:
               throw "Invalid state in __ZN24b2PositionSolverManifold10InitializeEP19b2ContactConstrainti";
         }
         this.i3 = li32(this.i1 + 152);
         if(this.i3 != 2)
         {
            if(this.i3 != 1)
            {
               if(this.i3 == 0)
               {
                  this.f0 = 1.42109e-14;
                  this.i2 = li32(this.i1 + 144);
                  this.i3 = li32(this.i1 + 148);
                  this.f1 = lf32(this.i2 + 20);
                  this.f2 = lf32(this.i1 + 96);
                  this.f3 = lf32(this.i2 + 24);
                  this.f4 = lf32(this.i3 + 20);
                  this.f5 = lf32(this.i1);
                  this.f6 = lf32(this.i3 + 24);
                  this.f3 *= this.f2;
                  this.f1 *= this.f2;
                  this.f2 = this.f6 * this.f5;
                  this.f4 *= this.f5;
                  this.f3 = this.f3;
                  this.f1 = this.f1;
                  this.f2 = this.f2;
                  this.f4 = this.f4;
                  this.f5 = lf32(this.i2 + 12);
                  this.f1 = this.f1;
                  this.f6 = lf32(this.i2 + 28);
                  this.f7 = lf32(this.i1 + 100);
                  this.f8 = lf32(this.i2 + 32);
                  this.f9 = lf32(this.i2 + 16);
                  this.f3 = this.f3;
                  this.f10 = lf32(this.i3 + 12);
                  this.f4 = this.f4;
                  this.f11 = lf32(this.i3 + 28);
                  this.f12 = lf32(this.i1 + 4);
                  this.f13 = lf32(this.i3 + 32);
                  this.f14 = lf32(this.i3 + 16);
                  this.f2 = this.f2;
                  this.f1 = this.f5 + this.f1;
                  this.f5 = this.f8 * this.f7;
                  this.f3 = this.f9 + this.f3;
                  this.f6 *= this.f7;
                  this.f4 = this.f10 + this.f4;
                  this.f7 = this.f13 * this.f12;
                  this.f2 = this.f14 + this.f2;
                  this.f8 = this.f11 * this.f12;
                  this.f1 = this.f1;
                  this.f5 = this.f5;
                  this.f3 = this.f3;
                  this.f6 = this.f6;
                  this.f4 = this.f4;
                  this.f7 = this.f7;
                  this.f2 = this.f2;
                  this.f8 = this.f8;
                  this.f6 = this.f6;
                  this.f1 = this.f1;
                  this.f5 = this.f5;
                  this.f3 = this.f3;
                  this.f8 = this.f8;
                  this.f4 = this.f4;
                  this.f7 = this.f7;
                  this.f2 = this.f2;
                  this.f1 += this.f6;
                  this.f3 += this.f5;
                  this.f4 += this.f8;
                  this.f2 += this.f7;
                  this.f1 = this.f1;
                  this.f3 = this.f3;
                  this.f4 = this.f4;
                  this.f2 = this.f2;
                  this.f5 = this.f4;
                  this.f6 = this.f1;
                  this.f7 = this.f2;
                  this.f8 = this.f3;
                  this.f5 = this.f6 - this.f5;
                  this.f6 = this.f8 - this.f7;
                  this.f5 = this.f5;
                  this.f6 = this.f6;
                  this.f5 = this.f5;
                  this.f6 = this.f6;
                  this.f5 *= this.f5;
                  this.f6 *= this.f6;
                  this.f5 = this.f5;
                  this.f6 = this.f6;
                  this.f6 = this.f6;
                  this.f5 = this.f5;
                  this.f5 += this.f6;
                  this.f5 = this.f5;
                  this.f0 = this.f0;
                  this.f0 = this.f0;
                  this.f5 = this.f5;
                  if(this.f5 > this.f0)
                  {
                     this.f0 = 1.19209e-7;
                     this.f5 = this.f3;
                     this.f6 = this.f2;
                     this.f7 = this.f1;
                     this.f8 = this.f4;
                     this.f5 = this.f6 - this.f5;
                     this.f6 = this.f8 - this.f7;
                     this.f5 = this.f5;
                     this.f6 = this.f6;
                     this.f7 = this.f5;
                     this.f8 = this.f6;
                     this.f7 *= this.f7;
                     this.f8 *= this.f8;
                     this.f7 = this.f7;
                     this.f8 = this.f8;
                     this.f7 = this.f7;
                     this.f8 = this.f8;
                     this.f7 = this.f8 + this.f7;
                     this.f7 = this.f7;
                     this.f7 = this.f7;
                     sf32(this.f6,this.i0);
                     this.f7 = Math.sqrt(this.f7);
                     sf32(this.f5,this.i0 + 4);
                     this.f7 = this.f7;
                     this.i2 = this.i0 + 4;
                     this.f0 = this.f0;
                     this.i3 = this.i0;
                     this.f0 = this.f0;
                     this.f8 = this.f7;
                     if(this.f8 >= this.f0)
                     {
                        this.f0 = 1;
                        this.f0 = this.f0;
                        this.f7 = this.f7;
                        this.f0 = this.f0;
                        this.f0 /= this.f7;
                        this.f0 = this.f0;
                        this.f6 = this.f6;
                        this.f0 = this.f0;
                        this.f6 *= this.f0;
                        this.f5 = this.f5;
                        this.f0 = this.f5 * this.f0;
                        this.f5 = this.f6;
                        sf32(this.f5,this.i3);
                        this.f0 = this.f0;
                        sf32(this.f0,this.i2);
                     }
                  }
                  else
                  {
                     this.i2 = 1065353216;
                     si32(this.i2,this.i0);
                     this.i2 = 0;
                     si32(this.i2,this.i0 + 4);
                  }
                  this.f0 = 0.5;
                  this.f1 = this.f1;
                  this.f4 = this.f4;
                  this.f5 = this.f1 + this.f4;
                  this.f3 = this.f3;
                  this.f2 = this.f2;
                  this.f6 = this.f3 + this.f2;
                  this.f5 = this.f5;
                  this.f0 = this.f0;
                  this.f6 = this.f6;
                  this.f0 = this.f0;
                  this.f5 = this.f5;
                  this.f6 = this.f6;
                  this.f5 *= this.f0;
                  this.f0 = this.f6 * this.f0;
                  this.f5 = this.f5;
                  this.f2 -= this.f3;
                  this.f1 = this.f4 - this.f1;
                  sf32(this.f5,this.i0 + 8);
                  this.f0 = this.f0;
                  sf32(this.f0,this.i0 + 12);
                  this.f0 = this.f2;
                  this.f1 = this.f1;
                  this.f2 = lf32(this.i0);
                  this.f1 = this.f1;
                  this.f3 = lf32(this.i0 + 4);
                  this.f0 = this.f0;
                  this.f1 *= this.f2;
                  this.f0 *= this.f3;
                  this.f1 = this.f1;
                  this.f0 = this.f0;
                  this.f0 = this.f0;
                  this.f1 = this.f1;
                  this.f0 = this.f1 + this.f0;
                  this.f0 = this.f0;
                  this.f1 = lf32(this.i1 + 156);
                  this.f0 = this.f0;
                  this.f0 -= this.f1;
                  this.f0 = this.f0;
                  this.f1 = lf32(this.i1 + 160);
                  this.f0 = this.f0;
                  this.f0 -= this.f1;
                  this.f0 = this.f0;
                  sf32(this.f0,this.i0 + 16);
               }
            }
            else
            {
               this.i3 = li32(this.i1 + 144);
               this.f0 = lf32(this.i1 + 88);
               this.f1 = lf32(this.i3 + 20);
               this.f2 = lf32(this.i1 + 92);
               this.f3 = lf32(this.i3 + 28);
               this.f4 = lf32(this.i3 + 24);
               this.f5 = lf32(this.i3 + 32);
               this.f1 *= this.f0;
               this.f3 *= this.f2;
               this.f1 = this.f1;
               this.f2 = this.f5 * this.f2;
               this.f3 = this.f3;
               this.f0 = this.f4 * this.f0;
               this.f2 = this.f2;
               this.f0 = this.f0;
               this.f3 = this.f3;
               this.f1 = this.f1;
               this.f1 += this.f3;
               this.f2 = this.f2;
               this.f0 = this.f0;
               this.f1 = this.f1;
               this.f0 += this.f2;
               this.f0 = this.f0;
               sf32(this.f1,this.i0);
               sf32(this.f0,this.i0 + 4);
               this.i2 *= 44;
               this.i3 = li32(this.i1 + 144);
               this.i4 = li32(this.i1 + 148);
               this.i2 = this.i1 + this.i2;
               this.f2 = lf32(this.i3 + 20);
               this.f3 = lf32(this.i1 + 96);
               this.f4 = lf32(this.i3 + 24);
               this.f5 = lf32(this.i4 + 20);
               this.f6 = lf32(this.i2);
               this.f7 = lf32(this.i4 + 24);
               this.f4 *= this.f3;
               this.f2 *= this.f3;
               this.f3 = this.f7 * this.f6;
               this.f5 *= this.f6;
               this.f4 = this.f4;
               this.f2 = this.f2;
               this.f3 = this.f3;
               this.f5 = this.f5;
               this.f6 = lf32(this.i3 + 12);
               this.f2 = this.f2;
               this.f7 = lf32(this.i3 + 28);
               this.f8 = lf32(this.i1 + 100);
               this.f9 = lf32(this.i3 + 32);
               this.f10 = lf32(this.i3 + 16);
               this.f4 = this.f4;
               this.f11 = lf32(this.i4 + 12);
               this.f5 = this.f5;
               this.f12 = lf32(this.i4 + 28);
               this.f13 = lf32(this.i2 + 4);
               this.f14 = lf32(this.i4 + 32);
               this.f15 = lf32(this.i4 + 16);
               this.f3 = this.f3;
               this.f2 = this.f6 + this.f2;
               this.f6 = this.f9 * this.f8;
               this.f4 = this.f10 + this.f4;
               this.f7 *= this.f8;
               this.f5 = this.f11 + this.f5;
               this.f8 = this.f14 * this.f13;
               this.f3 = this.f15 + this.f3;
               this.f9 = this.f12 * this.f13;
               this.f2 = this.f2;
               this.f6 = this.f6;
               this.f4 = this.f4;
               this.f7 = this.f7;
               this.f5 = this.f5;
               this.f8 = this.f8;
               this.f3 = this.f3;
               this.f9 = this.f9;
               this.f7 = this.f7;
               this.f2 = this.f2;
               this.f6 = this.f6;
               this.f4 = this.f4;
               this.f9 = this.f9;
               this.f5 = this.f5;
               this.f8 = this.f8;
               this.f3 = this.f3;
               this.f2 += this.f7;
               this.f4 += this.f6;
               this.f5 += this.f9;
               this.f3 += this.f8;
               this.f2 = this.f2;
               this.f4 = this.f4;
               this.f5 = this.f5;
               this.f3 = this.f3;
               this.f2 = this.f2;
               this.f6 = this.f5;
               this.f4 = this.f4;
               this.f7 = this.f3;
               this.f2 = this.f6 - this.f2;
               this.f4 = this.f7 - this.f4;
               this.f2 = this.f2;
               this.f4 = this.f4;
               this.f1 = this.f1;
               this.f2 = this.f2;
               this.f0 = this.f0;
               this.f4 = this.f4;
               this.f1 = this.f2 * this.f1;
               this.f0 = this.f4 * this.f0;
               this.f1 = this.f1;
               this.f0 = this.f0;
               this.f0 = this.f0;
               this.f1 = this.f1;
               this.f0 = this.f1 + this.f0;
               this.f0 = this.f0;
               this.f1 = lf32(this.i1 + 156);
               this.f0 = this.f0;
               this.f0 -= this.f1;
               this.f0 = this.f0;
               this.f1 = lf32(this.i1 + 160);
               this.f0 = this.f0;
               this.f0 -= this.f1;
               this.f0 = this.f0;
               sf32(this.f0,this.i0 + 16);
               sf32(this.f5,this.i0 + 8);
               sf32(this.f3,this.i0 + 12);
            }
         }
         else
         {
            this.i3 = li32(this.i1 + 148);
            this.f0 = lf32(this.i1 + 88);
            this.f1 = lf32(this.i3 + 20);
            this.f2 = lf32(this.i1 + 92);
            this.f3 = lf32(this.i3 + 28);
            this.f4 = lf32(this.i3 + 24);
            this.f5 = lf32(this.i3 + 32);
            this.f1 *= this.f0;
            this.f3 *= this.f2;
            this.f1 = this.f1;
            this.f2 = this.f5 * this.f2;
            this.f3 = this.f3;
            this.f0 = this.f4 * this.f0;
            this.f2 = this.f2;
            this.f0 = this.f0;
            this.f3 = this.f3;
            this.f1 = this.f1;
            this.f1 += this.f3;
            this.f2 = this.f2;
            this.f0 = this.f0;
            this.f1 = this.f1;
            this.f0 += this.f2;
            this.f0 = this.f0;
            sf32(this.f1,this.i0);
            sf32(this.f0,this.i0 + 4);
            this.i2 *= 44;
            this.i3 = li32(this.i1 + 148);
            this.i4 = li32(this.i1 + 144);
            this.i2 = this.i1 + this.i2;
            this.f2 = lf32(this.i3 + 20);
            this.f3 = lf32(this.i1 + 96);
            this.f4 = lf32(this.i3 + 24);
            this.f5 = lf32(this.i4 + 20);
            this.f6 = lf32(this.i2);
            this.f7 = lf32(this.i4 + 24);
            this.f4 *= this.f3;
            this.f2 *= this.f3;
            this.f3 = this.f7 * this.f6;
            this.f5 *= this.f6;
            this.f4 = this.f4;
            this.f2 = this.f2;
            this.f3 = this.f3;
            this.f5 = this.f5;
            this.f6 = lf32(this.i3 + 12);
            this.f2 = this.f2;
            this.f7 = lf32(this.i3 + 28);
            this.f8 = lf32(this.i1 + 100);
            this.f9 = lf32(this.i3 + 32);
            this.f10 = lf32(this.i3 + 16);
            this.f4 = this.f4;
            this.f11 = lf32(this.i4 + 12);
            this.f5 = this.f5;
            this.f12 = lf32(this.i4 + 28);
            this.f13 = lf32(this.i2 + 4);
            this.f14 = lf32(this.i4 + 32);
            this.f15 = lf32(this.i4 + 16);
            this.f3 = this.f3;
            this.f2 = this.f6 + this.f2;
            this.f6 = this.f9 * this.f8;
            this.f4 = this.f10 + this.f4;
            this.f7 *= this.f8;
            this.f5 = this.f11 + this.f5;
            this.f8 = this.f14 * this.f13;
            this.f3 = this.f15 + this.f3;
            this.f9 = this.f12 * this.f13;
            this.f2 = this.f2;
            this.f6 = this.f6;
            this.f4 = this.f4;
            this.f7 = this.f7;
            this.f5 = this.f5;
            this.f8 = this.f8;
            this.f3 = this.f3;
            this.f9 = this.f9;
            this.f7 = this.f7;
            this.f2 = this.f2;
            this.f6 = this.f6;
            this.f4 = this.f4;
            this.f9 = this.f9;
            this.f5 = this.f5;
            this.f8 = this.f8;
            this.f3 = this.f3;
            this.f2 += this.f7;
            this.f4 += this.f6;
            this.f5 += this.f9;
            this.f3 += this.f8;
            this.f2 = this.f2;
            this.f4 = this.f4;
            this.f5 = this.f5;
            this.f3 = this.f3;
            this.f2 = this.f2;
            this.f6 = this.f5;
            this.f4 = this.f4;
            this.f7 = this.f3;
            this.f2 = this.f6 - this.f2;
            this.f4 = this.f7 - this.f4;
            this.f2 = this.f2;
            this.f4 = this.f4;
            this.f1 = this.f1;
            this.f2 = this.f2;
            this.f0 = this.f0;
            this.f4 = this.f4;
            this.f2 *= this.f1;
            this.f4 *= this.f0;
            this.f2 = this.f2;
            this.f4 = this.f4;
            this.f4 = this.f4;
            this.f2 = this.f2;
            this.f2 += this.f4;
            this.f2 = this.f2;
            this.f4 = lf32(this.i1 + 156);
            this.f2 = this.f2;
            this.f2 -= this.f4;
            this.f2 = this.f2;
            this.f4 = lf32(this.i1 + 160);
            this.f2 = this.f2;
            this.f2 -= this.f4;
            this.f2 = this.f2;
            sf32(this.f2,this.i0 + 16);
            sf32(this.f5,this.i0 + 8);
            this.f1 = -this.f1;
            this.f0 = -this.f0;
            sf32(this.f3,this.i0 + 12);
            this.f1 = this.f1;
            sf32(this.f1,this.i0);
            this.f0 = this.f0;
            sf32(this.f0,this.i0 + 4);
         }
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp += 4;
         mstate.esp += 4;
         mstate.gworker = caller;
      }
   }
}

