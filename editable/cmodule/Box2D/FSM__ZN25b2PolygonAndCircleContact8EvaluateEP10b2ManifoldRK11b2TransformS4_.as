package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZN25b2PolygonAndCircleContact8EvaluateEP10b2ManifoldRK11b2TransformS4_ extends Machine
   {
      
      public function FSM__ZN25b2PolygonAndCircleContact8EvaluateEP10b2ManifoldRK11b2TransformS4_()
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
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         cmodule.Box2D.mstate.esp -= 4;
         si32(cmodule.Box2D.mstate.ebp,cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.ebp = cmodule.Box2D.mstate.esp;
         cmodule.Box2D.mstate.esp -= 0;
         _loc1_ = 0;
         _loc2_ = li32(cmodule.Box2D.mstate.ebp + 8);
         _loc3_ = li32(_loc2_ + 52);
         _loc2_ = li32(_loc2_ + 48);
         _loc3_ = li32(_loc3_ + 16);
         _loc2_ = li32(_loc2_ + 16);
         _loc4_ = li32(cmodule.Box2D.mstate.ebp + 12);
         si32(_loc1_,_loc4_ + 68);
         _loc1_ = li32(cmodule.Box2D.mstate.ebp + 20);
         _loc11_ = lf32(_loc1_ + 8);
         _loc12_ = lf32(_loc3_ + 16);
         _loc13_ = lf32(_loc1_ + 12);
         _loc11_ *= _loc12_;
         _loc12_ = _loc13_ * _loc12_;
         _loc11_ = _loc11_;
         _loc12_ = _loc12_;
         _loc13_ = lf32(_loc1_);
         _loc11_ = _loc11_;
         _loc14_ = lf32(_loc1_ + 16);
         _loc15_ = lf32(_loc3_ + 20);
         _loc16_ = lf32(_loc1_ + 20);
         _loc17_ = lf32(_loc1_ + 4);
         _loc12_ = _loc12_;
         _loc11_ = _loc13_ + _loc11_;
         _loc12_ = _loc17_ + _loc12_;
         _loc13_ = _loc14_ * _loc15_;
         _loc14_ = _loc16_ * _loc15_;
         _loc11_ = _loc11_;
         _loc12_ = _loc12_;
         _loc13_ = _loc13_;
         _loc14_ = _loc14_;
         _loc13_ = _loc13_;
         _loc11_ = _loc11_;
         _loc14_ = _loc14_;
         _loc12_ = _loc12_;
         _loc11_ += _loc13_;
         _loc12_ += _loc14_;
         _loc1_ = li32(cmodule.Box2D.mstate.ebp + 16);
         _loc11_ = _loc11_;
         _loc12_ = _loc12_;
         _loc13_ = lf32(_loc1_ + 4);
         _loc12_ = _loc12_;
         _loc14_ = lf32(_loc1_);
         _loc11_ = _loc11_;
         _loc11_ = _loc11_ - _loc14_;
         _loc12_ -= _loc13_;
         _loc11_ = _loc11_;
         _loc12_ = _loc12_;
         _loc13_ = lf32(_loc1_ + 16);
         _loc11_ = _loc11_;
         _loc14_ = lf32(_loc1_ + 8);
         _loc15_ = lf32(_loc1_ + 20);
         _loc12_ = _loc12_;
         _loc16_ = lf32(_loc1_ + 12);
         _loc13_ = _loc11_ * _loc13_;
         _loc11_ *= _loc14_;
         _loc14_ = _loc12_ * _loc15_;
         _loc12_ *= _loc16_;
         _loc13_ = _loc13_;
         _loc11_ = _loc11_;
         _loc14_ = _loc14_;
         _loc12_ = _loc12_;
         _loc15_ = lf32(_loc2_ + 8);
         _loc16_ = lf32(_loc3_ + 8);
         _loc14_ = _loc14_;
         _loc13_ = _loc13_;
         _loc12_ = _loc12_;
         _loc11_ = _loc11_;
         _loc1_ = li32(_loc2_ + 152);
         _loc13_ += _loc14_;
         _loc11_ += _loc12_;
         _loc12_ = _loc15_ + _loc16_;
         _loc13_ = _loc13_;
         _loc11_ = _loc11_;
         _loc12_ = _loc12_;
         _loc5_ = _loc3_ + 20;
         _loc3_ += 16;
         _loc6_ = _loc4_ + 68;
         _loc7_ = _loc2_;
         loop1:
         while(true)
         {
            if(_loc1_ > 0)
            {
               _loc14_ = _loc14_ = -3.40282e+38;
               _loc9_ = _loc8_ = 0;
               while(true)
               {
                  _loc15_ = lf32(_loc2_ + 28);
                  _loc16_ = _loc13_;
                  _loc17_ = lf32(_loc2_ + 24);
                  _loc18_ = _loc11_;
                  _loc15_ = _loc16_ - _loc15_;
                  _loc16_ = _loc18_ - _loc17_;
                  _loc15_ = _loc15_;
                  _loc16_ = _loc16_;
                  _loc17_ = lf32(_loc2_ + 88);
                  _loc18_ = lf32(_loc2_ + 92);
                  _loc15_ = _loc15_;
                  _loc16_ = _loc16_;
                  _loc15_ = _loc18_ * _loc15_;
                  _loc16_ = _loc17_ * _loc16_;
                  _loc15_ = _loc15_;
                  _loc16_ = _loc16_;
                  _loc15_ = _loc15_;
                  _loc16_ = _loc16_;
                  _loc15_ = _loc15_ = _loc16_ + _loc15_;
                  _loc16_ = _loc12_;
                  _loc17_ = _loc15_;
                  if(_loc17_ > _loc16_)
                  {
                     break loop1;
                  }
                  _loc14_ = _loc14_;
                  _loc15_ = _loc15_;
                  _loc16_ = _loc15_ > _loc14_ ? _loc15_ : _loc14_;
                  _loc8_ = _loc15_ > _loc14_ ? _loc9_ : _loc8_;
                  _loc14_ = _loc16_;
                  _loc2_ += 8;
                  _loc9_ += 1;
                  if(_loc9_ < _loc1_)
                  {
                     continue;
                  }
                  _loc15_ = _loc15_ = _loc15_ = 1.19209e-7;
                  _loc14_ = _loc14_;
                  _loc2_ = _loc14_ < _loc15_ ? 1 : 0;
               }
               break;
            }
            _loc2_ = 1;
            _loc8_ = 0;
            _loc9_ = _loc8_ + 1;
            _loc1_ = _loc9_ < _loc1_ ? _loc9_ : 0;
            _loc1_ <<= 3;
            _loc9_ = _loc7_ + 24;
            _loc10_ = _loc8_ << 3;
            _loc1_ = _loc9_ + _loc1_;
            _loc9_ += _loc10_;
            _loc14_ = lf32(_loc9_);
            _loc15_ = lf32(_loc9_ + 4);
            _loc16_ = lf32(_loc1_);
            _loc17_ = lf32(_loc1_ + 4);
            _loc1_ = _loc2_ ^ 1;
            _loc1_ &= 1;
            if(_loc1_ == 0)
            {
               _loc1_ = 1;
               si32(_loc1_,_loc6_);
               _loc11_ = _loc16_;
               _loc12_ = _loc14_;
               _loc6_ = _loc8_ << 3;
               _loc11_ = _loc12_ + _loc11_;
               _loc12_ = 0.5;
               si32(_loc1_,_loc4_ + 64);
               _loc6_ = _loc7_ + _loc6_;
               _loc13_ = _loc17_;
               _loc14_ = _loc15_;
               _loc13_ = _loc14_ + _loc13_;
               _loc11_ = _loc11_;
               _loc12_ = _loc12_;
               _loc14_ = lf32(_loc6_ + 88);
               _loc15_ = lf32(_loc6_ + 92);
               _loc13_ = _loc13_;
               _loc12_ = _loc12_;
               _loc11_ = _loc11_;
               sf32(_loc14_,_loc4_ + 48);
               _loc13_ = _loc13_;
               _loc11_ *= _loc12_;
               _loc12_ = _loc13_ * _loc12_;
               sf32(_loc15_,_loc4_ + 52);
               _loc11_ = _loc11_;
               sf32(_loc11_,_loc4_ + 56);
               _loc11_ = _loc12_;
               sf32(_loc11_,_loc4_ + 60);
               _loc11_ = lf32(_loc3_);
               _loc12_ = lf32(_loc5_);
               sf32(_loc11_,_loc4_);
               sf32(_loc12_,_loc4_ + 4);
               _loc3_ = 0;
               si32(_loc3_,_loc4_ + 16);
               break;
            }
            _loc18_ = 0;
            _loc19_ = _loc17_;
            _loc20_ = _loc15_;
            _loc21_ = _loc13_;
            _loc22_ = _loc16_;
            _loc23_ = _loc14_;
            _loc24_ = _loc11_;
            _loc19_ -= _loc20_;
            _loc20_ = _loc21_ - _loc20_;
            _loc21_ = _loc22_ - _loc23_;
            _loc22_ = _loc24_ - _loc23_;
            _loc19_ = _loc19_;
            _loc20_ = _loc20_;
            _loc21_ = _loc21_;
            _loc22_ = _loc22_;
            _loc19_ = _loc19_;
            _loc23_ = _loc20_;
            _loc21_ = _loc21_;
            _loc24_ = _loc22_;
            _loc19_ = _loc23_ * _loc19_;
            _loc21_ = _loc24_ * _loc21_;
            _loc19_ = _loc19_;
            _loc21_ = _loc21_;
            _loc19_ = _loc19_;
            _loc21_ = _loc21_;
            _loc19_ = _loc19_ = _loc21_ + _loc19_;
            _loc18_ = _loc18_ = _loc18_;
            _loc19_ = _loc19_;
            if(_loc19_ <= _loc18_)
            {
               _loc11_ = _loc22_;
               _loc13_ = _loc20_;
               _loc11_ *= _loc11_;
               _loc13_ *= _loc13_;
               _loc11_ = _loc11_;
               _loc13_ = _loc13_;
               _loc12_ = _loc12_;
               _loc13_ = _loc13_;
               _loc11_ = _loc11_;
               _loc11_ = _loc11_ + _loc13_;
               _loc12_ *= _loc12_;
               _loc11_ = _loc11_;
               _loc12_ = _loc12_ = _loc12_;
               _loc13_ = _loc11_;
               if(_loc13_ > _loc12_)
               {
                  break;
               }
               _loc7_ = 1;
               si32(_loc7_,_loc6_);
               _loc11_ = _loc11_;
               si32(_loc7_,_loc4_ + 64);
               _loc11_ = Math.sqrt(_loc11_);
               sf32(_loc22_,_loc4_ + 48);
               _loc11_ = _loc11_;
               sf32(_loc20_,_loc4_ + 52);
               _loc12_ = 1.19209e-7;
               _loc6_ = _loc4_ + 52;
               _loc7_ = _loc4_ + 48;
               _loc12_ = _loc12_ = _loc12_;
               _loc13_ = _loc11_;
               if(_loc13_ >= _loc12_)
               {
                  _loc12_ = _loc12_ = 1;
                  _loc11_ = _loc11_;
                  _loc12_ = _loc12_;
                  _loc11_ = _loc11_ = _loc12_ / _loc11_;
                  _loc12_ = _loc22_;
                  _loc11_ = _loc11_;
                  _loc12_ *= _loc11_;
                  _loc13_ = _loc20_;
                  _loc11_ = _loc13_ * _loc11_;
                  _loc12_ = _loc12_;
                  sf32(_loc12_,_loc7_);
                  _loc11_ = _loc11_;
                  sf32(_loc11_,_loc6_);
               }
               _loc6_ = 0;
               sf32(_loc14_,_loc4_ + 56);
               sf32(_loc15_,_loc4_ + 60);
            }
            else
            {
               _loc18_ = 0;
               _loc19_ = _loc15_;
               _loc20_ = _loc17_;
               _loc21_ = _loc13_;
               _loc22_ = _loc14_;
               _loc23_ = _loc16_;
               _loc24_ = _loc11_;
               _loc19_ -= _loc20_;
               _loc20_ = _loc21_ - _loc20_;
               _loc21_ = _loc22_ - _loc23_;
               _loc22_ = _loc24_ - _loc23_;
               _loc19_ = _loc19_;
               _loc20_ = _loc20_;
               _loc21_ = _loc21_;
               _loc22_ = _loc22_;
               _loc19_ = _loc19_;
               _loc23_ = _loc20_;
               _loc21_ = _loc21_;
               _loc24_ = _loc22_;
               _loc19_ = _loc23_ * _loc19_;
               _loc21_ = _loc24_ * _loc21_;
               _loc19_ = _loc19_;
               _loc21_ = _loc21_;
               _loc19_ = _loc19_;
               _loc21_ = _loc21_;
               _loc19_ = _loc19_ = _loc21_ + _loc19_;
               _loc18_ = _loc18_ = _loc18_;
               _loc19_ = _loc19_;
               if(_loc19_ > _loc18_)
               {
                  _loc18_ = 0.5;
                  _loc17_ = _loc17_;
                  _loc15_ = _loc15_;
                  _loc16_ = _loc16_;
                  _loc14_ = _loc14_;
                  _loc15_ += _loc17_;
                  _loc14_ += _loc16_;
                  _loc15_ = _loc15_;
                  _loc14_ = _loc14_;
                  _loc16_ = _loc18_;
                  _loc15_ = _loc15_;
                  _loc16_ = _loc16_;
                  _loc14_ = _loc14_;
                  _loc15_ *= _loc16_;
                  _loc14_ *= _loc16_;
                  _loc15_ = _loc15_;
                  _loc14_ = _loc14_;
                  _loc16_ = _loc15_;
                  _loc13_ = _loc13_;
                  _loc17_ = _loc14_;
                  _loc11_ = _loc11_;
                  _loc13_ -= _loc16_;
                  _loc11_ -= _loc17_;
                  _loc1_ = _loc8_ << 3;
                  _loc1_ = _loc7_ + _loc1_;
                  _loc13_ = _loc13_;
                  _loc11_ = _loc11_;
                  _loc16_ = lf32(_loc1_ + 88);
                  _loc17_ = lf32(_loc1_ + 92);
                  _loc13_ = _loc13_;
                  _loc11_ = _loc11_;
                  _loc13_ *= _loc17_;
                  _loc11_ *= _loc16_;
                  _loc13_ = _loc13_;
                  _loc11_ = _loc11_;
                  _loc13_ = _loc13_;
                  _loc11_ = _loc11_;
                  _loc11_ = _loc11_ + _loc13_;
                  _loc2_ = _loc1_ + 92;
                  _loc1_ += 88;
                  _loc11_ = _loc11_;
                  _loc12_ = _loc12_;
                  _loc11_ = _loc11_;
                  if(_loc11_ <= _loc12_)
                  {
                     _loc7_ = 1;
                     si32(_loc7_,_loc6_);
                     si32(_loc7_,_loc4_ + 64);
                     _loc11_ = lf32(_loc1_);
                     _loc12_ = lf32(_loc2_);
                     sf32(_loc11_,_loc4_ + 48);
                     sf32(_loc12_,_loc4_ + 52);
                     sf32(_loc14_,_loc4_ + 56);
                     sf32(_loc15_,_loc4_ + 60);
                     _loc11_ = lf32(_loc3_);
                     _loc12_ = lf32(_loc5_);
                     sf32(_loc11_,_loc4_);
                     sf32(_loc12_,_loc4_ + 4);
                     _loc1_ = 0;
                     si32(_loc1_,_loc4_ + 16);
                  }
                  break;
               }
               _loc11_ = _loc22_;
               _loc13_ = _loc20_;
               _loc11_ *= _loc11_;
               _loc13_ *= _loc13_;
               _loc11_ = _loc11_;
               _loc13_ = _loc13_;
               _loc12_ = _loc12_;
               _loc13_ = _loc13_;
               _loc11_ = _loc11_;
               _loc11_ = _loc11_ + _loc13_;
               _loc12_ *= _loc12_;
               _loc11_ = _loc11_;
               _loc12_ = _loc12_ = _loc12_;
               _loc13_ = _loc11_;
               if(_loc13_ > _loc12_)
               {
                  break;
               }
               _loc7_ = 1;
               si32(_loc7_,_loc6_);
               _loc11_ = _loc11_;
               si32(_loc7_,_loc4_ + 64);
               _loc11_ = Math.sqrt(_loc11_);
               sf32(_loc22_,_loc4_ + 48);
               _loc11_ = _loc11_;
               sf32(_loc20_,_loc4_ + 52);
               _loc12_ = 1.19209e-7;
               _loc6_ = _loc4_ + 52;
               _loc7_ = _loc4_ + 48;
               _loc12_ = _loc12_ = _loc12_;
               _loc13_ = _loc11_;
               if(_loc13_ >= _loc12_)
               {
                  _loc12_ = _loc12_ = 1;
                  _loc11_ = _loc11_;
                  _loc12_ = _loc12_;
                  _loc11_ = _loc11_ = _loc12_ / _loc11_;
                  _loc12_ = _loc22_;
                  _loc11_ = _loc11_;
                  _loc12_ *= _loc11_;
                  _loc13_ = _loc20_;
                  _loc11_ = _loc13_ * _loc11_;
                  _loc12_ = _loc12_;
                  sf32(_loc12_,_loc7_);
                  _loc11_ = _loc11_;
                  sf32(_loc11_,_loc6_);
               }
               _loc6_ = 0;
               sf32(_loc16_,_loc4_ + 56);
               sf32(_loc17_,_loc4_ + 60);
            }
            _loc11_ = lf32(_loc3_);
            _loc12_ = lf32(_loc5_);
            sf32(_loc11_,_loc4_);
            sf32(_loc12_,_loc4_ + 4);
            si32(_loc6_,_loc4_ + 16);
            break;
         }
         cmodule.Box2D.mstate.esp = cmodule.Box2D.mstate.ebp;
         cmodule.Box2D.mstate.ebp = li32(cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.esp += 4;
         cmodule.Box2D.mstate.esp += 4;
      }
   }
}

