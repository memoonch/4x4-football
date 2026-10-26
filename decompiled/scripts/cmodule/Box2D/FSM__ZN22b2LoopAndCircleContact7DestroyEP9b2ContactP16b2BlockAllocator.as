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
   
   public final class FSM__ZN22b2LoopAndCircleContact7DestroyEP9b2ContactP16b2BlockAllocator extends Machine
   {
      
      public static const intRegCount:int = 6;
      
      public static const NumberRegCount:int = 0;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public function FSM__ZN22b2LoopAndCircleContact7DestroyEP9b2ContactP16b2BlockAllocator()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZN22b2LoopAndCircleContact7DestroyEP9b2ContactP16b2BlockAllocator = null;
         _loc1_ = new FSM__ZN22b2LoopAndCircleContact7DestroyEP9b2ContactP16b2BlockAllocator();
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
               this.i1 = li32(this.i0);
               this.i1 = li32(this.i1 + 4);
               mstate.esp -= 4;
               si32(this.i0,mstate.esp);
               state = 1;
               mstate.esp -= 4;
               mstate.funcs[this.i1]();
               return;
            case 1:
               mstate.esp += 4;
               this.i1 = li8(cmodule.Box2D.__ZN16b2BlockAllocator17s_blockSizeLookupE + 148);
               this.i2 = li32(mstate.ebp + 12);
               if(uint(this.i1) >= uint(14))
               {
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
                  si32(this.i4,mstate.esp + 16);
                  si32(this.i5,mstate.esp + 20);
                  state = 2;
                  mstate.esp -= 4;
                  FSM_fprintf.start();
                  return;
               }
               break;
            case 3:
               break;
            case 2:
               mstate.esp += 24;
               state = 3;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            default:
               throw "Invalid state in __ZN22b2LoopAndCircleContact7DestroyEP9b2ContactP16b2BlockAllocator";
         }
         this.i1 &= 255;
         this.i1 <<= 2;
         this.i1 = this.i2 + this.i1;
         this.i2 = li32(this.i1 + 12);
         si32(this.i2,this.i0);
         si32(this.i0,this.i1 + 12);
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp += 4;
         mstate.esp += 4;
         mstate.gworker = caller;
      }
   }
}

