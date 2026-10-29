package cmodule.Box2D
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZN16b2BlockAllocator8AllocateEi extends Machine
   {
      
      public static const intRegCount:int = 9;
      
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
      
      public function FSM__ZN16b2BlockAllocator8AllocateEi()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZN16b2BlockAllocator8AllocateEi = null;
         _loc1_ = new FSM__ZN16b2BlockAllocator8AllocateEi();
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
               if(this.i1 == 0)
               {
                  this.i0 = 0;
                  addr069f:
                  mstate.eax = this.i0;
                  break;
               }
               if(this.i1 <= 0)
               {
                  this.i0 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i1 = cmodule.Box2D.__2E_str1670;
                  this.i2 = cmodule.Box2D.__2E_str80287;
                  this.i3 = cmodule.Box2D.__ZZN16b2StackAllocator8AllocateEiE8__func__;
                  this.i4 = cmodule.Box2D.__2E_str76283;
                  this.i5 = 104;
               }
               else
               {
                  if(this.i1 >= 641)
                  {
                     this.i0 = 0;
                     mstate.esp -= 8;
                     si32(this.i0,mstate.esp);
                     si32(this.i1,mstate.esp + 4);
                     state = 1;
                     mstate.esp -= 4;
                     FSM_pubrealloc.start();
                     return;
                  }
                  this.i2 = cmodule.Box2D.__ZN16b2BlockAllocator17s_blockSizeLookupE;
                  this.i1 = this.i2 + this.i1;
                  this.i1 = li8(this.i1);
                  if(uint(this.i1) >= uint(14))
                  {
                     this.i0 = cmodule.Box2D.___sF;
                     mstate.esp -= 24;
                     this.i1 = cmodule.Box2D.__2E_str1670;
                     this.i2 = cmodule.Box2D.__2E_str81288;
                     this.i3 = cmodule.Box2D.__ZZN16b2StackAllocator8AllocateEiE8__func__;
                     this.i4 = cmodule.Box2D.__2E_str76283;
                     this.i5 = 112;
                  }
                  else
                  {
                     addr0262:
                     this.i2 = this.i1 << 2;
                     this.i2 = this.i0 + this.i2;
                     this.i3 = li32(this.i2 + 12);
                     this.i2 += 12;
                     if(this.i3 != 0)
                     {
                        this.i0 = li32(this.i3);
                        si32(this.i0,this.i2);
                        mstate.eax = this.i3;
                        break;
                     }
                     this.i3 = li32(this.i0 + 4);
                     this.i4 = li32(this.i0 + 8);
                     this.i5 = this.i0 + 8;
                     this.i6 = this.i0 + 4;
                     if(this.i3 == this.i4)
                     {
                        this.i7 = 0;
                        this.i4 += 128;
                        this.i8 = li32(this.i0);
                        si32(this.i4,this.i5);
                        mstate.esp -= 8;
                        this.i4 <<= 3;
                        si32(this.i7,mstate.esp);
                        si32(this.i4,mstate.esp + 4);
                        state = 4;
                        mstate.esp -= 4;
                        FSM_pubrealloc.start();
                        return;
                     }
                     §§goto(addr0454);
                  }
               }
               §§goto(addr01b6);
            case 3:
               §§goto(addr0262);
            case 1:
               this.i0 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr069f);
            case 2:
               mstate.esp += 24;
               state = 3;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 4:
               this.i4 = mstate.eax;
               mstate.esp += 8;
               si32(this.i4,this.i0);
               this.i3 <<= 3;
               cmodule.Box2D.memcpy(this.i4,this.i8,this.i3);
               this.i3 = li32(this.i6);
               this.i4 = li32(this.i0);
               this.i3 <<= 3;
               this.i3 = this.i4 + this.i3;
               this.i4 = 1024;
               cmodule.Box2D.memset(this.i3,this.i7,this.i4);
               mstate.esp -= 8;
               si32(this.i8,mstate.esp);
               si32(this.i7,mstate.esp + 4);
               state = 5;
               mstate.esp -= 4;
               FSM_pubrealloc.start();
               return;
            case 5:
               this.i3 = mstate.eax;
               mstate.esp += 8;
               addr0454:
               this.i3 = 4096;
               this.i4 = li32(this.i6);
               this.i0 = li32(this.i0);
               mstate.esp -= 8;
               this.i5 = 0;
               si32(this.i5,mstate.esp);
               si32(this.i3,mstate.esp + 4);
               this.i3 = this.i4 << 3;
               state = 6;
               mstate.esp -= 4;
               FSM_pubrealloc.start();
               return;
            case 6:
               this.i4 = mstate.eax;
               this.i0 += this.i3;
               mstate.esp += 8;
               this.i3 = cmodule.Box2D.__ZN16b2BlockAllocator12s_blockSizesE;
               this.i1 <<= 2;
               si32(this.i4,this.i0 + 4);
               this.i1 = this.i3 + this.i1;
               this.i1 = li32(this.i1);
               si32(this.i1,this.i0);
               this.i3 = 4096 / this.i1;
               this.i0 += 4;
               this.i4 = this.i3 * this.i1;
               if(this.i4 > 4096)
               {
                  this.i0 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i1 = cmodule.Box2D.__2E_str1670;
                  this.i2 = cmodule.Box2D.__2E_str82289;
                  this.i3 = cmodule.Box2D.__ZZN16b2StackAllocator8AllocateEiE8__func__;
                  this.i4 = cmodule.Box2D.__2E_str76283;
                  this.i5 = 140;
                  addr01b6:
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
               }
               this.i4 = 0;
               this.i3 += -1;
               this.i5 = this.i4;
               while(true)
               {
                  this.i7 = this.i5;
                  this.i5 = this.i4;
                  this.i8 = li32(this.i0);
                  this.i4 = this.i8;
                  if(this.i3 <= this.i5)
                  {
                     break;
                  }
                  this.i8 = this.i1 + this.i7;
                  this.i7 = this.i4 + this.i7;
                  this.i4 += this.i8;
                  si32(this.i4,this.i7);
                  this.i4 = this.i5 + 1;
                  this.i5 = this.i8;
               }
               this.i4 = 0;
               this.i1 = this.i3 * this.i1;
               this.i1 = this.i8 + this.i1;
               si32(this.i4,this.i1);
               this.i1 = li32(this.i0);
               this.i1 = li32(this.i1);
               si32(this.i1,this.i2);
               this.i1 = li32(this.i6);
               this.i1 += 1;
               si32(this.i1,this.i6);
               this.i0 = li32(this.i0);
               §§goto(addr069f);
               break;
            default:
               throw "Invalid state in __ZN16b2BlockAllocator8AllocateEi";
         }
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp += 4;
         mstate.esp += 4;
         mstate.gworker = caller;
      }
   }
}

