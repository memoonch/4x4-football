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
   
   public final class FSM__ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PPv extends Machine
   {
      
      public static const intRegCount:int = 6;
      
      public static const NumberRegCount:int = 0;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public function FSM__ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PPv()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PPv = null;
         _loc1_ = new FSM__ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PPv();
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
               mstate.esp -= 16;
               this.i0 = 0;
               si32(this.i0,mstate.ebp + -16);
               si32(this.i0,mstate.ebp + -12);
               this.i1 = 16;
               si32(this.i1,mstate.ebp + -8);
               si32(this.i0,mstate.ebp + -4);
               this.i0 = li32(mstate.ebp + 8);
               this.i1 = li32(mstate.ebp + 16);
               this.i2 = li32(this.i0);
               this.i2 = li32(this.i2 + 24);
               this.i3 = li32(this.i1);
               mstate.esp -= 16;
               this.i4 = li32(mstate.ebp + 12);
               this.i5 = mstate.ebp + -16;
               si32(this.i0,mstate.esp);
               si32(this.i4,mstate.esp + 4);
               si32(this.i3,mstate.esp + 8);
               si32(this.i5,mstate.esp + 12);
               state = 1;
               mstate.esp -= 4;
               mstate.funcs[this.i2]();
               return;
            case 1:
               this.i0 = mstate.eax;
               mstate.esp += 16;
               this.i0 = li32(mstate.ebp + -12);
               this.i0 &= 6;
               if(this.i0 == 6)
               {
                  this.i0 = 1;
                  this.i2 = li32(this.i5);
                  si32(this.i2,this.i1);
               }
               else
               {
                  this.i0 = 0;
               }
               mstate.eax = this.i0;
               mstate.esp = mstate.ebp;
               mstate.ebp = li32(mstate.esp);
               mstate.esp += 4;
               mstate.esp += 4;
               mstate.gworker = caller;
               return;
            default:
               throw "Invalid state in __ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PPv";
         }
      }
   }
}

