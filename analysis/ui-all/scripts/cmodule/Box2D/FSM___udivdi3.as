package cmodule.Box2D
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM___udivdi3 extends Machine
   {
      
      public function FSM___udivdi3()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         cmodule.Box2D.mstate.esp -= 4;
         si32(cmodule.Box2D.mstate.ebp,cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.ebp = cmodule.Box2D.mstate.esp;
         cmodule.Box2D.mstate.esp -= 0;
         _loc1_ = 0;
         cmodule.Box2D.mstate.esp -= 20;
         _loc2_ = li32(cmodule.Box2D.mstate.ebp + 8);
         _loc3_ = li32(cmodule.Box2D.mstate.ebp + 12);
         _loc4_ = li32(cmodule.Box2D.mstate.ebp + 16);
         _loc5_ = li32(cmodule.Box2D.mstate.ebp + 20);
         si32(_loc2_,cmodule.Box2D.mstate.esp);
         si32(_loc3_,cmodule.Box2D.mstate.esp + 4);
         si32(_loc4_,cmodule.Box2D.mstate.esp + 8);
         si32(_loc5_,cmodule.Box2D.mstate.esp + 12);
         si32(_loc1_,cmodule.Box2D.mstate.esp + 16);
         cmodule.Box2D.mstate.esp -= 4;
         FSM___qdivrem.start();
         _loc1_ = int(cmodule.Box2D.mstate.eax);
         _loc2_ = int(cmodule.Box2D.mstate.edx);
         cmodule.Box2D.mstate.esp += 20;
         cmodule.Box2D.mstate.edx = _loc2_;
         cmodule.Box2D.mstate.eax = _loc1_;
         cmodule.Box2D.mstate.esp = cmodule.Box2D.mstate.ebp;
         cmodule.Box2D.mstate.ebp = li32(cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.esp += 4;
         cmodule.Box2D.mstate.esp += 4;
      }
   }
}

