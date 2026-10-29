package cmodule.Box2D
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.system.*;
   import flash.text.*;
   import flash.utils.*;
   
   public final class FSM__Z19b2World_DestroyBodyPvP8_AS3_Val extends Machine
   {
      
      public static const intRegCount:int = 21;
      
      public static const NumberRegCount:int = 0;
      
      public var i10:int;
      
      public var i11:int;
      
      public var i12:int;
      
      public var i13:int;
      
      public var i14:int;
      
      public var i15:int;
      
      public var i17:int;
      
      public var i19:int;
      
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
      
      public var i20:int;
      
      public function FSM__Z19b2World_DestroyBodyPvP8_AS3_Val()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__Z19b2World_DestroyBodyPvP8_AS3_Val = null;
         _loc1_ = new FSM__Z19b2World_DestroyBodyPvP8_AS3_Val();
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
               mstate.esp -= 8;
               this.i0 = cmodule.Box2D.__2E_str34241;
               mstate.esp -= 16;
               this.i1 = li32(mstate.ebp + 12);
               this.i2 = mstate.ebp + -8;
               this.i3 = mstate.ebp + -4;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               si32(this.i3,mstate.esp + 8);
               si32(this.i2,mstate.esp + 12);
               state = 1;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_ArrayValue]();
               return;
            case 1:
               mstate.esp += 16;
               this.i0 = li32(mstate.ebp + -8);
               this.i0 = li32(this.i0 + 152);
               mstate.esp -= 4;
               si32(this.i0,mstate.esp);
               state = 2;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Release]();
               return;
            case 2:
               mstate.esp += 4;
               this.i0 = li32(mstate.ebp + -4);
               this.i1 = li32(mstate.ebp + -8);
               this.i2 = li32(this.i0 + 102960);
               this.i3 = this.i0 + 102960;
               if(this.i2 <= 0)
               {
                  this.i0 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i1 = cmodule.Box2D.__2E_str1670;
                  this.i3 = cmodule.Box2D.__2E_str181340;
                  this.i2 = cmodule.Box2D.__ZZN7b2World11DestroyBodyEP6b2BodyE8__func__;
                  this.i4 = cmodule.Box2D.__2E_str68275;
                  this.i5 = 129;
                  addr0202:
                  this.i0 += 176;
                  si32(this.i0,mstate.esp);
                  si32(this.i1,mstate.esp + 4);
                  si32(this.i3,mstate.esp + 8);
                  si32(this.i2,mstate.esp + 12);
               }
               else
               {
                  this.i2 = li32(this.i0 + 102868);
                  this.i2 &= 2;
                  if(this.i2 != 0)
                  {
                     this.i0 = cmodule.Box2D.___sF;
                     mstate.esp -= 24;
                     this.i1 = cmodule.Box2D.__2E_str1670;
                     this.i3 = cmodule.Box2D.__2E_str116;
                     this.i2 = cmodule.Box2D.__ZZN7b2World11DestroyBodyEP6b2BodyE8__func__;
                     this.i4 = cmodule.Box2D.__2E_str68275;
                     this.i5 = 130;
                     §§goto(addr0202);
                  }
                  else
                  {
                     this.i2 = li32(this.i1 + 116);
                     this.i4 = this.i1 + 116;
                     if(this.i2 != 0)
                     {
                        this.i5 = this.i0 + 102980;
                        addr02df:
                        this.i6 = li32(this.i2 + 12);
                        this.i7 = li32(this.i5);
                        if(this.i7 != 0)
                        {
                           this.i8 = li32(this.i7);
                           this.i8 = li32(this.i8 + 8);
                           this.i9 = li32(this.i2 + 4);
                           mstate.esp -= 8;
                           si32(this.i7,mstate.esp);
                           si32(this.i9,mstate.esp + 4);
                           state = 3;
                           mstate.esp -= 4;
                           mstate.funcs[this.i8]();
                           return;
                        }
                        §§goto(addr0380);
                     }
                     else
                     {
                        addr0403:
                        this.i2 = 0;
                        si32(this.i2,this.i4);
                        this.i2 = li32(this.i1 + 120);
                        this.i4 = this.i1 + 120;
                        if(this.i2 != 0)
                        {
                           this.i5 = this.i0 + 102872;
                           §§goto(addr0445);
                        }
                        else
                        {
                           addr04cb:
                           this.i2 = 0;
                           si32(this.i2,this.i4);
                           this.i2 = li32(this.i1 + 108);
                           this.i4 = this.i1 + 108;
                           if(this.i2 != 0)
                           {
                              this.i5 = this.i0 + 102912;
                              this.i6 = this.i0 + 102900;
                              this.i7 = this.i0 + 102904;
                              this.i8 = this.i1 + 112;
                              this.i9 = this.i0 + 102872;
                              this.i10 = this.i0 + 102980;
                              this.i11 = this.i0;
                              addr0550:
                              this.i12 = li32(this.i2 + 8);
                              this.i13 = li32(this.i10);
                              if(this.i13 != 0)
                              {
                                 this.i14 = li32(this.i13);
                                 this.i14 = li32(this.i14 + 12);
                                 mstate.esp -= 8;
                                 si32(this.i13,mstate.esp);
                                 si32(this.i2,mstate.esp + 4);
                                 state = 6;
                                 mstate.esp -= 4;
                                 mstate.funcs[this.i14]();
                                 return;
                              }
                              this.i13 = 0;
                              addr0580:
                              this.i14 = li32(this.i2 + 32);
                              if(this.i14 <= this.i13)
                              {
                                 break;
                              }
                              §§goto(addr0633);
                           }
                           else
                           {
                              addr0981:
                              this.i2 = 0;
                              si32(this.i2,this.i4);
                              si32(this.i2,this.i1 + 112);
                              this.i2 = li32(this.i1 + 100);
                              this.i4 = this.i1 + 100;
                              if(this.i2 != 0)
                              {
                                 this.i5 = li32(this.i1 + 104);
                                 si32(this.i5,this.i2 + 104);
                              }
                              this.i2 = li32(this.i1 + 104);
                              this.i5 = this.i1 + 104;
                              if(this.i2 != 0)
                              {
                                 this.i4 = li32(this.i4);
                                 si32(this.i4,this.i2 + 100);
                              }
                              this.i2 = li32(this.i0 + 102952);
                              this.i4 = this.i0 + 102952;
                              if(this.i2 == this.i1)
                              {
                                 this.i2 = li32(this.i5);
                                 si32(this.i2,this.i4);
                              }
                              this.i2 = li32(this.i3);
                              this.i2 += -1;
                              si32(this.i2,this.i3);
                              this.i2 = li8(cmodule.Box2D.__ZN16b2BlockAllocator17s_blockSizeLookupE + 156);
                              if(uint(this.i2) < uint(14))
                              {
                                 this.i2 &= 255;
                                 this.i2 <<= 2;
                                 this.i0 += this.i2;
                                 this.i2 = li32(this.i0 + 12);
                                 si32(this.i2,this.i1);
                                 si32(this.i1,this.i0 + 12);
                                 state = 11;
                                 mstate.esp -= 4;
                                 mstate.funcs[cmodule.Box2D._AS3_Null]();
                                 return;
                              }
                              this.i0 = cmodule.Box2D.___sF;
                              mstate.esp -= 24;
                              this.i1 = cmodule.Box2D.__2E_str1670;
                              this.i2 = cmodule.Box2D.__2E_str81288;
                              this.i3 = cmodule.Box2D.__ZZN16b2BlockAllocator4FreeEPviE8__func__;
                              this.i4 = cmodule.Box2D.__2E_str76283;
                              this.i5 = 173;
                              this.i0 += 176;
                              si32(this.i0,mstate.esp);
                              si32(this.i1,mstate.esp + 4);
                              si32(this.i2,mstate.esp + 8);
                              addr0886:
                              si32(this.i3,mstate.esp + 12);
                           }
                        }
                     }
                  }
               }
               si32(this.i4,mstate.esp + 16);
               si32(this.i5,mstate.esp + 20);
               state = 9;
               mstate.esp -= 4;
               FSM_fprintf.start();
               return;
            case 3:
               mstate.esp += 8;
               addr0380:
               this.i2 = li32(this.i2 + 4);
               mstate.esp -= 8;
               si32(this.i0,mstate.esp);
               si32(this.i2,mstate.esp + 4);
               state = 4;
               mstate.esp -= 4;
               FSM__ZN7b2World12DestroyJointEP7b2Joint.start();
               return;
            case 4:
               mstate.esp += 8;
               si32(this.i6,this.i4);
               if(this.i6 != 0)
               {
                  this.i2 = this.i6;
                  §§goto(addr02df);
               }
               else
               {
                  §§goto(addr0403);
               }
            case 5:
               mstate.esp += 8;
               if(this.i6 != 0)
               {
                  this.i2 = this.i6;
                  addr0445:
                  this.i6 = li32(this.i2 + 12);
                  this.i2 = li32(this.i2 + 4);
                  mstate.esp -= 8;
                  si32(this.i5,mstate.esp);
                  si32(this.i2,mstate.esp + 4);
                  state = 5;
                  mstate.esp -= 4;
                  FSM__ZN16b2ContactManager7DestroyEP9b2Contact.start();
                  return;
               }
               §§goto(addr04cb);
               break;
            case 6:
               mstate.esp += 8;
               this.i13 = li32(this.i2 + 32);
               if(this.i13 >= 1)
               {
                  this.i13 = 0;
                  addr0633:
                  this.i14 = li32(this.i2 + 28);
                  this.i15 = this.i13 * 28;
                  this.i14 += this.i15;
                  this.i15 = li32(this.i14 + 24);
                  this.i16 = li32(this.i5);
                  this.i14 += 24;
                  if(this.i16 >= 1)
                  {
                     this.i17 = 0;
                     this.i18 = li32(this.i7);
                     do
                     {
                        this.i19 = li32(this.i18);
                        this.i20 = this.i18;
                        if(this.i19 == this.i15)
                        {
                           this.i17 = -1;
                           si32(this.i17,this.i20);
                           break;
                        }
                        this.i18 += 4;
                        this.i17 += 1;
                     }
                     while(this.i16 > this.i17);
                  }
                  this.i16 = -1;
                  this.i17 = li32(this.i6);
                  this.i17 += -1;
                  si32(this.i17,this.i6);
                  mstate.esp -= 8;
                  si32(this.i9,mstate.esp);
                  si32(this.i15,mstate.esp + 4);
                  state = 7;
                  mstate.esp -= 4;
                  FSM__ZN13b2DynamicTree12DestroyProxyEi.start();
                  return;
               }
               break;
            case 7:
               mstate.esp += 8;
               si32(this.i16,this.i14);
               this.i13 += 1;
               §§goto(addr0580);
            case 8:
               mstate.esp += 8;
               this.i13 = li8(cmodule.Box2D.__ZN16b2BlockAllocator17s_blockSizeLookupE + 52);
               if(uint(this.i13) >= uint(14))
               {
                  this.i2 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i0 = cmodule.Box2D.__2E_str1670;
                  this.i1 = cmodule.Box2D.__2E_str81288;
                  this.i3 = cmodule.Box2D.__ZZN16b2BlockAllocator4FreeEPviE8__func__;
                  this.i4 = cmodule.Box2D.__2E_str76283;
                  this.i5 = 173;
                  this.i2 += 176;
                  si32(this.i2,mstate.esp);
                  si32(this.i0,mstate.esp + 4);
                  si32(this.i1,mstate.esp + 8);
               }
               else
               {
                  addr08ff:
                  this.i13 &= 255;
                  this.i13 <<= 2;
                  this.i13 = this.i0 + this.i13;
                  this.i14 = li32(this.i13 + 12);
                  si32(this.i14,this.i2);
                  si32(this.i2,this.i13 + 12);
                  si32(this.i12,this.i4);
                  this.i2 = li32(this.i8);
                  this.i2 += -1;
                  si32(this.i2,this.i8);
                  if(this.i12 != 0)
                  {
                     this.i2 = this.i12;
                     §§goto(addr0550);
                  }
                  else
                  {
                     §§goto(addr0981);
                  }
               }
               §§goto(addr0886);
            case 10:
               §§goto(addr08ff);
            case 9:
               mstate.esp += 24;
               state = 10;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 11:
               this.i0 = mstate.eax;
               mstate.eax = this.i0;
               mstate.esp = mstate.ebp;
               mstate.ebp = li32(mstate.esp);
               mstate.esp += 4;
               mstate.esp += 4;
               mstate.gworker = caller;
               return;
            default:
               throw "Invalid state in __Z19b2World_DestroyBodyPvP8_AS3_Val";
         }
         this.i13 = 0;
         si32(this.i13,this.i2 + 32);
         mstate.esp -= 8;
         si32(this.i2,mstate.esp);
         si32(this.i11,mstate.esp + 4);
         state = 8;
         mstate.esp -= 4;
         FSM__ZN9b2Fixture7DestroyEP16b2BlockAllocator.start();
      }
   }
}

