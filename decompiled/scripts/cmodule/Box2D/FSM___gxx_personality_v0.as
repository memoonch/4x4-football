package cmodule.Box2D
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM___gxx_personality_v0 extends Machine
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
      
      public function FSM___gxx_personality_v0()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM___gxx_personality_v0 = null;
         _loc1_ = new FSM___gxx_personality_v0();
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
               mstate.esp -= 32;
               this.i0 = li32(mstate.ebp + 24);
               this.i1 = li32(mstate.ebp + 12);
               this.i2 = li32(mstate.ebp + 28);
               this.i3 = li32(mstate.ebp + 16);
               this.i4 = li32(mstate.ebp + 20);
               this.i5 = this.i0 + 32;
               this.i6 = li32(mstate.ebp + 8);
               if(this.i6 == 1)
               {
                  this.i6 = this.i4 ^ 0x474E5543;
                  this.i7 = this.i3 ^ 0x432B2B00;
                  this.i6 = this.i7 | this.i6;
                  if(this.i6 == 0)
                  {
                     if(this.i1 == 6)
                     {
                        this.i6 = li32(this.i5 + -56);
                        this.i7 = li32(this.i5 + -48);
                        this.i8 = li32(this.i5 + -44);
                        this.i9 = this.i5 + -44;
                        this.i1 &= 8;
                        if(this.i1 == 0)
                        {
                           this.i1 = this.i4 ^ 0x474E5543;
                           this.i3 ^= 1126902528;
                           this.i1 = this.i3 | this.i1;
                           if(this.i1 == 0)
                           {
                              addr0201:
                              if(this.i8 == 0)
                              {
                                 mstate.esp -= 4;
                                 si32(this.i0,mstate.esp);
                                 state = 3;
                                 mstate.esp -= 4;
                                 FSM___cxa_begin_catch.start();
                                 return;
                              }
                              addr02b5:
                              if(this.i6 <= -1)
                              {
                                 this.i0 = mstate.ebp + -32;
                                 mstate.esp -= 12;
                                 si32(this.i2,mstate.esp);
                                 si32(this.i7,mstate.esp + 4);
                                 si32(this.i0,mstate.esp + 8);
                                 state = 5;
                                 mstate.esp -= 4;
                                 FSM__ZL17parse_lsda_headerP15_Unwind_ContextPKhP16lsda_header_info.start();
                                 return;
                              }
                              break;
                           }
                        }
                        if(this.i8 == 0)
                        {
                           state = 1;
                           mstate.esp -= 4;
                           FSM__ZSt9terminatev.start();
                           return;
                        }
                        addr01a5:
                        if(this.i6 <= -1)
                        {
                           this.i0 = cmodule.Box2D.__ZSt9terminatev;
                           mstate.esp -= 4;
                           si32(this.i0,mstate.esp);
                           state = 2;
                           mstate.esp -= 4;
                           FSM__ZN10__cxxabiv112__unexpectedEPFvvE.start();
                           return;
                        }
                        break;
                     }
                  }
                  this.i0 = cmodule.Box2D.__2E_str9105;
                  this.i2 = 4;
                  this.i5 = 8;
                  this.i1 = this.i2;
                  cmodule.Box2D.log(this.i1,mstate.gworker.stringFromPtr(this.i0));
                  mstate.eax = this.i5;
               }
               else
               {
                  this.i0 = 3;
                  mstate.eax = this.i0;
               }
               §§goto(addr04f0);
            case 1:
               §§goto(addr01a5);
            case 2:
               mstate.esp += 4;
               §§goto(addr0201);
            case 3:
               this.i2 = mstate.eax;
               mstate.esp += 4;
               this.i2 = li32(this.i5 + -68);
               mstate.esp -= 4;
               si32(this.i2,mstate.esp);
               state = 4;
               mstate.esp -= 4;
               FSM__ZN10__cxxabiv111__terminateEPFvvE.start();
               return;
            case 4:
               mstate.esp += 4;
               §§goto(addr02b5);
            case 5:
               mstate.esp += 12;
               this.i0 = li8(mstate.ebp + -12);
               if(this.i0 != 255)
               {
                  this.i0 &= 112;
                  if(this.i0 <= 47)
                  {
                     if(this.i0 != 0)
                     {
                        if(this.i0 != 16)
                        {
                           if(this.i0 != 32)
                           {
                              §§goto(addr03d7);
                           }
                           else
                           {
                              this.i0 = cmodule.Box2D.__2E_str7103;
                              this.i1 = 4;
                              cmodule.Box2D.log(this.i1,mstate.gworker.stringFromPtr(this.i0));
                           }
                        }
                     }
                  }
                  else if(this.i0 != 48)
                  {
                     if(this.i0 != 64)
                     {
                        if(this.i0 != 80)
                        {
                           addr03d7:
                           state = 6;
                           mstate.esp -= 4;
                           FSM_abort1.start();
                           return;
                        }
                     }
                     else
                     {
                        this.i0 = cmodule.Box2D.__2E_str8104;
                        this.i1 = 4;
                        cmodule.Box2D.log(this.i1,mstate.gworker.stringFromPtr(this.i0));
                     }
                  }
                  else
                  {
                     addr03f7:
                     this.i0 = cmodule.Box2D.__2E_str10106;
                     this.i1 = 4;
                     cmodule.Box2D.log(this.i1,mstate.gworker.stringFromPtr(this.i0));
                  }
               }
               this.i0 = 0;
               si32(this.i0,this.i9);
               break;
            case 6:
               §§goto(addr03f7);
            default:
               throw "Invalid state in ___gxx_personality_v0";
         }
         this.i2 = cmodule.Box2D.__2E_str399;
         this.i3 = 4;
         this.i0 = this.i2;
         this.i1 = this.i3;
         cmodule.Box2D.log(this.i1,mstate.gworker.stringFromPtr(this.i0));
         this.i4 = cmodule.Box2D.__2E_str197;
         this.i0 = this.i2;
         this.i1 = this.i3;
         cmodule.Box2D.log(this.i1,mstate.gworker.stringFromPtr(this.i0));
         this.i2 = 7;
         this.i0 = this.i4;
         this.i1 = this.i3;
         cmodule.Box2D.log(this.i1,mstate.gworker.stringFromPtr(this.i0));
         mstate.eax = this.i2;
         addr04f0:
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp += 4;
         mstate.esp += 4;
         mstate.gworker = caller;
      }
   }
}

