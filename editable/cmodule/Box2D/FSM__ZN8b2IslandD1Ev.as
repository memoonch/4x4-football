package cmodule.Box2D
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZN8b2IslandD1Ev extends Machine
   {
      
      public static const intRegCount:int = 7;
      
      public static const NumberRegCount:int = 0;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public var i6:int;
      
      public function FSM__ZN8b2IslandD1Ev()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZN8b2IslandD1Ev = null;
         _loc1_ = new FSM__ZN8b2IslandD1Ev();
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
               this.i0 = li32(mstate.ebp + 8);
               this.i1 = li32(this.i0);
               this.i2 = li32(this.i0 + 20);
               this.i3 = li32(this.i1 + 102796);
               this.i4 = this.i1 + 102796;
               this.i5 = this.i0;
               if(this.i3 <= 0)
               {
                  addr00ae:
                  this.i0 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i1 = cmodule.Box2D.__2E_str1670;
                  this.i2 = cmodule.Box2D.__2E_str83290;
                  this.i4 = cmodule.Box2D.__ZZN16b2BlockAllocator4FreeEPviE8__func__;
                  this.i5 = cmodule.Box2D.__2E_str10217;
                  this.i3 = 63;
                  this.i0 += 176;
                  si32(this.i0,mstate.esp);
                  si32(this.i1,mstate.esp + 4);
                  si32(this.i2,mstate.esp + 8);
                  si32(this.i4,mstate.esp + 12);
                  si32(this.i5,mstate.esp + 16);
                  si32(this.i3,mstate.esp + 20);
               }
               else
               {
                  this.i3 = li32(this.i4);
                  this.i3 += -1;
                  this.i6 = this.i3 * 12;
                  this.i6 = this.i1 + this.i6;
                  this.i6 = li32(this.i6 + 102412);
                  while(true)
                  {
                     if(this.i6 == this.i2)
                     {
                        addr0285:
                        this.i6 = this.i3 * 12;
                        this.i6 = this.i1 + this.i6;
                        this.i6 = li8(this.i6 + 102420);
                        if(this.i6 != 0)
                        {
                           this.i6 = 0;
                           mstate.esp -= 8;
                           si32(this.i2,mstate.esp);
                           si32(this.i6,mstate.esp + 4);
                           state = 3;
                           mstate.esp -= 4;
                           FSM_pubrealloc.start();
                           return;
                        }
                        addr036c:
                        this.i2 = this.i3 * 12;
                        this.i2 = this.i1 + this.i2;
                        this.i6 = li32(this.i1 + 102400);
                        this.i2 = li32(this.i2 + 102416);
                        this.i2 = this.i6 - this.i2;
                        si32(this.i2,this.i1 + 102400);
                        this.i2 = this.i3 * 12;
                        this.i2 = this.i1 + this.i2;
                        this.i3 = li32(this.i1 + 102404);
                        this.i2 = li32(this.i2 + 102416);
                        this.i2 = this.i3 - this.i2;
                        si32(this.i2,this.i1 + 102404);
                        this.i1 = li32(this.i4);
                        this.i1 += -1;
                        si32(this.i1,this.i4);
                        this.i1 = li32(this.i5);
                        this.i2 = li32(this.i0 + 24);
                        this.i3 = li32(this.i1 + 102796);
                        this.i4 = this.i1 + 102796;
                        if(this.i3 > 0)
                        {
                           this.i3 = li32(this.i4);
                           this.i3 += -1;
                           this.i6 = this.i3 * 12;
                           this.i6 = this.i1 + this.i6;
                           this.i6 = li32(this.i6 + 102412);
                           if(this.i6 == this.i2)
                           {
                              this.i6 = this.i3 * 12;
                              this.i6 = this.i1 + this.i6;
                              this.i6 = li8(this.i6 + 102420);
                              if(this.i6 != 0)
                              {
                                 this.i6 = 0;
                                 mstate.esp -= 8;
                                 si32(this.i2,mstate.esp);
                                 si32(this.i6,mstate.esp + 4);
                                 state = 4;
                                 mstate.esp -= 4;
                                 FSM_pubrealloc.start();
                                 return;
                              }
                              addr054d:
                              this.i2 = this.i3 * 12;
                              this.i2 = this.i1 + this.i2;
                              this.i6 = li32(this.i1 + 102400);
                              this.i2 = li32(this.i2 + 102416);
                              this.i2 = this.i6 - this.i2;
                              si32(this.i2,this.i1 + 102400);
                              this.i2 = this.i3 * 12;
                              this.i2 = this.i1 + this.i2;
                              this.i3 = li32(this.i1 + 102404);
                              this.i2 = li32(this.i2 + 102416);
                              this.i2 = this.i3 - this.i2;
                              si32(this.i2,this.i1 + 102404);
                              this.i1 = li32(this.i4);
                              this.i1 += -1;
                              si32(this.i1,this.i4);
                              this.i1 = li32(this.i5);
                              this.i2 = li32(this.i0 + 16);
                              this.i3 = li32(this.i1 + 102796);
                              this.i4 = this.i1 + 102796;
                              if(this.i3 > 0)
                              {
                                 this.i3 = li32(this.i4);
                                 this.i3 += -1;
                                 this.i6 = this.i3 * 12;
                                 this.i6 = this.i1 + this.i6;
                                 this.i6 = li32(this.i6 + 102412);
                                 if(this.i6 == this.i2)
                                 {
                                    this.i6 = this.i3 * 12;
                                    this.i6 = this.i1 + this.i6;
                                    this.i6 = li8(this.i6 + 102420);
                                    if(this.i6 != 0)
                                    {
                                       this.i6 = 0;
                                       mstate.esp -= 8;
                                       si32(this.i2,mstate.esp);
                                       si32(this.i6,mstate.esp + 4);
                                       state = 5;
                                       mstate.esp -= 4;
                                       FSM_pubrealloc.start();
                                       return;
                                    }
                                    addr0729:
                                    this.i2 = this.i3 * 12;
                                    this.i2 = this.i1 + this.i2;
                                    this.i6 = li32(this.i1 + 102400);
                                    this.i2 = li32(this.i2 + 102416);
                                    this.i2 = this.i6 - this.i2;
                                    si32(this.i2,this.i1 + 102400);
                                    this.i2 = this.i3 * 12;
                                    this.i2 = this.i1 + this.i2;
                                    this.i3 = li32(this.i1 + 102404);
                                    this.i2 = li32(this.i2 + 102416);
                                    this.i2 = this.i3 - this.i2;
                                    si32(this.i2,this.i1 + 102404);
                                    this.i1 = li32(this.i4);
                                    this.i1 += -1;
                                    si32(this.i1,this.i4);
                                    this.i1 = li32(this.i5);
                                    this.i2 = li32(this.i0 + 12);
                                    this.i3 = li32(this.i1 + 102796);
                                    this.i4 = this.i1 + 102796;
                                    if(this.i3 <= 0)
                                    {
                                       §§goto(addr00ae);
                                       addr07cb:
                                       addr0413:
                                    }
                                    else
                                    {
                                       this.i3 = li32(this.i4);
                                       this.i3 += -1;
                                       this.i6 = this.i3 * 12;
                                       this.i6 = this.i1 + this.i6;
                                       this.i6 = li32(this.i6 + 102412);
                                       if(this.i6 == this.i2)
                                       {
                                          this.i6 = this.i3 * 12;
                                          this.i6 = this.i1 + this.i6;
                                          this.i6 = li8(this.i6 + 102420);
                                          if(this.i6 != 0)
                                          {
                                             this.i6 = 0;
                                             mstate.esp -= 8;
                                             si32(this.i2,mstate.esp);
                                             si32(this.i6,mstate.esp + 4);
                                             state = 6;
                                             mstate.esp -= 4;
                                             FSM_pubrealloc.start();
                                             return;
                                          }
                                          addr0905:
                                          this.i2 = this.i3 * 12;
                                          this.i2 = this.i1 + this.i2;
                                          this.i6 = li32(this.i1 + 102400);
                                          this.i2 = li32(this.i2 + 102416);
                                          this.i2 = this.i6 - this.i2;
                                          si32(this.i2,this.i1 + 102400);
                                          this.i2 = this.i3 * 12;
                                          this.i2 = this.i1 + this.i2;
                                          this.i3 = li32(this.i1 + 102404);
                                          this.i2 = li32(this.i2 + 102416);
                                          this.i2 = this.i3 - this.i2;
                                          si32(this.i2,this.i1 + 102404);
                                          this.i1 = li32(this.i4);
                                          this.i1 += -1;
                                          si32(this.i1,this.i4);
                                          this.i1 = li32(this.i5);
                                          this.i0 = li32(this.i0 + 8);
                                          this.i2 = li32(this.i1 + 102796);
                                          this.i3 = this.i1 + 102796;
                                          if(this.i2 <= 0)
                                          {
                                             this.i0 = cmodule.Box2D.___sF;
                                             mstate.esp -= 24;
                                             this.i1 = cmodule.Box2D.__2E_str1670;
                                             this.i3 = cmodule.Box2D.__2E_str83290;
                                             this.i2 = cmodule.Box2D.__ZZN16b2BlockAllocator4FreeEPviE8__func__;
                                             this.i4 = cmodule.Box2D.__2E_str10217;
                                             this.i5 = 63;
                                             this.i0 += 176;
                                             si32(this.i0,mstate.esp);
                                             si32(this.i1,mstate.esp + 4);
                                             si32(this.i3,mstate.esp + 8);
                                             si32(this.i2,mstate.esp + 12);
                                             break;
                                          }
                                          this.i2 = li32(this.i3);
                                          this.i2 += -1;
                                          this.i4 = this.i2 * 12;
                                          this.i4 = this.i1 + this.i4;
                                          this.i4 = li32(this.i4 + 102412);
                                          if(this.i4 == this.i0)
                                          {
                                             this.i4 = this.i2 * 12;
                                             this.i4 = this.i1 + this.i4;
                                             this.i4 = li8(this.i4 + 102420);
                                             if(this.i4 != 0)
                                             {
                                                this.i4 = 0;
                                                mstate.esp -= 8;
                                                si32(this.i0,mstate.esp);
                                                si32(this.i4,mstate.esp + 4);
                                                state = 7;
                                                mstate.esp -= 4;
                                                FSM_pubrealloc.start();
                                                return;
                                             }
                                             this.i0 = this.i2 * 12;
                                             this.i0 = this.i1 + this.i0;
                                             this.i4 = li32(this.i1 + 102400);
                                             this.i0 = li32(this.i0 + 102416);
                                             this.i0 = this.i4 - this.i0;
                                             si32(this.i0,this.i1 + 102400);
                                             break loop0;
                                          }
                                       }
                                    }
                                 }
                                 addr0197:
                                 this.i0 = cmodule.Box2D.___sF;
                                 mstate.esp -= 24;
                                 this.i1 = cmodule.Box2D.__2E_str1670;
                                 this.i2 = cmodule.Box2D.__2E_str84291;
                                 this.i3 = cmodule.Box2D.__ZZN16b2BlockAllocator4FreeEPviE8__func__;
                                 this.i4 = cmodule.Box2D.__2E_str10217;
                                 this.i5 = 65;
                                 this.i0 += 176;
                                 si32(this.i0,mstate.esp);
                                 si32(this.i1,mstate.esp + 4);
                                 si32(this.i2,mstate.esp + 8);
                                 si32(this.i3,mstate.esp + 12);
                                 break;
                                 addr0462:
                              }
                              §§goto(addr07cb);
                           }
                           §§goto(addr0462);
                        }
                        §§goto(addr0413);
                     }
                     §§goto(addr0197);
                  }
                  si32(this.i4,mstate.esp + 16);
                  si32(this.i5,mstate.esp + 20);
               }
               state = 1;
               mstate.esp -= 4;
               FSM_fprintf.start();
               return;
            case 2:
               §§goto(addr0285);
            case 1:
               mstate.esp += 24;
               state = 2;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 3:
               this.i2 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr036c);
            case 4:
               this.i2 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr054d);
            case 5:
               this.i2 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr0729);
            case 6:
               this.i2 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr0905);
            case 7:
               this.i0 = mstate.eax;
               mstate.esp += 8;
               break;
            default:
               throw "Invalid state in __ZN8b2IslandD1Ev";
         }
         this.i0 = this.i2 * 12;
         this.i0 = this.i1 + this.i0;
         this.i2 = li32(this.i1 + 102404);
         this.i0 = li32(this.i0 + 102416);
         this.i0 = this.i2 - this.i0;
         si32(this.i0,this.i1 + 102404);
         this.i0 = li32(this.i3);
         this.i0 += -1;
         si32(this.i0,this.i3);
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp += 4;
         mstate.esp += 4;
         mstate.gworker = caller;
      }
   }
}

