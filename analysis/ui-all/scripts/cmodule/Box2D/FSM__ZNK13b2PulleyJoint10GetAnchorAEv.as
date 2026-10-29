package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZNK13b2PulleyJoint10GetAnchorAEv extends Machine
   {
      
      public function FSM__ZNK13b2PulleyJoint10GetAnchorAEv()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         cmodule.Box2D.mstate.esp -= 4;
         si32(cmodule.Box2D.mstate.ebp,cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.ebp = cmodule.Box2D.mstate.esp;
         cmodule.Box2D.mstate.esp -= 8;
         _loc1_ = li32(cmodule.Box2D.mstate.ebp + 8);
         _loc2_ = li32(_loc1_ + 48);
         _loc3_ = lf32(_loc2_ + 20);
         _loc4_ = lf32(_loc1_ + 112);
         _loc5_ = lf32(_loc2_ + 24);
         _loc5_ = _loc5_ * _loc4_;
         _loc3_ *= _loc4_;
         _loc4_ = _loc5_;
         _loc3_ = _loc3_;
         _loc5_ = lf32(_loc2_ + 12);
         _loc3_ = _loc3_;
         _loc6_ = lf32(_loc2_ + 28);
         _loc7_ = lf32(_loc1_ + 116);
         _loc8_ = lf32(_loc2_ + 32);
         _loc9_ = lf32(_loc2_ + 16);
         _loc4_ = _loc4_;
         _loc3_ = _loc5_ + _loc3_;
         _loc5_ = _loc8_ * _loc7_;
         _loc4_ = _loc9_ + _loc4_;
         _loc6_ *= _loc7_;
         _loc3_ = _loc3_;
         _loc5_ = _loc5_;
         _loc4_ = _loc4_;
         _loc6_ = _loc6_ = _loc6_;
         _loc3_ = _loc3_;
         _loc5_ = _loc5_;
         _loc4_ = _loc4_;
         _loc3_ += _loc6_;
         _loc4_ += _loc5_;
         _loc3_ = _loc3_;
         _loc4_ = _loc4_;
         sf32(_loc3_,cmodule.Box2D.mstate.ebp + -8);
         sf32(_loc4_,cmodule.Box2D.mstate.ebp + -4);
         _loc1_ = li32(cmodule.Box2D.mstate.ebp + -8);
         _loc2_ = li32(cmodule.Box2D.mstate.ebp + -4);
         cmodule.Box2D.mstate.edx = _loc2_;
         cmodule.Box2D.mstate.eax = _loc1_;
         cmodule.Box2D.mstate.esp = cmodule.Box2D.mstate.ebp;
         cmodule.Box2D.mstate.ebp = li32(cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.esp += 4;
         cmodule.Box2D.mstate.esp += 4;
      }
   }
}

