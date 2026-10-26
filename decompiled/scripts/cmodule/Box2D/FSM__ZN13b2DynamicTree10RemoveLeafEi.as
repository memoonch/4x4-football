package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZN13b2DynamicTree10RemoveLeafEi extends Machine
   {
      
      public static const intRegCount:int = 8;
      
      public static const NumberRegCount:int = 3;
      
      public var f1:Number;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public var i6:int;
      
      public var f0:Number;
      
      public var f2:Number;
      
      public var i7:int;
      
      public function FSM__ZN13b2DynamicTree10RemoveLeafEi()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZN13b2DynamicTree10RemoveLeafEi = null;
         _loc1_ = new FSM__ZN13b2DynamicTree10RemoveLeafEi();
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
               mstate.esp -= 0;
               this.i0 = li32(mstate.ebp + 8);
               this.i1 = li32(this.i0);
               this.i2 = li32(mstate.ebp + 12);
               this.i3 = this.i0;
               if(this.i1 != this.i2)
               {
                  this.i1 = li32(this.i0 + 4);
                  this.i4 = this.i2 * 36;
                  this.i4 = this.i1 + this.i4;
                  this.i4 = li32(this.i4 + 20);
                  this.i5 = this.i4 * 36;
                  this.i5 = this.i1 + this.i5;
                  this.i6 = li32(this.i5 + 20);
                  this.i5 = li32(this.i5 + 24);
                  this.i7 = this.i0 + 4;
                  loop2:
                  while(true)
                  {
                     if(this.i5 == this.i2)
                     {
                        this.i5 = this.i4 * 36;
                        this.i5 = this.i1 + this.i5;
                        this.i5 = li32(this.i5 + 28);
                        if(this.i6 != -1)
                        {
                           addr0154:
                           this.i3 = this.i5;
                           this.i5 = this.i6 * 36;
                           this.i5 = this.i1 + this.i5;
                           this.i2 = li32(this.i5 + 24);
                           this.i5 += 24;
                           if(this.i2 == this.i4)
                           {
                              si32(this.i3,this.i5);
                           }
                           else
                           {
                              this.i5 = this.i6 * 36;
                              this.i1 += this.i5;
                              si32(this.i3,this.i1 + 28);
                           }
                           this.i1 = li32(this.i7);
                           this.i3 *= 36;
                           this.i1 += this.i3;
                           si32(this.i6,this.i1 + 20);
                           while(true)
                           {
                              if(this.i4 >= 0)
                              {
                                 this.i1 = li32(this.i0 + 12);
                                 if(this.i1 > this.i4)
                                 {
                                    this.i1 = li32(this.i0 + 8);
                                    this.i3 = this.i0 + 8;
                                    if(this.i1 <= 0)
                                    {
                                       this.i3 = cmodule.Box2D.___sF;
                                       mstate.esp -= 24;
                                       this.i0 = cmodule.Box2D.__2E_str1670;
                                       this.i1 = cmodule.Box2D.__2E_str7214;
                                       this.i4 = cmodule.Box2D.__ZZN13b2DynamicTree8FreeNodeEiE8__func__;
                                       this.i5 = cmodule.Box2D.__2E_str5212;
                                       this.i6 = 92;
                                       this.i3 += 176;
                                       si32(this.i3,mstate.esp);
                                       si32(this.i0,mstate.esp + 4);
                                       si32(this.i1,mstate.esp + 8);
                                       break;
                                    }
                                    addr08e7:
                                    this.i1 = li32(this.i7);
                                    this.i5 = li32(this.i0 + 16);
                                    this.i2 = this.i4 * 36;
                                    this.i1 += this.i2;
                                    si32(this.i5,this.i1 + 20);
                                    si32(this.i4,this.i0 + 16);
                                    this.i0 = li32(this.i3);
                                    this.i0 += -1;
                                    si32(this.i0,this.i3);
                                    if(this.i6 != -1)
                                    {
                                       this.i0 = this.i6;
                                       while(true)
                                       {
                                          this.i1 = li32(this.i7);
                                          this.i3 = this.i0 * 36;
                                          this.i4 = this.i1 + this.i3;
                                          this.i5 = li32(this.i4 + 28);
                                          this.i2 = li32(this.i4 + 24);
                                          this.i2 *= 36;
                                          this.i5 *= 36;
                                          this.i2 = this.i1 + this.i2;
                                          this.i1 += this.i5;
                                          this.f0 = lf32(this.i1);
                                          this.f1 = lf32(this.i2);
                                          this.f0 = this.f1 < this.f0 ? this.f1 : this.f0;
                                          this.f1 = lf32(this.i1 + 4);
                                          this.f2 = lf32(this.i2 + 4);
                                          this.f1 = this.f2 < this.f1 ? this.f2 : this.f1;
                                          this.f0 = this.f0;
                                          sf32(this.f0,this.i4);
                                          this.f0 = this.f1;
                                          sf32(this.f0,this.i4 + 4);
                                          this.f0 = lf32(this.i1 + 8);
                                          this.f1 = lf32(this.i2 + 8);
                                          this.f0 = this.f1 > this.f0 ? this.f1 : this.f0;
                                          this.f1 = lf32(this.i1 + 12);
                                          this.f2 = lf32(this.i2 + 12);
                                          this.f1 = this.f2 > this.f1 ? this.f2 : this.f1;
                                          this.f0 = this.f0;
                                          sf32(this.f0,this.i4 + 8);
                                          this.f0 = this.f1;
                                          sf32(this.f0,this.i4 + 12);
                                          this.i1 = li32(this.i7);
                                          this.i1 += this.i3;
                                          this.i3 = li32(this.i1 + 32);
                                          this.i1 += 32;
                                          if(this.i3 <= 0)
                                          {
                                             break;
                                          }
                                          this.i3 += -1;
                                          si32(this.i3,this.i1);
                                          this.i1 = li32(this.i7);
                                          this.i0 *= 36;
                                          this.i0 = this.i1 + this.i0;
                                          this.i0 = li32(this.i0 + 20);
                                          if(this.i0 != -1)
                                          {
                                             continue;
                                          }
                                       }
                                       this.i0 = cmodule.Box2D.___sF;
                                       mstate.esp -= 24;
                                       this.i1 = cmodule.Box2D.__2E_str1670;
                                       this.i3 = cmodule.Box2D.__2E_str106;
                                       this.i4 = cmodule.Box2D.__ZZN13b2DynamicTree10RemoveLeafEiE8__func__;
                                       this.i5 = cmodule.Box2D.__2E_str5212;
                                       this.i7 = 332;
                                       this.i0 += 176;
                                       si32(this.i0,mstate.esp);
                                       si32(this.i1,mstate.esp + 4);
                                       si32(this.i3,mstate.esp + 8);
                                       si32(this.i4,mstate.esp + 12);
                                       si32(this.i5,mstate.esp + 16);
                                       si32(this.i7,mstate.esp + 20);
                                       break loop2;
                                    }
                                    mstate.esp = mstate.ebp;
                                    mstate.ebp = li32(mstate.esp);
                                    mstate.esp += 4;
                                    mstate.esp += 4;
                                    mstate.gworker = caller;
                                    return;
                                 }
                              }
                              this.i0 = cmodule.Box2D.___sF;
                              mstate.esp -= 24;
                              this.i1 = cmodule.Box2D.__2E_str1670;
                              this.i3 = cmodule.Box2D.__2E_str6213;
                              this.i4 = cmodule.Box2D.__ZZN13b2DynamicTree8FreeNodeEiE8__func__;
                              this.i5 = cmodule.Box2D.__2E_str5212;
                              this.i6 = 91;
                              this.i0 += 176;
                              si32(this.i0,mstate.esp);
                              si32(this.i1,mstate.esp + 4);
                              si32(this.i3,mstate.esp + 8);
                              break;
                           }
                           si32(this.i4,mstate.esp + 12);
                           si32(this.i5,mstate.esp + 16);
                           si32(this.i6,mstate.esp + 20);
                           break;
                        }
                     }
                     else if(this.i6 != -1)
                     {
                        §§goto(addr0154);
                     }
                     this.i2 = this.i5;
                     this.i5 = -1;
                     this.i6 = this.i2 * 36;
                     si32(this.i2,this.i3);
                     this.i1 += this.i6;
                     si32(this.i5,this.i1 + 20);
                     if(this.i4 >= 0)
                     {
                        this.i1 = li32(this.i0 + 12);
                        if(this.i1 > this.i4)
                        {
                           break loop1;
                        }
                     }
                     this.i0 = cmodule.Box2D.___sF;
                     mstate.esp -= 24;
                     this.i4 = cmodule.Box2D.__2E_str1670;
                     this.i7 = cmodule.Box2D.__2E_str6213;
                     this.i1 = cmodule.Box2D.__ZZN13b2DynamicTree8FreeNodeEiE8__func__;
                     this.i2 = cmodule.Box2D.__2E_str5212;
                     this.i3 = 91;
                     this.i0 += 176;
                     si32(this.i0,mstate.esp);
                     si32(this.i4,mstate.esp + 4);
                     si32(this.i7,mstate.esp + 8);
                     si32(this.i1,mstate.esp + 12);
                     si32(this.i2,mstate.esp + 16);
                     addr0776:
                     si32(this.i3,mstate.esp + 20);
                     break;
                  }
                  state = 1;
                  mstate.esp -= 4;
                  FSM_fprintf.start();
                  return;
               }
               this.i0 = -1;
               si32(this.i0,this.i3);
               §§goto(addr08e7);
            case 2:
               break;
            case 1:
               mstate.esp += 24;
               state = 2;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            default:
               throw "Invalid state in __ZN13b2DynamicTree10RemoveLeafEi";
         }
         this.i1 = li32(this.i0 + 8);
         this.i2 = this.i0 + 8;
         if(this.i1 <= 0)
         {
            this.i0 = cmodule.Box2D.___sF;
            mstate.esp -= 24;
            this.i2 = cmodule.Box2D.__2E_str1670;
            this.i4 = cmodule.Box2D.__2E_str7214;
            this.i7 = cmodule.Box2D.__ZZN13b2DynamicTree8FreeNodeEiE8__func__;
            this.i1 = cmodule.Box2D.__2E_str5212;
            this.i3 = 92;
            this.i0 += 176;
            si32(this.i0,mstate.esp);
            si32(this.i2,mstate.esp + 4);
            si32(this.i4,mstate.esp + 8);
            si32(this.i7,mstate.esp + 12);
            si32(this.i1,mstate.esp + 16);
            §§goto(addr0776);
         }
         else
         {
            this.i1 = li32(this.i7);
            this.i3 = li32(this.i0 + 16);
            this.i5 = this.i4 * 36;
            this.i1 += this.i5;
            si32(this.i3,this.i1 + 20);
            si32(this.i4,this.i0 + 16);
            this.i0 = li32(this.i2);
            this.i0 += -1;
            si32(this.i0,this.i2);
            §§goto(addr08e7);
         }
      }
   }
}

