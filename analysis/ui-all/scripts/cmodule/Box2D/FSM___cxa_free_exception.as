package cmodule.Box2D
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM___cxa_free_exception extends Machine
   {
      
      public static const intRegCount:int = 2;
      
      public static const NumberRegCount:int = 0;
      
      public var i0:int;
      
      public var i1:int;
      
      public function FSM___cxa_free_exception()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM___cxa_free_exception = null;
         _loc1_ = new FSM___cxa_free_exception();
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
               this.i0 = cmodule.Box2D.__ZL16emergency_buffer;
               this.i1 = li32(mstate.ebp + 8);
               this.i0 += 16384;
               if(uint(this.i1) < uint(this.i0))
               {
                  this.i0 = cmodule.Box2D.__ZL16emergency_buffer;
                  if(uint(this.i1) >= uint(this.i0))
                  {
                     this.i0 = cmodule.Box2D.__ZL16emergency_buffer;
                     this.i1 -= this.i0;
                     this.i0 = 1;
                     this.i1 >>>= 9;
                     this.i1 = this.i0 << this.i1;
                     this.i0 = li32(cmodule.Box2D.__ZL14emergency_used);
                     this.i1 ^= -1;
                     this.i1 = this.i0 & this.i1;
                     si32(this.i1,cmodule.Box2D.__ZL14emergency_used);
                     break;
                  }
               }
               this.i0 = 0;
               mstate.esp -= 8;
               this.i1 += -80;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 1;
               mstate.esp -= 4;
               FSM_pubrealloc.start();
               return;
            case 1:
               this.i0 = mstate.eax;
               mstate.esp += 8;
               break;
            default:
               throw "Invalid state in ___cxa_free_exception";
         }
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp += 4;
         mstate.esp += 4;
         mstate.gworker = caller;
      }
   }
}

