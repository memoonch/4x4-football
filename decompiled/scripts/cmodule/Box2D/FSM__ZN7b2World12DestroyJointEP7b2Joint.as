package cmodule.Box2D
{
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.system.*;
   import flash.text.*;
   import flash.utils.*;
   
   public final class FSM__ZN7b2World12DestroyJointEP7b2Joint extends Machine
   {
      
      public static const intRegCount:int = 10;
      
      public static const NumberRegCount:int = 0;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public var i6:int;
      
      public var i8:int;
      
      public var i7:int;
      
      public var i9:int;
      
      public function FSM__ZN7b2World12DestroyJointEP7b2Joint()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZN7b2World12DestroyJointEP7b2Joint = null;
         _loc1_ = new FSM__ZN7b2World12DestroyJointEP7b2Joint();
         cmodule.Box2D.gstate.gworker = _loc1_;
      }
      
      final override public function work() : void
      {
         loop1:
         switch(state)
         {
            case 0:
               mstate.esp -= 4;
               si32(mstate.ebp,mstate.esp);
               mstate.ebp = mstate.esp;
               mstate.esp -= 0;
               this.i0 = li32(mstate.ebp + 8);
               this.i1 = li32(this.i0 + 102868);
               this.i2 = this.i0 + 102868;
               this.i3 = li32(mstate.ebp + 12);
               this.i1 &= 2;
               if(this.i1 != 0)
               {
                  this.i0 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i2 = cmodule.Box2D.__2E_str1670;
                  this.i3 = cmodule.Box2D.__2E_str116;
                  this.i1 = cmodule.Box2D.__ZZN7b2World12DestroyJointEP7b2JointE8__func__;
                  this.i4 = cmodule.Box2D.__2E_str68275;
                  this.i5 = 270;
                  this.i0 += 176;
                  si32(this.i0,mstate.esp);
                  si32(this.i2,mstate.esp + 4);
                  si32(this.i3,mstate.esp + 8);
                  si32(this.i1,mstate.esp + 12);
                  §§goto(addr011d);
               }
            case 2:
               this.i1 = li32(this.i2);
               this.i1 &= 2;
               if(this.i1 == 0)
               {
                  this.i1 = li8(this.i3 + 57);
                  this.i2 = li32(this.i3 + 8);
                  this.i4 = this.i3 + 8;
                  if(this.i2 != 0)
                  {
                     this.i5 = li32(this.i3 + 12);
                     si32(this.i5,this.i2 + 12);
                  }
                  this.i2 = li32(this.i3 + 12);
                  this.i5 = this.i3 + 12;
                  if(this.i2 != 0)
                  {
                     this.i4 = li32(this.i4);
                     si32(this.i4,this.i2 + 8);
                  }
                  this.i2 = li32(this.i0 + 102956);
                  this.i4 = this.i0 + 102956;
                  if(this.i2 == this.i3)
                  {
                     this.i2 = li32(this.i5);
                     si32(this.i2,this.i4);
                  }
                  this.i2 = li32(this.i3 + 48);
                  this.i4 = li16(this.i2 + 4);
                  this.i5 = li32(this.i3 + 52);
                  this.i6 = this.i2 + 4;
                  this.i7 = this.i4 & 2;
                  if(this.i7 == 0)
                  {
                     this.i7 = 0;
                     this.i4 |= 2;
                     si16(this.i4,this.i6);
                     si32(this.i7,this.i2 + 148);
                  }
                  this.i4 = li16(this.i5 + 4);
                  this.i6 = this.i5 + 4;
                  this.i7 = this.i4 & 2;
                  if(this.i7 == 0)
                  {
                     this.i7 = 0;
                     this.i4 |= 2;
                     si16(this.i4,this.i6);
                     si32(this.i7,this.i5 + 148);
                  }
                  this.i4 = li32(this.i3 + 24);
                  this.i6 = this.i3 + 24;
                  if(this.i4 != 0)
                  {
                     this.i7 = li32(this.i3 + 28);
                     si32(this.i7,this.i4 + 12);
                  }
                  this.i4 = li32(this.i3 + 28);
                  this.i7 = this.i3 + 28;
                  if(this.i4 != 0)
                  {
                     this.i8 = li32(this.i6);
                     si32(this.i8,this.i4 + 8);
                  }
                  this.i4 = li32(this.i2 + 116);
                  this.i8 = this.i2 + 116;
                  this.i9 = this.i3 + 16;
                  if(this.i9 == this.i4)
                  {
                     this.i4 = li32(this.i7);
                     si32(this.i4,this.i8);
                  }
                  this.i4 = 0;
                  si32(this.i4,this.i6);
                  si32(this.i4,this.i7);
                  this.i4 = li32(this.i3 + 40);
                  this.i6 = this.i3 + 40;
                  if(this.i4 != 0)
                  {
                     this.i7 = li32(this.i3 + 44);
                     si32(this.i7,this.i4 + 12);
                  }
                  this.i4 = li32(this.i3 + 44);
                  this.i7 = this.i3 + 44;
                  if(this.i4 != 0)
                  {
                     this.i8 = li32(this.i6);
                     si32(this.i8,this.i4 + 8);
                  }
                  this.i4 = li32(this.i5 + 116);
                  this.i8 = this.i5 + 116;
                  this.i9 = this.i3 + 32;
                  if(this.i9 == this.i4)
                  {
                     this.i4 = li32(this.i7);
                     si32(this.i4,this.i8);
                  }
                  this.i4 = 0;
                  si32(this.i4,this.i6);
                  si32(this.i4,this.i7);
                  this.i4 = li32(this.i3);
                  this.i4 = li32(this.i4 + 16);
                  mstate.esp -= 4;
                  si32(this.i3,mstate.esp);
                  state = 3;
                  mstate.esp -= 4;
                  mstate.funcs[this.i4]();
                  return;
               }
               break;
            case 1:
               mstate.esp += 24;
               state = 2;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 3:
               mstate.esp += 4;
               this.i4 = li32(this.i3 + 4);
               while(true)
               {
                  while(true)
                  {
                     if(this.i4 <= 5)
                     {
                        if(this.i4 <= 2)
                        {
                           if(this.i4 != 1)
                           {
                              if(this.i4 != 2)
                              {
                                 addr0a82:
                                 this.i0 = cmodule.Box2D.___sF;
                                 mstate.esp -= 24;
                                 this.i1 = cmodule.Box2D.__2E_str1670;
                                 this.i2 = cmodule.Box2D.__2E_str46253;
                                 this.i5 = cmodule.Box2D.__ZZN9b2Contact7DestroyEPS_P16b2BlockAllocatorE8__func__;
                                 this.i3 = cmodule.Box2D.__2E_str39246;
                                 this.i4 = 166;
                                 break;
                              }
                              this.i4 = li8(cmodule.Box2D.__ZN16b2BlockAllocator17s_blockSizeLookupE + 244);
                              if(uint(this.i4) >= uint(14))
                              {
                                 addr06a1:
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
                                 si32(this.i3,mstate.esp + 12);
                                 addr011d:
                                 si32(this.i4,mstate.esp + 16);
                                 si32(this.i5,mstate.esp + 20);
                                 addr013e:
                                 state = 1;
                                 mstate.esp -= 4;
                                 FSM_fprintf.start();
                                 return;
                                 addr0589:
                                 addr05d8:
                              }
                              else
                              {
                                 this.i4 &= 255;
                                 this.i4 <<= 2;
                                 this.i4 = this.i0 + this.i4;
                                 this.i6 = li32(this.i4 + 12);
                                 si32(this.i6,this.i3);
                                 si32(this.i3,this.i4 + 12);
                              }
                           }
                           else
                           {
                              this.i4 = li8(cmodule.Box2D.__ZN16b2BlockAllocator17s_blockSizeLookupE + 200);
                              if(uint(this.i4) >= uint(14))
                              {
                                 §§goto(addr0589);
                                 addr07dd:
                              }
                              else
                              {
                                 this.i4 &= 255;
                                 this.i4 <<= 2;
                                 this.i4 = this.i0 + this.i4;
                                 this.i6 = li32(this.i4 + 12);
                                 si32(this.i6,this.i3);
                                 si32(this.i3,this.i4 + 12);
                              }
                           }
                           addr0b6f:
                           this.i3 = li32(this.i0 + 102964);
                           this.i0 += 102964;
                           if(this.i3 <= 0)
                           {
                              this.i0 = cmodule.Box2D.___sF;
                              mstate.esp -= 24;
                              this.i1 = cmodule.Box2D.__2E_str1670;
                              this.i2 = cmodule.Box2D.__2E_str180;
                              this.i5 = cmodule.Box2D.__ZZN7b2World12DestroyJointEP7b2JointE8__func__;
                              this.i3 = cmodule.Box2D.__2E_str68275;
                              this.i4 = 342;
                              break;
                           }
                           this.i3 = li32(this.i0);
                           this.i3 += -1;
                           si32(this.i3,this.i0);
                           this.i0 = this.i1 & 0xFF;
                           if(this.i0 == 0)
                           {
                              this.i0 = li32(this.i5 + 120);
                              if(this.i0 != 0)
                              {
                                 while(true)
                                 {
                                    this.i1 = li32(this.i0);
                                    if(this.i1 == this.i2)
                                    {
                                       this.i1 = li32(this.i0 + 4);
                                       this.i3 = li32(this.i1 + 4);
                                       this.i3 |= 8;
                                       si32(this.i3,this.i1 + 4);
                                    }
                                    this.i0 = li32(this.i0 + 12);
                                    if(this.i0 == 0)
                                    {
                                       break loop1;
                                    }
                                 }
                              }
                           }
                           break loop1;
                        }
                        if(this.i4 != 3)
                        {
                           if(this.i4 != 4)
                           {
                              if(this.i4 != 5)
                              {
                                 §§goto(addr0a82);
                              }
                              else
                              {
                                 this.i4 = li8(cmodule.Box2D.__ZN16b2BlockAllocator17s_blockSizeLookupE + 164);
                                 if(uint(this.i4) >= uint(14))
                                 {
                                    §§goto(addr05d8);
                                 }
                                 else
                                 {
                                    this.i4 &= 255;
                                    this.i4 <<= 2;
                                    this.i4 = this.i0 + this.i4;
                                    this.i6 = li32(this.i4 + 12);
                                    si32(this.i6,this.i3);
                                    si32(this.i3,this.i4 + 12);
                                 }
                              }
                           }
                           else
                           {
                              this.i4 = li8(cmodule.Box2D.__ZN16b2BlockAllocator17s_blockSizeLookupE + 196);
                              if(uint(this.i4) >= uint(14))
                              {
                                 §§goto(addr07dd);
                                 addr0851:
                              }
                              else
                              {
                                 this.i4 &= 255;
                                 this.i4 <<= 2;
                                 this.i4 = this.i0 + this.i4;
                                 this.i6 = li32(this.i4 + 12);
                                 si32(this.i6,this.i3);
                                 si32(this.i3,this.i4 + 12);
                              }
                           }
                           §§goto(addr0b6f);
                        }
                        else
                        {
                           this.i4 = li8(cmodule.Box2D.__ZN16b2BlockAllocator17s_blockSizeLookupE + 148);
                           if(uint(this.i4) < uint(14))
                           {
                              this.i4 &= 255;
                              this.i4 <<= 2;
                              this.i4 = this.i0 + this.i4;
                              this.i6 = li32(this.i4 + 12);
                              si32(this.i6,this.i3);
                              si32(this.i3,this.i4 + 12);
                              §§goto(addr0b6f);
                           }
                        }
                        §§goto(addr06a1);
                     }
                     else if(this.i4 <= 7)
                     {
                        if(this.i4 != 6)
                        {
                           if(this.i4 != 7)
                           {
                              §§goto(addr0a82);
                           }
                           else
                           {
                              this.i4 = li8(cmodule.Box2D.__ZN16b2BlockAllocator17s_blockSizeLookupE + 212);
                              if(uint(this.i4) < uint(14))
                              {
                                 this.i4 &= 255;
                                 this.i4 <<= 2;
                                 this.i4 = this.i0 + this.i4;
                                 this.i6 = li32(this.i4 + 12);
                                 si32(this.i6,this.i3);
                                 si32(this.i3,this.i4 + 12);
                                 §§goto(addr0b6f);
                              }
                              else
                              {
                                 addr062c:
                              }
                           }
                        }
                        else
                        {
                           this.i4 = li8(cmodule.Box2D.__ZN16b2BlockAllocator17s_blockSizeLookupE + 192);
                           if(uint(this.i4) < uint(14))
                           {
                              this.i4 &= 255;
                              this.i4 <<= 2;
                              this.i4 = this.i0 + this.i4;
                              this.i6 = li32(this.i4 + 12);
                              si32(this.i6,this.i3);
                              si32(this.i3,this.i4 + 12);
                              §§goto(addr0b6f);
                           }
                        }
                        §§goto(addr0851);
                     }
                     else if(this.i4 != 8)
                     {
                        if(this.i4 != 9)
                        {
                           if(this.i4 != 10)
                           {
                              §§goto(addr0a82);
                           }
                           else
                           {
                              this.i4 = li8(cmodule.Box2D.__ZN16b2BlockAllocator17s_blockSizeLookupE + 156);
                              if(uint(this.i4) < uint(14))
                              {
                                 this.i4 &= 255;
                                 this.i4 <<= 2;
                                 this.i4 = this.i0 + this.i4;
                                 this.i6 = li32(this.i4 + 12);
                                 si32(this.i6,this.i3);
                                 si32(this.i3,this.i4 + 12);
                                 §§goto(addr0b6f);
                              }
                           }
                        }
                        else
                        {
                           this.i4 = li8(cmodule.Box2D.__ZN16b2BlockAllocator17s_blockSizeLookupE + 152);
                           if(uint(this.i4) < uint(14))
                           {
                              this.i4 &= 255;
                              this.i4 <<= 2;
                              this.i4 = this.i0 + this.i4;
                              this.i6 = li32(this.i4 + 12);
                              si32(this.i6,this.i3);
                              si32(this.i3,this.i4 + 12);
                              §§goto(addr0b6f);
                           }
                        }
                        §§goto(addr062c);
                        addr097d:
                     }
                     else
                     {
                        this.i4 = li8(cmodule.Box2D.__ZN16b2BlockAllocator17s_blockSizeLookupE + 164);
                        if(uint(this.i4) >= uint(14))
                        {
                           §§goto(addr097d);
                        }
                        else
                        {
                           this.i4 &= 255;
                           this.i4 <<= 2;
                           this.i4 = this.i0 + this.i4;
                           this.i6 = li32(this.i4 + 12);
                           si32(this.i6,this.i3);
                           si32(this.i3,this.i4 + 12);
                        }
                     }
                     §§goto(addr0b6f);
                  }
                  this.i0 += 176;
                  si32(this.i0,mstate.esp);
                  si32(this.i1,mstate.esp + 4);
                  si32(this.i2,mstate.esp + 8);
                  si32(this.i5,mstate.esp + 12);
                  si32(this.i3,mstate.esp + 16);
                  si32(this.i4,mstate.esp + 20);
                  break;
               }
               §§goto(addr013e);
            default:
               throw "Invalid state in __ZN7b2World12DestroyJointEP7b2Joint";
         }
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp += 4;
         mstate.esp += 4;
         mstate.gworker = caller;
      }
   }
}

