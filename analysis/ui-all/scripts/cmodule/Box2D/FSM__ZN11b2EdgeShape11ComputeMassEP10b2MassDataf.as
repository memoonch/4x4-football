package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZN11b2EdgeShape11ComputeMassEP10b2MassDataf extends Machine
   {
      
      public function FSM__ZN11b2EdgeShape11ComputeMassEP10b2MassDataf()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         cmodule.Box2D.mstate.esp -= 4;
         si32(cmodule.Box2D.mstate.ebp,cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.ebp = cmodule.Box2D.mstate.esp;
         cmodule.Box2D.mstate.esp -= 0;
         _loc1_ = 0;
         _loc2_ = li32(cmodule.Box2D.mstate.ebp + 12);
         si32(_loc1_,_loc2_);
         _loc3_ = li32(cmodule.Box2D.mstate.ebp + 8);
         _loc4_ = lf32(_loc3_ + 16);
         _loc5_ = lf32(_loc3_ + 24);
         _loc4_ += _loc5_;
         _loc5_ = 0.5;
         _loc6_ = lf32(_loc3_ + 20);
         _loc7_ = lf32(_loc3_ + 28);
         _loc4_ = _loc4_;
         _loc6_ += _loc7_;
         _loc5_ = _loc5_;
         _loc6_ = _loc6_;
         _loc4_ = _loc4_;
         _loc5_ = _loc5_;
         _loc4_ *= _loc5_;
         _loc6_ = _loc6_;
         _loc5_ = _loc6_ * _loc5_;
         _loc4_ = _loc4_;
         sf32(_loc4_,_loc2_ + 4);
         _loc4_ = _loc5_;
         sf32(_loc4_,_loc2_ + 8);
         si32(_loc1_,_loc2_ + 12);
         cmodule.Box2D.mstate.esp = cmodule.Box2D.mstate.ebp;
         cmodule.Box2D.mstate.ebp = li32(cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.esp += 4;
         cmodule.Box2D.mstate.esp += 4;
      }
   }
}

