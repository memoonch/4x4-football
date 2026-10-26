package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZNK11b2EdgeShape7RayCastEP15b2RayCastOutputRK14b2RayCastInputRK11b2Transformi extends Machine
   {
      
      public function FSM__ZNK11b2EdgeShape7RayCastEP15b2RayCastOutputRK14b2RayCastInputRK11b2Transformi()
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
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         cmodule.Box2D.mstate.esp -= 4;
         si32(cmodule.Box2D.mstate.ebp,cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.ebp = cmodule.Box2D.mstate.esp;
         cmodule.Box2D.mstate.esp -= 0;
         _loc4_ = 1.19209e-7;
         _loc1_ = li32(cmodule.Box2D.mstate.ebp + 8);
         _loc5_ = lf32(_loc1_ + 16);
         _loc6_ = lf32(_loc1_ + 20);
         _loc2_ = li32(cmodule.Box2D.mstate.ebp + 16);
         _loc3_ = li32(cmodule.Box2D.mstate.ebp + 20);
         _loc7_ = lf32(_loc2_ + 4);
         _loc8_ = lf32(_loc3_ + 4);
         _loc9_ = lf32(_loc2_ + 12);
         _loc10_ = lf32(_loc2_);
         _loc11_ = lf32(_loc3_);
         _loc12_ = lf32(_loc2_ + 8);
         _loc13_ = lf32(_loc1_ + 24);
         _loc14_ = _loc5_;
         _loc15_ = lf32(_loc1_ + 28);
         _loc16_ = _loc6_;
         _loc17_ = _loc13_ - _loc14_;
         _loc15_ -= _loc16_;
         _loc7_ -= _loc8_;
         _loc10_ -= _loc11_;
         _loc11_ = _loc12_ - _loc11_;
         _loc8_ = _loc9_ - _loc8_;
         _loc9_ = _loc17_;
         _loc12_ = _loc15_;
         _loc7_ = _loc7_;
         _loc10_ = _loc10_;
         _loc11_ = _loc11_;
         _loc8_ = _loc8_;
         _loc15_ = _loc9_;
         _loc16_ = _loc12_;
         _loc17_ = lf32(_loc3_ + 16);
         _loc10_ = _loc10_;
         _loc18_ = lf32(_loc3_ + 8);
         _loc11_ = _loc11_;
         _loc19_ = lf32(_loc3_ + 20);
         _loc20_ = lf32(_loc3_ + 12);
         _loc7_ = _loc7_;
         _loc8_ = _loc8_;
         _loc15_ *= _loc15_;
         _loc16_ *= _loc16_;
         _loc21_ = _loc7_ * _loc19_;
         _loc7_ *= _loc20_;
         _loc22_ = _loc10_ * _loc17_;
         _loc10_ *= _loc18_;
         _loc17_ = _loc11_ * _loc17_;
         _loc11_ *= _loc18_;
         _loc18_ = _loc8_ * _loc19_;
         _loc8_ *= _loc20_;
         _loc15_ = _loc15_;
         _loc16_ = _loc16_;
         _loc19_ = _loc21_;
         _loc7_ = _loc7_;
         _loc20_ = _loc22_;
         _loc10_ = _loc10_;
         _loc17_ = _loc17_;
         _loc11_ = _loc11_;
         _loc18_ = _loc18_;
         _loc8_ = _loc8_;
         _loc21_ = _loc15_;
         _loc22_ = _loc16_;
         _loc19_ = _loc19_;
         _loc20_ = _loc20_;
         _loc7_ = _loc7_;
         _loc10_ = _loc10_;
         _loc18_ = _loc18_;
         _loc17_ = _loc17_;
         _loc8_ = _loc8_;
         _loc11_ = _loc11_;
         _loc21_ = _loc22_ + _loc21_;
         _loc19_ = _loc20_ + _loc19_;
         _loc7_ = _loc10_ + _loc7_;
         _loc10_ = _loc17_ + _loc18_;
         _loc8_ = _loc11_ + _loc8_;
         _loc11_ = _loc21_;
         _loc17_ = _loc19_;
         _loc7_ = _loc7_;
         _loc10_ = _loc10_;
         _loc8_ = _loc8_;
         _loc11_ = _loc11_;
         _loc18_ = _loc17_;
         _loc10_ = _loc10_;
         _loc19_ = _loc7_;
         _loc8_ = _loc8_;
         _loc11_ = Math.sqrt(_loc11_);
         _loc13_ = _loc14_ - _loc13_;
         _loc10_ -= _loc18_;
         _loc8_ -= _loc19_;
         _loc11_ = _loc11_;
         _loc13_ = _loc13_;
         _loc10_ = _loc10_;
         _loc8_ = _loc8_;
         _loc1_ = li32(cmodule.Box2D.mstate.ebp + 12);
         _loc4_ = _loc4_ = _loc4_;
         _loc14_ = _loc11_;
         if(_loc14_ < _loc4_)
         {
            _loc11_ = _loc12_;
         }
         else
         {
            _loc4_ = _loc4_ = 1;
            _loc11_ = _loc11_;
            _loc4_ = _loc4_;
            _loc11_ = _loc4_ = _loc4_ / _loc11_;
            _loc4_ = _loc12_;
            _loc11_ = _loc11_;
            _loc13_ = _loc13_;
            _loc4_ *= _loc11_;
            _loc11_ *= _loc13_;
            _loc13_ = _loc4_;
            _loc4_ = _loc11_;
            _loc11_ = _loc13_;
            _loc13_ = _loc4_;
         }
         _loc4_ = _loc11_;
         _loc11_ = _loc13_;
         _loc13_ = 0;
         _loc14_ = _loc17_;
         _loc18_ = _loc6_;
         _loc19_ = _loc7_;
         _loc20_ = _loc5_;
         _loc14_ = _loc18_ - _loc14_;
         _loc18_ = _loc20_ - _loc19_;
         _loc14_ = _loc14_;
         _loc18_ = _loc18_;
         _loc14_ = _loc14_;
         _loc19_ = _loc11_;
         _loc20_ = _loc10_;
         _loc18_ = _loc18_;
         _loc21_ = _loc4_;
         _loc22_ = _loc8_;
         _loc14_ = _loc19_ * _loc14_;
         _loc18_ = _loc21_ * _loc18_;
         _loc21_ *= _loc22_;
         _loc19_ *= _loc20_;
         _loc14_ = _loc14_;
         _loc18_ = _loc18_;
         _loc20_ = _loc21_;
         _loc19_ = _loc19_;
         _loc14_ = _loc14_;
         _loc18_ = _loc18_;
         _loc19_ = _loc19_;
         _loc20_ = _loc20_;
         _loc14_ = _loc18_ + _loc14_;
         _loc18_ = _loc18_ = _loc20_ + _loc19_;
         _loc14_ = _loc14_;
         _loc13_ = _loc13_ = _loc13_;
         while(true)
         {
            _loc19_ = _loc18_;
            if(_loc19_ != _loc13_)
            {
               _loc13_ = 0;
               _loc18_ = _loc18_;
               _loc19_ = _loc14_;
               _loc18_ = _loc18_ = _loc19_ / _loc18_;
               _loc13_ = _loc13_ = _loc13_;
               _loc19_ = _loc18_;
               if(_loc19_ >= _loc13_)
               {
                  _loc13_ = _loc13_ = _loc13_ = 1;
                  _loc19_ = _loc18_;
                  if(_loc19_ <= _loc13_)
                  {
                     _loc13_ = 0;
                     _loc16_ = _loc16_;
                     _loc15_ = _loc15_;
                     _loc15_ = _loc15_ = _loc15_ + _loc16_;
                     _loc13_ = _loc13_ = _loc13_;
                     _loc16_ = _loc15_;
                     if(_loc16_ != _loc13_)
                     {
                        _loc13_ = 0;
                        _loc10_ = _loc10_;
                        _loc16_ = _loc18_;
                        _loc8_ = _loc8_;
                        _loc10_ *= _loc16_;
                        _loc8_ *= _loc16_;
                        _loc10_ = _loc10_;
                        _loc8_ = _loc8_;
                        _loc10_ = _loc10_;
                        _loc16_ = _loc17_;
                        _loc8_ = _loc8_;
                        _loc7_ = _loc7_;
                        _loc10_ = _loc16_ + _loc10_;
                        _loc7_ += _loc8_;
                        _loc8_ = _loc10_;
                        _loc7_ = _loc7_;
                        _loc6_ = _loc6_;
                        _loc8_ = _loc8_;
                        _loc5_ = _loc5_;
                        _loc7_ = _loc7_;
                        _loc6_ = _loc8_ - _loc6_;
                        _loc5_ = _loc7_ - _loc5_;
                        _loc6_ = _loc6_;
                        _loc5_ = _loc5_;
                        _loc7_ = _loc12_;
                        _loc6_ = _loc6_;
                        _loc8_ = _loc9_;
                        _loc5_ = _loc5_;
                        _loc6_ *= _loc7_;
                        _loc5_ *= _loc8_;
                        _loc6_ = _loc6_;
                        _loc5_ = _loc5_;
                        _loc6_ = _loc6_;
                        _loc5_ = _loc5_;
                        _loc5_ = _loc5_ = _loc5_ + _loc6_;
                        _loc6_ = _loc15_;
                        _loc5_ = _loc5_;
                        _loc5_ = _loc5_ = _loc5_ / _loc6_;
                        _loc6_ = _loc6_ = _loc13_;
                        _loc7_ = _loc5_;
                        if(_loc7_ >= _loc6_)
                        {
                           _loc6_ = _loc6_ = _loc6_ = 1;
                           _loc5_ = _loc5_;
                           if(_loc5_ <= _loc6_)
                           {
                              _loc5_ = _loc5_ = 0;
                              sf32(_loc18_,_loc1_ + 8);
                              _loc5_ = _loc5_;
                              _loc6_ = _loc14_;
                              if(_loc6_ > _loc5_)
                              {
                                 _loc2_ = 1;
                                 _loc4_ = _loc4_;
                                 _loc5_ = _loc11_;
                                 _loc4_ = -_loc4_;
                                 _loc5_ = -_loc5_;
                                 _loc4_ = _loc4_;
                                 sf32(_loc4_,_loc1_);
                                 _loc4_ = _loc5_;
                                 sf32(_loc4_,_loc1_ + 4);
                              }
                              else
                              {
                                 _loc2_ = 1;
                                 sf32(_loc4_,_loc1_);
                                 sf32(_loc11_,_loc1_ + 4);
                              }
                              cmodule.Box2D.mstate.eax = _loc2_;
                              break;
                           }
                        }
                     }
                  }
               }
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

