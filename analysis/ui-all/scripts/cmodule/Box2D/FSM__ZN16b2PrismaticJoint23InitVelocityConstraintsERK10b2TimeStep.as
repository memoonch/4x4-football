package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZN16b2PrismaticJoint23InitVelocityConstraintsERK10b2TimeStep extends Machine
   {
      
      public function FSM__ZN16b2PrismaticJoint23InitVelocityConstraintsERK10b2TimeStep()
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
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc32_:Number = NaN;
         var _loc33_:Number = NaN;
         var _loc34_:Number = NaN;
         cmodule.Box2D.mstate.esp -= 4;
         si32(cmodule.Box2D.mstate.ebp,cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.ebp = cmodule.Box2D.mstate.esp;
         cmodule.Box2D.mstate.esp -= 0;
         _loc10_ = 1.19209e-7;
         _loc1_ = li32(cmodule.Box2D.mstate.ebp + 8);
         _loc2_ = li32(_loc1_ + 48);
         _loc11_ = lf32(_loc2_ + 36);
         _loc12_ = lf32(_loc2_ + 40);
         _loc3_ = li32(_loc1_ + 52);
         sf32(_loc11_,_loc1_ + 64);
         sf32(_loc12_,_loc1_ + 68);
         _loc13_ = lf32(_loc3_ + 36);
         _loc14_ = lf32(_loc3_ + 40);
         sf32(_loc13_,_loc1_ + 72);
         sf32(_loc14_,_loc1_ + 76);
         _loc15_ = lf32(_loc1_ + 108);
         _loc14_ = _loc14_;
         _loc16_ = lf32(_loc1_ + 104);
         _loc13_ = _loc13_;
         _loc14_ = _loc15_ - _loc14_;
         _loc13_ = _loc16_ - _loc13_;
         _loc14_ = _loc14_;
         _loc13_ = _loc13_;
         _loc15_ = lf32(_loc3_ + 20);
         _loc13_ = _loc13_;
         _loc16_ = lf32(_loc3_ + 24);
         _loc17_ = lf32(_loc3_ + 28);
         _loc14_ = _loc14_;
         _loc18_ = lf32(_loc3_ + 32);
         _loc15_ *= _loc13_;
         _loc13_ = _loc16_ * _loc13_;
         _loc16_ = _loc17_ * _loc14_;
         _loc14_ = _loc18_ * _loc14_;
         _loc15_ = _loc15_;
         _loc13_ = _loc13_;
         _loc16_ = _loc16_;
         _loc14_ = _loc14_;
         _loc17_ = lf32(_loc2_ + 20);
         _loc18_ = lf32(_loc2_ + 24);
         _loc19_ = lf32(_loc2_ + 28);
         _loc20_ = lf32(_loc2_ + 32);
         _loc21_ = lf32(_loc2_ + 128);
         _loc22_ = lf32(_loc1_ + 100);
         _loc12_ = _loc12_;
         _loc23_ = lf32(_loc1_ + 96);
         _loc11_ = _loc11_;
         _loc24_ = lf32(_loc3_ + 56);
         _loc25_ = lf32(_loc3_ + 52);
         _loc26_ = lf32(_loc2_ + 56);
         _loc27_ = lf32(_loc2_ + 52);
         _loc16_ = _loc16_;
         _loc15_ = _loc15_;
         _loc14_ = _loc14_;
         _loc13_ = _loc13_;
         _loc15_ += _loc16_;
         _loc13_ += _loc14_;
         _loc12_ = _loc22_ - _loc12_;
         _loc11_ = _loc23_ - _loc11_;
         sf32(_loc21_,_loc1_ + 80);
         _loc14_ = _loc15_;
         _loc13_ = _loc13_;
         _loc12_ = _loc12_;
         _loc11_ = _loc11_;
         _loc15_ = lf32(_loc2_ + 136);
         _loc16_ = _loc14_;
         _loc22_ = _loc13_;
         _loc23_ = _loc17_;
         _loc11_ = _loc11_;
         _loc28_ = _loc18_;
         _loc29_ = _loc19_;
         _loc12_ = _loc12_;
         _loc30_ = _loc20_;
         sf32(_loc15_,_loc1_ + 84);
         _loc31_ = _loc23_ * _loc11_;
         _loc11_ = _loc28_ * _loc11_;
         _loc32_ = _loc29_ * _loc12_;
         _loc12_ = _loc30_ * _loc12_;
         _loc25_ += _loc16_;
         _loc24_ += _loc22_;
         _loc33_ = lf32(_loc3_ + 128);
         _loc31_ = _loc31_;
         _loc11_ = _loc11_;
         _loc32_ = _loc32_;
         _loc12_ = _loc12_;
         _loc25_ = _loc25_;
         _loc24_ = _loc24_;
         sf32(_loc33_,_loc1_ + 88);
         _loc25_ = _loc25_;
         _loc24_ = _loc24_;
         _loc32_ = _loc32_;
         _loc31_ = _loc31_;
         _loc12_ = _loc12_;
         _loc11_ = _loc11_;
         _loc34_ = lf32(_loc3_ + 136);
         _loc31_ += _loc32_;
         _loc11_ += _loc12_;
         _loc12_ = _loc25_ - _loc27_;
         _loc24_ -= _loc26_;
         sf32(_loc34_,_loc1_ + 92);
         _loc25_ = _loc31_;
         _loc11_ = _loc11_;
         _loc12_ = _loc12_;
         _loc24_ = _loc24_;
         _loc26_ = lf32(_loc1_ + 112);
         _loc27_ = lf32(_loc1_ + 116);
         _loc25_ = _loc25_;
         _loc12_ = _loc12_;
         _loc11_ = _loc11_;
         _loc24_ = _loc24_;
         _loc12_ -= _loc25_;
         _loc28_ *= _loc26_;
         _loc23_ *= _loc26_;
         _loc26_ = _loc30_ * _loc27_;
         _loc27_ = _loc29_ * _loc27_;
         _loc24_ -= _loc11_;
         _loc12_ = _loc12_;
         _loc28_ = _loc28_;
         _loc23_ = _loc23_;
         _loc26_ = _loc26_;
         _loc27_ = _loc27_;
         _loc24_ = _loc24_;
         _loc29_ = _loc12_;
         _loc30_ = _loc24_;
         _loc26_ = _loc26_;
         _loc28_ = _loc28_;
         _loc27_ = _loc27_;
         _loc23_ = _loc23_;
         _loc25_ = _loc29_ + _loc25_;
         _loc26_ = _loc28_ + _loc26_;
         _loc23_ += _loc27_;
         _loc11_ = _loc30_ + _loc11_;
         _loc25_ = _loc25_;
         _loc26_ = _loc26_;
         _loc23_ = _loc23_;
         _loc11_ = _loc11_;
         _loc27_ = _loc26_;
         _loc28_ = _loc25_;
         _loc29_ = _loc23_;
         _loc30_ = _loc11_;
         _loc28_ *= _loc27_;
         _loc30_ *= _loc29_;
         _loc28_ = _loc28_;
         _loc30_ = _loc30_ = _loc30_;
         _loc28_ = _loc28_;
         _loc28_ = _loc28_ - _loc30_;
         _loc16_ *= _loc27_;
         _loc22_ *= _loc29_;
         _loc27_ = _loc28_;
         _loc16_ = _loc16_;
         _loc22_ = _loc22_;
         _loc28_ = _loc27_;
         _loc29_ = _loc15_;
         _loc22_ = _loc22_;
         _loc16_ = _loc16_;
         _loc29_ *= _loc28_;
         _loc16_ -= _loc22_;
         _loc22_ = _loc29_;
         _loc16_ = _loc16_;
         _loc22_ = _loc22_;
         _loc29_ = _loc16_;
         _loc30_ = _loc34_;
         _loc31_ = _loc33_;
         _loc32_ = _loc21_;
         _loc22_ *= _loc28_;
         _loc28_ = _loc30_ * _loc29_;
         _loc30_ = _loc32_ + _loc31_;
         _loc22_ = _loc22_;
         _loc28_ = _loc28_;
         _loc30_ = _loc30_;
         _loc28_ = _loc28_;
         _loc22_ = _loc22_;
         _loc31_ = _loc30_;
         _loc22_ = _loc31_ + _loc22_;
         _loc28_ *= _loc29_;
         sf32(_loc23_,_loc1_ + 132);
         _loc22_ = _loc22_;
         _loc28_ = _loc28_;
         sf32(_loc26_,_loc1_ + 136);
         _loc28_ = _loc28_;
         _loc22_ = _loc22_;
         sf32(_loc27_,_loc1_ + 156);
         _loc22_ += _loc28_;
         sf32(_loc16_,_loc1_ + 160);
         _loc22_ = _loc22_;
         _loc4_ = _loc1_ + 212;
         _loc5_ = _loc1_ + 92;
         _loc6_ = _loc1_ + 88;
         _loc7_ = _loc1_ + 84;
         _loc8_ = li32(cmodule.Box2D.mstate.ebp + 12);
         _loc10_ = _loc10_ = _loc10_;
         _loc28_ = _loc22_;
         if(_loc28_ > _loc10_)
         {
            _loc10_ = _loc10_ = 1;
            _loc22_ = _loc22_;
            _loc10_ = _loc10_;
            _loc22_ = _loc10_ = _loc10_ / _loc22_;
         }
         _loc10_ = _loc22_;
         _loc22_ = 0;
         sf32(_loc10_,_loc4_);
         _loc10_ = lf32(_loc1_ + 120);
         _loc28_ = lf32(_loc1_ + 124);
         _loc18_ = _loc18_;
         _loc17_ = _loc17_;
         _loc20_ = _loc20_;
         _loc19_ = _loc19_;
         _loc18_ *= _loc10_;
         _loc10_ = _loc17_ * _loc10_;
         _loc17_ = _loc20_ * _loc28_;
         _loc19_ *= _loc28_;
         _loc18_ = _loc18_;
         _loc10_ = _loc10_;
         _loc17_ = _loc17_;
         _loc19_ = _loc19_;
         _loc17_ = _loc17_;
         _loc18_ = _loc18_;
         _loc19_ = _loc19_;
         _loc10_ = _loc10_;
         _loc17_ = _loc18_ + _loc17_;
         _loc10_ += _loc19_;
         _loc17_ = _loc17_;
         _loc10_ = _loc10_;
         _loc18_ = _loc25_;
         _loc19_ = _loc17_;
         _loc11_ = _loc11_;
         _loc20_ = _loc10_;
         _loc18_ *= _loc19_;
         _loc11_ *= _loc20_;
         _loc18_ = _loc18_;
         _loc11_ = _loc11_;
         _loc14_ = _loc14_;
         _loc13_ = _loc13_;
         _loc11_ = _loc11_;
         _loc18_ = _loc18_;
         _loc11_ = _loc18_ - _loc11_;
         _loc14_ *= _loc19_;
         _loc13_ *= _loc20_;
         _loc11_ = _loc11_;
         _loc14_ = _loc14_;
         _loc13_ = _loc13_;
         _loc18_ = _loc11_;
         _loc15_ = _loc15_;
         _loc13_ = _loc13_;
         _loc14_ = _loc14_;
         _loc19_ = _loc18_ * _loc15_;
         _loc13_ = _loc14_ - _loc13_;
         _loc14_ = _loc19_;
         _loc13_ = _loc13_;
         _loc14_ = _loc14_;
         _loc19_ = _loc34_;
         _loc20_ = _loc13_;
         _loc18_ = _loc14_ * _loc18_;
         _loc25_ = _loc20_ * _loc19_;
         _loc18_ = _loc18_;
         _loc25_ = _loc25_ = _loc25_;
         _loc18_ = _loc18_;
         _loc28_ = _loc30_;
         _loc18_ = _loc28_ + _loc18_;
         _loc20_ = _loc25_ * _loc20_;
         _loc29_ = _loc27_;
         _loc30_ = _loc16_;
         sf32(_loc10_,_loc1_ + 140);
         _loc18_ = _loc18_;
         _loc20_ = _loc20_;
         sf32(_loc17_,_loc1_ + 144);
         _loc31_ = _loc14_ * _loc29_;
         _loc32_ = _loc25_ * _loc30_;
         _loc33_ = _loc29_ * _loc15_;
         _loc20_ = _loc20_;
         _loc18_ = _loc18_;
         sf32(_loc11_,_loc1_ + 148);
         _loc18_ += _loc20_;
         _loc20_ = _loc31_;
         _loc31_ = _loc32_;
         _loc32_ = _loc33_;
         _loc14_ += _loc25_;
         _loc15_ += _loc19_;
         _loc25_ = _loc32_;
         _loc32_ = 1;
         sf32(_loc13_,_loc1_ + 152);
         _loc18_ = _loc18_;
         _loc31_ = _loc31_;
         _loc20_ = _loc20_;
         _loc20_ = _loc20_ + _loc31_;
         _loc15_ = _loc15_;
         _loc29_ = _loc25_ * _loc29_;
         _loc19_ = _loc30_ * _loc19_;
         _loc22_ = _loc22_;
         _loc31_ = _loc32_;
         sf32(_loc18_,_loc1_ + 164);
         _loc14_ = _loc14_;
         _loc18_ = _loc29_;
         _loc19_ = _loc19_;
         sf32(_loc14_,_loc1_ + 168);
         _loc20_ = _loc20_;
         _loc29_ = _loc31_;
         _loc22_ = _loc22_;
         _loc15_ = _loc15_;
         _loc19_ = _loc19_;
         sf32(_loc20_,_loc1_ + 172);
         _loc15_ = _loc15_ == _loc22_ ? _loc29_ : _loc15_;
         _loc18_ = _loc18_;
         _loc22_ = _loc25_ + _loc19_;
         _loc18_ = _loc28_ + _loc18_;
         _loc19_ *= _loc30_;
         sf32(_loc14_,_loc1_ + 176);
         _loc14_ = _loc15_;
         _loc15_ = _loc18_;
         _loc18_ = _loc19_;
         sf32(_loc14_,_loc1_ + 180);
         _loc14_ = _loc22_;
         sf32(_loc14_,_loc1_ + 184);
         _loc18_ = _loc18_;
         _loc15_ = _loc15_;
         sf32(_loc20_,_loc1_ + 188);
         _loc15_ += _loc18_;
         sf32(_loc14_,_loc1_ + 192);
         _loc14_ = _loc15_;
         sf32(_loc14_,_loc1_ + 196);
         loop0:
         while(true)
         {
            while(true)
            {
               _loc4_ = li8(_loc1_ + 236);
               if(_loc4_ != 0)
               {
                  _loc14_ = 0;
                  _loc15_ = lf32(_loc1_ + 224);
                  _loc18_ = lf32(_loc1_ + 220);
                  _loc12_ = _loc12_;
                  _loc19_ = _loc23_;
                  _loc20_ = _loc24_;
                  _loc22_ = _loc26_;
                  _loc12_ = _loc19_ * _loc12_;
                  _loc19_ = _loc22_ * _loc20_;
                  _loc20_ = _loc15_;
                  _loc22_ = _loc18_;
                  _loc12_ = _loc12_;
                  _loc19_ = _loc19_;
                  _loc24_ = _loc20_ - _loc22_;
                  _loc20_ = _loc22_ - _loc20_;
                  _loc22_ = _loc24_;
                  _loc20_ = _loc20_;
                  _loc14_ = _loc14_;
                  _loc19_ = _loc19_;
                  _loc12_ = _loc12_;
                  _loc24_ = lf32(cmodule.Box2D._b2_linearSlop);
                  _loc12_ += _loc19_;
                  _loc19_ = _loc20_;
                  _loc14_ = _loc14_;
                  _loc20_ = _loc22_;
                  _loc12_ = _loc12_;
                  _loc14_ = _loc20_ <= _loc14_ ? _loc19_ : _loc20_;
                  _loc19_ = _loc24_ + _loc24_;
                  _loc14_ = _loc14_;
                  _loc19_ = _loc19_ = _loc19_;
                  _loc14_ = _loc14_;
                  if(_loc14_ < _loc19_)
                  {
                     _loc4_ = 3;
                     si32(_loc4_,_loc1_ + 240);
                     _loc4_ = li8(_loc1_ + 237);
                     if(_loc4_ != 0)
                     {
                        break loop0;
                     }
                     break;
                  }
                  _loc14_ = _loc12_;
                  _loc18_ = _loc18_;
                  if(_loc18_ >= _loc14_)
                  {
                     _loc4_ = li32(_loc1_ + 240);
                     _loc9_ = _loc1_ + 240;
                     if(_loc4_ != 1)
                     {
                        _loc4_ = 1;
                        si32(_loc4_,_loc9_);
                        _loc4_ = 0;
                        si32(_loc4_,_loc1_ + 208);
                        _loc4_ = li8(_loc1_ + 237);
                        if(_loc4_ != 0)
                        {
                           break loop0;
                        }
                        break;
                     }
                  }
                  else
                  {
                     _loc4_ = _loc1_ + 240;
                     _loc12_ = _loc12_;
                     _loc14_ = _loc15_;
                     if(_loc14_ > _loc12_)
                     {
                        _loc9_ = 0;
                        si32(_loc9_,_loc4_);
                        si32(_loc9_,_loc1_ + 208);
                        _loc4_ = li8(_loc1_ + 237);
                        if(_loc4_ != 0)
                        {
                           break loop0;
                        }
                        break;
                     }
                     _loc9_ = li32(_loc4_);
                     if(_loc9_ != 2)
                     {
                        _loc9_ = 2;
                        si32(_loc9_,_loc4_);
                        _loc4_ = 0;
                        si32(_loc4_,_loc1_ + 208);
                        _loc4_ = li8(_loc1_ + 237);
                        if(_loc4_ != 0)
                        {
                           break loop0;
                        }
                        break;
                     }
                  }
               }
               else
               {
                  _loc4_ = 0;
                  si32(_loc4_,_loc1_ + 240);
                  si32(_loc4_,_loc1_ + 208);
               }
               _loc4_ = li8(_loc1_ + 237);
               if(_loc4_ == 0)
               {
                  break;
               }
               break loop0;
            }
            _loc4_ = 0;
            si32(_loc4_,_loc1_ + 216);
            break;
         }
         _loc4_ = li8(_loc8_ + 20);
         if(_loc4_ != 0)
         {
            _loc12_ = lf32(_loc8_ + 8);
            _loc14_ = lf32(_loc1_ + 200);
            _loc14_ = _loc14_ = _loc14_ * _loc12_;
            sf32(_loc14_,_loc1_ + 200);
            _loc15_ = lf32(_loc1_ + 204);
            _loc15_ = _loc15_ = _loc15_ * _loc12_;
            sf32(_loc15_,_loc1_ + 204);
            _loc18_ = lf32(_loc1_ + 208);
            _loc12_ = _loc12_ = _loc18_ * _loc12_;
            sf32(_loc12_,_loc1_ + 208);
            _loc18_ = lf32(_loc1_ + 216);
            _loc19_ = lf32(_loc8_ + 8);
            _loc18_ = _loc18_ *= _loc19_;
            _loc12_ = _loc12_;
            _loc19_ = _loc18_;
            _loc12_ = _loc12_ = _loc19_ + _loc12_;
            _loc19_ = _loc23_;
            _loc12_ = _loc12_;
            _loc10_ = _loc10_;
            _loc14_ = _loc14_;
            _loc19_ *= _loc12_;
            _loc10_ *= _loc14_;
            _loc19_ = _loc19_;
            _loc10_ = _loc10_;
            _loc19_ = _loc19_;
            _loc10_ = _loc10_;
            _loc20_ = _loc26_;
            _loc10_ += _loc19_;
            _loc17_ = _loc17_;
            _loc19_ = _loc20_ * _loc12_;
            _loc10_ = _loc10_;
            _loc17_ *= _loc14_;
            _loc19_ = _loc19_;
            _loc17_ = _loc17_;
            _loc20_ = _loc21_;
            _loc10_ = _loc10_;
            _loc21_ = _loc10_ * _loc20_;
            _loc19_ = _loc19_;
            _loc17_ = _loc17_;
            _loc17_ = _loc17_ + _loc19_;
            _loc19_ = _loc21_;
            _loc11_ = _loc11_;
            sf32(_loc18_,_loc1_ + 216);
            _loc17_ = _loc17_;
            _loc11_ = _loc14_ * _loc11_;
            _loc18_ = lf32(_loc2_ + 72);
            _loc19_ = _loc19_;
            _loc18_ -= _loc19_;
            _loc17_ = _loc17_;
            _loc11_ = _loc11_;
            _loc18_ = _loc18_;
            _loc19_ = _loc17_ * _loc20_;
            _loc20_ = _loc27_;
            _loc11_ = _loc11_;
            _loc15_ = _loc15_;
            sf32(_loc18_,_loc2_ + 72);
            _loc18_ = _loc19_;
            _loc19_ = _loc12_ * _loc20_;
            _loc11_ += _loc15_;
            _loc19_ = _loc19_;
            _loc11_ = _loc11_;
            _loc20_ = lf32(_loc2_ + 76);
            _loc18_ = _loc18_;
            _loc18_ = _loc20_ - _loc18_;
            _loc19_ = _loc19_;
            _loc11_ = _loc11_;
            _loc18_ = _loc18_;
            _loc11_ += _loc19_;
            sf32(_loc18_,_loc2_ + 76);
            _loc11_ = _loc11_;
            _loc18_ = lf32(_loc7_);
            _loc11_ = _loc11_;
            _loc11_ = _loc11_ = _loc18_ * _loc11_;
            _loc18_ = lf32(_loc2_ + 80);
            _loc11_ = _loc11_;
            _loc11_ = _loc11_ = _loc18_ - _loc11_;
            sf32(_loc11_,_loc2_ + 80);
            _loc11_ = lf32(_loc6_);
            _loc10_ = _loc10_ *= _loc11_;
            _loc13_ = _loc13_;
            _loc18_ = lf32(_loc3_ + 72);
            _loc10_ = _loc10_;
            _loc13_ = _loc14_ * _loc13_;
            _loc10_ = _loc18_ + _loc10_;
            _loc13_ = _loc13_;
            _loc11_ = _loc17_ * _loc11_;
            _loc14_ = _loc16_;
            _loc13_ = _loc13_;
            _loc10_ = _loc10_;
            sf32(_loc10_,_loc3_ + 72);
            _loc10_ = _loc11_;
            _loc11_ = _loc12_ * _loc14_;
            _loc12_ = _loc13_ + _loc15_;
            _loc11_ = _loc11_;
            _loc12_ = _loc12_;
            _loc13_ = lf32(_loc3_ + 76);
            _loc10_ = _loc10_;
            _loc10_ = _loc13_ + _loc10_;
            _loc11_ = _loc11_;
            _loc12_ = _loc12_;
            _loc10_ = _loc10_;
            _loc11_ = _loc12_ + _loc11_;
            sf32(_loc10_,_loc3_ + 76);
            _loc10_ = _loc11_;
            _loc11_ = lf32(_loc5_);
            _loc10_ = _loc10_;
            _loc10_ = _loc10_ = _loc11_ * _loc10_;
            _loc11_ = lf32(_loc3_ + 80);
            _loc10_ = _loc10_;
            _loc10_ = _loc10_ = _loc11_ + _loc10_;
            sf32(_loc10_,_loc3_ + 80);
         }
         else
         {
            _loc2_ = 0;
            si32(_loc2_,_loc1_ + 200);
            si32(_loc2_,_loc1_ + 204);
            si32(_loc2_,_loc1_ + 208);
            si32(_loc2_,_loc1_ + 216);
         }
         cmodule.Box2D.mstate.esp = cmodule.Box2D.mstate.ebp;
         cmodule.Box2D.mstate.ebp = li32(cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.esp += 4;
         cmodule.Box2D.mstate.esp += 4;
      }
   }
}

