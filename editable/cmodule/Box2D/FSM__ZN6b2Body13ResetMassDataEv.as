package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.system.*;
   import flash.text.*;
   import flash.utils.*;
   
   public final class FSM__ZN6b2Body13ResetMassDataEv extends Machine
   {
      
      public static const intRegCount:int = 15;
      
      public static const NumberRegCount:int = 9;
      
      public var i10:int;
      
      public var i11:int;
      
      public var i12:int;
      
      public var i13:int;
      
      public var i14:int;
      
      public var f3:Number;
      
      public var f5:Number;
      
      public var f0:Number;
      
      public var f2:Number;
      
      public var f4:Number;
      
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
      
      public var f6:Number;
      
      public var f7:Number;
      
      public var f1:Number;
      
      public var f8:Number;
      
      public function FSM__ZN6b2Body13ResetMassDataEv()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZN6b2Body13ResetMassDataEv = null;
         _loc1_ = new FSM__ZN6b2Body13ResetMassDataEv();
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
               mstate.esp -= 16;
               this.i0 = 0;
               this.i1 = li32(mstate.ebp + 8);
               si32(this.i0,this.i1 + 124);
               si32(this.i0,this.i1 + 128);
               si32(this.i0,this.i1 + 132);
               si32(this.i0,this.i1 + 136);
               si32(this.i0,this.i1 + 36);
               si32(this.i0,this.i1 + 40);
               this.i0 = li32(this.i1);
               this.i2 = this.i1 + 40;
               this.i3 = this.i1 + 36;
               this.i4 = this.i1 + 136;
               this.i5 = this.i1 + 132;
               this.i6 = this.i1 + 128;
               this.i7 = this.i1 + 124;
               if(uint(this.i0) <= uint(1))
               {
                  this.f0 = lf32(this.i1 + 12);
                  this.f1 = lf32(this.i1 + 16);
                  sf32(this.f0,this.i1 + 52);
                  sf32(this.f1,this.i1 + 56);
                  sf32(this.f0,this.i1 + 44);
                  sf32(this.f1,this.i1 + 48);
               }
               else
               {
                  this.i8 = this.i1 + 108;
                  if(this.i0 != 2)
                  {
                     this.i1 = cmodule.Box2D.___sF;
                     mstate.esp -= 24;
                     this.i2 = cmodule.Box2D.__2E_str1670;
                     this.i3 = cmodule.Box2D.__2E_str72279;
                     this.i4 = cmodule.Box2D.__ZZN6b2Body13ResetMassDataEvE8__func__;
                     this.i5 = cmodule.Box2D.__2E_str53260;
                     this.i6 = 270;
                     this.i1 += 176;
                     si32(this.i1,mstate.esp);
                     si32(this.i2,mstate.esp + 4);
                     si32(this.i3,mstate.esp + 8);
                     si32(this.i4,mstate.esp + 12);
                     si32(this.i5,mstate.esp + 16);
                     si32(this.i6,mstate.esp + 20);
                  }
                  else
                  {
                     addr02a3:
                     this.i0 = mstate.ebp + -16;
                     this.f0 = 0;
                     this.f0 = this.f0;
                     this.i9 = this.i0 + 8;
                     this.i10 = this.i0 + 12;
                     this.i11 = this.i0 + 4;
                     this.f1 = this.f0;
                     this.f2 = this.f0;
                     this.f3 = this.f0;
                     addr04e5:
                     this.f4 = this.f1;
                     this.f1 = this.f3;
                     this.i8 = li32(this.i8);
                     if(this.i8 != 0)
                     {
                        this.f3 = 0;
                        this.f5 = lf32(this.i8 + 4);
                        this.f3 = this.f3;
                        this.f3 = this.f3;
                        this.f6 = this.f5;
                        if(this.f6 == this.f3)
                        {
                           this.f3 = this.f4;
                           break;
                        }
                        this.i12 = mstate.ebp + -16;
                        this.i13 = li32(this.i8 + 16);
                        this.i14 = li32(this.i13);
                        this.i14 = li32(this.i14 + 28);
                        mstate.esp -= 12;
                        si32(this.i13,mstate.esp);
                        si32(this.i12,mstate.esp + 4);
                        sf32(this.f5,mstate.esp + 8);
                        state = 3;
                        mstate.esp -= 4;
                        mstate.funcs[this.i14]();
                        return;
                     }
                     this.f3 = 0;
                     this.f3 = this.f3;
                     this.f3 = this.f3;
                     this.f5 = this.f2;
                     while(true)
                     {
                        if(this.f5 > this.f3)
                        {
                           this.f3 = 1;
                           this.f3 = this.f3;
                           this.f5 = this.f2;
                           this.f3 = this.f3;
                           this.f3 /= this.f5;
                           this.f3 = this.f3;
                           this.f1 = this.f1;
                           this.f5 = this.f3;
                           this.f0 = this.f0;
                           this.f1 *= this.f5;
                           this.f0 *= this.f5;
                           this.f5 = 0;
                           sf32(this.f3,this.i6);
                           this.f1 = this.f1;
                           this.f0 = this.f0;
                           this.f3 = this.f5;
                           this.f3 = this.f3;
                           this.f5 = this.f4;
                           if(this.f5 > this.f3)
                           {
                              addr0638:
                              this.i0 = li16(this.i1 + 4);
                              this.i0 &= 16;
                              if(this.i0 == 0)
                              {
                                 this.f3 = 0;
                                 this.f5 = this.f1;
                                 this.f6 = this.f0;
                                 this.f5 *= this.f5;
                                 this.f6 *= this.f6;
                                 this.f5 = this.f5;
                                 this.f6 = this.f6;
                                 this.f6 = this.f6;
                                 this.f5 = this.f5;
                                 this.f5 += this.f6;
                                 this.f5 = this.f5;
                                 this.f5 = this.f5;
                                 this.f2 = this.f2;
                                 this.f2 *= this.f5;
                                 this.f2 = this.f2;
                                 this.f2 = this.f2;
                                 this.f4 = this.f4;
                                 this.f2 = this.f4 - this.f2;
                                 this.f2 = this.f2;
                                 sf32(this.f2,this.i5);
                                 this.f3 = this.f3;
                                 this.f3 = this.f3;
                                 this.f4 = this.f2;
                                 if(this.f4 <= this.f3)
                                 {
                                    this.i1 = cmodule.Box2D.___sF;
                                    mstate.esp -= 24;
                                    this.i2 = cmodule.Box2D.__2E_str1670;
                                    this.i3 = cmodule.Box2D.__2E_str55262;
                                    this.i4 = cmodule.Box2D.__ZZN6b2Body13ResetMassDataEvE8__func__;
                                    this.i5 = cmodule.Box2D.__2E_str53260;
                                    this.i0 = 305;
                                    this.i1 += 176;
                                    si32(this.i1,mstate.esp);
                                    si32(this.i2,mstate.esp + 4);
                                    si32(this.i3,mstate.esp + 8);
                                    si32(this.i4,mstate.esp + 12);
                                    si32(this.i5,mstate.esp + 16);
                                    si32(this.i0,mstate.esp + 20);
                                    §§goto(addr0254);
                                 }
                                 this.f3 = 1;
                                 this.f3 = this.f3;
                                 this.f2 = this.f2;
                                 this.f3 = this.f3;
                                 this.f2 = this.f3 / this.f2;
                                 this.f2 = this.f2;
                                 break;
                              }
                           }
                        }
                        else
                        {
                           this.f2 = 0;
                           this.i0 = 1065353216;
                           this.f2 = this.f2;
                           si32(this.i0,this.i7);
                           si32(this.i0,this.i6);
                           this.f2 = this.f2;
                           this.f3 = this.f4;
                           if(this.f3 > this.f2)
                           {
                              this.f2 = 1;
                              this.f2 = this.f2;
                              §§goto(addr0638);
                           }
                        }
                        this.f2 = 0;
                        this.i0 = 0;
                        si32(this.i0,this.i5);
                        this.f2 = this.f2;
                        break;
                     }
                     sf32(this.f2,this.i4);
                     this.f2 = lf32(this.i1 + 52);
                     this.f3 = lf32(this.i1 + 56);
                     sf32(this.f1,this.i3);
                     sf32(this.f0,this.i2);
                     this.f4 = lf32(this.i1 + 20);
                     this.f1 = this.f1;
                     this.f5 = lf32(this.i1 + 24);
                     this.f4 *= this.f1;
                     this.f4 = this.f4;
                     this.f1 = this.f5 * this.f1;
                     this.f1 = this.f1;
                     this.f5 = lf32(this.i1 + 12);
                     this.f4 = this.f4;
                     this.f6 = lf32(this.i1 + 28);
                     this.f0 = this.f0;
                     this.f7 = lf32(this.i1 + 32);
                     this.f8 = lf32(this.i1 + 16);
                     this.f4 = this.f5 + this.f4;
                     this.f5 = this.f6 * this.f0;
                     this.f1 = this.f1;
                     this.f4 = this.f4;
                     this.f5 = this.f5;
                     this.f1 = this.f8 + this.f1;
                     this.f0 = this.f7 * this.f0;
                     this.f1 = this.f1;
                     this.f0 = this.f0;
                     this.f5 = this.f5;
                     this.f4 = this.f4;
                     this.f4 += this.f5;
                     this.f0 = this.f0;
                     this.f1 = this.f1;
                     this.f4 = this.f4;
                     this.f0 = this.f1 + this.f0;
                     this.f0 = this.f0;
                     sf32(this.f4,this.i1 + 52);
                     sf32(this.f0,this.i1 + 56);
                     this.f1 = this.f0;
                     sf32(this.f4,this.i1 + 44);
                     this.f1 -= this.f3;
                     sf32(this.f0,this.i1 + 48);
                     this.f0 = this.f1;
                     this.f1 = lf32(this.i1 + 80);
                     this.f0 = this.f0;
                     this.f0 *= this.f1;
                     this.f3 = this.f4;
                     this.f0 = this.f0;
                     this.f2 = this.f3 - this.f2;
                     this.f3 = lf32(this.i1 + 72);
                     this.f0 = this.f0;
                     this.f2 = this.f2;
                     this.f2 = this.f2;
                     this.f0 = this.f3 - this.f0;
                     this.f1 = this.f2 * this.f1;
                     this.f0 = this.f0;
                     sf32(this.f0,this.i1 + 72);
                     this.f0 = this.f1;
                     this.f1 = lf32(this.i1 + 76);
                     this.f0 = this.f0;
                     this.f0 = this.f1 + this.f0;
                     this.f0 = this.f0;
                     sf32(this.f0,this.i1 + 76);
                     §§goto(addr015d);
                  }
                  §§goto(addr0254);
               }
               addr015d:
               mstate.esp = mstate.ebp;
               mstate.ebp = li32(mstate.esp);
               mstate.esp += 4;
               mstate.esp += 4;
               mstate.gworker = caller;
               return;
            case 2:
               §§goto(addr02a3);
            case 1:
               mstate.esp += 24;
               state = 2;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 3:
               mstate.esp += 12;
               this.f2 = lf32(this.i7);
               this.f3 = lf32(this.i0);
               this.f2 += this.f3;
               this.f2 = this.f2;
               sf32(this.f2,this.i7);
               this.f4 = lf32(this.i9);
               this.f5 = lf32(this.i11);
               this.f4 *= this.f3;
               this.f3 = this.f5 * this.f3;
               this.f4 = this.f4;
               this.f3 = this.f3;
               this.f5 = lf32(this.i5);
               this.f6 = lf32(this.i10);
               this.f5 += this.f6;
               this.f4 = this.f4;
               this.f0 = this.f0;
               this.f3 = this.f3;
               this.f1 = this.f1;
               this.f0 += this.f4;
               this.f1 += this.f3;
               this.f3 = this.f5;
               sf32(this.f3,this.i5);
               this.f0 = this.f0;
               this.f1 = this.f1;
               break;
            default:
               throw "Invalid state in __ZN6b2Body13ResetMassDataEv";
         }
         while(true)
         {
            this.f4 = this.f1;
            this.i8 += 8;
            this.f1 = this.f3;
            this.f3 = this.f4;
            §§goto(addr04e5);
            this.f3 = this.f4;
         }
         addr0254:
         state = 1;
         mstate.esp -= 4;
         FSM_fprintf.start();
      }
   }
}

