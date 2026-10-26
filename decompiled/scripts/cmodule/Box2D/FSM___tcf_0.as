package cmodule.Box2D
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM___tcf_0 extends Machine
   {
      
      public static const intRegCount:int = 1;
      
      public static const NumberRegCount:int = 0;
      
      public var i0:int;
      
      public function FSM___tcf_0()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM___tcf_0 = null;
         _loc1_ = new FSM___tcf_0();
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
               this.i0 = cmodule.Box2D.__ZTV15b2ContactFilter;
               this.i0 += 8;
               si32(this.i0,cmodule.Box2D._b2_defaultFilter);
               mstate.esp = mstate.ebp;
               mstate.ebp = li32(mstate.esp);
               mstate.esp += 4;
               mstate.esp += 4;
               mstate.gworker = caller;
               return;
            default:
               throw "Invalid state in ___tcf_0";
         }
      }
   }
}

