package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZN12b2MouseJoint23InitVelocityConstraintsERK10b2TimeStep extends Machine
   {
      
      public static const intRegCount:int = 6;
      
      public static const NumberRegCount:int = 11;
      
      public var f10:Number;
      
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
      
      public function FSM__ZN12b2MouseJoint23InitVelocityConstraintsERK10b2TimeStep()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZN12b2MouseJoint23InitVelocityConstraintsERK10b2TimeStep = null;
         _loc1_ = new FSM__ZN12b2MouseJoint23InitVelocityConstraintsERK10b2TimeStep();
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
               this.f0 = 6.28319;
               this.f0 = this.f0;
               this.i0 = li32(mstate.ebp + 8);
               this.f1 = lf32(this.i0 + 148);
               this.f0 = this.f0;
               this.f0 = this.f1 * this.f0;
               this.f0 = this.f0;
               this.i1 = li32(this.i0 + 52);
               this.f1 = lf32(this.i1 + 124);
               this.f0 = this.f0;
               this.f2 = this.f1 + this.f1;
               this.f3 = this.f0 * this.f0;
               this.f2 = this.f2;
               this.f3 = this.f3;
               this.f3 = this.f3;
               this.f4 = lf32(this.i0 + 152);
               this.f2 = this.f2;
               this.f2 *= this.f4;
               this.f1 = this.f3 * this.f1;
               this.f2 = this.f2;
               this.f1 = this.f1;
               this.i2 = li32(mstate.ebp + 12);
               this.f3 = lf32(this.i2);
               this.f2 = this.f2;
               this.f4 = this.f1;
               this.f0 = this.f2 * this.f0;
               this.f2 = this.f3 * this.f4;
               this.f0 = this.f0;
               this.f2 = this.f2;
               this.f3 = this.f0;
               this.f2 = this.f2;
               this.f2 += this.f3;
               this.f3 = 1.19209e-7;
               this.f2 = this.f2;
               this.f3 = this.f3;
               this.i3 = this.i2;
               this.f3 = this.f3;
               this.f2 = this.f2;
               if(this.f2 <= this.f3)
               {
                  this.i0 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i1 = cmodule.Box2D.__2E_str1670;
                  this.i2 = cmodule.Box2D.__2E_str91298;
                  this.i3 = cmodule.Box2D.__ZZN15b2RevoluteJoint23InitVelocityConstraintsERK10b2TimeStepE8__func__;
                  this.i4 = cmodule.Box2D.__2E_str90297;
                  this.i5 = 114;
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
               throw "Invalid state in __ZN12b2MouseJoint23InitVelocityConstraintsERK10b2TimeStep";
         }
         this.f2 = 0;
         this.f3 = lf32(this.i3);
         this.f4 = this.f1;
         this.f4 = this.f3 * this.f4;
         this.f4 = this.f4;
         this.f0 = this.f0;
         this.f4 = this.f4;
         this.f0 = this.f4 + this.f0;
         this.f0 = this.f0;
         this.f0 = this.f0;
         this.f0 = this.f3 * this.f0;
         this.f0 = this.f0;
         this.i4 = this.i0 + 160;
         this.f2 = this.f2;
         this.f2 = this.f2;
         this.f3 = this.f0;
         if(this.f3 == this.f2)
         {
            this.f2 = this.f0;
         }
         else
         {
            this.f2 = 1;
            this.f2 = this.f2;
            this.f0 = this.f0;
            this.f2 = this.f2;
            this.f0 = this.f2 / this.f0;
            this.f0 = this.f0;
            this.f2 = this.f0;
         }
         this.f3 = 0;
         sf32(this.f2,this.i4);
         this.f2 = lf32(this.i3);
         this.f1 = this.f1;
         this.f1 = this.f2 * this.f1;
         this.f1 = this.f1;
         this.f0 = this.f0;
         this.f1 = this.f1;
         this.f1 *= this.f0;
         this.f1 = this.f1;
         sf32(this.f1,this.i0 + 156);
         this.f1 = lf32(this.i0 + 100);
         this.f2 = lf32(this.i1 + 40);
         this.f4 = lf32(this.i0 + 96);
         this.f5 = lf32(this.i1 + 36);
         this.f1 -= this.f2;
         this.f2 = this.f4 - this.f5;
         this.f1 = this.f1;
         this.f2 = this.f2;
         this.f4 = lf32(this.i1 + 24);
         this.f2 = this.f2;
         this.f5 = lf32(this.i1 + 20);
         this.f6 = lf32(this.i1 + 32);
         this.f1 = this.f1;
         this.f7 = lf32(this.i1 + 28);
         this.f6 *= this.f1;
         this.f1 = this.f7 * this.f1;
         this.f4 *= this.f2;
         this.f2 = this.f5 * this.f2;
         this.f5 = this.f6;
         this.f1 = this.f1;
         this.f4 = this.f4;
         this.f2 = this.f2;
         this.f5 = this.f5;
         this.f4 = this.f4;
         this.f1 = this.f1;
         this.f2 = this.f2;
         this.f4 += this.f5;
         this.f1 = this.f2 + this.f1;
         this.f2 = lf32(this.i1 + 136);
         this.f4 = this.f4;
         this.f1 = this.f1;
         this.f5 = this.f4;
         this.f6 = this.f2;
         this.f7 = this.f1;
         this.f8 = this.f5 * this.f6;
         this.f6 = this.f7 * this.f6;
         this.f8 = this.f8;
         this.f6 = this.f6;
         this.f6 = this.f6;
         this.f8 = this.f8;
         this.f8 *= this.f5;
         this.f7 = this.f6 * this.f7;
         this.f9 = lf32(this.i1 + 128);
         this.f8 = this.f8;
         this.f7 = this.f7;
         this.f8 = this.f8;
         this.f10 = this.f9;
         this.f7 = this.f7;
         this.f8 = this.f10 + this.f8;
         this.f5 = this.f6 * this.f5;
         this.f6 = this.f10 + this.f7;
         this.f7 = this.f8;
         this.f5 = this.f5;
         this.f6 = this.f6;
         this.f3 = this.f3;
         this.f7 = this.f7;
         this.f6 = this.f6;
         this.f5 = this.f5;
         this.f3 = this.f3;
         this.f7 += this.f0;
         this.f5 = this.f3 - this.f5;
         this.f0 = this.f6 + this.f0;
         this.f6 = this.f7;
         this.f5 = this.f5;
         this.f0 = this.f0;
         this.f7 = this.f5;
         this.f8 = this.f0;
         this.f10 = this.f6;
         this.f8 = this.f10 * this.f8;
         this.f7 *= this.f7;
         this.f8 = this.f8;
         this.f7 = this.f7;
         this.f7 = this.f7;
         this.f8 = this.f8;
         this.f7 = this.f8 - this.f7;
         this.f7 = this.f7;
         this.f8 = this.f7;
         if(this.f8 != this.f3)
         {
            this.f3 = 1;
            this.f3 = this.f3;
            this.f7 = this.f7;
            this.f3 = this.f3;
            this.f3 /= this.f7;
            this.f7 = this.f3;
         }
         this.f3 = this.f7;
         this.f7 = 0.98;
         this.f3 = this.f3;
         this.f8 = -this.f3;
         this.f0 = this.f0;
         this.f8 = this.f8;
         this.f0 = this.f3 * this.f0;
         this.f8 = this.f8;
         this.f5 = this.f5;
         this.f5 *= this.f8;
         this.f0 = this.f0;
         this.f6 = this.f6;
         sf32(this.f0,this.i0 + 120);
         this.f0 = this.f5;
         sf32(this.f0,this.i0 + 124);
         this.f3 *= this.f6;
         sf32(this.f0,this.i0 + 128);
         this.f0 = this.f3;
         sf32(this.f0,this.i0 + 132);
         this.f0 = lf32(this.i1 + 52);
         this.f1 = this.f1;
         this.f0 += this.f1;
         this.f3 = lf32(this.i1 + 56);
         this.f4 = this.f4;
         this.f3 += this.f4;
         this.f0 = this.f0;
         this.f3 = this.f3;
         this.f5 = lf32(this.i0 + 104);
         this.f0 = this.f0;
         this.f6 = lf32(this.i0 + 108);
         this.f3 = this.f3;
         this.f0 -= this.f5;
         this.f3 -= this.f6;
         this.f0 = this.f0;
         sf32(this.f0,this.i0 + 136);
         this.f0 = this.f3;
         sf32(this.f0,this.i0 + 140);
         this.f0 = this.f7;
         this.f3 = lf32(this.i1 + 80);
         this.f0 = this.f0;
         this.f0 = this.f3 * this.f0;
         this.f0 = this.f0;
         sf32(this.f0,this.i1 + 80);
         this.f0 = lf32(this.i2 + 8);
         this.f3 = lf32(this.i0 + 112);
         this.f3 *= this.f0;
         this.f3 = this.f3;
         sf32(this.f3,this.i0 + 112);
         this.f5 = lf32(this.i0 + 116);
         this.f0 = this.f5 * this.f0;
         this.f5 = this.f9;
         this.f3 = this.f3;
         this.f0 = this.f0;
         this.f3 *= this.f5;
         sf32(this.f0,this.i0 + 116);
         this.f3 = this.f3;
         this.f6 = lf32(this.i1 + 72);
         this.f3 = this.f3;
         this.f3 = this.f6 + this.f3;
         this.f0 = this.f0;
         this.f3 = this.f3;
         this.f0 *= this.f5;
         sf32(this.f3,this.i1 + 72);
         this.f0 = this.f0;
         this.f3 = lf32(this.i1 + 76);
         this.f0 = this.f0;
         this.f0 = this.f3 + this.f0;
         this.f0 = this.f0;
         sf32(this.f0,this.i1 + 76);
         this.f0 = lf32(this.i0 + 116);
         this.f3 = lf32(this.i0 + 112);
         this.f0 = this.f1 * this.f0;
         this.f1 = this.f4 * this.f3;
         this.f0 = this.f0;
         this.f1 = this.f1;
         this.f1 = this.f1;
         this.f0 = this.f0;
         this.f0 -= this.f1;
         this.f0 = this.f0;
         this.f1 = this.f2;
         this.f0 = this.f0;
         this.f0 *= this.f1;
         this.f0 = this.f0;
         this.f1 = lf32(this.i1 + 80);
         this.f0 = this.f0;
         this.f0 = this.f1 + this.f0;
         this.f0 = this.f0;
         sf32(this.f0,this.i1 + 80);
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp += 4;
         mstate.esp += 4;
         mstate.gworker = caller;
      }
   }
}

