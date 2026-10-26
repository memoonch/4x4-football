package cmodule.Box2D
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.system.*;
   import flash.text.*;
   import flash.utils.*;
   
   public final class FSM__Z14b2World_deletePvP8_AS3_Val extends Machine
   {
      
      public static const intRegCount:int = 7;
      
      public static const NumberRegCount:int = 0;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public var i6:int;
      
      public function FSM__Z14b2World_deletePvP8_AS3_Val()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__Z14b2World_deletePvP8_AS3_Val = null;
         _loc1_ = new FSM__Z14b2World_deletePvP8_AS3_Val();
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
               mstate.esp -= 4;
               this.i0 = cmodule.Box2D.__2E_str26233;
               mstate.esp -= 12;
               this.i1 = li32(mstate.ebp + 12);
               this.i2 = mstate.ebp + -4;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               si32(this.i2,mstate.esp + 8);
               state = 1;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_ArrayValue]();
               return;
            case 1:
               mstate.esp += 12;
               this.i0 = li32(mstate.ebp + -4);
               this.i0 = li32(this.i0 + 102952);
               if(this.i0 != 0)
               {
                  addr0137:
                  this.i1 = li32(this.i0 + 108);
                  if(this.i1 != 0)
                  {
                     §§goto(addr0153);
                  }
                  else
                  {
                     §§goto(addr01cc);
                  }
               }
               else
               {
                  addr0246:
                  this.i0 = li32(mstate.ebp + -4);
                  this.i0 = li32(this.i0 + 102956);
                  if(this.i0 != 0)
                  {
                     §§goto(addr0271);
                  }
                  else
                  {
                     §§goto(addr02ea);
                  }
               }
               break;
            case 2:
               mstate.esp += 4;
               this.i1 = li32(this.i1 + 8);
               if(this.i1 != 0)
               {
                  addr0153:
                  this.i2 = li32(this.i1 + 44);
                  mstate.esp -= 4;
                  si32(this.i2,mstate.esp);
                  state = 2;
                  mstate.esp -= 4;
                  mstate.funcs[cmodule.Box2D._AS3_Release]();
                  return;
               }
               addr01cc:
               this.i1 = li32(this.i0 + 152);
               mstate.esp -= 4;
               si32(this.i1,mstate.esp);
               state = 3;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Release]();
               return;
               break;
            case 3:
               mstate.esp += 4;
               this.i0 = li32(this.i0 + 104);
               if(this.i0 != 0)
               {
                  §§goto(addr0137);
               }
               else
               {
                  §§goto(addr0246);
               }
            case 4:
               mstate.esp += 4;
               this.i0 = li32(this.i0 + 12);
               if(this.i0 != 0)
               {
                  addr0271:
                  this.i1 = li32(this.i0 + 60);
                  mstate.esp -= 4;
                  si32(this.i1,mstate.esp);
                  state = 4;
                  mstate.esp -= 4;
                  mstate.funcs[cmodule.Box2D._AS3_Release]();
                  return;
               }
               addr02ea:
               this.i0 = li32(mstate.ebp + -4);
               this.i0 = li32(this.i0 + 102980);
               if(this.i0 == 0)
               {
                  this.i0 = 0;
               }
               else
               {
                  this.i0 += -4;
               }
               this.i1 = li32(this.i0 + 8);
               mstate.esp -= 4;
               si32(this.i1,mstate.esp);
               state = 5;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Release]();
               return;
               break;
            case 5:
               mstate.esp += 4;
               if(this.i0 != 0)
               {
                  this.i1 = li32(this.i0);
                  this.i1 = li32(this.i1 + 4);
                  mstate.esp -= 4;
                  si32(this.i0,mstate.esp);
                  state = 6;
                  mstate.esp -= 4;
                  mstate.funcs[this.i1]();
                  return;
               }
               addr03f6:
               this.i0 = li32(mstate.ebp + -4);
               if(this.i0 != 0)
               {
                  this.i1 = li32(this.i0 + 102952);
                  if(this.i1 != 0)
                  {
                     this.i2 = this.i0;
                     addr04d1:
                     this.i3 = this.i1;
                     this.i1 = li32(this.i3 + 104);
                     this.i3 = li32(this.i3 + 108);
                     if(this.i3 == 0)
                     {
                        while(true)
                        {
                           if(this.i1 == 0)
                           {
                              §§goto(addr0500);
                           }
                           §§goto(addr04d1);
                        }
                        addr0751:
                        this.i1 = li32(this.i0 + 102864);
                        if(this.i1 != 0)
                        {
                           this.i0 = cmodule.Box2D.___sF;
                           mstate.esp -= 24;
                           this.i1 = cmodule.Box2D.__2E_str1670;
                           this.i2 = cmodule.Box2D.__2E_str12219;
                           this.i3 = cmodule.Box2D.__ZZN16b2StackAllocatorD4EvE8__func__;
                           this.i4 = cmodule.Box2D.__2E_str10217;
                           this.i5 = 33;
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
                        }
                        addr0852:
                        this.i1 = li32(this.i0 + 4);
                        this.i2 = li32(this.i0);
                        this.i3 = this.i0 + 4;
                        this.i4 = this.i0;
                        if(this.i1 <= 0)
                        {
                           break;
                        }
                        this.i1 = 0;
                        this.i5 = 4;
                        §§goto(addr089a);
                        addr04c6:
                     }
                     §§goto(addr0444);
                  }
                  addr0500:
                  this.i1 = 0;
                  this.i2 = li32(this.i0 + 102904);
                  mstate.esp -= 8;
                  si32(this.i2,mstate.esp);
                  si32(this.i1,mstate.esp + 4);
                  state = 8;
                  mstate.esp -= 4;
                  FSM_pubrealloc.start();
                  return;
               }
               §§goto(addr0a3e);
               break;
            case 6:
               mstate.esp += 4;
               §§goto(addr03f6);
            case 7:
               mstate.esp += 8;
               if(this.i3 == 0)
               {
                  §§goto(addr04c6);
               }
               addr0444:
               this.i4 = this.i3;
               this.i5 = 0;
               this.i3 = li32(this.i4 + 8);
               si32(this.i5,this.i4 + 32);
               mstate.esp -= 8;
               si32(this.i4,mstate.esp);
               si32(this.i2,mstate.esp + 4);
               state = 7;
               mstate.esp -= 4;
               FSM__ZN9b2Fixture7DestroyEP16b2BlockAllocator.start();
               return;
            case 8:
               this.i2 = mstate.eax;
               mstate.esp += 8;
               this.i2 = li32(this.i0 + 102916);
               mstate.esp -= 8;
               si32(this.i2,mstate.esp);
               si32(this.i1,mstate.esp + 4);
               state = 9;
               mstate.esp -= 4;
               FSM_pubrealloc.start();
               return;
            case 9:
               this.i2 = mstate.eax;
               mstate.esp += 8;
               this.i2 = li32(this.i0 + 102876);
               mstate.esp -= 8;
               si32(this.i2,mstate.esp);
               si32(this.i1,mstate.esp + 4);
               state = 10;
               mstate.esp -= 4;
               FSM_pubrealloc.start();
               return;
            case 10:
               this.i1 = mstate.eax;
               mstate.esp += 8;
               this.i1 = li32(this.i0 + 102468);
               if(this.i1 != 0)
               {
                  this.i0 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i1 = cmodule.Box2D.__2E_str1670;
                  this.i2 = cmodule.Box2D.__2E_str11218;
                  this.i3 = cmodule.Box2D.__ZZN16b2StackAllocatorD4EvE8__func__;
                  this.i4 = cmodule.Box2D.__2E_str10217;
                  this.i5 = 32;
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
               }
            case 12:
               §§goto(addr0751);
            case 14:
               §§goto(addr0852);
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
               this.i2 = mstate.eax;
               mstate.esp += 8;
               this.i2 = li32(this.i3);
               this.i6 = li32(this.i4);
               this.i5 += 8;
               this.i1 += 1;
               if(this.i2 <= this.i1)
               {
                  this.i2 = this.i6;
                  break;
               }
               this.i2 = this.i6;
               addr089a:
               this.i6 = 0;
               this.i2 += this.i5;
               this.i2 = li32(this.i2);
               mstate.esp -= 8;
               si32(this.i2,mstate.esp);
               si32(this.i6,mstate.esp + 4);
               state = 15;
               mstate.esp -= 4;
               FSM_pubrealloc.start();
               return;
               break;
            case 16:
               this.i1 = mstate.eax;
               mstate.esp += 8;
               if(this.i0 != 0)
               {
                  this.i1 = 0;
                  mstate.esp -= 8;
                  si32(this.i0,mstate.esp);
                  si32(this.i1,mstate.esp + 4);
                  state = 17;
                  mstate.esp -= 4;
                  FSM_pubrealloc.start();
                  return;
               }
               §§goto(addr0a3e);
               break;
            case 17:
               this.i0 = mstate.eax;
               mstate.esp += 8;
               addr0a3e:
               state = 18;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Null]();
               return;
            case 18:
               this.i0 = mstate.eax;
               mstate.eax = this.i0;
               mstate.esp = mstate.ebp;
               mstate.ebp = li32(mstate.esp);
               mstate.esp += 4;
               mstate.esp += 4;
               mstate.gworker = caller;
               return;
            default:
               throw "Invalid state in __Z14b2World_deletePvP8_AS3_Val";
         }
         this.i1 = this.i2;
         this.i2 = 0;
         mstate.esp -= 8;
         si32(this.i1,mstate.esp);
         si32(this.i2,mstate.esp + 4);
         state = 16;
         mstate.esp -= 4;
         FSM_pubrealloc.start();
      }
   }
}

