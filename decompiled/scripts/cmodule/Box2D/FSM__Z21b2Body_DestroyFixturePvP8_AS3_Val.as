package cmodule.Box2D
{
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.system.*;
   import flash.text.*;
   import flash.utils.*;
   
   public final class FSM__Z21b2Body_DestroyFixturePvP8_AS3_Val extends Machine
   {
      
      public static const intRegCount:int = 22;
      
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
      
      public var i21:int;
      
      public function FSM__Z21b2Body_DestroyFixturePvP8_AS3_Val()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__Z21b2Body_DestroyFixturePvP8_AS3_Val = null;
         _loc1_ = new FSM__Z21b2Body_DestroyFixturePvP8_AS3_Val();
         cmodule.Box2D.gstate.gworker = _loc1_;
      }
      
      final override public function work() : void
      {
         loop3:
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
               this.i0 = li32(this.i0 + 44);
               mstate.esp -= 4;
               si32(this.i0,mstate.esp);
               state = 2;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Release]();
               return;
            case 2:
               mstate.esp += 4;
               this.i0 = li32(mstate.ebp + -4);
               this.i1 = li32(this.i0 + 96);
               this.i1 = li32(this.i1 + 102868);
               this.i2 = li32(mstate.ebp + -8);
               this.i3 = this.i0 + 96;
               this.i1 &= 2;
               loop4:
               while(true)
               {
                  while(true)
                  {
                     if(this.i1 != 0)
                     {
                        this.i0 = cmodule.Box2D.___sF;
                        mstate.esp -= 24;
                        this.i2 = cmodule.Box2D.__2E_str1670;
                        this.i3 = cmodule.Box2D.__2E_str54261;
                        this.i1 = cmodule.Box2D.__ZZN6b2Body14DestroyFixtureEP9b2FixtureE8__func__;
                        this.i4 = cmodule.Box2D.__2E_str53260;
                        this.i5 = 189;
                        this.i0 += 176;
                        si32(this.i0,mstate.esp);
                        si32(this.i2,mstate.esp + 4);
                        si32(this.i3,mstate.esp + 8);
                        si32(this.i1,mstate.esp + 12);
                        break;
                     }
                     addr02c7:
                     this.i1 = li32(this.i2 + 12);
                     this.i4 = this.i2 + 12;
                     if(this.i1 != this.i0)
                     {
                        this.i0 = cmodule.Box2D.___sF;
                        mstate.esp -= 24;
                        this.i2 = cmodule.Box2D.__2E_str1670;
                        this.i3 = cmodule.Box2D.__2E_str177;
                        this.i4 = cmodule.Box2D.__ZZN6b2Body14DestroyFixtureEP9b2FixtureE8__func__;
                        this.i1 = cmodule.Box2D.__2E_str53260;
                        this.i5 = 195;
                        this.i0 += 176;
                        si32(this.i0,mstate.esp);
                        si32(this.i2,mstate.esp + 4);
                        si32(this.i3,mstate.esp + 8);
                        si32(this.i4,mstate.esp + 12);
                        si32(this.i1,mstate.esp + 16);
                        break loop4;
                     }
                     this.i1 = li32(this.i0 + 112);
                     this.i5 = this.i0 + 108;
                     this.i6 = this.i0 + 112;
                     if(this.i1 > 0)
                     {
                        this.i1 = li32(this.i5);
                        while(true)
                        {
                           loop7:
                           while(true)
                           {
                              if(this.i1 != 0)
                              {
                                 this.i1 = this.i5;
                                 while(true)
                                 {
                                    this.i5 = li32(this.i1);
                                    if(this.i5 == this.i2)
                                    {
                                       break;
                                    }
                                    this.i1 = li32(this.i5 + 8);
                                    this.i5 += 8;
                                    if(this.i1 == 0)
                                    {
                                       break loop7;
                                    }
                                    this.i1 = this.i5;
                                 }
                                 this.i5 = li32(this.i2 + 8);
                                 si32(this.i5,this.i1);
                                 this.i1 = li32(this.i0 + 120);
                                 this.i5 = this.i2 + 8;
                                 if(this.i1 != 0)
                                 {
                                    addr04c0:
                                    this.i7 = li32(this.i1 + 4);
                                    this.i1 = li32(this.i1 + 12);
                                    this.i8 = li32(this.i7 + 48);
                                    this.i9 = li32(this.i7 + 52);
                                    if(this.i9 != this.i2)
                                    {
                                       if(this.i8 != this.i2)
                                       {
                                          while(true)
                                          {
                                             if(this.i1 == 0)
                                             {
                                                §§goto(addr0647);
                                             }
                                             §§goto(addr04c0);
                                          }
                                          break;
                                          addr0583:
                                       }
                                    }
                                    this.i8 = li32(this.i3);
                                    mstate.esp -= 8;
                                    this.i8 += 102872;
                                    si32(this.i8,mstate.esp);
                                    si32(this.i7,mstate.esp + 4);
                                    state = 5;
                                    mstate.esp -= 4;
                                    FSM__ZN16b2ContactManager7DestroyEP9b2Contact.start();
                                    return;
                                 }
                                 addr0647:
                                 this.i1 = li16(this.i0 + 4);
                                 this.i3 = li32(this.i3);
                                 this.i7 = this.i3;
                                 this.i1 &= 32;
                                 if(this.i1 != 0)
                                 {
                                    this.i1 = li32(this.i2 + 32);
                                    this.i8 = this.i2 + 32;
                                    if(this.i1 >= 1)
                                    {
                                       this.i1 = 0;
                                       this.i9 = this.i7 + 102912;
                                       this.i10 = this.i7 + 102900;
                                       this.i11 = this.i7 + 102904;
                                       this.i12 = 24;
                                       this.i13 = this.i7 + 102872;
                                       this.i14 = this.i2 + 28;
                                       §§goto(addr06e8);
                                    }
                                    break loop3;
                                 }
                                 §§goto(addr0853);
                              }
                              break;
                           }
                           this.i0 = cmodule.Box2D.___sF;
                           mstate.esp -= 24;
                           this.i1 = cmodule.Box2D.__2E_str1670;
                           this.i2 = cmodule.Box2D.__2E_str179339;
                           this.i3 = cmodule.Box2D.__ZZN6b2Body14DestroyFixtureEP9b2FixtureE8__func__;
                           this.i4 = cmodule.Box2D.__2E_str53260;
                           this.i5 = 214;
                           this.i0 += 176;
                           si32(this.i0,mstate.esp);
                           si32(this.i1,mstate.esp + 4);
                           si32(this.i2,mstate.esp + 8);
                           si32(this.i3,mstate.esp + 12);
                           break;
                        }
                        break;
                     }
                     this.i0 = cmodule.Box2D.___sF;
                     mstate.esp -= 24;
                     this.i2 = cmodule.Box2D.__2E_str1670;
                     this.i3 = cmodule.Box2D.__2E_str178;
                     this.i4 = cmodule.Box2D.__ZZN6b2Body14DestroyFixtureEP9b2FixtureE8__func__;
                     this.i5 = cmodule.Box2D.__2E_str53260;
                     this.i6 = 198;
                     this.i0 += 176;
                     si32(this.i0,mstate.esp);
                     si32(this.i2,mstate.esp + 4);
                     si32(this.i3,mstate.esp + 8);
                     si32(this.i4,mstate.esp + 12);
                     si32(this.i5,mstate.esp + 16);
                     si32(this.i6,mstate.esp + 20);
                     §§goto(addr0278);
                     break;
                  }
                  si32(this.i4,mstate.esp + 16);
                  break;
               }
               si32(this.i5,mstate.esp + 20);
               addr0278:
               state = 3;
               mstate.esp -= 4;
               FSM_fprintf.start();
               return;
            case 4:
               §§goto(addr02c7);
            case 3:
               mstate.esp += 24;
               state = 4;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 5:
               mstate.esp += 8;
               §§goto(addr0583);
            case 6:
               mstate.esp += 8;
               si32(this.i17,this.i15);
               this.i15 = li32(this.i8);
               this.i12 += 28;
               this.i1 += 1;
               if(this.i15 > this.i1)
               {
                  addr06e8:
                  this.i15 = li32(this.i14);
                  this.i15 += this.i12;
                  this.i16 = li32(this.i15);
                  this.i17 = li32(this.i9);
                  if(this.i17 >= 1)
                  {
                     this.i18 = 0;
                     this.i19 = li32(this.i11);
                     do
                     {
                        this.i20 = li32(this.i19);
                        this.i21 = this.i19;
                        if(this.i20 == this.i16)
                        {
                           this.i18 = -1;
                           si32(this.i18,this.i21);
                           break;
                        }
                        this.i19 += 4;
                        this.i18 += 1;
                     }
                     while(this.i17 > this.i18);
                  }
                  this.i17 = -1;
                  this.i18 = li32(this.i10);
                  this.i18 += -1;
                  si32(this.i18,this.i10);
                  mstate.esp -= 8;
                  si32(this.i13,mstate.esp);
                  si32(this.i16,mstate.esp + 4);
                  state = 6;
                  mstate.esp -= 4;
                  FSM__ZN13b2DynamicTree12DestroyProxyEi.start();
                  return;
               }
               break;
            case 7:
               mstate.esp += 8;
               si32(this.i1,this.i4);
               si32(this.i1,this.i5);
               this.i1 = li8(cmodule.Box2D.__ZN16b2BlockAllocator17s_blockSizeLookupE + 52);
               if(uint(this.i1) < uint(14))
               {
                  this.i1 &= 255;
                  this.i1 <<= 2;
                  this.i1 = this.i7 + this.i1;
                  this.i3 = li32(this.i1 + 12);
                  si32(this.i3,this.i2);
                  si32(this.i2,this.i1 + 12);
                  this.i1 = li32(this.i6);
                  this.i1 += -1;
                  si32(this.i1,this.i6);
                  mstate.esp -= 4;
                  si32(this.i0,mstate.esp);
                  state = 8;
                  mstate.esp -= 4;
                  FSM__ZN6b2Body13ResetMassDataEv.start();
                  return;
               }
               this.i0 = cmodule.Box2D.___sF;
               mstate.esp -= 24;
               this.i1 = cmodule.Box2D.__2E_str1670;
               this.i2 = cmodule.Box2D.__2E_str81288;
               this.i6 = cmodule.Box2D.__ZZN16b2BlockAllocator4FreeEPviE8__func__;
               this.i7 = cmodule.Box2D.__2E_str76283;
               this.i3 = 173;
               this.i0 += 176;
               si32(this.i0,mstate.esp);
               si32(this.i1,mstate.esp + 4);
               si32(this.i2,mstate.esp + 8);
               si32(this.i6,mstate.esp + 12);
               si32(this.i7,mstate.esp + 16);
               si32(this.i3,mstate.esp + 20);
               §§goto(addr0277);
               break;
            case 8:
               mstate.esp += 4;
               state = 9;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Null]();
               return;
            case 9:
               this.i0 = mstate.eax;
               mstate.eax = this.i0;
               mstate.esp = mstate.ebp;
               mstate.ebp = li32(mstate.esp);
               mstate.esp += 4;
               mstate.esp += 4;
               mstate.gworker = caller;
               return;
            default:
               throw "Invalid state in __Z21b2Body_DestroyFixturePvP8_AS3_Val";
         }
         this.i1 = 0;
         si32(this.i1,this.i8);
         addr0853:
         this.i1 = 0;
         mstate.esp -= 8;
         si32(this.i2,mstate.esp);
         si32(this.i3,mstate.esp + 4);
         state = 7;
         mstate.esp -= 4;
         FSM__ZN9b2Fixture7DestroyEP16b2BlockAllocator.start();
      }
   }
}

