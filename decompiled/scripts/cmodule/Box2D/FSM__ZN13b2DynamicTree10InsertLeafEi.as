package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZN13b2DynamicTree10InsertLeafEi extends Machine
   {
      
      public static const intRegCount:int = 13;
      
      public static const NumberRegCount:int = 24;
      
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
      
      public var f15:Number;
      
      public var f16:Number;
      
      public var f19:Number;
      
      public var f20:Number;
      
      public var f21:Number;
      
      public var f22:Number;
      
      public var f23:Number;
      
      public var f17:Number;
      
      public var i10:int;
      
      public var i11:int;
      
      public var i12:int;
      
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
      
      public function FSM__ZN13b2DynamicTree10InsertLeafEi()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZN13b2DynamicTree10InsertLeafEi = null;
         _loc1_ = new FSM__ZN13b2DynamicTree10InsertLeafEi();
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
               this.i1 = li32(this.i0 + 24);
               this.i1 += 1;
               si32(this.i1,this.i0 + 24);
               this.i1 = li32(this.i0);
               this.i2 = li32(mstate.ebp + 12);
               this.i3 = this.i0;
               if(this.i1 == -1)
               {
                  this.i1 = -1;
                  si32(this.i2,this.i3);
                  this.i0 = li32(this.i0 + 4);
                  this.i2 *= 36;
                  this.i0 += this.i2;
                  si32(this.i1,this.i0 + 20);
                  break;
               }
               this.i4 = li32(this.i0 + 4);
               this.i5 = this.i1 * 36;
               this.i6 = this.i2 * 36;
               this.i5 = this.i4 + this.i5;
               this.i6 = this.i4 + this.i6;
               this.f0 = lf32(this.i6);
               this.f1 = lf32(this.i6 + 4);
               this.f2 = lf32(this.i6 + 8);
               this.f3 = lf32(this.i6 + 12);
               this.i5 = li32(this.i5 + 24);
               this.i6 = this.i0 + 4;
               if(this.i5 != -1)
               {
                  do
                  {
                     this.f4 = -2;
                     this.i5 = this.i1 * 36;
                     this.i4 += this.i5;
                     this.f5 = lf32(this.i4);
                     this.f6 = this.f0;
                     this.i7 = li32(this.i4 + 24);
                     this.f5 = this.f5 < this.f6 ? this.f5 : this.f6;
                     this.i8 = li32(this.i4 + 28);
                     this.f7 = lf32(this.i4 + 4);
                     this.f8 = this.f1;
                     this.f7 = this.f7 < this.f8 ? this.f7 : this.f8;
                     this.f5 = this.f5;
                     sf32(this.f5,this.i4);
                     this.f5 = this.f7;
                     sf32(this.f5,this.i4 + 4);
                     this.f5 = lf32(this.i4 + 8);
                     this.f7 = this.f2;
                     this.f9 = lf32(this.i4 + 12);
                     this.f10 = this.f3;
                     this.f5 = this.f5 > this.f7 ? this.f5 : this.f7;
                     this.f9 = this.f9 > this.f10 ? this.f9 : this.f10;
                     this.f5 = this.f5;
                     sf32(this.f5,this.i4 + 8);
                     this.f5 = this.f9;
                     sf32(this.f5,this.i4 + 12);
                     this.i4 = li32(this.i6);
                     this.i4 += this.i5;
                     this.i9 = li32(this.i4 + 32);
                     this.i9 += 1;
                     si32(this.i9,this.i4 + 32);
                     this.i4 = li32(this.i6);
                     this.i5 = this.i4 + this.i5;
                     this.f5 = lf32(this.i5 + 8);
                     this.f9 = lf32(this.i5);
                     this.f11 = lf32(this.i5 + 12);
                     this.f12 = lf32(this.i5 + 4);
                     this.f13 = this.f5 > this.f7 ? this.f5 : this.f7;
                     this.f14 = this.f9 < this.f6 ? this.f9 : this.f6;
                     this.f15 = this.f12 < this.f8 ? this.f12 : this.f8;
                     this.f16 = this.f11 > this.f10 ? this.f11 : this.f10;
                     this.f13 = this.f13;
                     this.f14 = this.f14;
                     this.f15 = this.f15;
                     this.f16 = this.f16;
                     this.f17 = this.f14;
                     this.f18 = this.f13;
                     this.f19 = this.f15;
                     this.f20 = this.f16;
                     this.f5 -= this.f9;
                     this.f9 = this.f18 - this.f17;
                     this.f11 -= this.f12;
                     this.f12 = this.f20 - this.f19;
                     this.f5 = this.f5;
                     this.f9 = this.f9;
                     this.f11 = this.f11;
                     this.f12 = this.f12;
                     this.f11 = this.f11;
                     this.f5 = this.f5;
                     this.f12 = this.f12;
                     this.f9 = this.f9;
                     this.f5 += this.f11;
                     this.f9 += this.f12;
                     this.f5 = this.f5;
                     this.f9 = this.f9;
                     this.f4 = this.f4;
                     this.f9 = this.f9;
                     this.f4 = this.f4;
                     this.f5 = this.f5;
                     this.f4 = this.f5 * this.f4;
                     this.f5 = this.f9 + this.f9;
                     this.f4 = this.f4;
                     this.f5 = this.f5;
                     this.f5 = this.f5;
                     this.f4 = this.f4;
                     this.i9 = this.i7 * 36;
                     this.i9 = this.i4 + this.i9;
                     this.f4 = this.f5 + this.f4;
                     this.f9 = lf32(this.i9 + 4);
                     this.f11 = lf32(this.i9);
                     this.f12 = lf32(this.i9 + 12);
                     this.f17 = lf32(this.i9 + 8);
                     this.f4 = this.f4;
                     this.f4 = this.f4;
                     this.f18 = this.f9;
                     this.f19 = this.f11;
                     this.f20 = this.f17;
                     this.f21 = this.f12;
                     this.i9 = li32(this.i9 + 24);
                     this.f4 += this.f4;
                     this.f5 += this.f5;
                     this.f8 = this.f8 < this.f18 ? this.f8 : this.f18;
                     this.f6 = this.f6 < this.f19 ? this.f6 : this.f19;
                     this.f7 = this.f7 > this.f20 ? this.f7 : this.f20;
                     this.f10 = this.f10 > this.f21 ? this.f10 : this.f21;
                     this.f4 = this.f4;
                     this.f5 = this.f5;
                     this.f8 = this.f8;
                     this.f6 = this.f6;
                     this.f7 = this.f7;
                     this.f10 = this.f10;
                     this.i10 = this.i5 + 12;
                     this.i11 = this.i5 + 4;
                     this.i12 = this.i5 + 8;
                     if(this.i9 == -1)
                     {
                        this.f6 = this.f6;
                        this.f7 = this.f7;
                        this.f8 = this.f8;
                        this.f9 = this.f10;
                        this.f6 = this.f7 - this.f6;
                        this.f7 = this.f9 - this.f8;
                        this.f6 = this.f6;
                        this.f7 = this.f7;
                        this.f7 = this.f7;
                        this.f6 = this.f6;
                        this.f6 += this.f7;
                        this.f6 = this.f6;
                        this.f6 = this.f6;
                        this.f6 += this.f6;
                        this.f6 = this.f6;
                     }
                     else
                     {
                        this.f18 = -2;
                        this.f11 = this.f11;
                        this.f17 = this.f17;
                        this.f9 = this.f9;
                        this.f12 = this.f12;
                        this.f6 = this.f6;
                        this.f7 = this.f7;
                        this.f8 = this.f8;
                        this.f10 = this.f10;
                        this.f11 = this.f17 - this.f11;
                        this.f9 = this.f12 - this.f9;
                        this.f6 = this.f7 - this.f6;
                        this.f7 = this.f10 - this.f8;
                        this.f8 = this.f11;
                        this.f9 = this.f9;
                        this.f6 = this.f6;
                        this.f7 = this.f7;
                        this.f9 = this.f9;
                        this.f8 = this.f8;
                        this.f7 = this.f7;
                        this.f6 = this.f6;
                        this.f8 += this.f9;
                        this.f6 += this.f7;
                        this.f7 = this.f8;
                        this.f6 = this.f6;
                        this.f8 = this.f18;
                        this.f6 = this.f6;
                        this.f8 = this.f8;
                        this.f7 = this.f7;
                        this.f7 *= this.f8;
                        this.f6 += this.f6;
                        this.f7 = this.f7;
                        this.f6 = this.f6;
                        this.f7 = this.f7;
                        this.f6 = this.f6;
                        this.f6 += this.f7;
                        this.f6 = this.f6;
                     }
                     this.i9 = this.i8 * 36;
                     this.i9 = this.i4 + this.i9;
                     this.f7 = lf32(this.i9 + 4);
                     this.f8 = lf32(this.i9);
                     this.f9 = lf32(this.i9 + 12);
                     this.f10 = lf32(this.i9 + 8);
                     this.f11 = this.f4;
                     this.f6 = this.f6;
                     this.f12 = this.f7;
                     this.f17 = this.f1;
                     this.f18 = this.f8;
                     this.f19 = this.f0;
                     this.f20 = this.f10;
                     this.f21 = this.f2;
                     this.f22 = this.f9;
                     this.f23 = this.f3;
                     this.i9 = li32(this.i9 + 24);
                     this.f6 += this.f11;
                     this.f11 = this.f17 < this.f12 ? this.f17 : this.f12;
                     this.f12 = this.f19 < this.f18 ? this.f19 : this.f18;
                     this.f17 = this.f21 > this.f20 ? this.f21 : this.f20;
                     this.f18 = this.f23 > this.f22 ? this.f23 : this.f22;
                     this.f6 = this.f6;
                     this.f11 = this.f11;
                     this.f12 = this.f12;
                     this.f17 = this.f17;
                     this.f18 = this.f18;
                     if(this.i9 == -1)
                     {
                        this.f7 = this.f12;
                        this.f8 = this.f17;
                        this.f9 = this.f11;
                        this.f10 = this.f18;
                        this.f7 = this.f8 - this.f7;
                        this.f8 = this.f10 - this.f9;
                        this.f7 = this.f7;
                        this.f8 = this.f8;
                        this.f8 = this.f8;
                        this.f7 = this.f7;
                        this.f7 += this.f8;
                        this.f7 = this.f7;
                        this.f7 = this.f7;
                        this.f7 += this.f7;
                        this.f7 = this.f7;
                        this.f4 = this.f4;
                        this.f7 = this.f7;
                        this.f4 = this.f7 + this.f4;
                        this.f4 = this.f4;
                        this.f7 = this.f4;
                        this.f8 = this.f5;
                        if(this.f8 < this.f7)
                        {
                           this.f7 = this.f6;
                           this.f5 = this.f5;
                           if(this.f5 < this.f7)
                           {
                              addr0a99:
                              break;
                           }
                        }
                     }
                     else
                     {
                        this.f19 = -2;
                        this.f8 = this.f8;
                        this.f10 = this.f10;
                        this.f7 = this.f7;
                        this.f9 = this.f9;
                        this.f12 = this.f12;
                        this.f17 = this.f17;
                        this.f11 = this.f11;
                        this.f18 = this.f18;
                        this.f8 = this.f10 - this.f8;
                        this.f7 = this.f9 - this.f7;
                        this.f9 = this.f17 - this.f12;
                        this.f10 = this.f18 - this.f11;
                        this.f8 = this.f8;
                        this.f7 = this.f7;
                        this.f9 = this.f9;
                        this.f10 = this.f10;
                        this.f7 = this.f7;
                        this.f8 = this.f8;
                        this.f10 = this.f10;
                        this.f9 = this.f9;
                        this.f7 = this.f8 + this.f7;
                        this.f8 = this.f9 + this.f10;
                        this.f7 = this.f7;
                        this.f8 = this.f8;
                        this.f9 = this.f19;
                        this.f8 = this.f8;
                        this.f9 = this.f9;
                        this.f7 = this.f7;
                        this.f7 *= this.f9;
                        this.f8 += this.f8;
                        this.f7 = this.f7;
                        this.f8 = this.f8;
                        this.f7 = this.f7;
                        this.f8 = this.f8;
                        this.f7 = this.f8 + this.f7;
                        this.f7 = this.f7;
                        this.f4 = this.f4;
                        this.f7 = this.f7;
                        this.f4 = this.f7 + this.f4;
                        this.f4 = this.f4;
                        this.f7 = this.f4;
                        this.f8 = this.f5;
                        if(this.f8 < this.f7)
                        {
                           this.f7 = this.f6;
                           this.f5 = this.f5;
                           if(this.f5 < this.f7)
                           {
                              §§goto(addr0a99);
                           }
                        }
                     }
                     sf32(this.f14,this.i5);
                     sf32(this.f15,this.i11);
                     sf32(this.f13,this.i12);
                     this.f4 = this.f4;
                     this.f5 = this.f6;
                     this.i1 = this.f5 < this.f4 ? this.i7 : this.i8;
                     sf32(this.f16,this.i10);
                     this.i4 = li32(this.i6);
                     this.i5 = this.i1 * 36;
                     this.i5 = this.i4 + this.i5;
                     this.i5 = li32(this.i5 + 24);
                  }
                  while(this.i5 != -1);
               }
               this.i5 = 0;
               this.i7 = this.i1 * 36;
               this.i4 += this.i7;
               this.i4 = li32(this.i4 + 20);
               mstate.esp -= 4;
               si32(this.i0,mstate.esp);
               state = 1;
               mstate.esp -= 4;
               FSM__ZN13b2DynamicTree12AllocateNodeEv.start();
               return;
               break;
            case 1:
               this.i0 = mstate.eax;
               mstate.esp += 4;
               this.i8 = li32(this.i6);
               this.i9 = this.i0 * 36;
               this.i8 += this.i9;
               si32(this.i4,this.i8 + 20);
               this.i8 = li32(this.i6);
               this.i8 += this.i9;
               si32(this.i5,this.i8 + 16);
               this.i5 = li32(this.i6);
               this.i8 = this.i5 + this.i7;
               this.f4 = lf32(this.i8);
               this.f0 = this.f0;
               this.f5 = lf32(this.i8 + 4);
               this.f1 = this.f1;
               this.f0 = this.f0 < this.f4 ? this.f0 : this.f4;
               this.f1 = this.f1 < this.f5 ? this.f1 : this.f5;
               this.f0 = this.f0;
               this.i5 += this.i9;
               sf32(this.f0,this.i5);
               this.f0 = this.f1;
               sf32(this.f0,this.i5 + 4);
               this.f0 = lf32(this.i8 + 8);
               this.f1 = this.f2;
               this.f2 = lf32(this.i8 + 12);
               this.f3 = this.f3;
               this.f0 = this.f1 > this.f0 ? this.f1 : this.f0;
               this.f1 = this.f3 > this.f2 ? this.f3 : this.f2;
               this.f0 = this.f0;
               sf32(this.f0,this.i5 + 8);
               this.f0 = this.f1;
               sf32(this.f0,this.i5 + 12);
               this.i5 = li32(this.i6);
               this.i7 = this.i5 + this.i7;
               this.i7 = li32(this.i7 + 32);
               this.i5 += this.i9;
               this.i7 += 1;
               si32(this.i7,this.i5 + 32);
               this.i5 = li32(this.i6);
               if(this.i4 != -1)
               {
                  this.i3 = this.i4 * 36;
                  this.i3 = this.i5 + this.i3;
                  this.i7 = li32(this.i3 + 24);
                  this.i3 += 24;
                  if(this.i7 == this.i1)
                  {
                     si32(this.i0,this.i3);
                  }
                  else
                  {
                     this.i3 = this.i4 * 36;
                     this.i3 = this.i5 + this.i3;
                     si32(this.i0,this.i3 + 28);
                  }
                  this.i3 = li32(this.i6);
                  this.i5 = this.i0 * 36;
                  this.i3 += this.i5;
                  si32(this.i1,this.i3 + 24);
                  this.i3 = li32(this.i6);
                  this.i3 += this.i5;
                  si32(this.i2,this.i3 + 28);
                  this.i3 = li32(this.i6);
                  this.i1 *= 36;
                  this.i1 = this.i3 + this.i1;
                  si32(this.i0,this.i1 + 20);
                  this.i1 = li32(this.i6);
                  this.i2 *= 36;
                  this.i1 += this.i2;
                  si32(this.i0,this.i1 + 20);
                  break;
               }
               this.i4 = this.i0 * 36;
               this.i5 += this.i4;
               si32(this.i1,this.i5 + 24);
               this.i5 = li32(this.i6);
               this.i4 = this.i5 + this.i4;
               si32(this.i2,this.i4 + 28);
               this.i4 = li32(this.i6);
               this.i1 *= 36;
               this.i1 = this.i4 + this.i1;
               si32(this.i0,this.i1 + 20);
               this.i1 = li32(this.i6);
               this.i2 *= 36;
               this.i1 += this.i2;
               si32(this.i0,this.i1 + 20);
               si32(this.i0,this.i3);
               break;
            default:
               throw "Invalid state in __ZN13b2DynamicTree10InsertLeafEi";
         }
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp += 4;
         mstate.esp += 4;
         mstate.gworker = caller;
      }
   }
}

