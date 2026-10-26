package cmodule.Box2D
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM___negdi2 extends Machine
   {
      
      public function FSM___negdi2()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         cmodule.Box2D.mstate.esp -= 4;
         si32(cmodule.Box2D.mstate.ebp,cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.ebp = cmodule.Box2D.mstate.esp;
         cmodule.Box2D.mstate.esp -= 0;
         _loc1_ = 0;
         _loc2_ = li32(cmodule.Box2D.mstate.ebp + 8);
         _loc3_ = li32(cmodule.Box2D.mstate.ebp + 12);
         _loc4_ = _loc2_ != 0 ? 1 : 0;
         _loc3_ = int(cmodule.Box2D.__subc(_loc1_,_loc3_));
         _loc4_ &= 1;
         _loc1_ = int(cmodule.Box2D.__subc(_loc1_,_loc2_));
         _loc2_ = int(cmodule.Box2D.__subc(_loc3_,_loc4_));
         cmodule.Box2D.mstate.edx = _loc2_;
         cmodule.Box2D.mstate.eax = _loc1_;
         cmodule.Box2D.mstate.esp = cmodule.Box2D.mstate.ebp;
         cmodule.Box2D.mstate.ebp = li32(cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.esp += 4;
         cmodule.Box2D.mstate.esp += 4;
      }
   }
}

