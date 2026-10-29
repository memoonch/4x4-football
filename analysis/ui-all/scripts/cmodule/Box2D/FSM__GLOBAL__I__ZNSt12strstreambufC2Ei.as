package cmodule.Box2D
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public final class FSM__GLOBAL__I__ZNSt12strstreambufC2Ei extends Machine
   {
      
      public function FSM__GLOBAL__I__ZNSt12strstreambufC2Ei()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:int = 0;
         cmodule.Box2D.mstate.esp -= 4;
         si32(cmodule.Box2D.mstate.ebp,cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.ebp = cmodule.Box2D.mstate.esp;
         cmodule.Box2D.mstate.esp -= 0;
         _loc1_ = li8(cmodule.Box2D.__ZGVNSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE2idE);
         if(_loc1_ == 0)
         {
            _loc1_ = 1;
            si8(_loc1_,cmodule.Box2D.__ZGVNSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE2idE);
         }
         _loc1_ = li8(cmodule.Box2D.__ZGVNSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE2idE);
         if(_loc1_ == 0)
         {
            _loc1_ = 1;
            si8(_loc1_,cmodule.Box2D.__ZGVNSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE2idE);
         }
         cmodule.Box2D.mstate.esp = cmodule.Box2D.mstate.ebp;
         cmodule.Box2D.mstate.ebp = li32(cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.esp += 4;
         cmodule.Box2D.mstate.esp += 4;
      }
   }
}

