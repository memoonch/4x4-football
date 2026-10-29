package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.system.*;
   import flash.text.*;
   import flash.utils.*;
   
   public final class FSM__Z18b2World_CreateBodyPvP8_AS3_Val extends Machine
   {
      
      public static const intRegCount:int = 15;
      
      public static const NumberRegCount:int = 6;
      
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
      
      public var f1:Number;
      
      public function FSM__Z18b2World_CreateBodyPvP8_AS3_Val()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__Z18b2World_CreateBodyPvP8_AS3_Val = null;
         _loc1_ = new FSM__Z18b2World_CreateBodyPvP8_AS3_Val();
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
               mstate.esp -= 12;
               this.i0 = cmodule.Box2D.__2E_str117310;
               mstate.esp -= 20;
               this.i1 = li32(mstate.ebp + 12);
               this.i2 = mstate.ebp + -12;
               this.i3 = mstate.ebp + -8;
               this.i4 = mstate.ebp + -4;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               si32(this.i4,mstate.esp + 8);
               si32(this.i3,mstate.esp + 12);
               si32(this.i2,mstate.esp + 16);
               state = 1;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_ArrayValue]();
               return;
            case 1:
               mstate.esp += 20;
               this.i0 = li32(mstate.ebp + -8);
               this.i1 = li32(this.i0 + 102868);
               this.i2 = li32(mstate.ebp + -12);
               this.i1 &= 2;
               if(this.i1 != 0)
               {
                  this.i0 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i2 = cmodule.Box2D.__2E_str1670;
                  this.i1 = cmodule.Box2D.__2E_str116;
                  this.i3 = cmodule.Box2D.__ZZN7b2World10CreateBodyEPK9b2BodyDefE8__func__;
                  this.i4 = cmodule.Box2D.__2E_str68275;
                  this.i5 = 105;
                  this.i0 += 176;
                  si32(this.i0,mstate.esp);
                  si32(this.i2,mstate.esp + 4);
                  si32(this.i1,mstate.esp + 8);
                  si32(this.i3,mstate.esp + 12);
                  si32(this.i4,mstate.esp + 16);
                  si32(this.i5,mstate.esp + 20);
                  state = 2;
                  mstate.esp -= 4;
                  FSM_fprintf.start();
                  return;
               }
            case 3:
               this.i1 = 156;
               mstate.esp -= 8;
               si32(this.i0,mstate.esp);
               si32(this.i1,mstate.esp + 4);
               state = 4;
               mstate.esp -= 4;
               FSM__ZN16b2BlockAllocator8AllocateEi.start();
               return;
            case 2:
               mstate.esp += 24;
               state = 3;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 4:
               this.i1 = mstate.eax;
               mstate.esp += 8;
               this.i3 = this.i1;
               if(this.i1 != 0)
               {
                  this.f0 = 0;
                  this.f1 = lf32(this.i2 + 4);
                  this.i4 = this.i2 + 4;
                  this.f0 = this.f0;
                  this.f0 = this.f0;
                  this.f2 = this.f1;
                  if(!(this.f2 == Number.NaN || this.f0 == Number.NaN))
                  {
                     this.f0 = -cmodule.Box2D.inf;
                     this.f0 = this.f0;
                     this.f0 = this.f0;
                     this.f2 = this.f1;
                     if(this.f2 > this.f0)
                     {
                        this.f0 = cmodule.Box2D.inf;
                        this.f0 = this.f0;
                        this.f0 = this.f0;
                        this.f1 = this.f1;
                        if(this.f1 < this.f0)
                        {
                           this.f0 = 0;
                           this.f1 = lf32(this.i2 + 8);
                           this.i5 = this.i2 + 8;
                           this.f0 = this.f0;
                           this.f0 = this.f0;
                           this.f2 = this.f1;
                           if(!(this.f2 == Number.NaN || this.f0 == Number.NaN))
                           {
                              this.f0 = -cmodule.Box2D.inf;
                              this.f0 = this.f0;
                              this.f0 = this.f0;
                              this.f2 = this.f1;
                              if(this.f2 > this.f0)
                              {
                                 this.f0 = cmodule.Box2D.inf;
                                 this.f0 = this.f0;
                                 this.f0 = this.f0;
                                 this.f1 = this.f1;
                                 if(this.f1 < this.f0)
                                 {
                                    §§goto(addr052c);
                                 }
                              }
                           }
                        }
                     }
                  }
                  this.i0 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i1 = cmodule.Box2D.__2E_str1670;
                  this.i2 = cmodule.Box2D.__2E_str109;
                  this.i3 = cmodule.Box2D.__ZZN6b2BodyC4EPK9b2BodyDefP7b2WorldE8__func__;
                  this.i4 = cmodule.Box2D.__2E_str53260;
                  this.i5 = 27;
                  this.i0 += 176;
                  si32(this.i0,mstate.esp);
                  si32(this.i1,mstate.esp + 4);
                  si32(this.i2,mstate.esp + 8);
                  si32(this.i3,mstate.esp + 12);
                  si32(this.i4,mstate.esp + 16);
                  si32(this.i5,mstate.esp + 20);
                  state = 5;
                  mstate.esp -= 4;
                  FSM_fprintf.start();
                  return;
               }
               §§goto(addr140f);
            case 6:
               addr052c:
               this.f0 = 0;
               this.f1 = lf32(this.i2 + 16);
               this.i6 = this.i2 + 16;
               this.f0 = this.f0;
               this.f0 = this.f0;
               this.f2 = this.f1;
               if(!(this.f2 == Number.NaN || this.f0 == Number.NaN))
               {
                  this.f0 = -cmodule.Box2D.inf;
                  this.f0 = this.f0;
                  this.f0 = this.f0;
                  this.f2 = this.f1;
                  if(this.f2 > this.f0)
                  {
                     this.f0 = cmodule.Box2D.inf;
                     this.f0 = this.f0;
                     this.f0 = this.f0;
                     this.f1 = this.f1;
                     if(this.f1 < this.f0)
                     {
                        this.f0 = 0;
                        this.f1 = lf32(this.i2 + 20);
                        this.i7 = this.i2 + 20;
                        this.f0 = this.f0;
                        this.f0 = this.f0;
                        this.f2 = this.f1;
                        if(!(this.f2 == Number.NaN || this.f0 == Number.NaN))
                        {
                           this.f0 = -cmodule.Box2D.inf;
                           this.f0 = this.f0;
                           this.f0 = this.f0;
                           this.f2 = this.f1;
                           if(this.f2 > this.f0)
                           {
                              this.f0 = cmodule.Box2D.inf;
                              this.f0 = this.f0;
                              this.f0 = this.f0;
                              this.f1 = this.f1;
                              if(this.f1 < this.f0)
                              {
                                 §§goto(addr076d);
                              }
                           }
                        }
                     }
                  }
               }
               this.i0 = cmodule.Box2D.___sF;
               mstate.esp -= 24;
               this.i1 = cmodule.Box2D.__2E_str1670;
               this.i2 = cmodule.Box2D.__2E_str110307;
               this.i3 = cmodule.Box2D.__ZZN6b2BodyC4EPK9b2BodyDefP7b2WorldE8__func__;
               this.i4 = cmodule.Box2D.__2E_str53260;
               this.i5 = 28;
               this.i0 += 176;
               si32(this.i0,mstate.esp);
               si32(this.i1,mstate.esp + 4);
               si32(this.i2,mstate.esp + 8);
               si32(this.i3,mstate.esp + 12);
               si32(this.i4,mstate.esp + 16);
               si32(this.i5,mstate.esp + 20);
               state = 7;
               mstate.esp -= 4;
               FSM_fprintf.start();
               return;
            case 8:
               addr076d:
               this.f0 = 0;
               this.f1 = lf32(this.i2 + 12);
               this.i8 = this.i2 + 12;
               this.f0 = this.f0;
               this.f0 = this.f0;
               this.f2 = this.f1;
               if(!(this.f2 == Number.NaN || this.f0 == Number.NaN))
               {
                  this.f0 = -cmodule.Box2D.inf;
                  this.f0 = this.f0;
                  this.f0 = this.f0;
                  this.f2 = this.f1;
                  if(this.f2 > this.f0)
                  {
                     this.f0 = cmodule.Box2D.inf;
                     this.f0 = this.f0;
                     this.f0 = this.f0;
                     this.f1 = this.f1;
                     if(this.f1 < this.f0)
                     {
                        §§goto(addr0902);
                     }
                  }
               }
               this.i0 = cmodule.Box2D.___sF;
               mstate.esp -= 24;
               this.i1 = cmodule.Box2D.__2E_str1670;
               this.i2 = cmodule.Box2D.__2E_str111;
               this.i3 = cmodule.Box2D.__ZZN6b2BodyC4EPK9b2BodyDefP7b2WorldE8__func__;
               this.i4 = cmodule.Box2D.__2E_str53260;
               this.i5 = 29;
               this.i0 += 176;
               si32(this.i0,mstate.esp);
               si32(this.i1,mstate.esp + 4);
               si32(this.i2,mstate.esp + 8);
               si32(this.i3,mstate.esp + 12);
               si32(this.i4,mstate.esp + 16);
               si32(this.i5,mstate.esp + 20);
               state = 9;
               mstate.esp -= 4;
               FSM_fprintf.start();
               return;
            case 10:
               addr0902:
               this.f0 = 0;
               this.f1 = lf32(this.i2 + 24);
               this.i9 = this.i2 + 24;
               this.f0 = this.f0;
               this.f0 = this.f0;
               this.f2 = this.f1;
               if(!(this.f2 == Number.NaN || this.f0 == Number.NaN))
               {
                  this.f0 = -cmodule.Box2D.inf;
                  this.f0 = this.f0;
                  this.f0 = this.f0;
                  this.f2 = this.f1;
                  if(this.f2 > this.f0)
                  {
                     this.f0 = cmodule.Box2D.inf;
                     this.f0 = this.f0;
                     this.f0 = this.f0;
                     this.f1 = this.f1;
                     if(this.f1 < this.f0)
                     {
                        §§goto(addr0a97);
                     }
                  }
               }
               this.i0 = cmodule.Box2D.___sF;
               mstate.esp -= 24;
               this.i1 = cmodule.Box2D.__2E_str1670;
               this.i2 = cmodule.Box2D.__2E_str112;
               this.i3 = cmodule.Box2D.__ZZN6b2BodyC4EPK9b2BodyDefP7b2WorldE8__func__;
               this.i4 = cmodule.Box2D.__2E_str53260;
               this.i5 = 30;
               this.i0 += 176;
               si32(this.i0,mstate.esp);
               si32(this.i1,mstate.esp + 4);
               si32(this.i2,mstate.esp + 8);
               si32(this.i3,mstate.esp + 12);
               si32(this.i4,mstate.esp + 16);
               si32(this.i5,mstate.esp + 20);
               state = 11;
               mstate.esp -= 4;
               FSM_fprintf.start();
               return;
            case 12:
               addr0a97:
               this.f0 = 0;
               this.f1 = lf32(this.i2 + 48);
               this.f0 = this.f0;
               this.f0 = this.f0;
               this.f2 = this.f1;
               if(!(this.f2 == Number.NaN || this.f0 == Number.NaN))
               {
                  this.f0 = -cmodule.Box2D.inf;
                  this.f0 = this.f0;
                  this.f0 = this.f0;
                  this.f2 = this.f1;
                  if(this.f2 > this.f0)
                  {
                     this.f0 = cmodule.Box2D.inf;
                     this.f0 = this.f0;
                     this.f0 = this.f0;
                     this.f2 = this.f1;
                     if(this.f2 < this.f0)
                     {
                        this.f0 = 0;
                        this.f0 = this.f0;
                        this.f0 = this.f0;
                        this.f1 = this.f1;
                        if(this.f1 >= this.f0)
                        {
                           §§goto(addr0c4c);
                        }
                     }
                  }
               }
               this.i0 = cmodule.Box2D.___sF;
               mstate.esp -= 24;
               this.i1 = cmodule.Box2D.__2E_str1670;
               this.i2 = cmodule.Box2D.__2E_str113308;
               this.i3 = cmodule.Box2D.__ZZN6b2BodyC4EPK9b2BodyDefP7b2WorldE8__func__;
               this.i4 = cmodule.Box2D.__2E_str53260;
               this.i5 = 31;
               this.i0 += 176;
               si32(this.i0,mstate.esp);
               si32(this.i1,mstate.esp + 4);
               si32(this.i2,mstate.esp + 8);
               si32(this.i3,mstate.esp + 12);
               si32(this.i4,mstate.esp + 16);
               si32(this.i5,mstate.esp + 20);
               state = 13;
               mstate.esp -= 4;
               FSM_fprintf.start();
               return;
            case 14:
               addr0c4c:
               this.f0 = 0;
               this.f1 = lf32(this.i2 + 32);
               this.i10 = this.i2 + 32;
               this.f0 = this.f0;
               this.f0 = this.f0;
               this.f2 = this.f1;
               if(!(this.f2 == Number.NaN || this.f0 == Number.NaN))
               {
                  this.f0 = -cmodule.Box2D.inf;
                  this.f0 = this.f0;
                  this.f0 = this.f0;
                  this.f2 = this.f1;
                  if(this.f2 > this.f0)
                  {
                     this.f0 = cmodule.Box2D.inf;
                     this.f0 = this.f0;
                     this.f0 = this.f0;
                     this.f2 = this.f1;
                     if(this.f2 < this.f0)
                     {
                        this.f0 = 0;
                        this.f0 = this.f0;
                        this.f0 = this.f0;
                        this.f1 = this.f1;
                        if(this.f1 >= this.f0)
                        {
                           §§goto(addr0e0c);
                        }
                     }
                  }
               }
               this.i0 = cmodule.Box2D.___sF;
               mstate.esp -= 24;
               this.i1 = cmodule.Box2D.__2E_str1670;
               this.i2 = cmodule.Box2D.__2E_str114309;
               this.i3 = cmodule.Box2D.__ZZN6b2BodyC4EPK9b2BodyDefP7b2WorldE8__func__;
               this.i4 = cmodule.Box2D.__2E_str53260;
               this.i5 = 32;
               this.i0 += 176;
               si32(this.i0,mstate.esp);
               si32(this.i1,mstate.esp + 4);
               si32(this.i2,mstate.esp + 8);
               si32(this.i3,mstate.esp + 12);
               si32(this.i4,mstate.esp + 16);
               si32(this.i5,mstate.esp + 20);
               state = 15;
               mstate.esp -= 4;
               FSM_fprintf.start();
               return;
            case 16:
               addr0e0c:
               this.f0 = 0;
               this.f1 = lf32(this.i2 + 28);
               this.i11 = this.i2 + 28;
               this.f0 = this.f0;
               this.f0 = this.f0;
               this.f2 = this.f1;
               if(!(this.f2 == Number.NaN || this.f0 == Number.NaN))
               {
                  this.f0 = -cmodule.Box2D.inf;
                  this.f0 = this.f0;
                  this.f0 = this.f0;
                  this.f2 = this.f1;
                  if(this.f2 > this.f0)
                  {
                     this.f0 = cmodule.Box2D.inf;
                     this.f0 = this.f0;
                     this.f0 = this.f0;
                     this.f2 = this.f1;
                     if(this.f2 < this.f0)
                     {
                        this.f0 = 0;
                        this.f0 = this.f0;
                        this.f0 = this.f0;
                        this.f1 = this.f1;
                        if(this.f1 >= this.f0)
                        {
                           break;
                        }
                     }
                  }
               }
               this.i0 = cmodule.Box2D.___sF;
               mstate.esp -= 24;
               this.i1 = cmodule.Box2D.__2E_str1670;
               this.i2 = cmodule.Box2D.__2E_str115;
               this.i3 = cmodule.Box2D.__ZZN6b2BodyC4EPK9b2BodyDefP7b2WorldE8__func__;
               this.i4 = cmodule.Box2D.__2E_str53260;
               this.i5 = 33;
               this.i0 += 176;
               si32(this.i0,mstate.esp);
               si32(this.i1,mstate.esp + 4);
               si32(this.i2,mstate.esp + 8);
               si32(this.i3,mstate.esp + 12);
               si32(this.i4,mstate.esp + 16);
               si32(this.i5,mstate.esp + 20);
               state = 17;
               mstate.esp -= 4;
               FSM_fprintf.start();
               return;
            case 18:
               break;
            case 5:
               mstate.esp += 24;
               state = 6;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 7:
               mstate.esp += 24;
               state = 8;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 9:
               mstate.esp += 24;
               state = 10;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 11:
               mstate.esp += 24;
               state = 12;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 13:
               mstate.esp += 24;
               state = 14;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 15:
               mstate.esp += 24;
               state = 16;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 17:
               mstate.esp += 24;
               state = 18;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 19:
               mstate.esp += 4;
               mstate.esp -= 4;
               si32(this.i1,mstate.esp);
               state = 20;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Ptr]();
               return;
            case 20:
               this.i0 = mstate.eax;
               mstate.esp += 4;
               si32(this.i0,cmodule.Box2D._as3_ptr);
               mstate.eax = this.i0;
               mstate.esp = mstate.ebp;
               mstate.ebp = li32(mstate.esp);
               mstate.esp += 4;
               mstate.esp += 4;
               mstate.gworker = caller;
               return;
            default:
               throw "Invalid state in __Z18b2World_CreateBodyPvP8_AS3_Val";
         }
         this.i12 = 0;
         si16(this.i12,this.i3 + 4);
         this.i12 = li8(this.i2 + 39);
         this.i13 = this.i3 + 4;
         if(this.i12 == 0)
         {
            this.i12 = 0;
         }
         else
         {
            this.i12 = 8;
            si16(this.i12,this.i13);
         }
         this.i14 = li8(this.i2 + 38);
         if(this.i14 != 0)
         {
            this.i12 |= 16;
            si16(this.i12,this.i13);
         }
         this.i14 = li8(this.i2 + 36);
         if(this.i14 != 0)
         {
            this.i12 |= 4;
            si16(this.i12,this.i13);
         }
         this.i14 = li8(this.i2 + 37);
         if(this.i14 != 0)
         {
            this.i12 |= 2;
            si16(this.i12,this.i13);
         }
         this.i14 = li8(this.i2 + 40);
         if(this.i14 != 0)
         {
            this.i12 |= 32;
            si16(this.i12,this.i13);
         }
         this.f1 = 0;
         si32(this.i0,this.i3 + 96);
         this.f2 = lf32(this.i4);
         this.f3 = lf32(this.i5);
         sf32(this.f2,this.i3 + 12);
         sf32(this.f3,this.i3 + 16);
         this.f4 = lf32(this.i8);
         this.f0 = this.f4;
         this.f0 = Math.cos(this.f0);
         this.f5 = this.f0;
         this.f0 = this.f4;
         this.f0 = Math.sin(this.f0);
         this.f4 = this.f0;
         this.f4 = -this.f4;
         sf32(this.f5,this.i3 + 20);
         this.f4 = this.f4;
         sf32(this.f4,this.i3 + 28);
         sf32(this.f0,this.i3 + 24);
         this.f0 = this.f1;
         sf32(this.f5,this.i3 + 32);
         this.i4 = 0;
         this.f1 = this.f2;
         this.f0 = this.f0;
         si32(this.i4,this.i3 + 36);
         this.f1 += this.f0;
         this.f2 = this.f3;
         si32(this.i4,this.i3 + 40);
         this.f1 = this.f1;
         this.f2 += this.f0;
         this.f3 = lf32(this.i8);
         this.f1 = this.f1;
         this.f2 = this.f2;
         sf32(this.f3,this.i3 + 64);
         this.f1 += this.f0;
         this.f2 = this.f2;
         this.f0 = this.f2 + this.f0;
         sf32(this.f3,this.i3 + 60);
         this.f1 = this.f1;
         sf32(this.f1,this.i3 + 52);
         this.f0 = this.f0;
         sf32(this.f0,this.i3 + 56);
         sf32(this.f1,this.i3 + 44);
         sf32(this.f0,this.i3 + 48);
         si32(this.i4,this.i3 + 116);
         si32(this.i4,this.i3 + 120);
         si32(this.i4,this.i3 + 100);
         si32(this.i4,this.i3 + 104);
         this.f0 = lf32(this.i6);
         this.f1 = lf32(this.i7);
         sf32(this.f0,this.i3 + 72);
         sf32(this.f1,this.i3 + 76);
         this.f0 = lf32(this.i9);
         sf32(this.f0,this.i3 + 80);
         this.f0 = lf32(this.i11);
         sf32(this.f0,this.i3 + 140);
         this.f0 = lf32(this.i10);
         sf32(this.f0,this.i3 + 144);
         si32(this.i4,this.i3 + 84);
         si32(this.i4,this.i3 + 88);
         si32(this.i4,this.i3 + 92);
         si32(this.i4,this.i3 + 148);
         this.i4 = li32(this.i2);
         si32(this.i4,this.i1);
         this.i5 = this.i3 + 124;
         if(this.i4 == 2)
         {
            this.i4 = 1065353216;
            si32(this.i4,this.i5);
            si32(this.i4,this.i3 + 128);
         }
         else
         {
            this.i4 = 0;
            si32(this.i4,this.i5);
            si32(this.i4,this.i3 + 128);
         }
         this.i4 = 0;
         si32(this.i4,this.i3 + 132);
         si32(this.i4,this.i3 + 136);
         this.i2 = li32(this.i2 + 44);
         si32(this.i2,this.i3 + 152);
         si32(this.i4,this.i3 + 108);
         si32(this.i4,this.i3 + 112);
         addr140f:
         this.i2 = 0;
         si32(this.i2,this.i3 + 100);
         this.i2 = li32(this.i0 + 102952);
         si32(this.i2,this.i3 + 104);
         this.i2 = li32(this.i0 + 102952);
         this.i4 = this.i0 + 102952;
         if(this.i2 != 0)
         {
            si32(this.i3,this.i2 + 100);
         }
         si32(this.i3,this.i4);
         this.i2 = li32(this.i0 + 102960);
         this.i2 += 1;
         si32(this.i2,this.i0 + 102960);
         this.i0 = li32(mstate.ebp + -4);
         si32(this.i0,this.i3 + 152);
         this.i0 = li32(cmodule.Box2D._as3_ptr);
         mstate.esp -= 4;
         si32(this.i0,mstate.esp);
         state = 19;
         mstate.esp -= 4;
         mstate.funcs[cmodule.Box2D._AS3_Release]();
      }
   }
}

