package cmodule.Box2D
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public final class FSM__ZN8b2IslandC1EiiiP16b2StackAllocatorP17b2ContactListener extends Machine
   {
      
      public static const intRegCount:int = 14;
      
      public static const NumberRegCount:int = 0;
      
      public var i10:int;
      
      public var i11:int;
      
      public var i12:int;
      
      public var i13:int;
      
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
      
      public function FSM__ZN8b2IslandC1EiiiP16b2StackAllocatorP17b2ContactListener()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZN8b2IslandC1EiiiP16b2StackAllocatorP17b2ContactListener = null;
         _loc1_ = new FSM__ZN8b2IslandC1EiiiP16b2StackAllocatorP17b2ContactListener();
         cmodule.Box2D.gstate.gworker = _loc1_;
      }
      
      final override public function work() : void
      {
         loop0:
         switch(state)
         {
            case 0:
               mstate.esp -= 4;
               si32(mstate.ebp,mstate.esp);
               mstate.ebp = mstate.esp;
               mstate.esp -= 0;
               this.i0 = 0;
               this.i1 = li32(mstate.ebp + 8);
               this.i2 = li32(mstate.ebp + 12);
               this.i3 = li32(mstate.ebp + 16);
               si32(this.i2,this.i1 + 40);
               this.i4 = li32(mstate.ebp + 20);
               si32(this.i3,this.i1 + 44);
               si32(this.i4,this.i1 + 48);
               si32(this.i0,this.i1 + 28);
               si32(this.i0,this.i1 + 36);
               this.i5 = li32(mstate.ebp + 24);
               si32(this.i0,this.i1 + 32);
               si32(this.i5,this.i1);
               this.i0 = li32(mstate.ebp + 28);
               si32(this.i0,this.i1 + 4);
               this.i0 = li32(this.i5 + 102796);
               this.i6 = this.i5 + 102796;
               this.i2 <<= 2;
               this.i7 = this.i1 + 40;
               this.i8 = this.i1;
               if(this.i0 >= 32)
               {
                  this.i1 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i2 = cmodule.Box2D.__2E_str1670;
                  this.i3 = cmodule.Box2D.__2E_str78285;
                  this.i4 = cmodule.Box2D.__ZZN16b2StackAllocator8AllocateEiE8__func__;
                  this.i5 = cmodule.Box2D.__2E_str10217;
                  this.i6 = 38;
                  this.i1 += 176;
                  si32(this.i1,mstate.esp);
                  si32(this.i2,mstate.esp + 4);
                  si32(this.i3,mstate.esp + 8);
                  si32(this.i4,mstate.esp + 12);
                  si32(this.i5,mstate.esp + 16);
                  si32(this.i6,mstate.esp + 20);
               }
               else
               {
                  this.i0 = li32(this.i6);
                  this.i9 = this.i0 * 12;
                  this.i9 = this.i5 + this.i9;
                  si32(this.i2,this.i9 + 102416);
                  this.i9 = li32(this.i5 + 102400);
                  this.i10 = this.i9 + this.i2;
                  this.i11 = this.i5 + 102400;
                  if(this.i10 >= 102401)
                  {
                     this.i9 = 0;
                     mstate.esp -= 8;
                     si32(this.i9,mstate.esp);
                     si32(this.i2,mstate.esp + 4);
                     state = 1;
                     mstate.esp -= 4;
                     FSM_pubrealloc.start();
                     return;
                  }
                  this.i12 = 0;
                  this.i13 = this.i0 * 12;
                  this.i13 = this.i5 + this.i13;
                  this.i9 = this.i5 + this.i9;
                  si32(this.i9,this.i13 + 102412);
                  si8(this.i12,this.i13 + 102420);
                  si32(this.i10,this.i11);
                  addr0342:
                  this.i9 = li32(this.i5 + 102404);
                  this.i2 = this.i9 + this.i2;
                  si32(this.i2,this.i5 + 102404);
                  this.i9 = li32(this.i5 + 102408);
                  this.i2 = this.i9 > this.i2 ? this.i9 : this.i2;
                  this.i9 = this.i0 * 12;
                  si32(this.i2,this.i5 + 102408);
                  this.i0 += 1;
                  si32(this.i0,this.i6);
                  this.i0 = this.i5 + this.i9;
                  this.i0 = li32(this.i0 + 102412);
                  si32(this.i0,this.i1 + 8);
                  this.i0 = li32(this.i8);
                  this.i2 = li32(this.i0 + 102796);
                  this.i5 = this.i0 + 102796;
                  this.i3 <<= 2;
                  if(this.i2 >= 32)
                  {
                     this.i0 = cmodule.Box2D.___sF;
                     mstate.esp -= 24;
                     this.i1 = cmodule.Box2D.__2E_str1670;
                     this.i3 = cmodule.Box2D.__2E_str78285;
                     this.i4 = cmodule.Box2D.__ZZN16b2StackAllocator8AllocateEiE8__func__;
                     this.i5 = cmodule.Box2D.__2E_str10217;
                     this.i7 = 38;
                     this.i0 += 176;
                     si32(this.i0,mstate.esp);
                     si32(this.i1,mstate.esp + 4);
                     si32(this.i3,mstate.esp + 8);
                     addr0493:
                     si32(this.i4,mstate.esp + 12);
                     si32(this.i5,mstate.esp + 16);
                     si32(this.i7,mstate.esp + 20);
                  }
                  else
                  {
                     addr0511:
                     this.i2 = li32(this.i5);
                     this.i6 = this.i2 * 12;
                     this.i6 = this.i0 + this.i6;
                     si32(this.i3,this.i6 + 102416);
                     this.i6 = li32(this.i0 + 102400);
                     this.i9 = this.i6 + this.i3;
                     this.i10 = this.i0 + 102400;
                     if(this.i9 >= 102401)
                     {
                        this.i6 = 0;
                        mstate.esp -= 8;
                        si32(this.i6,mstate.esp);
                        si32(this.i3,mstate.esp + 4);
                        state = 4;
                        mstate.esp -= 4;
                        FSM_pubrealloc.start();
                        return;
                     }
                     this.i11 = 0;
                     this.i12 = this.i2 * 12;
                     this.i12 = this.i0 + this.i12;
                     this.i6 = this.i0 + this.i6;
                     si32(this.i6,this.i12 + 102412);
                     si8(this.i11,this.i12 + 102420);
                     si32(this.i9,this.i10);
                     addr0662:
                     this.i6 = li32(this.i0 + 102404);
                     this.i3 = this.i6 + this.i3;
                     si32(this.i3,this.i0 + 102404);
                     this.i6 = li32(this.i0 + 102408);
                     this.i3 = this.i6 > this.i3 ? this.i6 : this.i3;
                     si32(this.i3,this.i0 + 102408);
                     this.i3 = li32(this.i5);
                     this.i2 *= 12;
                     this.i3 += 1;
                     si32(this.i3,this.i5);
                     this.i0 += this.i2;
                     this.i0 = li32(this.i0 + 102412);
                     si32(this.i0,this.i1 + 12);
                     this.i0 = li32(this.i8);
                     this.i2 = li32(this.i0 + 102796);
                     this.i3 = this.i0 + 102796;
                     this.i4 <<= 2;
                     while(true)
                     {
                        if(this.i2 >= 32)
                        {
                           this.i0 = cmodule.Box2D.___sF;
                           mstate.esp -= 24;
                           this.i1 = cmodule.Box2D.__2E_str1670;
                           this.i3 = cmodule.Box2D.__2E_str78285;
                           this.i4 = cmodule.Box2D.__ZZN16b2StackAllocator8AllocateEiE8__func__;
                           this.i7 = cmodule.Box2D.__2E_str10217;
                           this.i8 = 38;
                           this.i0 += 176;
                           si32(this.i0,mstate.esp);
                           si32(this.i1,mstate.esp + 4);
                           si32(this.i3,mstate.esp + 8);
                           si32(this.i4,mstate.esp + 12);
                           si32(this.i7,mstate.esp + 16);
                           si32(this.i8,mstate.esp + 20);
                        }
                        else
                        {
                           this.i2 = li32(this.i3);
                           this.i5 = this.i2 * 12;
                           this.i5 = this.i0 + this.i5;
                           si32(this.i4,this.i5 + 102416);
                           this.i5 = li32(this.i0 + 102400);
                           this.i6 = this.i5 + this.i4;
                           this.i9 = this.i0 + 102400;
                           if(this.i6 >= 102401)
                           {
                              this.i5 = 0;
                              mstate.esp -= 8;
                              si32(this.i5,mstate.esp);
                              si32(this.i4,mstate.esp + 4);
                              state = 5;
                              mstate.esp -= 4;
                              FSM_pubrealloc.start();
                              return;
                           }
                           addr0936:
                           this.i10 = 0;
                           this.i11 = this.i2 * 12;
                           this.i11 = this.i0 + this.i11;
                           this.i5 = this.i0 + this.i5;
                           si32(this.i5,this.i11 + 102412);
                           si8(this.i10,this.i11 + 102420);
                           si32(this.i6,this.i9);
                           this.i5 = li32(this.i0 + 102404);
                           this.i4 = this.i5 + this.i4;
                           si32(this.i4,this.i0 + 102404);
                           this.i5 = li32(this.i0 + 102408);
                           this.i4 = this.i5 > this.i4 ? this.i5 : this.i4;
                           si32(this.i4,this.i0 + 102408);
                           this.i4 = li32(this.i3);
                           this.i2 *= 12;
                           this.i4 += 1;
                           si32(this.i4,this.i3);
                           this.i0 += this.i2;
                           this.i0 = li32(this.i0 + 102412);
                           si32(this.i0,this.i1 + 16);
                           this.i0 = li32(this.i8);
                           this.i2 = li32(this.i7);
                           this.i3 = li32(this.i0 + 102796);
                           this.i4 = this.i0 + 102796;
                           this.i5 = this.i2 * 12;
                           if(this.i3 >= 32)
                           {
                              this.i0 = cmodule.Box2D.___sF;
                              mstate.esp -= 24;
                              this.i1 = cmodule.Box2D.__2E_str1670;
                              this.i2 = cmodule.Box2D.__2E_str78285;
                              this.i4 = cmodule.Box2D.__ZZN16b2StackAllocator8AllocateEiE8__func__;
                              this.i5 = cmodule.Box2D.__2E_str10217;
                              this.i7 = 38;
                              this.i0 += 176;
                              si32(this.i0,mstate.esp);
                              si32(this.i1,mstate.esp + 4);
                              si32(this.i2,mstate.esp + 8);
                              §§goto(addr0493);
                           }
                           else
                           {
                              this.i3 = li32(this.i4);
                              this.i6 = this.i3 * 12;
                              this.i6 = this.i0 + this.i6;
                              si32(this.i5,this.i6 + 102416);
                              this.i6 = li32(this.i0 + 102400);
                              this.i9 = this.i6 + this.i5;
                              this.i10 = this.i0 + 102400;
                              if(this.i9 >= 102401)
                              {
                                 this.i6 = 0;
                                 mstate.esp -= 8;
                                 this.i9 = this.i2 * 12;
                                 si32(this.i6,mstate.esp);
                                 si32(this.i9,mstate.esp + 4);
                                 state = 6;
                                 mstate.esp -= 4;
                                 FSM_pubrealloc.start();
                                 return;
                              }
                              addr0bf4:
                              this.i2 = 0;
                              this.i11 = this.i3 * 12;
                              this.i11 = this.i0 + this.i11;
                              this.i6 = this.i0 + this.i6;
                              si32(this.i6,this.i11 + 102412);
                              si8(this.i2,this.i11 + 102420);
                              si32(this.i9,this.i10);
                              this.i2 = li32(this.i0 + 102404);
                              this.i2 += this.i5;
                              si32(this.i2,this.i0 + 102404);
                              this.i5 = li32(this.i0 + 102408);
                              this.i2 = this.i5 > this.i2 ? this.i5 : this.i2;
                              si32(this.i2,this.i0 + 102408);
                              this.i2 = li32(this.i4);
                              this.i3 *= 12;
                              this.i2 += 1;
                              si32(this.i2,this.i4);
                              this.i0 += this.i3;
                              this.i0 = li32(this.i0 + 102412);
                              si32(this.i0,this.i1 + 24);
                              this.i0 = li32(this.i8);
                              this.i2 = li32(this.i7);
                              this.i3 = li32(this.i0 + 102796);
                              this.i4 = this.i0 + 102796;
                              this.i5 = this.i2 * 12;
                              if(this.i3 < 32)
                              {
                                 this.i3 = li32(this.i4);
                                 this.i6 = this.i3 * 12;
                                 this.i6 = this.i0 + this.i6;
                                 si32(this.i5,this.i6 + 102416);
                                 this.i6 = li32(this.i0 + 102400);
                                 this.i7 = this.i6 + this.i5;
                                 this.i8 = this.i0 + 102400;
                                 if(this.i7 >= 102401)
                                 {
                                    this.i6 = 0;
                                    mstate.esp -= 8;
                                    this.i7 = this.i2 * 12;
                                    si32(this.i6,mstate.esp);
                                    si32(this.i7,mstate.esp + 4);
                                    state = 7;
                                    mstate.esp -= 4;
                                    FSM_pubrealloc.start();
                                    return;
                                 }
                                 this.i2 = 0;
                                 this.i9 = this.i3 * 12;
                                 this.i9 = this.i0 + this.i9;
                                 this.i6 = this.i0 + this.i6;
                                 si32(this.i6,this.i9 + 102412);
                                 si8(this.i2,this.i9 + 102420);
                                 si32(this.i7,this.i8);
                                 break loop0;
                              }
                              this.i0 = cmodule.Box2D.___sF;
                              mstate.esp -= 24;
                              this.i1 = cmodule.Box2D.__2E_str1670;
                              this.i2 = cmodule.Box2D.__2E_str78285;
                              this.i4 = cmodule.Box2D.__ZZN16b2StackAllocator8AllocateEiE8__func__;
                              this.i5 = cmodule.Box2D.__2E_str10217;
                              this.i3 = 38;
                              this.i0 += 176;
                              si32(this.i0,mstate.esp);
                              si32(this.i1,mstate.esp + 4);
                              si32(this.i2,mstate.esp + 8);
                              si32(this.i4,mstate.esp + 12);
                              si32(this.i5,mstate.esp + 16);
                              si32(this.i3,mstate.esp + 20);
                           }
                        }
                        break;
                     }
                  }
               }
               state = 2;
               mstate.esp -= 4;
               FSM_fprintf.start();
               return;
            case 1:
               this.i9 = mstate.eax;
               this.i10 = this.i0 * 12;
               mstate.esp += 8;
               this.i10 = this.i5 + this.i10;
               si32(this.i9,this.i10 + 102412);
               this.i9 = 1;
               si8(this.i9,this.i10 + 102420);
               §§goto(addr0342);
            case 3:
               §§goto(addr0511);
            case 2:
               mstate.esp += 24;
               state = 3;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 4:
               this.i6 = mstate.eax;
               this.i9 = this.i2 * 12;
               mstate.esp += 8;
               this.i9 = this.i0 + this.i9;
               si32(this.i6,this.i9 + 102412);
               this.i6 = 1;
               si8(this.i6,this.i9 + 102420);
               §§goto(addr0662);
            case 5:
               this.i5 = mstate.eax;
               this.i6 = this.i2 * 12;
               mstate.esp += 8;
               this.i6 = this.i0 + this.i6;
               si32(this.i5,this.i6 + 102412);
               this.i5 = 1;
               si8(this.i5,this.i6 + 102420);
               §§goto(addr0936);
            case 6:
               this.i6 = mstate.eax;
               this.i9 = this.i3 * 12;
               mstate.esp += 8;
               this.i9 = this.i0 + this.i9;
               si32(this.i6,this.i9 + 102412);
               this.i6 = 1;
               si8(this.i6,this.i9 + 102420);
               §§goto(addr0bf4);
            case 7:
               this.i6 = mstate.eax;
               this.i7 = this.i3 * 12;
               mstate.esp += 8;
               this.i7 = this.i0 + this.i7;
               si32(this.i6,this.i7 + 102412);
               this.i6 = 1;
               si8(this.i6,this.i7 + 102420);
               break;
            default:
               throw "Invalid state in __ZN8b2IslandC1EiiiP16b2StackAllocatorP17b2ContactListener";
         }
         this.i2 = li32(this.i0 + 102404);
         this.i2 += this.i5;
         si32(this.i2,this.i0 + 102404);
         this.i5 = li32(this.i0 + 102408);
         this.i2 = this.i5 > this.i2 ? this.i5 : this.i2;
         si32(this.i2,this.i0 + 102408);
         this.i2 = li32(this.i4);
         this.i3 *= 12;
         this.i2 += 1;
         si32(this.i2,this.i4);
         this.i0 += this.i3;
         this.i0 = li32(this.i0 + 102412);
         si32(this.i0,this.i1 + 20);
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp += 4;
         mstate.esp += 4;
         mstate.gworker = caller;
      }
   }
}

