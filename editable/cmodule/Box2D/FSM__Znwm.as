package cmodule.Box2D
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__Znwm extends Machine
   {
      
      public static const intRegCount:int = 3;
      
      public static const NumberRegCount:int = 0;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public function FSM__Znwm()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__Znwm = null;
         _loc1_ = new FSM__Znwm();
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
               this.i0 = 0;
               this.i1 = li32(mstate.ebp + 8);
               mstate.esp -= 8;
               this.i1 = this.i1 == 0 ? 1 : this.i1;
               si32(this.i0,mstate.esp);
               si32(this.i1,mstate.esp + 4);
               state = 1;
               mstate.esp -= 4;
               FSM_pubrealloc.start();
               return;
            case 1:
               this.i0 = mstate.eax;
               mstate.esp += 8;
               if(this.i0 == 0)
               {
                  this.i0 = 4;
                  mstate.esp -= 4;
                  si32(this.i0,mstate.esp);
                  this.i0 = cmodule.Box2D.__ZTVSt9bad_alloc;
                  state = 2;
                  mstate.esp -= 4;
                  FSM___cxa_allocate_exception.start();
                  return;
               }
               break;
            case 2:
               this.i1 = mstate.eax;
               mstate.esp += 4;
               this.i0 += 8;
               si32(this.i0,this.i1);
               mstate.esp -= 12;
               this.i0 = cmodule.Box2D.__ZTISt9bad_alloc;
               this.i2 = cmodule.Box2D.__ZNSt9bad_allocD1Ev;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               si32(this.i2,mstate.esp + 8);
               state = 3;
               mstate.esp -= 4;
               FSM___cxa_throw.start();
               return;
            case 3:
               mstate.esp += 12;
               break;
            default:
               throw "Invalid state in __Znwm";
         }
         mstate.eax = this.i0;
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp += 4;
         mstate.esp += 4;
         mstate.gworker = caller;
      }
   }
}

