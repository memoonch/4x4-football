package cmodule.Box2D
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZSt13__adjust_heapIP6b2PairiS0_PFbRKS0_S3_EEvT_T0_S7_T1_T2_ extends Machine
   {
      
      public function FSM__ZSt13__adjust_heapIP6b2PairiS0_PFbRKS0_S3_EEvT_T0_S7_T1_T2_()
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
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         cmodule.Box2D.mstate.esp -= 4;
         si32(cmodule.Box2D.mstate.ebp,cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.ebp = cmodule.Box2D.mstate.esp;
         cmodule.Box2D.mstate.esp -= 16;
         _loc1_ = li32(cmodule.Box2D.mstate.ebp + 20);
         _loc2_ = li32(cmodule.Box2D.mstate.ebp + 24);
         _loc3_ = li32(cmodule.Box2D.mstate.ebp + 12);
         si32(_loc1_,cmodule.Box2D.mstate.ebp + -16);
         si32(_loc2_,cmodule.Box2D.mstate.ebp + -12);
         _loc1_ = _loc3_ << 1;
         _loc2_ = li32(cmodule.Box2D.mstate.ebp + 28);
         si32(_loc2_,cmodule.Box2D.mstate.ebp + -8);
         _loc2_ = _loc1_ + 2;
         _loc4_ = li32(cmodule.Box2D.mstate.ebp + 8);
         _loc5_ = li32(cmodule.Box2D.mstate.ebp + 16);
         if(_loc2_ >= _loc5_)
         {
            _loc6_ = _loc3_;
         }
         else
         {
            _loc6_ = _loc3_;
            while(true)
            {
               _loc1_ |= 1;
               _loc7_ = _loc1_ * 12;
               _loc8_ = _loc2_ * 12;
               _loc7_ = _loc4_ + _loc7_;
               _loc8_ = _loc4_ + _loc8_;
               _loc8_ = li32(_loc8_);
               _loc7_ = li32(_loc7_);
               if(_loc8_ < _loc7_)
               {
                  _loc7_ = 0;
               }
               else if(_loc8_ != _loc7_)
               {
                  _loc7_ = 1;
               }
               else
               {
                  _loc7_ = _loc1_ * 12;
                  _loc8_ = _loc2_ * 12;
                  _loc7_ = _loc4_ + _loc7_;
                  _loc8_ = _loc4_ + _loc8_;
                  _loc8_ = li32(_loc8_ + 4);
                  _loc7_ = li32(_loc7_ + 4);
                  _loc7_ = _loc8_ >= _loc7_ ? 1 : 0;
               }
               _loc7_ &= 1;
               _loc1_ = _loc7_ != 0 ? _loc2_ : _loc1_;
               _loc2_ = _loc1_ * 12;
               _loc6_ *= 12;
               _loc2_ = _loc4_ + _loc2_;
               _loc7_ = li32(_loc2_);
               _loc6_ = _loc4_ + _loc6_;
               si32(_loc7_,_loc6_);
               _loc7_ = li32(_loc2_ + 4);
               si32(_loc7_,_loc6_ + 4);
               _loc2_ = li32(_loc2_ + 8);
               _loc7_ = _loc1_ << 1;
               si32(_loc2_,_loc6_ + 8);
               _loc2_ = _loc7_ + 2;
               if(_loc2_ >= _loc5_)
               {
                  break;
               }
               _loc6_ = _loc1_;
               _loc1_ = _loc7_;
            }
            _loc6_ = _loc1_;
            _loc1_ = _loc7_;
         }
         if(_loc2_ != _loc5_)
         {
            _loc1_ = _loc6_;
         }
         else
         {
            _loc1_ |= 1;
            _loc2_ = _loc1_ * 12;
            _loc5_ = _loc6_ * 12;
            _loc2_ = _loc4_ + _loc2_;
            _loc6_ = li32(_loc2_);
            _loc5_ = _loc4_ + _loc5_;
            si32(_loc6_,_loc5_);
            _loc6_ = li32(_loc2_ + 4);
            si32(_loc6_,_loc5_ + 4);
            _loc2_ = li32(_loc2_ + 8);
            si32(_loc2_,_loc5_ + 8);
         }
         _loc2_ = _loc1_ + -1;
         _loc5_ = _loc2_ >>> 31;
         _loc2_ += _loc5_;
         _loc5_ = li32(cmodule.Box2D.mstate.ebp + -16);
         _loc6_ = li32(cmodule.Box2D.mstate.ebp + -12);
         _loc7_ = li32(cmodule.Box2D.mstate.ebp + -8);
         _loc2_ >>= 1;
         loop3:
         while(true)
         {
            if(_loc1_ <= _loc3_)
            {
               while(true)
               {
                  _loc8_ = 1;
                  addr035d:
                  while(true)
                  {
                     _loc9_ = _loc1_ * 12;
                     _loc10_ = _loc8_ ^ 1;
                     _loc8_ = _loc4_ + _loc9_;
                     _loc9_ = _loc10_ & 1;
                     if(_loc9_ == 0)
                     {
                        break loop3;
                     }
                     _loc9_ = _loc2_ * 12;
                     _loc9_ = _loc4_ + _loc9_;
                     _loc10_ = li32(_loc9_);
                     si32(_loc10_,_loc8_);
                     _loc1_ *= 12;
                     _loc8_ = _loc2_ + -1;
                     _loc10_ = li32(_loc9_ + 4);
                     _loc1_ = _loc4_ + _loc1_;
                     si32(_loc10_,_loc1_ + 4);
                     _loc10_ = _loc8_ >>> 31;
                     _loc9_ = li32(_loc9_ + 8);
                     _loc8_ += _loc10_;
                     si32(_loc9_,_loc1_ + 8);
                     _loc8_ >>= 1;
                     if(_loc2_ <= _loc3_)
                     {
                        break;
                     }
                     _loc1_ = _loc2_;
                     _loc2_ = _loc8_;
                     _loc8_ = 0;
                  }
                  _loc1_ = _loc2_;
                  _loc2_ = _loc8_;
               }
               break;
               addr0359:
            }
            _loc8_ = _loc2_ * 12;
            _loc8_ = _loc4_ + _loc8_;
            _loc8_ = li32(_loc8_);
            if(_loc8_ < _loc5_)
            {
               addr033f:
               _loc8_ = 0;
               §§goto(addr035d);
            }
            if(_loc8_ != _loc5_)
            {
               addr0355:
               §§goto(addr0359);
            }
            _loc8_ = _loc2_ * 12;
            _loc8_ = _loc4_ + _loc8_;
            _loc8_ = li32(_loc8_ + 4);
            if(_loc8_ < _loc6_)
            {
               §§goto(addr033f);
            }
            §§goto(addr0355);
         }
         _loc1_ *= 12;
         si32(_loc5_,_loc8_);
         _loc1_ = _loc4_ + _loc1_;
         si32(_loc6_,_loc1_ + 4);
         si32(_loc7_,_loc1_ + 8);
         cmodule.Box2D.mstate.esp = cmodule.Box2D.mstate.ebp;
         cmodule.Box2D.mstate.ebp = li32(cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.esp += 4;
         cmodule.Box2D.mstate.esp += 4;
      }
   }
}

