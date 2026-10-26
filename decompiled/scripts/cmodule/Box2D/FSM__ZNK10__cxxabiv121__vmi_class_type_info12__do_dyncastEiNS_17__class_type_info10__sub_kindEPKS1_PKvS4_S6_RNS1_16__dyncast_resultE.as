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
   
   public final class FSM__ZNK10__cxxabiv121__vmi_class_type_info12__do_dyncastEiNS_17__class_type_info10__sub_kindEPKS1_PKvS4_S6_RNS1_16__dyncast_resultE extends Machine
   {
      
      public static const intRegCount:int = 29;
      
      public static const NumberRegCount:int = 0;
      
      public var i21:int;
      
      public var i10:int;
      
      public var i11:int;
      
      public var i12:int;
      
      public var i13:int;
      
      public var i14:int;
      
      public var i15:int;
      
      public var i17:int;
      
      public var i19:int;
      
      public var i16:int;
      
      public var i18:int;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i22:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public var i6:int;
      
      public var i7:int;
      
      public var i8:int;
      
      public var i2:int;
      
      public var i23:int;
      
      public var i24:int;
      
      public var i25:int;
      
      public var i26:int;
      
      public var i27:int;
      
      public var i20:int;
      
      public var i9:int;
      
      public var i28:int;
      
      public function FSM__ZNK10__cxxabiv121__vmi_class_type_info12__do_dyncastEiNS_17__class_type_info10__sub_kindEPKS1_PKvS4_S6_RNS1_16__dyncast_resultE()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZNK10__cxxabiv121__vmi_class_type_info12__do_dyncastEiNS_17__class_type_info10__sub_kindEPKS1_PKvS4_S6_RNS1_16__dyncast_resultE = null;
         _loc1_ = new FSM__ZNK10__cxxabiv121__vmi_class_type_info12__do_dyncastEiNS_17__class_type_info10__sub_kindEPKS1_PKvS4_S6_RNS1_16__dyncast_resultE();
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
               mstate.esp -= 32;
               this.i0 = li32(mstate.ebp + 36);
               this.i1 = li32(this.i0 + 16);
               this.i2 = li32(mstate.ebp + 8);
               this.i3 = this.i0 + 16;
               this.i4 = li32(mstate.ebp + 12);
               this.i5 = li32(mstate.ebp + 16);
               this.i6 = li32(mstate.ebp + 20);
               this.i7 = li32(mstate.ebp + 24);
               this.i8 = li32(mstate.ebp + 28);
               this.i9 = li32(mstate.ebp + 32);
               this.i10 = this.i2;
               this.i1 &= 16;
               if(this.i1 != 0)
               {
                  this.i1 = li32(this.i2 + 8);
                  si32(this.i1,this.i3);
               }
               loop2:
               while(true)
               {
                  while(true)
                  {
                     if(this.i7 == this.i9)
                     {
                        this.i1 = li32(this.i2 + 4);
                        this.i11 = li32(this.i8 + 4);
                        if(this.i1 == this.i11)
                        {
                           this.i2 = 0;
                           si32(this.i5,this.i0 + 8);
                           break;
                        }
                     }
                     this.i1 = li32(this.i2 + 4);
                     this.i11 = li32(this.i6 + 4);
                     if(this.i1 != this.i11)
                     {
                        this.i1 = li32(this.i2 + 12);
                        if(this.i1 != 0)
                        {
                           this.i11 = mstate.ebp + -32;
                           this.i12 = this.i1 << 3;
                           this.i13 = 0;
                           this.i10 += this.i12;
                           this.i1 += -1;
                           this.i12 = -1;
                           this.i14 = this.i0 + 12;
                           this.i2 += 8;
                           this.i15 = this.i0 + 4;
                           this.i16 = this.i0 + 8;
                           this.i17 = this.i11 + 16;
                           this.i18 = this.i11 + 12;
                           this.i19 = this.i11 + 8;
                           this.i20 = this.i11 + 4;
                           this.i21 = this.i6;
                           this.i22 = this.i7;
                           addr02d9:
                           this.i23 = 0;
                           this.i24 = li32(this.i3);
                           si32(this.i23,this.i11);
                           si32(this.i23,this.i20);
                           si32(this.i23,this.i19);
                           si32(this.i23,this.i18);
                           si32(this.i24,this.i17);
                           this.i23 = li32(this.i10 + 12);
                           this.i25 = this.i23 & 1;
                           this.i26 = this.i25 | this.i5;
                           this.i27 = this.i23 >> 8;
                           if(this.i25 == 0)
                           {
                              §§goto(addr0373);
                           }
                           this.i25 = li32(this.i22);
                           this.i27 = this.i25 + this.i27;
                           this.i27 = li32(this.i27);
                           addr0373:
                           this.i25 = this.i27;
                           this.i25 = this.i7 + this.i25;
                           this.i23 &= 2;
                           if(this.i23 == 0)
                           {
                              if(this.i4 == -2)
                              {
                                 this.i24 &= 3;
                                 while(true)
                                 {
                                    if(this.i24 == 0)
                                    {
                                       while(true)
                                       {
                                          this.i10 += -8;
                                          this.i12 += 1;
                                          if(this.i1 == this.i12)
                                          {
                                             this.i0 = this.i13;
                                             addr0c07:
                                             this.i0 &= 255;
                                             addr0c13:
                                             mstate.eax = this.i0;
                                             break loop2;
                                          }
                                          §§goto(addr02d9);
                                       }
                                       break loop1;
                                       addr0bd3:
                                    }
                                 }
                                 §§goto(addr03e1);
                              }
                              this.i24 = this.i26 & -3;
                              §§goto(addr03e1);
                           }
                           this.i24 = this.i26;
                           addr03e1:
                           this.i23 = this.i24;
                           this.i24 = mstate.ebp + -32;
                           this.i26 = li32(this.i10 + 8);
                           this.i27 = li32(this.i26);
                           this.i27 = li32(this.i27 + 28);
                           mstate.esp -= 32;
                           si32(this.i26,mstate.esp);
                           si32(this.i4,mstate.esp + 4);
                           si32(this.i23,mstate.esp + 8);
                           si32(this.i6,mstate.esp + 12);
                           si32(this.i25,mstate.esp + 16);
                           si32(this.i8,mstate.esp + 20);
                           si32(this.i9,mstate.esp + 24);
                           si32(this.i24,mstate.esp + 28);
                           state = 1;
                           mstate.esp -= 4;
                           mstate.funcs[this.i27]();
                           return;
                        }
                        addr01f3:
                        this.i0 = 0;
                        addr01f2:
                        §§goto(addr0c07);
                     }
                     else
                     {
                        si32(this.i7,this.i0);
                        si32(this.i5,this.i0 + 4);
                        if(this.i4 >= 0)
                        {
                           this.i2 = 0;
                           this.i3 = this.i7 + this.i4;
                           this.i3 = this.i3 == this.i9 ? 6 : 1;
                           si32(this.i3,this.i0 + 12);
                           break;
                        }
                        if(this.i4 != -2)
                        {
                           §§goto(addr01f3);
                        }
                        else
                        {
                           this.i2 = 1;
                           si32(this.i2,this.i0 + 12);
                           this.i0 = 0;
                        }
                     }
                     §§goto(addr0c13);
                  }
                  mstate.eax = this.i2;
                  break;
               }
               mstate.esp = mstate.ebp;
               mstate.ebp = li32(mstate.esp);
               mstate.esp += 4;
               mstate.esp += 4;
               mstate.gworker = caller;
               return;
            case 1:
               this.i23 = mstate.eax;
               mstate.esp += 32;
               this.i24 = li32(this.i16);
               this.i25 = li32(this.i19);
               this.i24 = this.i25 | this.i24;
               si32(this.i24,this.i16);
               this.i25 = li32(this.i18);
               if(this.i25 == 2)
               {
                  break;
               }
               if(this.i25 == 6)
               {
                  break;
               }
               this.i26 = this.i13 & 0xFF;
               loop5:
               while(true)
               {
                  loop6:
                  while(true)
                  {
                     if(this.i26 == 0)
                     {
                        this.i26 = li32(this.i0);
                        if(this.i26 == 0)
                        {
                           this.i13 = li32(this.i11);
                           si32(this.i13,this.i0);
                           this.i25 = li32(this.i20);
                           si32(this.i25,this.i15);
                           if(this.i13 != 0)
                           {
                              if(this.i24 != 0)
                              {
                                 this.i13 = li32(this.i2);
                                 this.i13 &= 1;
                                 if(this.i13 == 0)
                                 {
                                    this.i0 = this.i23;
                                    break loop5;
                                 }
                              }
                           }
                           this.i13 = this.i23;
                           break;
                        }
                     }
                     this.i26 = li32(this.i0);
                     if(this.i26 != 0)
                     {
                        this.i27 = li32(this.i11);
                        if(this.i26 == this.i27)
                        {
                           this.i23 = li32(this.i15);
                           this.i25 = li32(this.i20);
                           this.i23 = this.i25 | this.i23;
                           si32(this.i23,this.i15);
                           if(this.i24 == 4)
                           {
                              this.i0 = this.i13;
                              break loop5;
                           }
                           §§goto(addr03d2);
                        }
                     }
                     this.i27 = li32(this.i11);
                     while(true)
                     {
                        if(this.i27 != 0)
                        {
                           if(this.i26 != 0)
                           {
                              break;
                           }
                        }
                        this.i28 = this.i26 != 0 ? 1 : 0;
                        this.i23 = this.i28 & this.i23;
                        this.i23 &= 1;
                        if(this.i23 == 0)
                        {
                           this.i23 = this.i27 != 0 ? 1 : 0;
                           this.i23 &= this.i13;
                           this.i23 &= 1;
                           if(this.i23 == 0)
                           {
                              break loop6;
                           }
                        }
                        break;
                     }
                     this.i23 = li32(this.i14);
                     loop8:
                     while(true)
                     {
                        if(this.i24 >= 4)
                        {
                           this.i24 &= 1;
                           if(this.i24 != 0)
                           {
                              this.i24 = li32(this.i3);
                              this.i24 &= 2;
                              if(this.i24 != 0)
                              {
                                 addr074b:
                                 loop9:
                                 while(true)
                                 {
                                    if(this.i23 < 1)
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             if(this.i25 >= 4)
                                             {
                                                this.i23 = this.i25 & 1;
                                                if(this.i23 == 0)
                                                {
                                                   §§goto(addr0890);
                                                }
                                                else
                                                {
                                                   this.i23 = li32(this.i2);
                                                   this.i23 &= 2;
                                                   if(this.i23 == 0)
                                                   {
                                                      break loop10;
                                                   }
                                                }
                                             }
                                             if(this.i4 >= 0)
                                             {
                                                this.i23 = this.i26 + this.i4;
                                                if(this.i23 == this.i9)
                                                {
                                                   this.i23 = 6;
                                                   break;
                                                }
                                                if(this.i25 >= 1)
                                                {
                                                   this.i23 = 1;
                                                   break loop8;
                                                }
                                                this.i23 = 1;
                                                break loop9;
                                             }
                                             if(this.i4 != -2)
                                             {
                                                this.i23 = li32(this.i21);
                                                this.i23 = li32(this.i23 + 32);
                                                mstate.esp -= 20;
                                                si32(this.i6,mstate.esp);
                                                si32(this.i4,mstate.esp + 4);
                                                si32(this.i26,mstate.esp + 8);
                                                si32(this.i8,mstate.esp + 12);
                                                si32(this.i9,mstate.esp + 16);
                                                state = 2;
                                                mstate.esp -= 4;
                                                mstate.funcs[this.i23]();
                                                return;
                                             }
                                             break loop10;
                                          }
                                       }
                                       addr0890:
                                       this.i23 = 1;
                                       break loop11;
                                    }
                                    addr0a4e:
                                    if(this.i25 >= 1)
                                    {
                                       break loop8;
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                    if(this.i23 >= 4)
                                    {
                                       this.i25 = this.i23 & 1;
                                       if(this.i25 == 0)
                                       {
                                          break;
                                       }
                                       this.i25 = li32(this.i2);
                                       this.i25 &= 2;
                                       if(this.i25 == 0)
                                       {
                                          break;
                                       }
                                    }
                                    this.i25 = li32(this.i11);
                                    if(this.i4 >= 0)
                                    {
                                       this.i25 += this.i4;
                                       if(this.i25 == this.i9)
                                       {
                                          this.i25 = 6;
                                          break loop8;
                                       }
                                       break;
                                    }
                                    if(this.i4 != -2)
                                    {
                                       this.i24 = li32(this.i21);
                                       this.i24 = li32(this.i24 + 32);
                                       mstate.esp -= 20;
                                       si32(this.i6,mstate.esp);
                                       si32(this.i4,mstate.esp + 4);
                                       si32(this.i25,mstate.esp + 8);
                                       si32(this.i8,mstate.esp + 12);
                                       si32(this.i9,mstate.esp + 16);
                                       state = 3;
                                       mstate.esp -= 4;
                                       mstate.funcs[this.i24]();
                                       return;
                                    }
                                    break;
                                 }
                                 this.i25 = 1;
                                 break;
                              }
                           }
                           this.i23 = this.i23 == 0 ? 1 : this.i23;
                           if(this.i25 != 0)
                           {
                              break;
                           }
                           this.i25 = this.i23 ^ 1;
                           if(this.i25 <= 3)
                           {
                              this.i13 = 1;
                              addr07a7:
                              this.i24 = 0;
                              si32(this.i24,this.i0);
                              this.i13 &= this.i23;
                              if(this.i13 >= 4)
                              {
                                 this.i13 = 2;
                                 si32(this.i13,this.i14);
                                 this.i13 = 1;
                                 addr07eb:
                                 mstate.eax = this.i13;
                                 break loop2;
                              }
                              this.i13 = 1;
                              si32(this.i13,this.i14);
                              break loop6;
                           }
                           addr084e:
                           this.i25 = 1;
                           this.i24 = this.i25;
                           if(this.i24 > 3)
                           {
                              this.i13 = 0;
                              this.i23 = li32(this.i11);
                              si32(this.i23,this.i0);
                              this.i23 = li32(this.i20);
                              si32(this.i23,this.i15);
                              this.i23 = this.i24;
                           }
                           si32(this.i23,this.i14);
                           this.i24 = this.i23 & 2;
                           if(this.i24 == 0)
                           {
                              this.i23 &= 1;
                              if(this.i23 != 0)
                              {
                                 break loop6;
                              }
                           }
                           §§goto(addr01f2);
                        }
                        §§goto(addr074b);
                     }
                     addr0b1c:
                     this.i24 = this.i25 ^ this.i23;
                     if(this.i24 <= 3)
                     {
                        this.i13 = this.i25;
                        §§goto(addr07a7);
                     }
                     else
                     {
                        §§goto(addr084e);
                     }
                  }
                  this.i23 = li32(this.i16);
                  if(this.i23 == 4)
                  {
                     this.i0 = this.i13;
                     break;
                  }
                  §§goto(addr0bd3);
               }
               §§goto(addr0c07);
               break;
            case 2:
               this.i23 = mstate.eax;
               mstate.esp += 20;
               §§goto(addr0a4e);
            case 3:
               this.i25 = mstate.eax;
               mstate.esp += 20;
               §§goto(addr0b1c);
            default:
               throw "Invalid state in __ZNK10__cxxabiv121__vmi_class_type_info12__do_dyncastEiNS_17__class_type_info10__sub_kindEPKS1_PKvS4_S6_RNS1_16__dyncast_resultE";
         }
         this.i13 = li32(this.i11);
         si32(this.i13,this.i0);
         this.i13 = li32(this.i20);
         si32(this.i13,this.i15);
         si32(this.i25,this.i14);
         this.i13 = this.i23 & 0xFF;
         §§goto(addr07eb);
      }
   }
}

