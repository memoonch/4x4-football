package cmodule.Box2D
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZN11b2LoopShape11ComputeMassEP10b2MassDataf extends Machine
   {
      
      public function FSM__ZN11b2LoopShape11ComputeMassEP10b2MassDataf()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         cmodule.Box2D.mstate.esp -= 4;
         si32(cmodule.Box2D.mstate.ebp,cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.ebp = cmodule.Box2D.mstate.esp;
         cmodule.Box2D.mstate.esp -= 0;
         _loc1_ = 0;
         _loc2_ = li32(cmodule.Box2D.mstate.ebp + 12);
         si32(_loc1_,_loc2_);
         si32(_loc1_,_loc2_ + 4);
         si32(_loc1_,_loc2_ + 8);
         si32(_loc1_,_loc2_ + 12);
         cmodule.Box2D.mstate.esp = cmodule.Box2D.mstate.ebp;
         cmodule.Box2D.mstate.ebp = li32(cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.esp += 4;
         cmodule.Box2D.mstate.esp += 4;
      }
   }
}

