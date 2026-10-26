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
   
   public final class FSM__ZNK10__cxxabiv121__vmi_class_type_info20__do_find_public_srcEiPKvPKNS_17__class_type_infoES2_ extends Machine
   {
      
      public static const intRegCount:int = 12;
      
      public static const NumberRegCount:int = 0;
      
      public var i10:int;
      
      public var i11:int;
      
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
      
      public function FSM__ZNK10__cxxabiv121__vmi_class_type_info20__do_find_public_srcEiPKvPKNS_17__class_type_infoES2_()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZNK10__cxxabiv121__vmi_class_type_info20__do_find_public_srcEiPKvPKNS_17__class_type_infoES2_ = null;
         _loc1_ = new FSM__ZNK10__cxxabiv121__vmi_class_type_info20__do_find_public_srcEiPKvPKNS_17__class_type_infoES2_();
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
               mstate.esp -= 0;
               this.i0 = li32(mstate.ebp + 8);
               this.i1 = li32(mstate.ebp + 12);
               this.i2 = li32(mstate.ebp + 16);
               this.i3 = li32(mstate.ebp + 20);
               this.i4 = li32(mstate.ebp + 24);
               this.i5 = this.i0;
               while(true)
               {
                  if(this.i2 == this.i4)
                  {
                     this.i6 = li32(this.i0 + 4);
                     this.i7 = li32(this.i3 + 4);
                     if(this.i6 == this.i7)
                     {
                        this.i0 = 6;
                        break;
                     }
                  }
                  this.i0 = li32(this.i0 + 12);
                  if(this.i0 == 0)
                  {
                     addr00f4:
                     this.i0 = 1;
                     break;
                  }
                  this.i6 = this.i0 + -1;
                  this.i7 = this.i2;
                  if(this.i1 != -3)
                  {
                     this.i8 = -1;
                     this.i0 <<= 3;
                     this.i0 = this.i5 + this.i0;
                     this.i5 = this.i8;
                     this.i8 = li32(this.i0 + 12);
                     this.i9 = this.i8 & 2;
                     if(this.i9 == 0)
                     {
                        do
                        {
                           this.i0 += -8;
                           this.i5 += 1;
                           if(this.i6 == this.i5)
                           {
                              break loop3;
                           }
                           this.i8 = li32(this.i0 + 12);
                           this.i9 = this.i8 & 2;
                        }
                        while(this.i9 == 0);
                        addr0438:
                     }
                     this.i9 = this.i8 & 1;
                     this.i8 >>= 8;
                     if(this.i9 != 0)
                     {
                        this.i10 = li32(this.i7);
                        this.i8 = this.i10 + this.i8;
                        this.i8 = li32(this.i8);
                     }
                     this.i10 = li32(this.i0 + 8);
                     this.i11 = li32(this.i10);
                     this.i11 = li32(this.i11 + 32);
                     mstate.esp -= 20;
                     this.i8 = this.i2 + this.i8;
                     si32(this.i10,mstate.esp);
                     si32(this.i1,mstate.esp + 4);
                     si32(this.i8,mstate.esp + 8);
                     si32(this.i3,mstate.esp + 12);
                     si32(this.i4,mstate.esp + 16);
                     state = 2;
                     mstate.esp -= 4;
                     mstate.funcs[this.i11]();
                     return;
                  }
                  this.i7 = -1;
                  this.i0 <<= 3;
                  this.i0 = this.i5 + this.i0;
                  this.i5 = this.i7;
                  this.i7 = li32(this.i0 + 12);
                  this.i8 = this.i7 & 2;
                  if(this.i8 == 0)
                  {
                     do
                     {
                        this.i0 += -8;
                        this.i5 += 1;
                        if(this.i6 == this.i5)
                        {
                           break loop3;
                        }
                        this.i7 = li32(this.i0 + 12);
                        this.i8 = this.i7 & 2;
                     }
                     while(this.i8 == 0);
                     addr01ee:
                  }
                  this.i8 = this.i7 & 1;
                  if(this.i8 != 0)
                  {
                     do
                     {
                        §§goto(addr01ee);
                        this.i8 = this.i7 & 1;
                     }
                     while(this.i8 != 0);
                     addr01ed:
                  }
                  this.i9 = li32(this.i0 + 8);
                  this.i10 = li32(this.i9);
                  this.i10 = li32(this.i10 + 32);
                  this.i7 >>= 8;
                  mstate.esp -= 20;
                  this.i7 = this.i2 + this.i7;
                  si32(this.i9,mstate.esp);
                  si32(this.i1,mstate.esp + 4);
                  si32(this.i7,mstate.esp + 8);
                  si32(this.i3,mstate.esp + 12);
                  si32(this.i4,mstate.esp + 16);
                  state = 1;
                  mstate.esp -= 4;
                  mstate.funcs[this.i10]();
                  return;
               }
               §§goto(addr046e);
            case 1:
               this.i7 = mstate.eax;
               mstate.esp += 20;
               if(this.i7 >= 4)
               {
                  this.i0 = this.i7;
                  this.i1 = this.i8;
                  §§goto(addr0414);
               }
               else
               {
                  §§goto(addr01ed);
               }
            case 2:
               this.i8 = mstate.eax;
               mstate.esp += 20;
               if(this.i8 >= 4)
               {
                  this.i0 = this.i8;
                  this.i1 = this.i9;
                  addr0414:
                  this.i5 = this.i1;
                  this.i5 &= 255;
                  if(this.i5 != 0)
                  {
                     this.i0 |= 1;
                  }
                  addr046e:
                  mstate.eax = this.i0;
                  mstate.esp = mstate.ebp;
                  mstate.ebp = li32(mstate.esp);
                  mstate.esp += 4;
                  mstate.esp += 4;
                  mstate.gworker = caller;
                  return;
               }
               §§goto(addr0438);
               break;
            default:
               throw "Invalid state in __ZNK10__cxxabiv121__vmi_class_type_info20__do_find_public_srcEiPKvPKNS_17__class_type_infoES2_";
         }
         §§goto(addr00f4);
      }
   }
}

