package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public final class FSM__ZN15b2ContactSolverC1EP18b2ContactSolverDef extends Machine
   {
      
      public static const intRegCount:int = 20;
      
      public static const NumberRegCount:int = 4;
      
      public var f1:Number;
      
      public var f3:Number;
      
      public var i10:int;
      
      public var i11:int;
      
      public var i12:int;
      
      public var i13:int;
      
      public var i14:int;
      
      public var i15:int;
      
      public var i17:int;
      
      public var i19:int;
      
      public var f2:Number;
      
      public var i16:int;
      
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
      
      public var i18:int;
      
      public var f0:Number;
      
      public function FSM__ZN15b2ContactSolverC1EP18b2ContactSolverDef()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZN15b2ContactSolverC1EP18b2ContactSolverDef = null;
         _loc1_ = new FSM__ZN15b2ContactSolverC1EP18b2ContactSolverDef();
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
               this.i0 = li32(mstate.ebp + 12);
               this.i1 = li32(mstate.ebp + 8);
               this.i2 = li32(this.i0 + 8);
               si32(this.i2,this.i1);
               this.i3 = li32(this.i0 + 4);
               si32(this.i3,this.i1 + 8);
               this.i4 = li32(this.i2 + 102796);
               this.i5 = this.i2 + 102796;
               this.i6 = this.i3 * 188;
               this.i7 = this.i1 + 8;
               if(this.i4 >= 32)
               {
                  this.i0 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i1 = cmodule.Box2D.__2E_str1670;
                  this.i2 = cmodule.Box2D.__2E_str78285;
                  this.i3 = cmodule.Box2D.__ZZN16b2StackAllocator8AllocateEiE8__func__;
                  this.i5 = cmodule.Box2D.__2E_str10217;
                  this.i6 = 38;
                  this.i0 += 176;
                  si32(this.i0,mstate.esp);
                  si32(this.i1,mstate.esp + 4);
                  si32(this.i2,mstate.esp + 8);
                  si32(this.i3,mstate.esp + 12);
                  si32(this.i5,mstate.esp + 16);
                  si32(this.i6,mstate.esp + 20);
                  §§goto(addr0171);
               }
            case 2:
               this.i4 = li32(this.i5);
               this.i8 = this.i4 * 12;
               this.i8 = this.i2 + this.i8;
               si32(this.i6,this.i8 + 102416);
               this.i8 = li32(this.i2 + 102400);
               this.i9 = this.i8 + this.i6;
               this.i10 = this.i2 + 102400;
               if(this.i9 >= 102401)
               {
                  this.i8 = 0;
                  mstate.esp -= 8;
                  this.i9 = this.i3 * 188;
                  si32(this.i8,mstate.esp);
                  si32(this.i9,mstate.esp + 4);
                  state = 3;
                  mstate.esp -= 4;
                  FSM_pubrealloc.start();
                  return;
               }
               this.i3 = 0;
               this.i11 = this.i4 * 12;
               this.i11 = this.i2 + this.i11;
               this.i8 = this.i2 + this.i8;
               si32(this.i8,this.i11 + 102412);
               si8(this.i3,this.i11 + 102420);
               si32(this.i9,this.i10);
               break;
            case 1:
               mstate.esp += 24;
               state = 2;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 3:
               this.i8 = mstate.eax;
               this.i9 = this.i4 * 12;
               mstate.esp += 8;
               this.i9 = this.i2 + this.i9;
               si32(this.i8,this.i9 + 102412);
               this.i8 = 1;
               si8(this.i8,this.i9 + 102420);
               break;
            default:
               throw "Invalid state in __ZN15b2ContactSolverC1EP18b2ContactSolverDef";
         }
         this.i3 = li32(this.i2 + 102404);
         this.i3 += this.i6;
         si32(this.i3,this.i2 + 102404);
         this.i6 = li32(this.i2 + 102408);
         this.i3 = this.i6 > this.i3 ? this.i6 : this.i3;
         si32(this.i3,this.i2 + 102408);
         this.i3 = li32(this.i5);
         this.i4 *= 12;
         this.i3 += 1;
         si32(this.i3,this.i5);
         this.i2 += this.i4;
         this.i2 = li32(this.i2 + 102412);
         si32(this.i2,this.i1 + 4);
         this.i2 = li32(this.i7);
         this.i1 += 4;
         if(this.i2 >= 1)
         {
            this.i2 = 0;
            this.i3 = this.i0 + 12;
            this.i4 = this.i0 + 16;
            this.i5 = this.i2;
            this.i6 = this.i2;
            while(true)
            {
               this.i8 = li32(this.i0);
               this.i8 += this.i6;
               this.i8 = li32(this.i8);
               this.i9 = li32(this.i8 + 48);
               this.i10 = li32(this.i8 + 52);
               this.i11 = li32(this.i9 + 16);
               this.i12 = li32(this.i10 + 16);
               this.f0 = lf32(this.i11 + 8);
               this.f1 = lf32(this.i12 + 8);
               this.i11 = li32(this.i9 + 12);
               this.i12 = li32(this.i10 + 12);
               this.i13 = li32(this.i8 + 132);
               this.i14 = this.i8 + 132;
               this.i15 = this.i8 + 64;
               this.i16 = this.i8;
               if(this.i13 <= 0)
               {
                  break;
               }
               this.i13 = li32(this.i1);
               this.i17 = li8(this.i16 + 144);
               this.i18 = this.i16 + 144;
               if(this.i17 != 0)
               {
                  this.i17 = 0;
                  this.i19 = this.i13 + this.i5;
                  si32(this.i17,this.i19 + 164);
                  si8(this.i17,this.i18);
               }
               else
               {
                  this.f2 = lf32(this.i10 + 20);
                  this.f3 = lf32(this.i9 + 20);
                  this.f2 = this.f3 * this.f2;
                  this.f2 = this.f2;
                  this.f2 = this.f2;
                  this.f2 = Math.sqrt(this.f2);
                  this.f2 = this.f2;
                  this.i17 = this.i13 + this.i5;
                  sf32(this.f2,this.i17 + 164);
               }
               this.i17 = 0;
               this.f2 = lf32(this.i10 + 24);
               this.f3 = lf32(this.i9 + 24);
               this.f2 = this.f3 > this.f2 ? this.f3 : this.f2;
               this.f2 = this.f2;
               this.i18 = this.i13 + this.i5;
               sf32(this.f2,this.i18 + 168);
               si32(this.i11,this.i18 + 144);
               si32(this.i12,this.i18 + 148);
               si32(this.i15,this.i18 + 176);
               si32(this.i17,this.i18 + 104);
               si32(this.i17,this.i18 + 108);
               this.i11 = li32(this.i14);
               si32(this.i11,this.i18 + 172);
               this.f2 = lf32(this.i16 + 112);
               this.f3 = lf32(this.i16 + 116);
               sf32(this.f2,this.i18 + 88);
               sf32(this.f3,this.i18 + 92);
               this.f2 = lf32(this.i16 + 120);
               this.f3 = lf32(this.i16 + 124);
               sf32(this.f2,this.i18 + 96);
               sf32(this.f3,this.i18 + 100);
               sf32(this.f0,this.i18 + 156);
               sf32(this.f1,this.i18 + 160);
               this.i12 = li32(this.i16 + 128);
               si32(this.i12,this.i18 + 152);
               si32(this.i9,this.i18 + 180);
               si32(this.i10,this.i18 + 184);
               if(this.i11 >= 1)
               {
                  this.i9 = 0;
                  this.i10 = this.i13 + this.i5;
                  do
                  {
                     this.i12 = li8(this.i4);
                     this.i14 = this.i10;
                     if(this.i12 != 0)
                     {
                        this.f0 = lf32(this.i3);
                        this.f1 = lf32(this.i8 + 72);
                        this.f0 *= this.f1;
                        this.f0 = this.f0;
                        sf32(this.f0,this.i10 + 24);
                        this.f0 = lf32(this.i3);
                        this.f1 = lf32(this.i8 + 76);
                        this.f0 *= this.f1;
                        this.f0 = this.f0;
                        sf32(this.f0,this.i10 + 28);
                     }
                     else
                     {
                        this.i12 = 0;
                        si32(this.i12,this.i10 + 24);
                        si32(this.i12,this.i10 + 28);
                     }
                     this.i12 = 0;
                     this.f0 = lf32(this.i8 + 64);
                     this.f1 = lf32(this.i8 + 68);
                     sf32(this.f0,this.i14);
                     sf32(this.f1,this.i10 + 4);
                     si32(this.i12,this.i10 + 8);
                     si32(this.i12,this.i10 + 12);
                     si32(this.i12,this.i10 + 16);
                     si32(this.i12,this.i10 + 20);
                     si32(this.i12,this.i10 + 32);
                     si32(this.i12,this.i10 + 36);
                     si32(this.i12,this.i10 + 40);
                     this.i10 += 44;
                     this.i8 += 24;
                     this.i9 += 1;
                  }
                  while(this.i11 > this.i9);
               }
               this.i8 = 0;
               this.i9 = this.i13 + this.i5;
               si32(this.i8,this.i9 + 128);
               si32(this.i8,this.i9 + 136);
               si32(this.i8,this.i9 + 132);
               si32(this.i8,this.i9 + 140);
               si32(this.i8,this.i9 + 112);
               si32(this.i8,this.i9 + 120);
               si32(this.i8,this.i9 + 116);
               si32(this.i8,this.i9 + 124);
               this.i8 = li32(this.i7);
               this.i5 += 188;
               this.i6 += 4;
               this.i2 += 1;
               if(this.i8 > this.i2)
               {
                  continue;
               }
            }
            this.i2 = cmodule.Box2D.___sF;
            mstate.esp -= 24;
            this.i5 = cmodule.Box2D.__2E_str1670;
            this.i6 = cmodule.Box2D.__2E_str138327;
            this.i0 = cmodule.Box2D.__ZZN15b2ContactSolverC4EP18b2ContactSolverDefE8__func__;
            this.i1 = cmodule.Box2D.__2E_str60267;
            this.i3 = 52;
            this.i2 += 176;
            si32(this.i2,mstate.esp);
            si32(this.i5,mstate.esp + 4);
            si32(this.i6,mstate.esp + 8);
            si32(this.i0,mstate.esp + 12);
            si32(this.i1,mstate.esp + 16);
            si32(this.i3,mstate.esp + 20);
            addr0171:
            state = 1;
            mstate.esp -= 4;
            FSM_fprintf.start();
            return;
         }
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp += 4;
         mstate.esp += 4;
         mstate.gworker = caller;
      }
   }
}

