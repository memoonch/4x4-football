package cmodule.Box2D
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public final class FSM_localeconv extends Machine
   {
      
      public function FSM_localeconv()
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
         _loc1_ = li8(cmodule.Box2D.___mlocale_changed_2E_b);
         if(_loc1_ == 0)
         {
            _loc1_ = 1;
            si8(_loc1_,cmodule.Box2D.___mlocale_changed_2E_b);
         }
         _loc1_ = li8(cmodule.Box2D.___nlocale_changed_2E_b);
         if(_loc1_ == 0)
         {
            _loc1_ = cmodule.Box2D.__2E_str20159;
            si32(_loc1_,cmodule.Box2D._ret_2E_1494_2E_0);
            _loc1_ = cmodule.Box2D.__2E_str45;
            si32(_loc1_,cmodule.Box2D._ret_2E_1494_2E_1);
            _loc1_ = cmodule.Box2D._numempty22;
            si32(_loc1_,cmodule.Box2D._ret_2E_1494_2E_2);
            _loc1_ = 1;
            si8(_loc1_,cmodule.Box2D.___nlocale_changed_2E_b);
         }
         cmodule.Box2D.mstate.esp = cmodule.Box2D.mstate.ebp;
         cmodule.Box2D.mstate.ebp = li32(cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.esp += 4;
         cmodule.Box2D.mstate.esp += 4;
      }
   }
}

