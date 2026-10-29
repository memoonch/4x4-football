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
   
   public final class FSM__ZNK10__cxxabiv120__si_class_type_info12__do_dyncastEiNS_17__class_type_info10__sub_kindEPKS1_PKvS4_S6_RNS1_16__dyncast_resultE extends Machine
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
      
      public function FSM__ZNK10__cxxabiv120__si_class_type_info12__do_dyncastEiNS_17__class_type_info10__sub_kindEPKS1_PKvS4_S6_RNS1_16__dyncast_resultE()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZNK10__cxxabiv120__si_class_type_info12__do_dyncastEiNS_17__class_type_info10__sub_kindEPKS1_PKvS4_S6_RNS1_16__dyncast_resultE = null;
         _loc1_ = new FSM__ZNK10__cxxabiv120__si_class_type_info12__do_dyncastEiNS_17__class_type_info10__sub_kindEPKS1_PKvS4_S6_RNS1_16__dyncast_resultE();
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
               this.i1 = li32(mstate.ebp + 20);
               this.i2 = li32(this.i0 + 4);
               this.i3 = li32(this.i1 + 4);
               this.i4 = li32(mstate.ebp + 12);
               this.i5 = li32(mstate.ebp + 16);
               this.i6 = li32(mstate.ebp + 24);
               this.i7 = li32(mstate.ebp + 28);
               this.i8 = li32(mstate.ebp + 32);
               this.i9 = li32(mstate.ebp + 36);
               if(this.i2 != this.i3)
               {
                  if(this.i6 == this.i8)
                  {
                     this.i3 = li32(this.i7 + 4);
                     if(this.i2 == this.i3)
                     {
                        this.i0 = 0;
                        si32(this.i5,this.i9 + 8);
                        addr028f:
                        mstate.eax = this.i0;
                        break;
                     }
                  }
                  this.i0 = li32(this.i0 + 8);
                  this.i2 = li32(this.i0);
                  this.i2 = li32(this.i2 + 28);
                  mstate.esp -= 32;
                  si32(this.i0,mstate.esp);
                  si32(this.i4,mstate.esp + 4);
                  si32(this.i5,mstate.esp + 8);
                  si32(this.i1,mstate.esp + 12);
                  si32(this.i6,mstate.esp + 16);
                  si32(this.i7,mstate.esp + 20);
                  si32(this.i8,mstate.esp + 24);
                  si32(this.i9,mstate.esp + 28);
                  state = 1;
                  mstate.esp -= 4;
                  mstate.funcs[this.i2]();
                  return;
               }
               si32(this.i6,this.i9);
               si32(this.i5,this.i9 + 4);
               if(this.i4 >= 0)
               {
                  this.i0 = 0;
                  this.i1 = this.i6 + this.i4;
                  this.i1 = this.i1 == this.i8 ? 6 : 1;
                  si32(this.i1,this.i9 + 12);
               }
               else
               {
                  if(this.i4 == -2)
                  {
                     this.i0 = 1;
                     si32(this.i0,this.i9 + 12);
                  }
                  this.i0 = 0;
               }
               §§goto(addr028f);
            case 1:
               this.i5 = mstate.eax;
               mstate.esp += 32;
               mstate.eax = this.i5;
               break;
            default:
               throw "Invalid state in __ZNK10__cxxabiv120__si_class_type_info12__do_dyncastEiNS_17__class_type_info10__sub_kindEPKS1_PKvS4_S6_RNS1_16__dyncast_resultE";
         }
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp += 4;
         mstate.esp += 4;
         mstate.gworker = caller;
      }
   }
}

