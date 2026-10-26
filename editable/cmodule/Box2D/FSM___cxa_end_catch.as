package cmodule.Box2D
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM___cxa_end_catch extends Machine
   {
      
      public static const intRegCount:int = 6;
      
      public static const NumberRegCount:int = 0;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public function FSM___cxa_end_catch()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM___cxa_end_catch = null;
         _loc1_ = new FSM___cxa_end_catch();
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
               this.i0 = cmodule.Box2D.__ZL14globals_static;
               this.i1 = li8(cmodule.Box2D.__ZL14use_thread_key_2E_b);
               this.i0 = this.i1 != 0 ? this.i0 : 0;
               this.i1 = li32(this.i0);
               this.i2 = this.i0;
               if(this.i1 != 0)
               {
                  this.i3 = li32(this.i1 + 48);
                  this.i4 = li32(this.i1 + 52);
                  this.i4 ^= 1196315971;
                  this.i3 ^= 1126902528;
                  this.i3 |= this.i4;
                  if(this.i3 != 0)
                  {
                     this.i1 = 0;
                     si32(this.i1,this.i0);
                     this.i0 = cmodule.Box2D.__2E_str11107;
                     this.i1 = 4;
                     addr00f8:
                     cmodule.Box2D.log(this.i1,mstate.gworker.stringFromPtr(this.i0));
                  }
                  else
                  {
                     this.i3 = li32(this.i1 + 20);
                     this.i4 = this.i1 + 20;
                     while(true)
                     {
                        if(this.i3 <= -1)
                        {
                           this.i3 += 1;
                           if(this.i3 == 0)
                           {
                              this.i5 = li32(this.i2 + 4);
                              this.i5 += 1;
                              si32(this.i5,this.i2 + 4);
                              this.i1 = li32(this.i1 + 16);
                              si32(this.i1,this.i0);
                              si32(this.i3,this.i4);
                              break;
                           }
                        }
                        else
                        {
                           this.i2 = this.i3 + -1;
                           if(this.i3 == 1)
                           {
                              this.i2 = cmodule.Box2D.__2E_str11107;
                              this.i3 = li32(this.i1 + 16);
                              si32(this.i3,this.i0);
                              this.i3 = 4;
                              this.i0 = this.i2;
                              this.i1 = this.i3;
                              §§goto(addr00f8);
                           }
                           else
                           {
                              if(this.i2 < 0)
                              {
                                 state = 1;
                                 mstate.esp -= 4;
                                 FSM__ZSt9terminatev.start();
                                 return;
                              }
                              this.i3 = this.i2;
                           }
                        }
                        this.i0 = this.i3;
                        si32(this.i0,this.i4);
                        break;
                     }
                  }
               }
               mstate.esp = mstate.ebp;
               mstate.ebp = li32(mstate.esp);
               mstate.esp += 4;
               mstate.esp += 4;
               mstate.gworker = caller;
               return;
            default:
               throw "Invalid state in ___cxa_end_catch";
         }
      }
   }
}

