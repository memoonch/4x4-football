package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZN15b2RevoluteJoint23InitVelocityConstraintsERK10b2TimeStep extends Machine
   {
      
      public static const intRegCount:int = 6;
      
      public static const NumberRegCount:int = 22;
      
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
      
      public var f18:Number;
      
      public var f19:Number;
      
      public var f20:Number;
      
      public var f21:Number;
      
      public var f17:Number;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public function FSM__ZN15b2RevoluteJoint23InitVelocityConstraintsERK10b2TimeStep()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZN15b2RevoluteJoint23InitVelocityConstraintsERK10b2TimeStep = null;
         _loc1_ = new FSM__ZN15b2RevoluteJoint23InitVelocityConstraintsERK10b2TimeStep();
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
               this.i1 = li32(this.i0 + 48);
               this.i2 = li32(this.i0 + 52);
               this.i3 = li8(this.i0 + 168);
               this.i4 = this.i0 + 168;
               this.i5 = li32(mstate.ebp + 12);
               if(this.i3 == 0)
               {
                  this.i3 = li8(this.i0 + 180);
                  if(this.i3 == 0)
                  {
                     break;
                  }
               }
               this.f0 = 0;
               this.f0 = this.f0;
               this.f1 = lf32(this.i1 + 136);
               this.f0 = this.f0;
               if(this.f1 <= this.f0)
               {
                  this.f0 = 0;
                  this.f0 = this.f0;
                  this.f1 = lf32(this.i2 + 136);
                  this.f0 = this.f0;
                  if(this.f1 <= this.f0)
                  {
                     this.i0 = cmodule.Box2D.___sF;
                     mstate.esp -= 24;
                     this.i1 = cmodule.Box2D.__2E_str1670;
                     this.i2 = cmodule.Box2D.__2E_str67274;
                     this.i4 = cmodule.Box2D.__ZZN15b2RevoluteJoint23InitVelocityConstraintsERK10b2TimeStepE8__func__;
                     this.i5 = cmodule.Box2D.__2E_str66273;
                     this.i3 = 73;
                     this.i0 += 176;
                     si32(this.i0,mstate.esp);
                     si32(this.i1,mstate.esp + 4);
                     si32(this.i2,mstate.esp + 8);
                     si32(this.i4,mstate.esp + 12);
                     si32(this.i5,mstate.esp + 16);
                     si32(this.i3,mstate.esp + 20);
                     state = 1;
                     mstate.esp -= 4;
                     FSM_fprintf.start();
                     return;
                  }
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
               throw "Invalid state in __ZN15b2RevoluteJoint23InitVelocityConstraintsERK10b2TimeStep";
         }
         this.f0 = 0;
         this.f1 = lf32(this.i0 + 100);
         this.f2 = lf32(this.i1 + 40);
         this.f3 = lf32(this.i0 + 96);
         this.f4 = lf32(this.i1 + 36);
         this.f3 -= this.f4;
         this.f1 -= this.f2;
         this.f2 = this.f3;
         this.f1 = this.f1;
         this.f3 = lf32(this.i1 + 24);
         this.f2 = this.f2;
         this.f4 = lf32(this.i1 + 32);
         this.f1 = this.f1;
         this.f5 = lf32(this.i0 + 108);
         this.f6 = lf32(this.i2 + 40);
         this.f7 = lf32(this.i0 + 104);
         this.f8 = lf32(this.i2 + 36);
         this.f3 *= this.f2;
         this.f7 -= this.f8;
         this.f5 -= this.f6;
         this.f4 *= this.f1;
         this.f3 = this.f3;
         this.f6 = this.f7;
         this.f5 = this.f5;
         this.f4 = this.f4;
         this.f7 = lf32(this.i2 + 24);
         this.f6 = this.f6;
         this.f8 = lf32(this.i2 + 32);
         this.f5 = this.f5;
         this.f4 = this.f4;
         this.f3 = this.f3;
         this.f9 = lf32(this.i1 + 20);
         this.f10 = lf32(this.i1 + 28);
         this.f11 = lf32(this.i2 + 20);
         this.f12 = lf32(this.i2 + 28);
         this.f3 += this.f4;
         this.f4 = this.f7 * this.f6;
         this.f7 = this.f8 * this.f5;
         this.f3 = this.f3;
         this.f2 = this.f9 * this.f2;
         this.f4 = this.f4;
         this.f6 = this.f11 * this.f6;
         this.f7 = this.f7;
         this.f5 = this.f12 * this.f5;
         this.f1 = this.f10 * this.f1;
         this.f8 = this.f3;
         this.f2 = this.f2;
         this.f6 = this.f6;
         this.f5 = this.f5;
         this.f1 = this.f1;
         this.f7 = this.f7;
         this.f4 = this.f4;
         this.f9 = this.f8 * this.f8;
         this.f4 += this.f7;
         this.f1 = this.f1;
         this.f2 = this.f2;
         this.f5 = this.f5;
         this.f6 = this.f6;
         this.f7 = lf32(this.i1 + 128);
         this.f10 = lf32(this.i2 + 128);
         this.f11 = lf32(this.i1 + 136);
         this.f9 = this.f9;
         this.f8 = -this.f8;
         this.f1 = this.f2 + this.f1;
         this.f2 = this.f4;
         this.f4 = this.f6 + this.f5;
         this.f5 = this.f8;
         this.f1 = this.f1;
         this.f6 = this.f2;
         this.f4 = this.f4;
         this.f8 = this.f9;
         this.f9 = this.f11;
         this.f12 = this.f10;
         this.f13 = this.f7;
         this.f14 = this.f1;
         this.f5 = this.f5;
         this.f15 = this.f4;
         this.f8 *= this.f9;
         this.f16 = this.f6 * this.f6;
         this.f12 = this.f13 + this.f12;
         this.f13 = lf32(this.i2 + 136);
         this.f8 = this.f8;
         this.f17 = this.f14 * this.f5;
         this.f18 = this.f14 * this.f14;
         this.f16 = this.f16;
         this.f19 = this.f6 * this.f15;
         this.f12 = this.f12;
         this.f20 = this.f13;
         this.f17 = this.f17;
         this.f18 = this.f18;
         this.f16 = this.f16;
         this.f19 = this.f19;
         this.f8 = this.f8;
         this.f12 = this.f12;
         this.f8 = this.f12 + this.f8;
         this.f17 = this.f17;
         this.f18 = this.f18;
         this.f16 *= this.f20;
         this.f19 = this.f19;
         this.f8 = this.f8;
         this.f17 *= this.f9;
         this.f18 *= this.f9;
         this.f16 = this.f16;
         this.f19 *= this.f20;
         this.f21 = this.f15 * this.f15;
         this.f17 = this.f17;
         this.f5 = this.f9 * this.f5;
         this.f18 = this.f18;
         this.f19 = this.f19;
         this.f6 *= this.f20;
         this.f21 = this.f21;
         this.f16 = this.f16;
         this.f8 = this.f8;
         this.f8 += this.f16;
         this.f5 = this.f5;
         this.f16 = this.f18;
         this.f6 = this.f6;
         this.f18 = this.f21;
         this.f19 = this.f19;
         this.f17 = this.f17;
         this.f17 -= this.f19;
         this.f12 += this.f16;
         this.f16 = this.f18 * this.f20;
         this.f8 = this.f8;
         this.f6 = this.f6;
         this.f5 = this.f5;
         this.f5 -= this.f6;
         this.f6 = this.f12;
         this.f12 = this.f14 * this.f9;
         this.f14 = this.f16;
         this.f15 *= this.f20;
         sf32(this.f8,this.i0 + 128);
         this.f8 = this.f17;
         this.f12 = this.f12;
         this.f15 = this.f15;
         sf32(this.f8,this.i0 + 140);
         this.f5 = this.f5;
         this.f14 = this.f14;
         this.f6 = this.f6;
         sf32(this.f5,this.i0 + 152);
         this.f6 += this.f14;
         this.f14 = this.f15;
         this.f12 = this.f12;
         this.f12 += this.f14;
         sf32(this.f8,this.i0 + 132);
         this.f6 = this.f6;
         sf32(this.f6,this.i0 + 144);
         this.f6 = this.f12;
         sf32(this.f6,this.i0 + 156);
         sf32(this.f5,this.i0 + 136);
         this.f5 = this.f9 + this.f20;
         this.f5 = this.f5;
         sf32(this.f6,this.i0 + 148);
         sf32(this.f5,this.i0 + 160);
         this.i3 = this.i0 + 164;
         this.f0 = this.f0;
         this.f0 = this.f0;
         this.f6 = this.f5;
         if(this.f6 > this.f0)
         {
            this.f0 = 1;
            this.f0 = this.f0;
            this.f5 = this.f5;
            this.f0 = this.f0;
            this.f0 /= this.f5;
            this.f5 = this.f0;
         }
         this.f0 = this.f5;
         sf32(this.f0,this.i3);
         this.i3 = li8(this.i4);
         if(this.i3 == 0)
         {
            this.i3 = 0;
            si32(this.i3,this.i0 + 124);
         }
         this.i3 = li8(this.i0 + 180);
         while(true)
         {
            if(this.i3 != 0)
            {
               this.f0 = 0;
               this.f5 = lf32(this.i0 + 192);
               this.f6 = lf32(this.i0 + 188);
               this.f8 = lf32(this.i2 + 64);
               this.f9 = lf32(this.i1 + 64);
               this.f8 -= this.f9;
               this.f9 = this.f5;
               this.f12 = this.f6;
               this.f8 = this.f8;
               this.f14 = this.f9 - this.f12;
               this.f9 = this.f12 - this.f9;
               this.f12 = this.f14;
               this.f9 = this.f9;
               this.f0 = this.f0;
               this.f14 = lf32(this.i0 + 184);
               this.f8 = this.f8;
               this.f15 = lf32(cmodule.Box2D._b2_angularSlop);
               this.f8 -= this.f14;
               this.f9 = this.f9;
               this.f0 = this.f0;
               this.f12 = this.f12;
               this.f8 = this.f8;
               this.f0 = this.f12 <= this.f0 ? this.f9 : this.f12;
               this.f9 = this.f15 + this.f15;
               this.f0 = this.f0;
               this.f9 = this.f9;
               this.f9 = this.f9;
               this.f0 = this.f0;
               if(this.f0 < this.f9)
               {
                  this.i3 = 3;
                  si32(this.i3,this.i0 + 196);
                  this.i3 = li8(this.i5 + 20);
                  if(this.i3 != 0)
                  {
                     addr0bbf:
                     this.f0 = lf32(this.i5 + 8);
                     this.f5 = lf32(this.i0 + 112);
                     this.f5 *= this.f0;
                     this.f5 = this.f5;
                     sf32(this.f5,this.i0 + 112);
                     this.f6 = lf32(this.i0 + 116);
                     this.f6 *= this.f0;
                     this.f6 = this.f6;
                     sf32(this.f6,this.i0 + 116);
                     this.f8 = lf32(this.i0 + 120);
                     this.f0 = this.f8 * this.f0;
                     this.f0 = this.f0;
                     sf32(this.f0,this.i0 + 120);
                     this.f0 = lf32(this.i0 + 124);
                     this.f8 = lf32(this.i5 + 8);
                     this.f0 *= this.f8;
                     this.f7 = this.f7;
                     this.f5 = this.f5;
                     this.f8 = this.f5 * this.f7;
                     this.f0 = this.f0;
                     this.f8 = this.f8;
                     sf32(this.f0,this.i0 + 124);
                     this.f0 = lf32(this.i1 + 72);
                     this.f8 = this.f8;
                     this.f0 -= this.f8;
                     this.f6 = this.f6;
                     this.f0 = this.f0;
                     this.f7 = this.f6 * this.f7;
                     this.f1 = this.f1;
                     this.f3 = this.f3;
                     sf32(this.f0,this.i1 + 72);
                     this.f0 = this.f7;
                     this.f1 *= this.f6;
                     this.f3 *= this.f5;
                     this.f1 = this.f1;
                     this.f3 = this.f3;
                     this.f7 = lf32(this.i1 + 76);
                     this.f0 = this.f0;
                     this.f0 = this.f7 - this.f0;
                     this.f3 = this.f3;
                     this.f1 = this.f1;
                     this.f0 = this.f0;
                     this.f1 -= this.f3;
                     sf32(this.f0,this.i1 + 76);
                     this.f0 = this.f1;
                     this.f1 = lf32(this.i0 + 124);
                     this.f0 = this.f0;
                     this.f0 += this.f1;
                     this.f0 = this.f0;
                     this.f1 = lf32(this.i0 + 120);
                     this.f0 = this.f0;
                     this.f0 += this.f1;
                     this.f0 = this.f0;
                     this.f1 = this.f11;
                     this.f0 = this.f0;
                     this.f0 *= this.f1;
                     this.f0 = this.f0;
                     this.f1 = lf32(this.i1 + 80);
                     this.f0 = this.f0;
                     this.f3 = this.f10;
                     this.f0 = this.f1 - this.f0;
                     this.f1 = this.f5 * this.f3;
                     this.f0 = this.f0;
                     this.f1 = this.f1;
                     sf32(this.f0,this.i1 + 80);
                     this.f0 = lf32(this.i2 + 72);
                     this.f1 = this.f1;
                     this.f0 += this.f1;
                     this.f0 = this.f0;
                     this.f1 = this.f6 * this.f3;
                     this.f3 = this.f4;
                     this.f2 = this.f2;
                     sf32(this.f0,this.i2 + 72);
                     this.f0 = this.f1;
                     this.f1 = this.f3 * this.f6;
                     this.f2 *= this.f5;
                     this.f1 = this.f1;
                     this.f2 = this.f2;
                     this.f3 = lf32(this.i2 + 76);
                     this.f0 = this.f0;
                     this.f0 = this.f3 + this.f0;
                     this.f2 = this.f2;
                     this.f1 = this.f1;
                     this.f0 = this.f0;
                     this.f1 -= this.f2;
                     sf32(this.f0,this.i2 + 76);
                     this.f0 = this.f1;
                     this.f1 = lf32(this.i0 + 124);
                     this.f0 = this.f0;
                     this.f0 += this.f1;
                     this.f0 = this.f0;
                     this.f1 = lf32(this.i0 + 120);
                     this.f0 = this.f0;
                     this.f0 += this.f1;
                     this.f0 = this.f0;
                     this.f1 = this.f13;
                     this.f0 = this.f0;
                     this.f0 *= this.f1;
                     this.f0 = this.f0;
                     this.f1 = lf32(this.i2 + 80);
                     this.f0 = this.f0;
                     this.f0 = this.f1 + this.f0;
                     this.f0 = this.f0;
                     sf32(this.f0,this.i2 + 80);
                     break;
                  }
               }
               else
               {
                  this.f0 = this.f8;
                  this.f6 = this.f6;
                  if(this.f6 >= this.f0)
                  {
                     this.i3 = li32(this.i0 + 196);
                     this.i4 = this.i0 + 196;
                     if(this.i3 != 1)
                     {
                        this.i3 = 0;
                        si32(this.i3,this.i0 + 120);
                        this.i3 = 1;
                        si32(this.i3,this.i4);
                        this.i4 = li8(this.i5 + 20);
                        if(this.i4 != 0)
                        {
                           §§goto(addr0bbf);
                        }
                     }
                     else
                     {
                        this.i3 = 1;
                        si32(this.i3,this.i4);
                        this.i3 = li8(this.i5 + 20);
                        if(this.i3 != 0)
                        {
                           §§goto(addr0bbf);
                        }
                     }
                  }
                  else
                  {
                     this.i3 = this.i0 + 196;
                     this.f0 = this.f8;
                     this.f5 = this.f5;
                     if(this.f5 <= this.f0)
                     {
                        this.i4 = li32(this.i3);
                        if(this.i4 != 2)
                        {
                           this.i4 = 0;
                           si32(this.i4,this.i0 + 120);
                           this.i4 = 2;
                           si32(this.i4,this.i3);
                           this.i3 = li8(this.i5 + 20);
                           if(this.i3 != 0)
                           {
                              §§goto(addr0bbf);
                           }
                        }
                        else
                        {
                           this.i4 = 2;
                           si32(this.i4,this.i3);
                           this.i3 = li8(this.i5 + 20);
                           if(this.i3 != 0)
                           {
                              §§goto(addr0bbf);
                           }
                        }
                     }
                     else
                     {
                        this.i4 = 0;
                        si32(this.i4,this.i3);
                        si32(this.i4,this.i0 + 120);
                        this.i3 = li8(this.i5 + 20);
                        if(this.i3 != 0)
                        {
                           §§goto(addr0bbf);
                        }
                     }
                  }
               }
            }
            else
            {
               this.i3 = 0;
               si32(this.i3,this.i0 + 196);
               this.i3 = li8(this.i5 + 20);
               if(this.i3 != 0)
               {
                  §§goto(addr0bbf);
               }
            }
            this.i1 = 0;
            si32(this.i1,this.i0 + 112);
            si32(this.i1,this.i0 + 116);
            si32(this.i1,this.i0 + 120);
            si32(this.i1,this.i0 + 124);
            break;
         }
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp += 4;
         mstate.esp += 4;
         mstate.gworker = caller;
      }
   }
}

