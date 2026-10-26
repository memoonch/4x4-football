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
   
   public final class FSM__ZN9b2Fixture7DestroyEP16b2BlockAllocator extends Machine
   {
      
      public static const intRegCount:int = 6;
      
      public static const NumberRegCount:int = 0;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public function FSM__ZN9b2Fixture7DestroyEP16b2BlockAllocator()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZN9b2Fixture7DestroyEP16b2BlockAllocator = null;
         _loc1_ = new FSM__ZN9b2Fixture7DestroyEP16b2BlockAllocator();
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
               this.i1 = li32(mstate.ebp + 12);
               this.i2 = li32(this.i0 + 32);
               if(this.i2 != 0)
               {
                  this.i0 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i1 = cmodule.Box2D.__2E_str1670;
                  this.i2 = cmodule.Box2D.__2E_str122315;
                  this.i3 = cmodule.Box2D.__ZZN9b2Contact7DestroyEPS_P16b2BlockAllocatorE8__func__;
                  this.i4 = cmodule.Box2D.__2E_str121314;
                  this.i5 = 80;
                  break;
               }
               this.i2 = li32(this.i0 + 16);
               this.i3 = li32(this.i2);
               this.i3 = li32(this.i3 + 12);
               mstate.esp -= 4;
               si32(this.i2,mstate.esp);
               state = 1;
               mstate.esp -= 4;
               mstate.funcs[this.i3]();
               return;
               break;
            case 1:
               this.i2 = mstate.eax;
               mstate.esp += 4;
               this.i3 = li32(this.i0 + 28);
               this.i4 = this.i0 + 28;
               this.i2 *= 28;
               this.i0 += 16;
               if(this.i2 != 0)
               {
                  if(this.i2 <= 0)
                  {
                     this.i0 = cmodule.Box2D.___sF;
                     mstate.esp -= 24;
                     this.i1 = cmodule.Box2D.__2E_str1670;
                     this.i2 = cmodule.Box2D.__2E_str80287;
                     this.i3 = cmodule.Box2D.__ZZN16b2BlockAllocator4FreeEPviE8__func__;
                     this.i4 = cmodule.Box2D.__2E_str76283;
                     this.i5 = 164;
                     break;
                  }
                  if(this.i2 >= 641)
                  {
                     this.i2 = 0;
                     mstate.esp -= 8;
                     si32(this.i3,mstate.esp);
                     si32(this.i2,mstate.esp + 4);
                     state = 2;
                     mstate.esp -= 4;
                     FSM_pubrealloc.start();
                     return;
                  }
                  this.i5 = cmodule.Box2D.__ZN16b2BlockAllocator17s_blockSizeLookupE;
                  this.i2 = this.i5 + this.i2;
                  this.i2 = li8(this.i2);
                  if(uint(this.i2) >= uint(14))
                  {
                     addr0282:
                     this.i0 = cmodule.Box2D.___sF;
                     mstate.esp -= 24;
                     this.i1 = cmodule.Box2D.__2E_str1670;
                     this.i2 = cmodule.Box2D.__2E_str81288;
                     this.i3 = cmodule.Box2D.__ZZN16b2BlockAllocator4FreeEPviE8__func__;
                     this.i4 = cmodule.Box2D.__2E_str76283;
                     this.i5 = 173;
                     break;
                  }
                  this.i2 &= 255;
                  this.i2 <<= 2;
                  this.i2 = this.i1 + this.i2;
                  this.i5 = li32(this.i2 + 12);
                  si32(this.i5,this.i3);
                  si32(this.i3,this.i2 + 12);
               }
               addr0309:
               this.i2 = 0;
               si32(this.i2,this.i4);
               this.i2 = li32(this.i0);
               this.i3 = li32(this.i2 + 4);
               if(this.i3 <= 1)
               {
                  if(this.i3 == 0)
                  {
                     this.i3 = li32(this.i2);
                     this.i3 = li32(this.i3);
                     mstate.esp -= 4;
                     si32(this.i2,mstate.esp);
                     state = 5;
                     mstate.esp -= 4;
                     mstate.funcs[this.i3]();
                     return;
                  }
                  if(this.i3 == 1)
                  {
                     this.i3 = li32(this.i2);
                     this.i3 = li32(this.i3);
                     mstate.esp -= 4;
                     si32(this.i2,mstate.esp);
                     state = 3;
                     mstate.esp -= 4;
                     mstate.funcs[this.i3]();
                     return;
                  }
               }
               else
               {
                  if(this.i3 == 2)
                  {
                     this.i3 = li32(this.i2);
                     this.i3 = li32(this.i3);
                     mstate.esp -= 4;
                     si32(this.i2,mstate.esp);
                     state = 6;
                     mstate.esp -= 4;
                     mstate.funcs[this.i3]();
                     return;
                  }
                  if(this.i3 == 3)
                  {
                     this.i3 = li32(this.i2);
                     this.i3 = li32(this.i3);
                     mstate.esp -= 4;
                     si32(this.i2,mstate.esp);
                     state = 4;
                     mstate.esp -= 4;
                     mstate.funcs[this.i3]();
                     return;
                  }
               }
               this.i0 = cmodule.Box2D.___sF;
               mstate.esp -= 24;
               this.i1 = cmodule.Box2D.__2E_str1670;
               this.i2 = cmodule.Box2D.__2E_str46253;
               this.i3 = cmodule.Box2D.__ZZN9b2Contact7DestroyEPS_P16b2BlockAllocatorE8__func__;
               this.i4 = cmodule.Box2D.__2E_str121314;
               this.i5 = 123;
               break;
            case 2:
               this.i2 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr0309);
            case 3:
               mstate.esp += 4;
               this.i3 = li8(cmodule.Box2D.__ZN16b2BlockAllocator17s_blockSizeLookupE + 52);
               if(uint(this.i3) >= uint(14))
               {
                  §§goto(addr0282);
                  addr03e0:
                  addr0510:
               }
               else
               {
                  addr0519:
                  this.i4 = 0;
                  this.i3 &= 255;
                  this.i3 <<= 2;
                  this.i1 += this.i3;
                  this.i3 = li32(this.i1 + 12);
                  si32(this.i3,this.i2);
                  si32(this.i2,this.i1 + 12);
                  si32(this.i4,this.i0);
                  mstate.esp = mstate.ebp;
                  mstate.ebp = li32(mstate.esp);
                  mstate.esp += 4;
                  mstate.esp += 4;
                  mstate.gworker = caller;
                  return;
                  addr0515:
               }
               break;
            case 4:
               mstate.esp += 4;
               this.i3 = li8(cmodule.Box2D.__ZN16b2BlockAllocator17s_blockSizeLookupE + 24);
               if(uint(this.i3) >= uint(14))
               {
                  §§goto(addr03e0);
                  addr0634:
               }
               else
               {
                  §§goto(addr0515);
                  addr063c:
               }
               break;
            case 5:
               mstate.esp += 4;
               this.i3 = li8(cmodule.Box2D.__ZN16b2BlockAllocator17s_blockSizeLookupE + 24);
               if(uint(this.i3) >= uint(14))
               {
                  §§goto(addr0510);
               }
               else
               {
                  §§goto(addr0519);
               }
            case 6:
               mstate.esp += 4;
               this.i3 = li8(cmodule.Box2D.__ZN16b2BlockAllocator17s_blockSizeLookupE + 156);
               if(uint(this.i3) >= uint(14))
               {
                  §§goto(addr0634);
               }
               else
               {
                  §§goto(addr063c);
               }
            case 7:
               mstate.esp += 24;
               state = 8;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            default:
               throw "Invalid state in __ZN9b2Fixture7DestroyEP16b2BlockAllocator";
         }
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
      }
   }
}

