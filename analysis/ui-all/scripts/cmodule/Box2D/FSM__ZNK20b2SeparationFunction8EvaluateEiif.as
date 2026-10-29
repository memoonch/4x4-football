package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZNK20b2SeparationFunction8EvaluateEiif extends Machine
   {
      
      public static const intRegCount:int = 6;
      
      public static const NumberRegCount:int = 24;
      
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
      
      public var f22:Number;
      
      public var f19:Number;
      
      public var f20:Number;
      
      public var f21:Number;
      
      public var f23:Number;
      
      public var f17:Number;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public function FSM__ZNK20b2SeparationFunction8EvaluateEiif()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZNK20b2SeparationFunction8EvaluateEiif = null;
         _loc1_ = new FSM__ZNK20b2SeparationFunction8EvaluateEiif();
         cmodule.Box2D.gstate.gworker = _loc1_;
      }
      
      final override public function work() : void
      {
         loop0:
         switch(state)
         {
            case 0:
               mstate.esp -= 4;
               si32(mstate.ebp,mstate.esp);
               mstate.ebp = mstate.esp;
               mstate.esp -= 0;
               this.f0 = 1;
               this.f0 = this.f0;
               this.f1 = lf32(mstate.ebp + 20);
               this.f0 = this.f0;
               this.f0 -= this.f1;
               this.f0 = this.f0;
               this.i0 = li32(mstate.ebp + 8);
               this.f2 = lf32(this.i0 + 36);
               this.f3 = lf32(this.i0 + 32);
               this.f4 = this.f0;
               this.f0 = this.f2 * this.f1;
               this.f2 = this.f4 * this.f3;
               this.f0 = this.f0;
               this.f2 = this.f2;
               this.f0 = this.f0;
               this.f2 = this.f2;
               this.f3 = lf32(this.i0 + 28);
               this.f5 = lf32(this.i0 + 24);
               this.f6 = lf32(this.i0 + 20);
               this.f7 = lf32(this.i0 + 16);
               this.f0 = this.f2 + this.f0;
               this.f2 = this.f0;
               this.f0 = this.f2;
               this.f0 = Math.cos(this.f0);
               this.f8 = this.f0;
               this.f0 = this.f2;
               this.f0 = Math.sin(this.f0);
               this.f2 = this.f0;
               this.f0 = lf32(this.i0 + 68);
               this.f9 = lf32(this.i0 + 72);
               this.f9 *= this.f1;
               this.f0 = this.f4 * this.f0;
               this.f9 = this.f9;
               this.f0 = this.f0;
               this.f9 = this.f9;
               this.f0 = this.f0;
               this.f10 = lf32(this.i0 + 64);
               this.f11 = lf32(this.i0 + 60);
               this.f12 = lf32(this.i0 + 56);
               this.f13 = lf32(this.i0 + 52);
               this.f0 += this.f9;
               this.f9 = lf32(this.i0 + 8);
               this.f14 = lf32(this.i0 + 12);
               this.f15 = this.f0;
               this.f0 = this.f15;
               this.f0 = Math.cos(this.f0);
               this.f16 = this.f0;
               this.f0 = this.f15;
               this.f0 = Math.sin(this.f0);
               this.f15 = this.f2;
               this.f17 = this.f8;
               this.f18 = this.f0;
               this.f19 = lf32(this.i0 + 44);
               this.f20 = lf32(this.i0 + 48);
               this.f21 = this.f16;
               this.f22 = this.f15 * this.f9;
               this.f9 = this.f17 * this.f9;
               this.f23 = this.f18 * this.f19;
               this.f19 = this.f21 * this.f19;
               this.f21 *= this.f20;
               this.f20 *= this.f18;
               this.f12 *= this.f4;
               this.f13 *= this.f4;
               this.f10 *= this.f1;
               this.f11 *= this.f1;
               this.f17 *= this.f14;
               this.f14 *= this.f15;
               this.f6 *= this.f4;
               this.f4 = this.f7 * this.f4;
               this.f3 *= this.f1;
               this.f1 = this.f5 * this.f1;
               this.f5 = this.f22;
               this.f7 = this.f9;
               this.f9 = this.f23;
               this.f19 = this.f19;
               this.f21 = this.f21;
               this.f20 = this.f20;
               this.f12 = this.f12;
               this.f13 = this.f13;
               this.f10 = this.f10;
               this.f11 = this.f11;
               this.f17 = this.f17;
               this.f14 = this.f14;
               this.f6 = this.f6;
               this.f4 = this.f4;
               this.f3 = this.f3;
               this.f1 = this.f1;
               this.f17 = this.f17;
               this.f5 = this.f5;
               this.f14 = this.f14;
               this.f7 = this.f7;
               this.f21 = this.f21;
               this.f9 = this.f9;
               this.f20 = this.f20;
               this.f19 = this.f19;
               this.f10 = this.f10;
               this.f12 = this.f12;
               this.f11 = this.f11;
               this.f13 = this.f13;
               this.f3 = this.f3;
               this.f6 = this.f6;
               this.f1 = this.f1;
               this.f4 = this.f4;
               this.f5 += this.f17;
               this.f7 -= this.f14;
               this.f9 += this.f21;
               this.f14 = this.f19 - this.f20;
               this.f10 = this.f12 + this.f10;
               this.f11 = this.f13 + this.f11;
               this.f3 = this.f6 + this.f3;
               this.f1 = this.f4 + this.f1;
               this.f4 = this.f5;
               this.f5 = this.f7;
               this.f6 = this.f9;
               this.f7 = this.f14;
               this.f9 = this.f10;
               this.f10 = this.f11;
               this.f3 = this.f3;
               this.f1 = this.f1;
               this.f4 = this.f4;
               this.f3 = this.f3;
               this.f5 = this.f5;
               this.f1 = this.f1;
               this.f6 = this.f6;
               this.f9 = this.f9;
               this.f7 = this.f7;
               this.f10 = this.f10;
               this.i1 = li32(this.i0 + 80);
               this.f3 -= this.f4;
               this.f1 -= this.f5;
               this.f4 = -this.f18;
               this.f5 = this.f9 - this.f6;
               this.f6 = this.f10 - this.f7;
               this.f7 = -this.f15;
               this.f3 = this.f3;
               this.f1 = this.f1;
               this.f4 = this.f4;
               this.f5 = this.f5;
               this.f6 = this.f6;
               this.f7 = this.f7;
               this.i2 = li32(mstate.ebp + 12);
               this.i3 = li32(mstate.ebp + 16);
               while(true)
               {
                  if(this.i1 != 2)
                  {
                     if(this.i1 == 1)
                     {
                        this.f9 = lf32(this.i0 + 84);
                        this.f2 = this.f2;
                        this.f8 = this.f8;
                        this.f10 = this.f8 * this.f9;
                        this.f9 = this.f2 * this.f9;
                        this.f10 = this.f10;
                        this.f9 = this.f9;
                        this.f11 = lf32(this.i0 + 92);
                        this.f12 = lf32(this.i0 + 96);
                        this.f13 = lf32(this.i0 + 88);
                        this.f7 = this.f7;
                        this.f10 = this.f10;
                        this.f1 = this.f1;
                        this.f9 = this.f9;
                        this.f3 = this.f3;
                        this.f2 *= this.f11;
                        this.f11 = this.f8 * this.f11;
                        this.f1 += this.f10;
                        this.f3 += this.f9;
                        this.f9 = this.f13 * this.f7;
                        this.f10 = this.f8 * this.f13;
                        this.f8 *= this.f12;
                        this.f7 = this.f12 * this.f7;
                        this.f2 = this.f2;
                        this.f11 = this.f11;
                        this.f1 = this.f1;
                        this.f3 = this.f3;
                        this.f9 = this.f9;
                        this.f10 = this.f10;
                        this.f8 = this.f8;
                        this.f7 = this.f7;
                        this.f8 = this.f8;
                        this.f2 = this.f2;
                        this.f7 = this.f7;
                        this.f11 = this.f11;
                        this.f9 = this.f9;
                        this.f1 = this.f1;
                        this.f10 = this.f10;
                        this.f3 = this.f3;
                        this.i0 = li32(this.i0 + 4);
                        this.f2 += this.f8;
                        this.f7 = this.f11 + this.f7;
                        this.f1 += this.f9;
                        this.f3 += this.f10;
                        this.f2 = this.f2;
                        this.f7 = this.f7;
                        this.f1 = this.f1;
                        this.f3 = this.f3;
                        if(this.i3 >= 0)
                        {
                           this.i2 = li32(this.i0 + 20);
                           if(this.i2 > this.i3)
                           {
                              this.i0 = li32(this.i0 + 16);
                              this.i2 = this.i3 << 3;
                              this.i0 += this.i2;
                              this.f8 = lf32(this.i0);
                              this.f0 = this.f0;
                              this.f9 = this.f16;
                              this.f10 = this.f9 * this.f8;
                              this.f0 *= this.f8;
                              this.f8 = this.f10;
                              this.f0 = this.f0;
                              this.f10 = lf32(this.i0 + 4);
                              this.f4 = this.f4;
                              this.f8 = this.f8;
                              this.f6 = this.f6;
                              this.f0 = this.f0;
                              this.f5 = this.f5;
                              this.f6 += this.f8;
                              this.f0 = this.f5 + this.f0;
                              this.f4 = this.f10 * this.f4;
                              this.f5 = this.f9 * this.f10;
                              this.f6 = this.f6;
                              this.f0 = this.f0;
                              this.f4 = this.f4;
                              this.f5 = this.f5;
                              this.f4 = this.f4;
                              this.f6 = this.f6;
                              this.f5 = this.f5;
                              this.f0 = this.f0;
                              this.f4 = this.f6 + this.f4;
                              this.f0 += this.f5;
                              this.f4 = this.f4;
                              this.f0 = this.f0;
                              this.f1 = this.f1;
                              this.f4 = this.f4;
                              this.f3 = this.f3;
                              this.f0 = this.f0;
                              this.f1 = this.f4 - this.f1;
                              this.f0 -= this.f3;
                              this.f1 = this.f1;
                              this.f0 = this.f0;
                              this.f3 = this.f7;
                              this.f1 = this.f1;
                              this.f2 = this.f2;
                              this.f0 = this.f0;
                              this.f1 *= this.f3;
                              this.f0 *= this.f2;
                              §§goto(addr0f18);
                           }
                        }
                        this.i0 = cmodule.Box2D.___sF;
                        mstate.esp -= 24;
                        this.i2 = cmodule.Box2D.__2E_str1670;
                        this.i3 = cmodule.Box2D.__2E_str1208;
                        this.i1 = cmodule.Box2D.__ZZNK11b2LoopShape9GetVertexEiE8__func__;
                        this.i4 = cmodule.Box2D.__2E_str4211;
                        this.i5 = 103;
                        this.i0 += 176;
                        si32(this.i0,mstate.esp);
                        si32(this.i2,mstate.esp + 4);
                        addr07f9:
                        si32(this.i3,mstate.esp + 8);
                        si32(this.i1,mstate.esp + 12);
                        break;
                     }
                     if(this.i1 == 0)
                     {
                        this.i1 = li32(this.i0);
                        if(this.i2 >= 0)
                        {
                           this.i4 = li32(this.i1 + 20);
                           if(this.i4 > this.i2)
                           {
                              break loop0;
                           }
                        }
                        this.i0 = cmodule.Box2D.___sF;
                        mstate.esp -= 24;
                        this.i1 = cmodule.Box2D.__2E_str1670;
                        this.i2 = cmodule.Box2D.__2E_str1208;
                        this.i3 = cmodule.Box2D.__ZZNK11b2LoopShape9GetVertexEiE8__func__;
                        this.i4 = cmodule.Box2D.__2E_str4211;
                        this.i5 = 103;
                     }
                     else
                     {
                        this.i0 = cmodule.Box2D.___sF;
                        mstate.esp -= 24;
                        this.i1 = cmodule.Box2D.__2E_str1670;
                        this.i2 = cmodule.Box2D.__2E_str46253;
                        this.i3 = cmodule.Box2D.__ZZNK20b2SeparationFunction8EvaluateEiifE8__func__;
                        this.i4 = cmodule.Box2D.__2E_str128320;
                        this.i5 = 242;
                     }
                     this.i0 += 176;
                     si32(this.i0,mstate.esp);
                     si32(this.i1,mstate.esp + 4);
                     si32(this.i2,mstate.esp + 8);
                  }
                  else
                  {
                     this.f9 = lf32(this.i0 + 84);
                     this.f0 = this.f0;
                     this.f10 = this.f16;
                     this.f11 = this.f10 * this.f9;
                     this.f9 = this.f0 * this.f9;
                     this.f11 = this.f11;
                     this.f9 = this.f9;
                     this.f12 = lf32(this.i0 + 92);
                     this.f13 = lf32(this.i0 + 96);
                     this.f14 = lf32(this.i0 + 88);
                     this.f4 = this.f4;
                     this.f11 = this.f11;
                     this.f6 = this.f6;
                     this.f9 = this.f9;
                     this.f5 = this.f5;
                     this.f0 *= this.f12;
                     this.f12 = this.f10 * this.f12;
                     this.f6 += this.f11;
                     this.f5 += this.f9;
                     this.f9 = this.f14 * this.f4;
                     this.f11 = this.f10 * this.f14;
                     this.f10 *= this.f13;
                     this.f4 = this.f13 * this.f4;
                     this.f0 = this.f0;
                     this.f12 = this.f12;
                     this.f6 = this.f6;
                     this.f5 = this.f5;
                     this.f9 = this.f9;
                     this.f11 = this.f11;
                     this.f10 = this.f10;
                     this.f4 = this.f4;
                     this.f10 = this.f10;
                     this.f0 = this.f0;
                     this.f4 = this.f4;
                     this.f12 = this.f12;
                     this.f9 = this.f9;
                     this.f6 = this.f6;
                     this.f11 = this.f11;
                     this.f5 = this.f5;
                     this.i0 = li32(this.i0);
                     this.f0 += this.f10;
                     this.f4 = this.f12 + this.f4;
                     this.f6 += this.f9;
                     this.f5 += this.f11;
                     this.f0 = this.f0;
                     this.f4 = this.f4;
                     this.f6 = this.f6;
                     this.f5 = this.f5;
                     if(this.i2 >= 0)
                     {
                        this.i1 = li32(this.i0 + 20);
                        if(this.i1 > this.i2)
                        {
                           this.i0 = li32(this.i0 + 16);
                           this.i1 = this.i2 << 3;
                           this.i0 += this.i1;
                           this.f9 = lf32(this.i0);
                           this.f2 = this.f2;
                           this.f8 = this.f8;
                           this.f10 = this.f8 * this.f9;
                           this.f2 *= this.f9;
                           this.f9 = this.f10;
                           this.f2 = this.f2;
                           this.f10 = lf32(this.i0 + 4);
                           this.f7 = this.f7;
                           this.f9 = this.f9;
                           this.f1 = this.f1;
                           this.f2 = this.f2;
                           this.f3 = this.f3;
                           this.f1 += this.f9;
                           this.f2 = this.f3 + this.f2;
                           this.f3 = this.f10 * this.f7;
                           this.f7 = this.f8 * this.f10;
                           this.f1 = this.f1;
                           this.f2 = this.f2;
                           this.f3 = this.f3;
                           this.f7 = this.f7;
                           this.f3 = this.f3;
                           this.f1 = this.f1;
                           this.f7 = this.f7;
                           this.f2 = this.f2;
                           this.f1 += this.f3;
                           this.f2 += this.f7;
                           this.f1 = this.f1;
                           this.f2 = this.f2;
                           this.f3 = this.f6;
                           this.f1 = this.f1;
                           this.f5 = this.f5;
                           this.f2 = this.f2;
                           this.f1 -= this.f3;
                           this.f2 -= this.f5;
                           this.f1 = this.f1;
                           this.f2 = this.f2;
                           this.f3 = this.f4;
                           this.f1 = this.f1;
                           this.f0 = this.f0;
                           this.f2 = this.f2;
                           this.f1 *= this.f3;
                           this.f0 = this.f2 * this.f0;
                           §§goto(addr0f18);
                        }
                     }
                     this.i0 = cmodule.Box2D.___sF;
                     mstate.esp -= 24;
                     this.i2 = cmodule.Box2D.__2E_str1670;
                     this.i1 = cmodule.Box2D.__2E_str1208;
                     this.i3 = cmodule.Box2D.__ZZNK11b2LoopShape9GetVertexEiE8__func__;
                     this.i4 = cmodule.Box2D.__2E_str4211;
                     this.i5 = 103;
                     this.i0 += 176;
                     si32(this.i0,mstate.esp);
                     si32(this.i2,mstate.esp + 4);
                     si32(this.i1,mstate.esp + 8);
                  }
                  si32(this.i3,mstate.esp + 12);
                  break;
               }
               si32(this.i4,mstate.esp + 16);
               si32(this.i5,mstate.esp + 20);
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
               throw "Invalid state in __ZNK20b2SeparationFunction8EvaluateEiif";
         }
         this.i1 = li32(this.i1 + 16);
         this.i2 <<= 3;
         this.i2 = this.i1 + this.i2;
         this.f9 = lf32(this.i2);
         this.f10 = lf32(this.i2 + 4);
         this.i2 = li32(this.i0 + 4);
         if(this.i3 >= 0)
         {
            this.i1 = li32(this.i2 + 20);
            if(this.i1 > this.i3)
            {
               this.i2 = li32(this.i2 + 16);
               this.i3 <<= 3;
               this.i2 += this.i3;
               this.f11 = lf32(this.i2);
               this.f0 = this.f0;
               this.f12 = this.f16;
               this.f8 = this.f8;
               this.f9 = this.f9;
               this.f2 = this.f2;
               this.f13 = this.f12 * this.f11;
               this.f0 *= this.f11;
               this.f11 = this.f8 * this.f9;
               this.f2 *= this.f9;
               this.f16 = this.f13;
               this.f0 = this.f0;
               this.f9 = this.f11;
               this.f2 = this.f2;
               this.f11 = lf32(this.i2 + 4);
               this.f4 = this.f4;
               this.f10 = this.f10;
               this.f7 = this.f7;
               this.f13 = this.f16;
               this.f6 = this.f6;
               this.f0 = this.f0;
               this.f5 = this.f5;
               this.f9 = this.f9;
               this.f1 = this.f1;
               this.f2 = this.f2;
               this.f3 = this.f3;
               this.f6 += this.f13;
               this.f0 = this.f5 + this.f0;
               this.f4 = this.f11 * this.f4;
               this.f5 = this.f12 * this.f11;
               this.f1 += this.f9;
               this.f8 *= this.f10;
               this.f2 = this.f3 + this.f2;
               this.f3 = this.f10 * this.f7;
               this.f6 = this.f6;
               this.f0 = this.f0;
               this.f4 = this.f4;
               this.f5 = this.f5;
               this.f1 = this.f1;
               this.f7 = this.f8;
               this.f2 = this.f2;
               this.f3 = this.f3;
               this.f4 = this.f4;
               this.f6 = this.f6;
               this.f5 = this.f5;
               this.f0 = this.f0;
               this.f3 = this.f3;
               this.f1 = this.f1;
               this.f7 = this.f7;
               this.f2 = this.f2;
               this.f4 = this.f6 + this.f4;
               this.f0 += this.f5;
               this.f1 += this.f3;
               this.f2 += this.f7;
               this.f3 = this.f4;
               this.f0 = this.f0;
               this.f1 = this.f1;
               this.f2 = this.f2;
               this.f1 = this.f1;
               this.f3 = this.f3;
               this.f2 = this.f2;
               this.f0 = this.f0;
               this.f1 = this.f3 - this.f1;
               this.f0 -= this.f2;
               this.f1 = this.f1;
               this.f0 = this.f0;
               this.f2 = lf32(this.i0 + 92);
               this.f3 = lf32(this.i0 + 96);
               this.f1 = this.f1;
               this.f0 = this.f0;
               this.f1 *= this.f2;
               this.f0 *= this.f3;
               addr0f18:
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
               return;
            }
         }
         this.i2 = cmodule.Box2D.___sF;
         mstate.esp -= 24;
         this.i0 = cmodule.Box2D.__2E_str1670;
         this.i3 = cmodule.Box2D.__2E_str1208;
         this.i1 = cmodule.Box2D.__ZZNK11b2LoopShape9GetVertexEiE8__func__;
         this.i4 = cmodule.Box2D.__2E_str4211;
         this.i5 = 103;
         this.i2 += 176;
         si32(this.i2,mstate.esp);
         si32(this.i0,mstate.esp + 4);
         §§goto(addr07f9);
      }
   }
}

