package cmodule.Box2D
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PKvRNS0_15__upcast_resultE extends Machine
   {
      
      public function FSM__ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PKvRNS0_15__upcast_resultE()
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
         _loc1_ = li32(cmodule.Box2D.mstate.ebp + 16);
         _loc2_ = li32(cmodule.Box2D.mstate.ebp + 20);
         _loc3_ = li32(cmodule.Box2D.mstate.ebp + 8);
         _loc4_ = li32(cmodule.Box2D.mstate.ebp + 12);
         _loc3_ = li32(_loc3_ + 4);
         _loc4_ = li32(_loc4_ + 4);
         if(_loc3_ == _loc4_)
         {
            _loc3_ = 8;
            si32(_loc1_,_loc2_);
            si32(_loc3_,_loc2_ + 12);
            _loc1_ = 6;
            si32(_loc1_,_loc2_ + 4);
            _loc1_ = 1;
         }
         else
         {
            _loc1_ = 0;
         }
         cmodule.Box2D.mstate.eax = _loc1_;
         cmodule.Box2D.mstate.esp = cmodule.Box2D.mstate.ebp;
         cmodule.Box2D.mstate.ebp = li32(cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.esp += 4;
         cmodule.Box2D.mstate.esp += 4;
      }
   }
}

