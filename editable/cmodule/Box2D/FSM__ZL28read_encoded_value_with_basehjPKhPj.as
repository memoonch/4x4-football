package cmodule.Box2D
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.sxi8;
   
   public final class FSM__ZL28read_encoded_value_with_basehjPKhPj extends Machine
   {
      
      public static const intRegCount:int = 11;
      
      public static const NumberRegCount:int = 0;
      
      public var i10:int;
      
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
      
      public function FSM__ZL28read_encoded_value_with_basehjPKhPj()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZL28read_encoded_value_with_basehjPKhPj = null;
         _loc1_ = new FSM__ZL28read_encoded_value_with_basehjPKhPj();
         cmodule.Box2D.gstate.gworker = _loc1_;
      }
      
      final override public function work() : void
      {
         loop2:
         switch(state)
         {
            case 0:
               mstate.esp -= 4;
               si32(mstate.ebp,mstate.esp);
               mstate.ebp = mstate.esp;
               mstate.esp -= 0;
               this.i0 = si8(li8(mstate.ebp + 8));
               this.i1 = li32(mstate.ebp + 12);
               this.i2 = li32(mstate.ebp + 16);
               this.i3 = li32(mstate.ebp + 20);
               this.i4 = this.i2;
               this.i5 = this.i0 & 0xFF;
               while(true)
               {
                  if(this.i5 == 80)
                  {
                     this.i0 = this.i2 + 3;
                     this.i0 &= -4;
                     this.i1 = li32(this.i0);
                     si32(this.i1,this.i3);
                     this.i0 += 4;
                  }
                  else
                  {
                     this.i5 = this.i0 & 0x0F;
                     this.i6 = this.i0 & 0xFF;
                     if(this.i5 <= 3)
                     {
                        if(this.i5 <= 1)
                        {
                           if(this.i5 == 0)
                           {
                              break loop2;
                           }
                           if(this.i5 != 1)
                           {
                              §§goto(addr0348);
                           }
                           this.i5 = 0;
                           this.i7 = this.i5;
                           this.i8 = this.i5;
                           do
                           {
                              this.i9 = this.i4 + this.i8;
                              this.i9 = li8(this.i9);
                              this.i10 = this.i9 & 0x7F;
                              this.i10 <<= this.i7;
                              this.i7 += 7;
                              this.i8 += 1;
                              this.i5 = this.i10 | this.i5;
                              this.i9 <<= 24;
                              this.i9 >>= 24;
                           }
                           while(this.i9 <= -1);
                           this.i7 = this.i2 + this.i8;
                           if(this.i5 != 0)
                           {
                              addr0739:
                              this.i2 = this.i6 & 0x70;
                              if(this.i2 != 16)
                              {
                                 this.i4 = this.i1;
                              }
                              this.i1 = this.i4;
                              this.i0 <<= 24;
                              this.i5 = this.i1 + this.i5;
                              this.i0 >>= 24;
                              if(this.i0 < 0)
                              {
                                 this.i5 = li32(this.i5);
                                 si32(this.i5,this.i3);
                                 mstate.eax = this.i7;
                                 break;
                              }
                           }
                        }
                        else if(this.i5 != 2)
                        {
                           if(this.i5 != 3)
                           {
                              §§goto(addr0348);
                           }
                           else
                           {
                              this.i5 = li8(this.i2 + 3);
                              this.i7 = li8(this.i2 + 1);
                              this.i8 = li8(this.i2 + 2);
                              this.i5 <<= 8;
                              this.i9 = li8(this.i2);
                              this.i7 <<= 8;
                              this.i5 |= this.i8;
                              this.i7 |= this.i9;
                              this.i5 <<= 16;
                              this.i5 |= this.i7;
                              this.i7 = this.i2 + 4;
                              if(this.i5 != 0)
                              {
                                 §§goto(addr0739);
                              }
                           }
                        }
                        else
                        {
                           this.i5 = li8(this.i2 + 1);
                           this.i7 = li8(this.i2);
                           this.i5 <<= 8;
                           this.i5 |= this.i7;
                           this.i5 &= 65535;
                           this.i7 = this.i2 + 2;
                           if(this.i5 != 0)
                           {
                              §§goto(addr0739);
                           }
                        }
                     }
                     else if(this.i5 <= 9)
                     {
                        if(this.i5 != 4)
                        {
                           if(this.i5 != 9)
                           {
                              §§goto(addr0348);
                           }
                           else
                           {
                              this.i5 = 0;
                              this.i7 = this.i5;
                              this.i8 = this.i5;
                              do
                              {
                                 this.i9 = this.i4 + this.i8;
                                 this.i9 = li8(this.i9);
                                 this.i10 = this.i9 & 0x7F;
                                 this.i10 <<= this.i7;
                                 this.i7 += 7;
                                 this.i8 += 1;
                                 this.i5 = this.i10 | this.i5;
                                 this.i10 = this.i9 << 24;
                                 this.i10 >>= 24;
                              }
                              while(this.i10 <= -1);
                              this.i2 += this.i8;
                              this.i8 = this.i7;
                              while(true)
                              {
                                 if(uint(this.i7) < uint(32))
                                 {
                                    this.i7 = this.i9 & 0x40;
                                    if(this.i7 != 0)
                                    {
                                       this.i7 = 1;
                                       this.i7 <<= this.i8;
                                       this.i7 = 0 - this.i7;
                                       this.i5 |= this.i7;
                                       break;
                                    }
                                 }
                                 break;
                              }
                              if(this.i5 != 0)
                              {
                                 this.i7 = this.i2;
                                 §§goto(addr0739);
                              }
                              else
                              {
                                 this.i7 = this.i2;
                              }
                           }
                        }
                        else
                        {
                           this.i5 = li8(this.i2 + 3);
                           this.i7 = li8(this.i2 + 1);
                           this.i8 = li8(this.i2 + 2);
                           this.i5 <<= 8;
                           this.i9 = li8(this.i2);
                           this.i7 <<= 8;
                           this.i5 |= this.i8;
                           this.i7 |= this.i9;
                           this.i5 <<= 16;
                           this.i5 |= this.i7;
                           this.i7 = this.i2 + 8;
                           if(this.i5 != 0)
                           {
                              §§goto(addr0739);
                           }
                        }
                     }
                     else if(this.i5 != 10)
                     {
                        if(this.i5 != 11)
                        {
                           if(this.i5 != 12)
                           {
                              addr0348:
                              state = 1;
                              mstate.esp -= 4;
                              FSM_abort1.start();
                              return;
                           }
                           this.i5 = li8(this.i2 + 3);
                           this.i7 = li8(this.i2 + 1);
                           this.i8 = li8(this.i2 + 2);
                           this.i5 <<= 8;
                           this.i9 = li8(this.i2);
                           this.i7 <<= 8;
                           this.i5 |= this.i8;
                           this.i7 |= this.i9;
                           this.i5 <<= 16;
                           this.i5 |= this.i7;
                           this.i7 = this.i2 + 8;
                           if(this.i5 != 0)
                           {
                              §§goto(addr0739);
                           }
                        }
                        else
                        {
                           this.i5 = li8(this.i2 + 3);
                           this.i7 = li8(this.i2 + 1);
                           this.i8 = li8(this.i2 + 2);
                           this.i5 <<= 8;
                           this.i9 = li8(this.i2);
                           this.i7 <<= 8;
                           this.i5 |= this.i8;
                           this.i7 |= this.i9;
                           this.i5 <<= 16;
                           this.i5 |= this.i7;
                           this.i7 = this.i2 + 4;
                           if(this.i5 != 0)
                           {
                              §§goto(addr0739);
                           }
                        }
                     }
                     else
                     {
                        this.i5 = li8(this.i2 + 1);
                        this.i7 = li8(this.i2);
                        this.i5 <<= 8;
                        this.i5 |= this.i7;
                        this.i7 = this.i5 << 16;
                        this.i8 = this.i7 >> 16;
                        this.i7 = this.i2 + 2;
                        this.i5 &= 65535;
                        if(this.i5 != 0)
                        {
                           this.i5 = this.i8;
                           §§goto(addr0739);
                        }
                        else
                        {
                           this.i5 = this.i8;
                        }
                     }
                     addr07be:
                     this.i0 = this.i7;
                     this.i1 = this.i5;
                     si32(this.i1,this.i3);
                  }
                  mstate.eax = this.i0;
                  break;
               }
               §§goto(addr07e1);
            case 1:
               break;
            default:
               throw "Invalid state in __ZL28read_encoded_value_with_basehjPKhPj";
         }
         this.i5 = li8(this.i2 + 3);
         this.i7 = li8(this.i2 + 1);
         this.i8 = li8(this.i2 + 2);
         this.i5 <<= 8;
         this.i9 = li8(this.i2);
         this.i7 <<= 8;
         this.i5 |= this.i8;
         this.i7 |= this.i9;
         this.i5 <<= 16;
         this.i5 |= this.i7;
         this.i7 = this.i2 + 4;
         while(true)
         {
            if(this.i5 != 0)
            {
               §§goto(addr0739);
            }
            §§goto(addr07be);
         }
         addr07e1:
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp += 4;
         mstate.esp += 4;
         mstate.gworker = caller;
      }
   }
}

