package cmodule.Box2D
{
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZN15b2ContactFilter13ShouldCollideEP9b2FixtureS1_ extends Machine
   {
      
      public function FSM__ZN15b2ContactFilter13ShouldCollideEP9b2FixtureS1_()
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
         _loc1_ = li32(cmodule.Box2D.mstate.ebp + 12);
         _loc2_ = li32(cmodule.Box2D.mstate.ebp + 16);
         _loc3_ = li16(_loc1_ + 40);
         _loc4_ = li16(_loc2_ + 40);
         loop0:
         while(true)
         {
            while(true)
            {
               if(_loc3_ != 0)
               {
                  _loc4_ &= 65535;
                  _loc5_ = _loc3_ & 0xFFFF;
                  if(_loc5_ == _loc4_)
                  {
                     _loc1_ = _loc3_ << 16;
                     _loc1_ >>= 16;
                     _loc1_ = _loc1_ > 0 ? 1 : 0;
                     break;
                  }
               }
               _loc3_ = li16(_loc1_ + 38);
               _loc4_ = li16(_loc2_ + 36);
               _loc3_ = _loc4_ & _loc3_;
               _loc3_ &= 65535;
               if(_loc3_ != 0)
               {
                  _loc1_ = li16(_loc1_ + 36);
                  _loc2_ = li16(_loc2_ + 38);
                  _loc1_ = _loc2_ & _loc1_;
                  _loc1_ &= 65535;
                  _loc1_ = _loc1_ != 0 ? 1 : 0;
                  break;
               }
               _loc1_ = 0;
               break loop0;
            }
            _loc1_ &= 1;
            break;
         }
         cmodule.Box2D.mstate.eax = _loc1_;
         cmodule.Box2D.mstate.esp = cmodule.Box2D.mstate.ebp;
         cmodule.Box2D.mstate.ebp = li32(cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.esp += 4;
         cmodule.Box2D.mstate.esp += 4;
      }
   }
}

