package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZNK13b2CircleShape7RayCastEP15b2RayCastOutputRK14b2RayCastInputRK11b2Transformi extends Machine
   {
      
      public function FSM__ZNK13b2CircleShape7RayCastEP15b2RayCastOutputRK14b2RayCastInputRK11b2Transformi()
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
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         cmodule.Box2D.mstate.esp -= 4;
         si32(cmodule.Box2D.mstate.ebp,cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.ebp = cmodule.Box2D.mstate.esp;
         cmodule.Box2D.mstate.esp -= 0;
         _loc3_ = 0;
         _loc1_ = li32(cmodule.Box2D.mstate.ebp + 20);
         _loc2_ = li32(cmodule.Box2D.mstate.ebp + 8);
         _loc4_ = lf32(_loc1_ + 12);
         _loc5_ = lf32(_loc2_ + 16);
         _loc6_ = lf32(_loc1_ + 8);
         _loc7_ = lf32(_loc1_ + 20);
         _loc8_ = lf32(_loc2_ + 20);
         _loc9_ = lf32(_loc1_ + 16);
         _loc4_ *= _loc5_;
         _loc5_ = _loc6_ * _loc5_;
         _loc6_ = _loc7_ * _loc8_;
         _loc7_ = _loc9_ * _loc8_;
         _loc4_ = _loc4_;
         _loc5_ = _loc5_;
         _loc6_ = _loc6_;
         _loc7_ = _loc7_;
         _loc6_ = _loc6_;
         _loc4_ = _loc4_;
         _loc7_ = _loc7_;
         _loc5_ = _loc5_;
         _loc4_ += _loc6_;
         _loc5_ += _loc7_;
         _loc4_ = _loc4_;
         _loc5_ = _loc5_;
         _loc6_ = lf32(_loc1_ + 4);
         _loc4_ = _loc4_;
         _loc7_ = lf32(_loc1_);
         _loc5_ = _loc5_;
         _loc4_ = _loc6_ + _loc4_;
         _loc5_ = _loc7_ + _loc5_;
         _loc4_ = _loc4_;
         _loc5_ = _loc5_;
         _loc1_ = li32(cmodule.Box2D.mstate.ebp + 16);
         _loc6_ = lf32(_loc1_ + 4);
         _loc4_ = _loc4_;
         _loc7_ = lf32(_loc1_);
         _loc5_ = _loc5_;
         _loc4_ = _loc6_ - _loc4_;
         _loc5_ = _loc7_ - _loc5_;
         _loc4_ = _loc4_;
         _loc5_ = _loc5_;
         _loc8_ = lf32(_loc1_ + 12);
         _loc9_ = lf32(_loc1_ + 8);
         _loc10_ = _loc4_;
         _loc11_ = _loc5_;
         _loc12_ = _loc10_ * _loc10_;
         _loc13_ = _loc11_ * _loc11_;
         _loc6_ = _loc8_ - _loc6_;
         _loc7_ = _loc9_ - _loc7_;
         _loc8_ = _loc12_;
         _loc9_ = _loc13_;
         _loc6_ = _loc6_;
         _loc7_ = _loc7_;
         _loc12_ = lf32(_loc2_ + 8);
         _loc13_ = _loc6_;
         _loc14_ = _loc7_;
         _loc8_ = _loc8_;
         _loc9_ = _loc9_;
         _loc8_ = _loc9_ + _loc8_;
         _loc9_ = _loc10_ * _loc13_;
         _loc10_ = _loc11_ * _loc14_;
         _loc11_ = _loc12_ * _loc12_;
         _loc12_ = _loc13_ * _loc13_;
         _loc13_ = _loc14_ * _loc14_;
         _loc8_ = _loc8_;
         _loc9_ = _loc9_;
         _loc10_ = _loc10_;
         _loc11_ = _loc11_;
         _loc12_ = _loc12_;
         _loc13_ = _loc13_;
         _loc11_ = _loc11_;
         _loc8_ = _loc8_;
         _loc9_ = _loc9_;
         _loc10_ = _loc10_;
         _loc12_ = _loc12_;
         _loc13_ = _loc13_;
         _loc8_ -= _loc11_;
         _loc9_ = _loc10_ + _loc9_;
         _loc10_ = _loc13_ + _loc12_;
         _loc8_ = _loc8_;
         _loc9_ = _loc9_;
         _loc10_ = _loc10_;
         _loc11_ = _loc9_;
         _loc8_ = _loc8_;
         _loc12_ = _loc10_;
         _loc8_ = _loc12_ * _loc8_;
         _loc11_ *= _loc11_;
         _loc8_ = _loc8_;
         _loc11_ = _loc11_;
         _loc8_ = _loc8_;
         _loc11_ = _loc11_;
         _loc8_ = _loc8_ = _loc11_ - _loc8_;
         _loc2_ = li32(cmodule.Box2D.mstate.ebp + 12);
         _loc3_ = _loc3_;
         _loc3_ = _loc3_;
         while(true)
         {
            _loc11_ = _loc8_;
            if(_loc11_ >= _loc3_)
            {
               _loc3_ = 1.19209e-7;
               _loc3_ = _loc3_;
               _loc3_ = _loc3_;
               _loc11_ = _loc10_;
               if(_loc11_ >= _loc3_)
               {
                  _loc3_ = 0;
                  _loc8_ = _loc8_;
                  _loc8_ = _loc8_ = Math.sqrt(_loc8_);
                  _loc9_ = _loc9_;
                  _loc8_ = _loc8_;
                  _loc8_ = _loc8_ = _loc8_ = _loc8_ + _loc9_;
                  _loc8_ = _loc8_ = -_loc8_;
                  _loc3_ = _loc3_;
                  _loc3_ = _loc3_;
                  _loc9_ = _loc8_;
                  if(_loc9_ >= _loc3_)
                  {
                     _loc3_ = lf32(_loc1_ + 16);
                     _loc9_ = _loc10_;
                     _loc3_ *= _loc9_;
                     _loc3_ = _loc3_;
                     _loc9_ = _loc8_;
                     _loc3_ = _loc3_;
                     if(_loc3_ >= _loc9_)
                     {
                        _loc3_ = 1.19209e-7;
                        _loc9_ = _loc10_;
                        _loc8_ = _loc8_;
                        _loc8_ = _loc8_ = _loc8_ / _loc9_;
                        _loc6_ = _loc6_;
                        _loc9_ = _loc8_;
                        _loc7_ = _loc7_;
                        _loc6_ *= _loc9_;
                        _loc7_ *= _loc9_;
                        _loc6_ = _loc6_;
                        _loc7_ = _loc7_;
                        _loc6_ = _loc6_;
                        _loc4_ = _loc4_;
                        _loc7_ = _loc7_;
                        _loc5_ = _loc5_;
                        _loc4_ += _loc6_;
                        _loc5_ += _loc7_;
                        _loc4_ = _loc4_;
                        _loc5_ = _loc5_;
                        _loc6_ = _loc4_;
                        _loc7_ = _loc5_;
                        _loc6_ *= _loc6_;
                        _loc7_ *= _loc7_;
                        _loc6_ = _loc6_;
                        _loc7_ = _loc7_;
                        _loc6_ = _loc6_;
                        _loc7_ = _loc7_;
                        _loc6_ = _loc6_ = _loc7_ + _loc6_;
                        sf32(_loc8_,_loc2_ + 8);
                        _loc6_ = _loc6_;
                        sf32(_loc5_,_loc2_);
                        _loc6_ = Math.sqrt(_loc6_);
                        sf32(_loc4_,_loc2_ + 4);
                        _loc6_ = _loc6_;
                        _loc1_ = _loc2_ + 4;
                        _loc3_ = _loc3_;
                        _loc3_ = _loc3_;
                        _loc7_ = _loc6_;
                        if(_loc7_ < _loc3_)
                        {
                           _loc1_ = 1;
                           break;
                        }
                        addr0465:
                        _loc3_ = 1;
                        _loc3_ = _loc3_;
                        _loc6_ = _loc6_;
                        _loc3_ = _loc3_;
                        _loc3_ /= _loc6_;
                        _loc3_ = _loc3_;
                        _loc5_ = _loc5_;
                        _loc3_ = _loc3_;
                        _loc5_ *= _loc3_;
                        _loc4_ = _loc4_;
                        _loc3_ = _loc4_ * _loc3_;
                        _loc4_ = _loc5_;
                        sf32(_loc4_,_loc2_);
                        _loc3_ = _loc3_;
                        sf32(_loc3_,_loc1_);
                        _loc1_ = 1;
                        cmodule.Box2D.mstate.eax = _loc1_;
                        cmodule.Box2D.mstate.esp = cmodule.Box2D.mstate.ebp;
                        cmodule.Box2D.mstate.ebp = li32(cmodule.Box2D.mstate.esp);
                        cmodule.Box2D.mstate.esp += 4;
                        cmodule.Box2D.mstate.esp += 4;
                        return;
                     }
                  }
               }
            }
            _loc1_ = 0;
            break;
         }
         _loc1_ &= 255;
         §§goto(addr0465);
      }
   }
}

