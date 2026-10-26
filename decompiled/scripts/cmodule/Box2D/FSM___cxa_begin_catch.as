package cmodule.Box2D
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM___cxa_begin_catch extends Machine
   {
      
      public static const intRegCount:int = 8;
      
      public static const NumberRegCount:int = 0;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public var i6:int;
      
      public var i7:int;
      
      public function FSM___cxa_begin_catch()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM___cxa_begin_catch = null;
         _loc1_ = new FSM___cxa_begin_catch();
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
               state = 1;
               mstate.esp -= 4;
               FSM___cxa_get_globals.start();
               return;
            case 1:
               this.i0 = mstate.eax;
               this.i1 = li32(mstate.ebp + 8);
               this.i2 = li32(this.i1);
               this.i3 = li32(this.i1 + 4);
               this.i4 = li32(this.i0);
               this.i5 = this.i1 + -48;
               this.i1 += 32;
               this.i3 ^= 1196315971;
               this.i2 ^= 1126902528;
               this.i6 = this.i0;
               this.i2 |= this.i3;
               while(true)
               {
                  if(this.i2 == 0)
                  {
                     this.i2 = li32(this.i1 + -60);
                     this.i3 = this.i1 + -60;
                     if(this.i2 <= -1)
                     {
                        this.i0 = 1 - this.i2;
                        si32(this.i0,this.i3);
                        if(this.i5 == this.i4)
                        {
                           addr017d:
                           this.i0 = li32(this.i1 + -40);
                           addr018d:
                           mstate.eax = this.i0;
                           break;
                        }
                     }
                     else
                     {
                        this.i7 = li32(this.i0 + 4);
                        this.i7 += -1;
                        si32(this.i7,this.i0 + 4);
                        this.i0 = this.i2 + 1;
                        si32(this.i0,this.i3);
                        if(this.i5 == this.i4)
                        {
                           §§goto(addr017d);
                        }
                     }
                     si32(this.i4,this.i1 + -64);
                     si32(this.i5,this.i6);
                     this.i1 = li32(this.i1 + -40);
                     mstate.eax = this.i1;
                     break;
                  }
                  if(this.i4 != 0)
                  {
                     state = 2;
                     mstate.esp -= 4;
                     FSM__ZSt9terminatev.start();
                     return;
                  }
                  this.i0 = 0;
                  si32(this.i5,this.i6);
                  §§goto(addr018d);
               }
               mstate.esp = mstate.ebp;
               mstate.ebp = li32(mstate.esp);
               mstate.esp += 4;
               mstate.esp += 4;
               mstate.gworker = caller;
               return;
            case 2:
         }
         throw "Invalid state in ___cxa_begin_catch";
      }
   }
}

