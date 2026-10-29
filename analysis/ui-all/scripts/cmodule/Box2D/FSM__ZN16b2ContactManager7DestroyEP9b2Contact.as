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
   
   public final class FSM__ZN16b2ContactManager7DestroyEP9b2Contact extends Machine
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
      
      public function FSM__ZN16b2ContactManager7DestroyEP9b2Contact()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZN16b2ContactManager7DestroyEP9b2Contact = null;
         _loc1_ = new FSM__ZN16b2ContactManager7DestroyEP9b2Contact();
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
               this.i0 = li32(mstate.ebp + 12);
               this.i1 = li32(mstate.ebp + 8);
               this.i2 = li32(this.i0 + 48);
               this.i3 = li32(this.i0 + 52);
               this.i2 = li32(this.i2 + 12);
               this.i3 = li32(this.i3 + 12);
               this.i4 = li32(this.i1 + 72);
               this.i5 = this.i0 + 52;
               this.i6 = this.i0 + 48;
               if(this.i4 != 0)
               {
                  this.i7 = li32(this.i0 + 4);
                  this.i7 &= 2;
                  if(this.i7 != 0)
                  {
                     this.i7 = li32(this.i4);
                     this.i7 = li32(this.i7 + 12);
                     mstate.esp -= 8;
                     si32(this.i4,mstate.esp);
                     si32(this.i0,mstate.esp + 4);
                     state = 1;
                     mstate.esp -= 4;
                     mstate.funcs[this.i7]();
                     return;
                  }
               }
               addr0161:
               this.i4 = li32(this.i0 + 8);
               this.i7 = this.i0 + 8;
               if(this.i4 != 0)
               {
                  this.i8 = li32(this.i0 + 12);
                  si32(this.i8,this.i4 + 12);
               }
               this.i4 = li32(this.i0 + 12);
               this.i8 = this.i0 + 12;
               if(this.i4 != 0)
               {
                  this.i7 = li32(this.i7);
                  si32(this.i7,this.i4 + 8);
               }
               this.i4 = li32(this.i1 + 60);
               this.i7 = this.i1 + 60;
               if(this.i4 == this.i0)
               {
                  this.i4 = li32(this.i8);
                  si32(this.i4,this.i7);
               }
               this.i4 = li32(this.i0 + 24);
               this.i7 = this.i0 + 24;
               if(this.i4 != 0)
               {
                  this.i8 = li32(this.i0 + 28);
                  si32(this.i8,this.i4 + 12);
               }
               this.i4 = li32(this.i0 + 28);
               this.i8 = this.i0 + 28;
               if(this.i4 != 0)
               {
                  this.i7 = li32(this.i7);
                  si32(this.i7,this.i4 + 8);
               }
               this.i4 = li32(this.i2 + 120);
               this.i2 += 120;
               this.i7 = this.i0 + 16;
               if(this.i7 == this.i4)
               {
                  this.i4 = li32(this.i8);
                  si32(this.i4,this.i2);
               }
               this.i2 = li32(this.i0 + 40);
               this.i4 = this.i0 + 40;
               if(this.i2 != 0)
               {
                  this.i7 = li32(this.i0 + 44);
                  si32(this.i7,this.i2 + 12);
               }
               this.i2 = li32(this.i0 + 44);
               this.i7 = this.i0 + 44;
               if(this.i2 != 0)
               {
                  this.i4 = li32(this.i4);
                  si32(this.i4,this.i2 + 8);
               }
               this.i2 = li32(this.i3 + 120);
               this.i3 += 120;
               this.i4 = this.i0 + 32;
               if(this.i4 == this.i2)
               {
                  this.i2 = li32(this.i7);
                  si32(this.i2,this.i3);
               }
               this.i2 = li32(this.i1 + 76);
               this.i3 = li8(cmodule.Box2D.__ZN9b2Contact13s_initializedE_2E_b);
               if(this.i3 != 0)
               {
                  break;
               }
               this.i0 = cmodule.Box2D.___sF;
               mstate.esp -= 24;
               this.i1 = cmodule.Box2D.__2E_str1670;
               this.i2 = cmodule.Box2D.__2E_str70277;
               this.i5 = cmodule.Box2D.__ZZN9b2Contact7DestroyEPS_P16b2BlockAllocatorE8__func__;
               this.i6 = cmodule.Box2D.__2E_str17224;
               this.i3 = 103;
               this.i0 += 176;
               si32(this.i0,mstate.esp);
               si32(this.i1,mstate.esp + 4);
               si32(this.i2,mstate.esp + 8);
               si32(this.i5,mstate.esp + 12);
               si32(this.i6,mstate.esp + 16);
               si32(this.i3,mstate.esp + 20);
               §§goto(addr042f);
               break;
            case 1:
               mstate.esp += 8;
               §§goto(addr0161);
            case 3:
               break;
            case 2:
               mstate.esp += 24;
               state = 3;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 4:
               mstate.esp += 8;
               this.i0 = li32(this.i1 + 64);
               this.i0 += -1;
               si32(this.i0,this.i1 + 64);
               mstate.esp = mstate.ebp;
               mstate.ebp = li32(mstate.esp);
               mstate.esp += 4;
               mstate.esp += 4;
               mstate.gworker = caller;
               return;
            default:
               throw "Invalid state in __ZN16b2ContactManager7DestroyEP9b2Contact";
         }
         this.i3 = li32(this.i0 + 132);
         if(this.i3 >= 1)
         {
            this.i3 = li32(this.i6);
            this.i3 = li32(this.i3 + 12);
            this.i4 = li16(this.i3 + 4);
            this.i7 = this.i3 + 4;
            this.i8 = this.i4 & 2;
            if(this.i8 == 0)
            {
               this.i8 = 0;
               this.i4 |= 2;
               si16(this.i4,this.i7);
               si32(this.i8,this.i3 + 148);
            }
            this.i3 = li32(this.i5);
            this.i3 = li32(this.i3 + 12);
            this.i4 = li16(this.i3 + 4);
            this.i7 = this.i3 + 4;
            this.i8 = this.i4 & 2;
            if(this.i8 == 0)
            {
               this.i8 = 0;
               this.i4 |= 2;
               si16(this.i4,this.i7);
               si32(this.i8,this.i3 + 148);
            }
         }
         this.i3 = li32(this.i6);
         this.i4 = li32(this.i5);
         this.i3 = li32(this.i3 + 16);
         this.i4 = li32(this.i4 + 16);
         this.i3 = li32(this.i3 + 4);
         this.i4 = li32(this.i4 + 4);
         if(this.i4 <= 3)
         {
            if(this.i3 > -1)
            {
               this.i5 = cmodule.Box2D.__ZN9b2Contact11s_registersE;
               this.i3 *= 48;
               this.i4 *= 12;
               this.i3 = this.i5 + this.i3;
               this.i3 += this.i4;
               this.i3 = li32(this.i3 + 4);
               mstate.esp -= 8;
               si32(this.i0,mstate.esp);
               si32(this.i2,mstate.esp + 4);
               state = 4;
               mstate.esp -= 4;
               mstate.funcs[this.i3]();
               return;
            }
         }
         this.i0 = cmodule.Box2D.___sF;
         mstate.esp -= 24;
         this.i1 = cmodule.Box2D.__2E_str1670;
         this.i2 = cmodule.Box2D.__2E_str71278;
         this.i3 = cmodule.Box2D.__ZZN9b2Contact7DestroyEPS_P16b2BlockAllocatorE8__func__;
         this.i4 = cmodule.Box2D.__2E_str17224;
         this.i5 = 114;
         this.i0 += 176;
         si32(this.i0,mstate.esp);
         si32(this.i1,mstate.esp + 4);
         si32(this.i2,mstate.esp + 8);
         si32(this.i3,mstate.esp + 12);
         si32(this.i4,mstate.esp + 16);
         si32(this.i5,mstate.esp + 20);
         addr042f:
         state = 2;
         mstate.esp -= 4;
         FSM_fprintf.start();
      }
   }
}

