package cmodule.Box2D
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZNK10__cxxabiv117__class_type_info12__do_dyncastEiNS0_10__sub_kindEPKS0_PKvS3_S5_RNS0_16__dyncast_resultE extends Machine
   {
      
      public function FSM__ZNK10__cxxabiv117__class_type_info12__do_dyncastEiNS0_10__sub_kindEPKS0_PKvS3_S5_RNS0_16__dyncast_resultE()
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
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         cmodule.Box2D.mstate.esp -= 4;
         si32(cmodule.Box2D.mstate.ebp,cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.ebp = cmodule.Box2D.mstate.esp;
         cmodule.Box2D.mstate.esp -= 0;
         _loc1_ = li32(cmodule.Box2D.mstate.ebp + 8);
         _loc2_ = li32(cmodule.Box2D.mstate.ebp + 16);
         _loc3_ = li32(cmodule.Box2D.mstate.ebp + 20);
         _loc4_ = li32(cmodule.Box2D.mstate.ebp + 24);
         _loc5_ = li32(cmodule.Box2D.mstate.ebp + 28);
         _loc6_ = li32(cmodule.Box2D.mstate.ebp + 36);
         _loc7_ = li32(cmodule.Box2D.mstate.ebp + 32);
         while(true)
         {
            if(_loc4_ == _loc7_)
            {
               _loc7_ = li32(_loc1_ + 4);
               _loc5_ = li32(_loc5_ + 4);
               if(_loc7_ == _loc5_)
               {
                  _loc4_ = 0;
                  si32(_loc2_,_loc6_ + 8);
                  cmodule.Box2D.mstate.eax = _loc4_;
                  break;
               }
            }
            _loc1_ = li32(_loc1_ + 4);
            _loc3_ = li32(_loc3_ + 4);
            if(_loc1_ == _loc3_)
            {
               _loc1_ = 1;
               si32(_loc4_,_loc6_);
               si32(_loc2_,_loc6_ + 4);
               si32(_loc1_,_loc6_ + 12);
            }
            _loc1_ = 0;
            cmodule.Box2D.mstate.eax = _loc1_;
            break;
         }
         cmodule.Box2D.mstate.esp = cmodule.Box2D.mstate.ebp;
         cmodule.Box2D.mstate.ebp = li32(cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.esp += 4;
         cmodule.Box2D.mstate.esp += 4;
      }
   }
}

