package cmodule.Box2D
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public final class FSM__GLOBAL__I__ZN9__gnu_cxx10__mt_allocIcE7_S_onceE extends Machine
   {
      
      public function FSM__GLOBAL__I__ZN9__gnu_cxx10__mt_allocIcE7_S_onceE()
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
         _loc1_ = li8(cmodule.Box2D.__ZGVN9__gnu_cxx10__mt_allocIcE10_S_optionsE);
         if(_loc1_ == 0)
         {
            _loc1_ = 1;
            si8(_loc1_,cmodule.Box2D.__ZGVN9__gnu_cxx10__mt_allocIcE10_S_optionsE);
            cmodule.Box2D.mstate.esp -= 4;
            _loc1_ = cmodule.Box2D.__2E_str18192;
            si32(_loc1_,cmodule.Box2D.mstate.esp);
            cmodule.Box2D.mstate.esp -= 4;
            FSM_getenv.start();
            _loc1_ = int(cmodule.Box2D.mstate.eax);
            cmodule.Box2D.mstate.esp += 4;
         }
         _loc1_ = li8(cmodule.Box2D.__ZGVN9__gnu_cxx10__mt_allocIwE10_S_optionsE);
         if(_loc1_ == 0)
         {
            _loc1_ = 1;
            si8(_loc1_,cmodule.Box2D.__ZGVN9__gnu_cxx10__mt_allocIwE10_S_optionsE);
            cmodule.Box2D.mstate.esp -= 4;
            _loc1_ = cmodule.Box2D.__2E_str18192;
            si32(_loc1_,cmodule.Box2D.mstate.esp);
            cmodule.Box2D.mstate.esp -= 4;
            FSM_getenv.start();
            _loc1_ = int(cmodule.Box2D.mstate.eax);
            cmodule.Box2D.mstate.esp += 4;
         }
         cmodule.Box2D.mstate.esp = cmodule.Box2D.mstate.ebp;
         cmodule.Box2D.mstate.ebp = li32(cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.esp += 4;
         cmodule.Box2D.mstate.esp += 4;
      }
   }
}

