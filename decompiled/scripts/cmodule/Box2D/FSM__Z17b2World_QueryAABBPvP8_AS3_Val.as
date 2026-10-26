package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.system.*;
   import flash.text.*;
   import flash.utils.*;
   
   public final class FSM__Z17b2World_QueryAABBPvP8_AS3_Val extends Machine
   {
      
      public static const intRegCount:int = 16;
      
      public static const NumberRegCount:int = 11;
      
      public var f10:Number;
      
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
      
      public var i10:int;
      
      public var i11:int;
      
      public var i12:int;
      
      public var i13:int;
      
      public var i14:int;
      
      public var i15:int;
      
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
      
      public function FSM__Z17b2World_QueryAABBPvP8_AS3_Val()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__Z17b2World_QueryAABBPvP8_AS3_Val = null;
         _loc1_ = new FSM__Z17b2World_QueryAABBPvP8_AS3_Val();
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
               mstate.esp -= 1104;
               this.i0 = cmodule.Box2D.__ZTV13QueryCallback;
               this.i0 += 8;
               si32(this.i0,mstate.ebp + -1104);
               mstate.esp -= 32;
               this.i0 = li32(mstate.ebp + 12);
               this.i1 = cmodule.Box2D.__2E_str126318;
               this.i2 = mstate.ebp + -1080;
               this.i3 = mstate.ebp + -1064;
               this.i4 = mstate.ebp + -1072;
               this.i5 = mstate.ebp + -1056;
               this.i6 = mstate.ebp + -1084;
               this.i7 = mstate.ebp + -1044;
               si32(this.i0,mstate.esp);
               si32(this.i1,mstate.esp + 4);
               si32(this.i7,mstate.esp + 8);
               si32(this.i6,mstate.esp + 12);
               si32(this.i5,mstate.esp + 16);
               si32(this.i4,mstate.esp + 20);
               si32(this.i3,mstate.esp + 24);
               si32(this.i2,mstate.esp + 28);
               state = 1;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_ArrayValue]();
               return;
            case 1:
               mstate.esp += 32;
               this.i0 = mstate.ebp + -1104;
               this.i1 = mstate.ebp + -1040;
               this.f0 = lf64(mstate.ebp + -1056);
               this.f1 = lf64(mstate.ebp + -1072);
               this.f2 = lf64(mstate.ebp + -1064);
               this.f3 = lf64(mstate.ebp + -1080);
               this.i2 = li32(mstate.ebp + -1084);
               si32(this.i2,mstate.ebp + -1100);
               this.i2 = li32(mstate.ebp + -1044);
               this.i3 = this.i1 + 4;
               si32(this.i3,mstate.ebp + -1040);
               this.i4 = 0;
               si32(this.i4,mstate.ebp + -12);
               this.i4 = 256;
               si32(this.i4,mstate.ebp + -8);
               this.i4 = li32(this.i2 + 102872);
               si32(this.i4,mstate.ebp + -1036);
               this.i4 = 1;
               si32(this.i4,mstate.ebp + -12);
               this.i5 = this.i2 + 102876;
               this.i2 += 102884;
               this.i6 = this.i1 + 1032;
               this.i7 = this.i1 + 1028;
               this.i8 = mstate.ebp + -1104;
               this.f3 = this.f3;
               this.f2 = this.f2;
               this.f1 = this.f1;
               this.f0 = this.f0;
               this.i9 = this.i4;
               addr0c28:
               if(this.i4 >= 1)
               {
                  addr043a:
                  this.i9 += -1;
                  si32(this.i9,this.i7);
                  this.i4 = li32(this.i1);
                  this.i10 = this.i9 << 2;
                  this.i10 = this.i4 + this.i10;
                  this.i10 = li32(this.i10);
                  if(this.i10 != -1)
                  {
                     this.f4 = 0;
                     this.i11 = li32(this.i5);
                     this.i12 = this.i10 * 36;
                     this.i12 = this.i11 + this.i12;
                     this.f5 = lf32(this.i12 + 4);
                     this.f6 = this.f3;
                     this.f7 = lf32(this.i12);
                     this.f8 = this.f2;
                     this.f9 = lf32(this.i12 + 8);
                     this.f10 = this.f0;
                     this.f5 -= this.f6;
                     this.f6 = this.f7 - this.f8;
                     this.f7 = this.f10 - this.f9;
                     this.f5 = this.f5;
                     this.f6 = this.f6;
                     this.f7 = this.f7;
                     this.f4 = this.f4;
                     this.f4 = this.f4;
                     this.f7 = this.f7;
                     if(this.f7 <= this.f4)
                     {
                        this.f4 = 0;
                        this.i12 = this.i10 * 36;
                        this.i12 = this.i11 + this.i12;
                        this.f7 = lf32(this.i12 + 12);
                        this.f8 = this.f1;
                        this.f7 = this.f8 - this.f7;
                        this.f7 = this.f7;
                        this.f4 = this.f4;
                        this.f4 = this.f4;
                        this.f7 = this.f7;
                        if(this.f7 <= this.f4)
                        {
                           this.f4 = 0;
                           this.f4 = this.f4;
                           this.f4 = this.f4;
                           this.f6 = this.f6;
                           if(this.f6 <= this.f4)
                           {
                              this.f4 = 0;
                              this.f4 = this.f4;
                              this.f4 = this.f4;
                              this.f5 = this.f5;
                              if(this.f5 <= this.f4)
                              {
                                 this.i12 = this.i10 * 36;
                                 this.i12 = this.i11 + this.i12;
                                 this.i13 = li32(this.i12 + 24);
                                 this.i12 += 24;
                                 if(this.i13 != -1)
                                 {
                                    this.i13 = li32(this.i6);
                                    if(this.i9 != this.i13)
                                    {
                                       this.i9 = li32(this.i7);
                                       this.i4 = li32(this.i1);
                                       this.i12 = li32(this.i12);
                                       this.i9 <<= 2;
                                       this.i9 = this.i4 + this.i9;
                                       si32(this.i12,this.i9);
                                       this.i9 = li32(this.i7);
                                       this.i9 += 1;
                                       this.i4 = this.i10 * 36;
                                       this.i4 = this.i11 + this.i4;
                                       si32(this.i9,this.i7);
                                       this.i10 = li32(this.i6);
                                       this.i4 += 28;
                                       if(this.i9 != this.i10)
                                       {
                                          while(true)
                                          {
                                             this.i9 = li32(this.i7);
                                             this.i10 = li32(this.i1);
                                             this.i4 = li32(this.i4);
                                             this.i9 <<= 2;
                                             this.i9 = this.i10 + this.i9;
                                             si32(this.i4,this.i9);
                                             this.i9 = li32(this.i7);
                                             this.i9 += 1;
                                             si32(this.i9,this.i7);
                                             §§goto(addr0c0c);
                                          }
                                          this.i0 = li32(this.i1);
                                          if(this.i0 != this.i3)
                                          {
                                             this.i1 = 0;
                                             mstate.esp -= 8;
                                             si32(this.i0,mstate.esp);
                                             si32(this.i1,mstate.esp + 4);
                                             state = 12;
                                             mstate.esp -= 4;
                                             FSM_pubrealloc.start();
                                             return;
                                          }
                                          break;
                                          addr0bb3:
                                       }
                                       this.i11 = 0;
                                       this.i12 = li32(this.i1);
                                       this.i13 = this.i10 << 1;
                                       si32(this.i13,this.i6);
                                       mstate.esp -= 8;
                                       this.i10 <<= 3;
                                       si32(this.i11,mstate.esp);
                                       si32(this.i10,mstate.esp + 4);
                                       state = 10;
                                       mstate.esp -= 4;
                                       FSM_pubrealloc.start();
                                       return;
                                    }
                                    this.i14 = 0;
                                    this.i15 = this.i13 << 1;
                                    si32(this.i15,this.i6);
                                    mstate.esp -= 8;
                                    this.i13 <<= 3;
                                    si32(this.i14,mstate.esp);
                                    si32(this.i13,mstate.esp + 4);
                                    state = 8;
                                    mstate.esp -= 4;
                                    FSM_pubrealloc.start();
                                    return;
                                 }
                                 if(this.i10 >= 0)
                                 {
                                    this.i9 = li32(this.i2);
                                    if(this.i9 > this.i10)
                                    {
                                       §§goto(addr074f);
                                    }
                                 }
                                 this.i9 = cmodule.Box2D.___sF;
                                 mstate.esp -= 24;
                                 this.i4 = cmodule.Box2D.__2E_str1670;
                                 this.i0 = cmodule.Box2D.__2E_str3210;
                                 this.i1 = cmodule.Box2D.__ZZNK13b2DynamicTree11GetUserDataEiE8__func__;
                                 this.i2 = cmodule.Box2D.__2E_str2209;
                                 this.i3 = 141;
                                 this.i9 += 176;
                                 si32(this.i9,mstate.esp);
                                 si32(this.i4,mstate.esp + 4);
                                 si32(this.i0,mstate.esp + 8);
                                 si32(this.i1,mstate.esp + 12);
                                 si32(this.i2,mstate.esp + 16);
                                 si32(this.i3,mstate.esp + 20);
                                 state = 4;
                                 mstate.esp -= 4;
                                 FSM_fprintf.start();
                                 return;
                              }
                           }
                        }
                     }
                  }
                  addr0c0c:
                  §§goto(addr034b);
               }
               addr034b:
               while(true)
               {
                  this.i4 = li32(this.i7);
                  if(this.i4 < 1)
                  {
                     break loop0;
                  }
                  this.i9 = this.i4;
                  §§goto(addr0c28);
               }
               this.i0 = cmodule.Box2D.___sF;
               mstate.esp -= 24;
               this.i1 = cmodule.Box2D.__2E_str1670;
               this.i2 = cmodule.Box2D.__2E_str38245;
               this.i3 = cmodule.Box2D.__ZZN15b2GrowableStackIiLi256EE3PopEvE8__func__;
               this.i4 = cmodule.Box2D.__2E_str37244;
               this.i5 = 67;
               this.i0 += 176;
               si32(this.i0,mstate.esp);
               si32(this.i1,mstate.esp + 4);
               si32(this.i2,mstate.esp + 8);
               si32(this.i3,mstate.esp + 12);
               si32(this.i4,mstate.esp + 16);
               si32(this.i5,mstate.esp + 20);
               state = 2;
               mstate.esp -= 4;
               FSM_fprintf.start();
               return;
            case 3:
               §§goto(addr043a);
            case 6:
               this.i9 = mstate.eax;
               mstate.esp += 8;
               this.i9 &= 255;
               if(this.i9 == 0)
               {
                  this.i1 = li32(this.i1);
                  if(this.i1 != this.i3)
                  {
                     this.i3 = 0;
                     mstate.esp -= 8;
                     si32(this.i1,mstate.esp);
                     si32(this.i3,mstate.esp + 4);
                     state = 7;
                     mstate.esp -= 4;
                     FSM_pubrealloc.start();
                     return;
                  }
                  break;
               }
               §§goto(addr0c0c);
               break;
            case 8:
               this.i13 = mstate.eax;
               mstate.esp += 8;
               si32(this.i13,this.i1);
               this.i14 = this.i4;
               this.i9 <<= 2;
               cmodule.Box2D.memcpy(this.i13,this.i14,this.i9);
               this.i9 = this.i4;
               if(this.i3 != this.i4)
               {
                  this.i4 = 0;
                  mstate.esp -= 8;
                  si32(this.i9,mstate.esp);
                  si32(this.i4,mstate.esp + 4);
                  state = 9;
                  mstate.esp -= 4;
                  FSM_pubrealloc.start();
                  return;
               }
               §§goto(addr09e6);
               break;
            case 9:
               this.i9 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr09e6);
            case 10:
               this.i10 = mstate.eax;
               mstate.esp += 8;
               si32(this.i10,this.i1);
               this.i11 = this.i12;
               this.i9 <<= 2;
               cmodule.Box2D.memcpy(this.i10,this.i11,this.i9);
               this.i9 = this.i12;
               if(this.i3 != this.i12)
               {
                  this.i10 = 0;
                  mstate.esp -= 8;
                  si32(this.i9,mstate.esp);
                  si32(this.i10,mstate.esp + 4);
                  state = 11;
                  mstate.esp -= 4;
                  FSM_pubrealloc.start();
                  return;
               }
               §§goto(addr0bb3);
               break;
            case 11:
               this.i9 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr0bb3);
            case 5:
               addr074f:
               this.i9 = this.i10 * 36;
               this.i9 = this.i11 + this.i9;
               this.i4 = li32(this.i0);
               this.i9 = li32(this.i9 + 16);
               this.i4 = li32(this.i4 + 8);
               this.i9 = li32(this.i9 + 16);
               mstate.esp -= 8;
               si32(this.i8,mstate.esp);
               si32(this.i9,mstate.esp + 4);
               state = 6;
               mstate.esp -= 4;
               mstate.funcs[this.i4]();
               return;
            case 2:
               mstate.esp += 24;
               state = 3;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 4:
               mstate.esp += 24;
               state = 5;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 7:
               this.i1 = mstate.eax;
               mstate.esp += 8;
               break;
            case 12:
               this.i0 = mstate.eax;
               mstate.esp += 8;
               break;
            case 13:
               mstate.esp += 4;
               state = 14;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Null]();
               return;
            case 14:
               this.i0 = mstate.eax;
               mstate.eax = this.i0;
               mstate.esp = mstate.ebp;
               mstate.ebp = li32(mstate.esp);
               mstate.esp += 4;
               mstate.esp += 4;
               mstate.gworker = caller;
               return;
            default:
               throw "Invalid state in __Z17b2World_QueryAABBPvP8_AS3_Val";
         }
         this.i0 = li32(mstate.ebp + -1084);
         mstate.esp -= 4;
         si32(this.i0,mstate.esp);
         state = 13;
         mstate.esp -= 4;
         mstate.funcs[cmodule.Box2D._AS3_Release]();
      }
   }
}

