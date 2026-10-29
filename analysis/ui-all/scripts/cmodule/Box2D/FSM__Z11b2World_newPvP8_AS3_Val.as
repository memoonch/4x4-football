package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.system.*;
   import flash.text.*;
   import flash.utils.*;
   
   public final class FSM__Z11b2World_newPvP8_AS3_Val extends Machine
   {
      
      public static const intRegCount:int = 11;
      
      public static const NumberRegCount:int = 2;
      
      public var i10:int;
      
      public var f0:Number;
      
      public var f1:Number;
      
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
      
      public function FSM__Z11b2World_newPvP8_AS3_Val()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__Z11b2World_newPvP8_AS3_Val = null;
         _loc1_ = new FSM__Z11b2World_newPvP8_AS3_Val();
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
               mstate.esp -= 28;
               this.i0 = cmodule.Box2D.__2E_str108;
               mstate.esp -= 24;
               this.i1 = li32(mstate.ebp + 12);
               this.i2 = mstate.ebp + -4;
               this.i3 = mstate.ebp + -24;
               this.i4 = mstate.ebp + -16;
               this.i5 = mstate.ebp + -28;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               si32(this.i5,mstate.esp + 8);
               si32(this.i4,mstate.esp + 12);
               si32(this.i3,mstate.esp + 16);
               si32(this.i2,mstate.esp + 20);
               state = 1;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_ArrayValue]();
               return;
            case 1:
               mstate.esp += 24;
               this.f0 = lf64(mstate.ebp + -24);
               this.f1 = lf64(mstate.ebp + -16);
               mstate.esp -= 4;
               this.i0 = 102996;
               si32(this.i0,mstate.esp);
               state = 2;
               mstate.esp -= 4;
               FSM__Znwm.start();
               return;
            case 2:
               this.i0 = mstate.eax;
               mstate.esp += 4;
               this.i1 = li32(mstate.ebp + -4);
               this.i2 = 128;
               si32(this.i2,this.i0 + 8);
               this.i2 = 0;
               si32(this.i2,this.i0 + 4);
               mstate.esp -= 8;
               this.i3 = 1024;
               si32(this.i2,mstate.esp);
               si32(this.i3,mstate.esp + 4);
               this.i1 = this.i1 == 1 ? 1 : 0;
               state = 3;
               mstate.esp -= 4;
               FSM_pubrealloc.start();
               return;
            case 3:
               this.i2 = mstate.eax;
               mstate.esp += 8;
               this.i1 &= 1;
               this.f1 = this.f1;
               this.f0 = this.f0;
               this.i3 = this.i0;
               this.i4 = this.i0;
               this.i5 = 0;
               si32(this.i2,this.i0);
               this.i6 = 1024;
               cmodule.Box2D.memset(this.i2,this.i5,this.i6);
               this.i2 = this.i0 + 12;
               this.i6 = 56;
               cmodule.Box2D.memset(this.i2,this.i5,this.i6);
               this.i2 = li8(cmodule.Box2D.__ZN16b2BlockAllocator28s_blockSizeLookupInitializedE_2E_b);
               if(this.i2 == 0)
               {
                  this.i2 = cmodule.Box2D.__ZN16b2BlockAllocator12s_blockSizesE;
                  this.i5 = 1;
                  this.i6 = 0;
                  this.i7 = this.i6;
                  while(true)
                  {
                     this.i8 = this.i2;
                     this.i2 = this.i6;
                     this.i9 = this.i7;
                     this.i7 = this.i8;
                     if(this.i5 > 640)
                     {
                        break loop3;
                     }
                     if(this.i2 > 13)
                     {
                        break;
                     }
                     this.i6 = cmodule.Box2D.__ZN16b2BlockAllocator17s_blockSizeLookupE;
                     this.i7 = li32(this.i7);
                     while(this.i7 >= this.i5)
                     {
                        this.i10 = this.i6 + this.i5;
                        si8(this.i9,this.i10);
                        this.i5 += 1;
                        if(this.i5 > 640)
                        {
                           break loop3;
                        }
                     }
                     this.i6 = cmodule.Box2D.__ZN16b2BlockAllocator17s_blockSizeLookupE;
                     this.i7 = this.i9 + 1;
                     this.i6 += this.i5;
                     si8(this.i7,this.i6);
                     this.i6 = this.i8 + 4;
                     this.i8 = this.i2 + 1;
                     this.i5 += 1;
                     this.i2 = this.i6;
                     this.i6 = this.i8;
                  }
                  this.i0 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i1 = cmodule.Box2D.__2E_str1670;
                  this.i3 = cmodule.Box2D.__2E_str77284;
                  this.i4 = cmodule.Box2D.__ZZN16b2BlockAllocatorC4EvE8__func__;
                  this.i2 = cmodule.Box2D.__2E_str76283;
                  this.i5 = 73;
                  this.i0 += 176;
                  si32(this.i0,mstate.esp);
                  si32(this.i1,mstate.esp + 4);
                  si32(this.i3,mstate.esp + 8);
                  si32(this.i4,mstate.esp + 12);
                  si32(this.i2,mstate.esp + 16);
                  si32(this.i5,mstate.esp + 20);
                  state = 4;
                  mstate.esp -= 4;
                  FSM_fprintf.start();
                  return;
               }
               §§goto(addr04f9);
            case 5:
               break;
            case 4:
               mstate.esp += 24;
               state = 5;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 6:
               this.i2 = mstate.eax;
               mstate.esp += 8;
               this.i5 = this.i4 + 102884;
               this.i6 = 0;
               si32(this.i2,this.i4 + 102876);
               this.i7 = 576;
               cmodule.Box2D.memset(this.i2,this.i6,this.i7);
               this.i2 = li32(this.i5);
               this.i6 = li32(this.i4 + 102876);
               this.i7 = this.i4 + 102876;
               this.i8 = this.i2 + -1;
               if(this.i8 <= 0)
               {
                  this.i5 = this.i2;
               }
               else
               {
                  this.i2 = 0;
                  this.i8 = 20;
                  while(true)
                  {
                     this.i6 += this.i8;
                     this.i2 += 1;
                     si32(this.i2,this.i6);
                     this.i6 = li32(this.i5);
                     this.i9 = li32(this.i7);
                     this.i8 += 36;
                     this.i10 = this.i6 + -1;
                     if(this.i10 <= this.i2)
                     {
                        break;
                     }
                     this.i6 = this.i9;
                  }
                  this.i5 = this.i6;
                  this.i6 = this.i9;
               }
               this.i2 = this.i5;
               this.i5 = this.i6;
               this.i6 = -1;
               this.i2 *= 36;
               this.i2 += this.i5;
               si32(this.i6,this.i2 + -16);
               this.i2 = 0;
               si32(this.i2,this.i4 + 102888);
               si32(this.i2,this.i4 + 102892);
               si32(this.i2,this.i4 + 102896);
               si32(this.i2,this.i4 + 102900);
               this.i5 = 16;
               si32(this.i5,this.i4 + 102920);
               si32(this.i2,this.i4 + 102924);
               mstate.esp -= 8;
               this.i5 = 192;
               si32(this.i2,mstate.esp);
               si32(this.i5,mstate.esp + 4);
               state = 7;
               mstate.esp -= 4;
               FSM_pubrealloc.start();
               return;
            case 7:
               this.i2 = mstate.eax;
               mstate.esp += 8;
               this.i5 = 16;
               si32(this.i2,this.i4 + 102916);
               si32(this.i5,this.i4 + 102908);
               this.i2 = 0;
               si32(this.i2,this.i4 + 102912);
               mstate.esp -= 8;
               this.i5 = 64;
               si32(this.i2,mstate.esp);
               si32(this.i5,mstate.esp + 4);
               state = 8;
               mstate.esp -= 4;
               FSM_pubrealloc.start();
               return;
            case 8:
               this.i2 = mstate.eax;
               mstate.esp += 8;
               this.i5 = 0;
               si32(this.i2,this.i4 + 102904);
               si32(this.i5,this.i4 + 102932);
               si32(this.i5,this.i4 + 102936);
               this.i2 = cmodule.Box2D._b2_defaultFilter;
               si32(this.i2,this.i4 + 102940);
               this.i2 = cmodule.Box2D._b2_defaultListener;
               si32(this.i2,this.i4 + 102944);
               si32(this.i5,this.i4 + 102980);
               si32(this.i5,this.i4 + 102984);
               si32(this.i5,this.i4 + 102952);
               si32(this.i5,this.i4 + 102956);
               si32(this.i5,this.i4 + 102960);
               si32(this.i5,this.i4 + 102964);
               this.i2 = 1;
               si8(this.i2,this.i4 + 102992);
               si8(this.i2,this.i4 + 102993);
               si8(this.i5,this.i4 + 102994);
               si8(this.i2,this.i4 + 102995);
               si8(this.i1,this.i4 + 102976);
               sf32(this.f1,this.i4 + 102968);
               sf32(this.f0,this.i4 + 102972);
               this.i1 = 4;
               si32(this.i1,this.i4 + 102868);
               si32(this.i5,this.i4 + 102988);
               si32(this.i3,this.i4 + 102948);
               mstate.esp -= 4;
               this.i1 = 12;
               si32(this.i1,mstate.esp);
               this.i1 = cmodule.Box2D.__ZTV13WorldListener;
               state = 9;
               mstate.esp -= 4;
               FSM__Znwm.start();
               return;
            case 9:
               this.i2 = mstate.eax;
               mstate.esp += 4;
               this.i3 = this.i1 + 8;
               si32(this.i3,this.i2);
               this.i1 += 48;
               si32(this.i1,this.i2 + 4);
               si32(this.i2,this.i4 + 102944);
               this.i1 = this.i4 + 102980;
               if(this.i2 == 0)
               {
                  this.i3 = 0;
               }
               else
               {
                  this.i3 = this.i2 + 4;
               }
               si32(this.i3,this.i1);
               this.i1 = li32(mstate.ebp + -28);
               si32(this.i1,this.i2 + 8);
               this.i1 = li32(cmodule.Box2D._as3_ptr);
               mstate.esp -= 4;
               si32(this.i1,mstate.esp);
               state = 10;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Release]();
               return;
            case 10:
               mstate.esp += 4;
               mstate.esp -= 4;
               si32(this.i0,mstate.esp);
               state = 11;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Ptr]();
               return;
            case 11:
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
               throw "Invalid state in __Z11b2World_newPvP8_AS3_Val";
         }
         this.i2 = 1;
         si8(this.i2,cmodule.Box2D.__ZN16b2BlockAllocator28s_blockSizeLookupInitializedE_2E_b);
         addr04f9:
         this.i2 = 0;
         si32(this.i2,this.i4 + 102468);
         si32(this.i2,this.i4 + 102472);
         si32(this.i2,this.i4 + 102476);
         si32(this.i2,this.i4 + 102864);
         this.i5 = -1;
         si32(this.i5,this.i4 + 102872);
         this.i5 = 16;
         si32(this.i5,this.i4 + 102884);
         si32(this.i2,this.i4 + 102880);
         mstate.esp -= 8;
         this.i5 = 576;
         si32(this.i2,mstate.esp);
         si32(this.i5,mstate.esp + 4);
         state = 6;
         mstate.esp -= 4;
         FSM_pubrealloc.start();
      }
   }
}

