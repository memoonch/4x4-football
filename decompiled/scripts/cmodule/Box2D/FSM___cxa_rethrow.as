package cmodule.Box2D
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM___cxa_rethrow extends Machine
   {
      
      public static const intRegCount:int = 5;
      
      public static const NumberRegCount:int = 0;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public function FSM___cxa_rethrow()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM___cxa_rethrow = null;
         _loc1_ = new FSM___cxa_rethrow();
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
               this.i1 = li32(this.i0);
               if(this.i1 != 0)
               {
                  this.i2 = li32(this.i1 + 48);
                  this.i3 = li32(this.i1 + 52);
                  this.i3 ^= 1196315971;
                  this.i2 ^= 1126902528;
                  this.i4 = this.i1 + 48;
                  this.i2 |= this.i3;
                  if(this.i2 != 0)
                  {
                     this.i1 = 0;
                     si32(this.i1,this.i0);
                     this.i1 = cmodule.Box2D.__2E_str5101;
                     this.i2 = 4;
                     this.i0 = this.i1;
                     this.i1 = this.i2;
                     cmodule.Box2D.log(this.i1,mstate.gworker.stringFromPtr(this.i0));
                     mstate.esp -= 4;
                     si32(this.i4,mstate.esp);
                     state = 2;
                     mstate.esp -= 4;
                     FSM___cxa_begin_catch.start();
                     return;
                  }
                  this.i0 = cmodule.Box2D.__2E_str5101;
                  this.i2 = li32(this.i1 + 20);
                  this.i2 = 0 - this.i2;
                  si32(this.i2,this.i1 + 20);
                  this.i1 = 4;
                  cmodule.Box2D.log(this.i1,mstate.gworker.stringFromPtr(this.i0));
                  mstate.esp -= 4;
                  si32(this.i4,mstate.esp);
                  state = 3;
                  mstate.esp -= 4;
                  FSM___cxa_begin_catch.start();
                  return;
               }
               break;
            case 4:
               break;
            case 2:
               this.i1 = mstate.eax;
               §§goto(addr0201);
            case 3:
               this.i0 = mstate.eax;
               addr0201:
               mstate.esp += 4;
               state = 4;
               mstate.esp -= 4;
               FSM__ZSt9terminatev.start();
               return;
            default:
               throw "Invalid state in ___cxa_rethrow";
         }
         state = 5;
         mstate.esp -= 4;
         FSM__ZSt9terminatev.start();
      }
   }
}

