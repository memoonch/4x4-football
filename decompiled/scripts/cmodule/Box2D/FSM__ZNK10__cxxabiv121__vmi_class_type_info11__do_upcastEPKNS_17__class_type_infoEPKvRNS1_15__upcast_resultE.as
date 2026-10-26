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
   
   public final class FSM__ZNK10__cxxabiv121__vmi_class_type_info11__do_upcastEPKNS_17__class_type_infoEPKvRNS1_15__upcast_resultE extends Machine
   {
      
      public static const intRegCount:int = 24;
      
      public static const NumberRegCount:int = 0;
      
      public var i22:int;
      
      public var i10:int;
      
      public var i11:int;
      
      public var i12:int;
      
      public var i13:int;
      
      public var i14:int;
      
      public var i15:int;
      
      public var i17:int;
      
      public var i19:int;
      
      public var i16:int;
      
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
      
      public var i23:int;
      
      public var i18:int;
      
      public var i20:int;
      
      public var i21:int;
      
      public function FSM__ZNK10__cxxabiv121__vmi_class_type_info11__do_upcastEPKNS_17__class_type_infoEPKvRNS1_15__upcast_resultE()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZNK10__cxxabiv121__vmi_class_type_info11__do_upcastEPKNS_17__class_type_infoEPKvRNS1_15__upcast_resultE = null;
         _loc1_ = new FSM__ZNK10__cxxabiv121__vmi_class_type_info11__do_upcastEPKNS_17__class_type_infoEPKvRNS1_15__upcast_resultE();
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
               mstate.esp -= 16;
               this.i0 = li32(mstate.ebp + 8);
               this.i1 = li32(mstate.ebp + 12);
               this.i2 = li32(mstate.ebp + 16);
               this.i3 = li32(mstate.ebp + 20);
               this.i4 = li32(this.i0 + 4);
               this.i5 = li32(this.i1 + 4);
               if(this.i4 == this.i5)
               {
                  this.i0 = 8;
                  si32(this.i2,this.i3);
                  si32(this.i0,this.i3 + 12);
                  this.i0 = 6;
                  si32(this.i0,this.i3 + 4);
                  break;
               }
               this.i4 = li32(this.i3 + 8);
               this.i5 = this.i0 + 12;
               this.i6 = this.i3 + 8;
               this.i7 = this.i4 & 0x10;
               if(this.i7 != 0)
               {
                  this.i4 = li32(this.i5);
                  this.i5 = li32(this.i0 + 8);
                  this.i7 = this.i4 + -1;
                  if(this.i4 != 0)
                  {
                     this.i4 = this.i5;
                     this.i5 = this.i7;
                     §§goto(addr0175);
                  }
               }
               else
               {
                  this.i5 = li32(this.i5);
                  this.i7 = this.i5 + -1;
                  if(this.i5 != 0)
                  {
                     this.i5 = this.i7;
                     addr0175:
                     this.i7 = mstate.ebp + -16;
                     this.i8 = this.i0 + 8;
                     this.i9 = this.i3 + 4;
                     this.i10 = this.i3 + 12;
                     this.i11 = this.i4 & 1;
                     this.i12 = this.i7 + 12;
                     this.i13 = this.i7 + 8;
                     this.i14 = this.i7 + 4;
                     this.i15 = this.i3;
                     this.i16 = this.i2;
                     addr01e4:
                     this.i17 = 0;
                     si32(this.i17,this.i7);
                     si32(this.i17,this.i14);
                     si32(this.i4,this.i13);
                     this.i18 = this.i5 << 3;
                     si32(this.i17,this.i12);
                     this.i17 = this.i0 + this.i18;
                     this.i17 = li32(this.i17 + 20);
                     this.i18 = this.i17 & 1;
                     this.i19 = this.i17 & 2;
                     this.i17 >>= 8;
                     if(this.i19 == 0)
                     {
                        if(this.i11 == 0)
                        {
                           while(true)
                           {
                              this.i17 = this.i5 + -1;
                              if(this.i5 == 0)
                              {
                                 break;
                              }
                              this.i5 = this.i17;
                              §§goto(addr01e4);
                           }
                           addr0634:
                           this.i0 = li32(this.i3 + 4);
                           this.i0 = this.i0 != 0 ? 1 : 0;
                           this.i0 &= 1;
                           addr0665:
                           mstate.eax = this.i0;
                           addr066f:
                           mstate.esp = mstate.ebp;
                           mstate.ebp = li32(mstate.esp);
                           mstate.esp += 4;
                           mstate.esp += 4;
                           mstate.gworker = caller;
                           return;
                           addr0612:
                        }
                     }
                     if(this.i2 == 0)
                     {
                        this.i17 = this.i2;
                     }
                     else
                     {
                        this.i20 = this.i18 & 0xFF;
                        if(this.i20 != 0)
                        {
                           this.i20 = li32(this.i16);
                           this.i17 = this.i20 + this.i17;
                           this.i17 = li32(this.i17);
                        }
                        this.i17 = this.i2 + this.i17;
                     }
                     this.i20 = mstate.ebp + -16;
                     this.i21 = this.i5 << 3;
                     this.i21 = this.i0 + this.i21;
                     this.i22 = li32(this.i21 + 16);
                     this.i23 = li32(this.i22);
                     this.i23 = li32(this.i23 + 24);
                     mstate.esp -= 16;
                     si32(this.i22,mstate.esp);
                     si32(this.i1,mstate.esp + 4);
                     si32(this.i17,mstate.esp + 8);
                     si32(this.i20,mstate.esp + 12);
                     state = 1;
                     mstate.esp -= 4;
                     mstate.funcs[this.i23]();
                     return;
                  }
               }
               §§goto(addr0634);
               break;
            case 1:
               this.i17 = mstate.eax;
               mstate.esp += 16;
               this.i20 = this.i21 + 16;
               while(true)
               {
                  if(this.i17 != 0)
                  {
                     this.i17 = li32(this.i12);
                     while(true)
                     {
                        if(this.i17 == 8)
                        {
                           this.i18 &= 255;
                           if(this.i18 != 0)
                           {
                              this.i20 = li32(this.i20);
                              si32(this.i20,this.i12);
                              break;
                           }
                        }
                        this.i20 = this.i17;
                        break;
                     }
                     this.i17 = this.i20;
                     this.i18 = li32(this.i14);
                     while(true)
                     {
                        if(this.i18 >= 4)
                        {
                           if(this.i19 == 0)
                           {
                              this.i18 &= -3;
                              si32(this.i18,this.i14);
                              break;
                           }
                        }
                        break;
                     }
                     this.i19 = li32(this.i10);
                     if(this.i19 == 0)
                     {
                        this.i19 = li32(this.i7);
                        si32(this.i19,this.i15);
                        si32(this.i18,this.i9);
                        this.i19 = li32(this.i13);
                        si32(this.i19,this.i6);
                        si32(this.i17,this.i10);
                        if(this.i18 < 4)
                        {
                           break loop1;
                        }
                        this.i17 = this.i18 & 2;
                        if(this.i17 == 0)
                        {
                           this.i17 = this.i18 & 1;
                           if(this.i17 != 0)
                           {
                              this.i17 = li32(this.i8);
                              this.i17 &= 2;
                              if(this.i17 != 0)
                              {
                                 §§goto(addr0612);
                              }
                           }
                           break loop1;
                        }
                        this.i17 = li32(this.i8);
                        this.i17 &= 1;
                        if(this.i17 == 0)
                        {
                           break loop1;
                        }
                     }
                     else
                     {
                        this.i20 = li32(this.i15);
                        this.i21 = li32(this.i7);
                        if(this.i20 != this.i21)
                        {
                           this.i5 = 0;
                           si32(this.i5,this.i15);
                        }
                        else
                        {
                           if(this.i20 == 0)
                           {
                              if(this.i17 != 8)
                              {
                                 if(this.i19 != 8)
                                 {
                                    this.i17 = li32(this.i17 + 4);
                                    this.i19 = li32(this.i19 + 4);
                                    if(this.i17 == this.i19)
                                    {
                                       this.i17 = li32(this.i9);
                                       this.i17 = this.i18 | this.i17;
                                       si32(this.i17,this.i9);
                                       §§goto(addr0612);
                                    }
                                 }
                              }
                              addr0544:
                              this.i5 = 2;
                              si32(this.i5,this.i9);
                              this.i5 = 1;
                              mstate.eax = this.i5;
                              break;
                           }
                           this.i17 = li32(this.i9);
                           this.i17 = this.i18 | this.i17;
                           si32(this.i17,this.i9);
                           this.i17 = this.i5 + -1;
                           if(this.i5 != 0)
                           {
                              this.i5 = this.i17;
                              §§goto(addr01e3);
                           }
                           §§goto(addr0634);
                           §§goto(addr0612);
                        }
                        §§goto(addr0544);
                     }
                  }
                  §§goto(addr0612);
               }
               §§goto(addr066f);
            default:
               throw "Invalid state in __ZNK10__cxxabiv121__vmi_class_type_info11__do_upcastEPKNS_17__class_type_infoEPKvRNS1_15__upcast_resultE";
         }
         this.i0 = 1;
         §§goto(addr0665);
      }
   }
}

