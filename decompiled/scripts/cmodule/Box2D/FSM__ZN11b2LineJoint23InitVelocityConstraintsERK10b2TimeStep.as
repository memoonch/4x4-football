package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZN11b2LineJoint23InitVelocityConstraintsERK10b2TimeStep extends Machine
   {
      
      public function FSM__ZN11b2LineJoint23InitVelocityConstraintsERK10b2TimeStep()
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
         var _loc35_:Number = NaN;
         cmodule.Box2D.mstate.esp -= 4;
         si32(cmodule.Box2D.mstate.ebp,cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.ebp = cmodule.Box2D.mstate.esp;
         cmodule.Box2D.mstate.esp -= 0;
         _loc11_ = 0;
         _loc1_ = li32(cmodule.Box2D.mstate.ebp + 8);
         _loc2_ = li32(_loc1_ + 48);
         _loc12_ = lf32(_loc2_ + 36);
         _loc13_ = lf32(_loc2_ + 40);
         _loc3_ = li32(_loc1_ + 52);
         sf32(_loc12_,_loc1_ + 64);
         sf32(_loc13_,_loc1_ + 68);
         _loc14_ = lf32(_loc3_ + 36);
         _loc15_ = lf32(_loc3_ + 40);
         sf32(_loc14_,_loc1_ + 72);
         sf32(_loc15_,_loc1_ + 76);
         _loc16_ = lf32(_loc1_ + 108);
         _loc15_ = _loc15_;
         _loc17_ = lf32(_loc1_ + 104);
         _loc14_ = _loc14_;
         _loc15_ = _loc16_ - _loc15_;
         _loc14_ = _loc17_ - _loc14_;
         _loc15_ = _loc15_;
         _loc14_ = _loc14_;
         _loc16_ = lf32(_loc3_ + 20);
         _loc14_ = _loc14_;
         _loc17_ = lf32(_loc3_ + 24);
         _loc18_ = lf32(_loc3_ + 28);
         _loc15_ = _loc15_;
         _loc19_ = lf32(_loc3_ + 32);
         _loc16_ *= _loc14_;
         _loc14_ = _loc17_ * _loc14_;
         _loc17_ = _loc18_ * _loc15_;
         _loc15_ = _loc19_ * _loc15_;
         _loc16_ = _loc16_;
         _loc14_ = _loc14_;
         _loc17_ = _loc17_;
         _loc15_ = _loc15_;
         _loc18_ = lf32(_loc2_ + 20);
         _loc19_ = lf32(_loc2_ + 24);
         _loc20_ = lf32(_loc2_ + 28);
         _loc21_ = lf32(_loc2_ + 32);
         _loc22_ = lf32(_loc2_ + 128);
         _loc23_ = lf32(_loc1_ + 100);
         _loc13_ = _loc13_;
         _loc24_ = lf32(_loc1_ + 96);
         _loc12_ = _loc12_;
         _loc25_ = lf32(_loc3_ + 56);
         _loc26_ = lf32(_loc3_ + 52);
         _loc27_ = lf32(_loc2_ + 56);
         _loc28_ = lf32(_loc2_ + 52);
         _loc17_ = _loc17_;
         _loc16_ = _loc16_;
         _loc15_ = _loc15_;
         _loc14_ = _loc14_;
         _loc16_ += _loc17_;
         _loc14_ += _loc15_;
         _loc13_ = _loc23_ - _loc13_;
         _loc12_ = _loc24_ - _loc12_;
         sf32(_loc22_,_loc1_ + 80);
         _loc15_ = _loc16_;
         _loc14_ = _loc14_;
         _loc13_ = _loc13_;
         _loc12_ = _loc12_;
         _loc16_ = lf32(_loc2_ + 136);
         _loc17_ = _loc15_;
         _loc23_ = _loc14_;
         _loc24_ = _loc18_;
         _loc12_ = _loc12_;
         _loc29_ = _loc19_;
         _loc30_ = _loc20_;
         _loc13_ = _loc13_;
         _loc31_ = _loc21_;
         sf32(_loc16_,_loc1_ + 84);
         _loc32_ = _loc24_ * _loc12_;
         _loc12_ = _loc29_ * _loc12_;
         _loc33_ = _loc30_ * _loc13_;
         _loc13_ = _loc31_ * _loc13_;
         _loc26_ += _loc17_;
         _loc25_ += _loc23_;
         _loc34_ = lf32(_loc3_ + 128);
         _loc32_ = _loc32_;
         _loc12_ = _loc12_;
         _loc33_ = _loc33_;
         _loc13_ = _loc13_;
         _loc26_ = _loc26_;
         _loc25_ = _loc25_;
         sf32(_loc34_,_loc1_ + 88);
         _loc26_ = _loc26_;
         _loc25_ = _loc25_;
         _loc33_ = _loc33_;
         _loc32_ = _loc32_;
         _loc13_ = _loc13_;
         _loc12_ = _loc12_;
         _loc35_ = lf32(_loc3_ + 136);
         _loc32_ += _loc33_;
         _loc12_ += _loc13_;
         _loc13_ = _loc26_ - _loc28_;
         _loc25_ -= _loc27_;
         sf32(_loc35_,_loc1_ + 92);
         _loc26_ = _loc32_;
         _loc12_ = _loc12_;
         _loc13_ = _loc13_;
         _loc25_ = _loc25_;
         _loc27_ = lf32(_loc1_ + 120);
         _loc28_ = lf32(_loc1_ + 124);
         _loc26_ = _loc26_;
         _loc13_ = _loc13_;
         _loc12_ = _loc12_;
         _loc25_ = _loc25_;
         _loc13_ -= _loc26_;
         _loc29_ *= _loc27_;
         _loc24_ *= _loc27_;
         _loc27_ = _loc31_ * _loc28_;
         _loc28_ = _loc30_ * _loc28_;
         _loc25_ -= _loc12_;
         _loc13_ = _loc13_;
         _loc29_ = _loc29_;
         _loc24_ = _loc24_;
         _loc27_ = _loc27_;
         _loc28_ = _loc28_;
         _loc25_ = _loc25_;
         _loc30_ = _loc13_;
         _loc31_ = _loc25_;
         _loc27_ = _loc27_;
         _loc29_ = _loc29_;
         _loc28_ = _loc28_;
         _loc24_ = _loc24_;
         _loc26_ = _loc30_ + _loc26_;
         _loc27_ = _loc29_ + _loc27_;
         _loc24_ += _loc28_;
         _loc12_ = _loc31_ + _loc12_;
         _loc26_ = _loc26_;
         _loc27_ = _loc27_;
         _loc24_ = _loc24_;
         _loc12_ = _loc12_;
         _loc28_ = _loc27_;
         _loc29_ = _loc26_;
         _loc30_ = _loc24_;
         _loc31_ = _loc12_;
         _loc29_ *= _loc28_;
         _loc31_ *= _loc30_;
         _loc29_ = _loc29_;
         _loc31_ = _loc31_ = _loc31_;
         _loc29_ = _loc29_;
         _loc29_ = _loc29_ - _loc31_;
         _loc17_ *= _loc28_;
         _loc23_ *= _loc30_;
         _loc28_ = _loc29_;
         _loc17_ = _loc17_;
         _loc23_ = _loc23_;
         _loc29_ = _loc28_;
         _loc30_ = _loc16_;
         _loc23_ = _loc23_;
         _loc17_ = _loc17_;
         _loc30_ *= _loc29_;
         _loc17_ -= _loc23_;
         _loc23_ = _loc30_;
         _loc17_ = _loc17_;
         _loc23_ = _loc23_;
         _loc30_ = _loc17_;
         _loc31_ = _loc35_;
         _loc32_ = _loc34_;
         _loc33_ = _loc22_;
         _loc23_ *= _loc29_;
         _loc29_ = _loc31_ * _loc30_;
         _loc31_ = _loc33_ + _loc32_;
         _loc23_ = _loc23_;
         _loc29_ = _loc29_;
         _loc31_ = _loc31_;
         _loc29_ = _loc29_;
         _loc23_ = _loc23_;
         _loc32_ = _loc31_;
         _loc23_ = _loc32_ + _loc23_;
         _loc29_ *= _loc30_;
         sf32(_loc24_,_loc1_ + 136);
         _loc23_ = _loc23_;
         _loc29_ = _loc29_;
         sf32(_loc27_,_loc1_ + 140);
         _loc29_ = _loc29_;
         _loc23_ = _loc23_;
         sf32(_loc28_,_loc1_ + 152);
         _loc23_ += _loc29_;
         sf32(_loc17_,_loc1_ + 156);
         _loc23_ = _loc23_;
         _loc4_ = _loc1_ + 160;
         _loc5_ = _loc1_ + 92;
         _loc6_ = _loc1_ + 88;
         _loc7_ = _loc1_ + 84;
         _loc8_ = li32(cmodule.Box2D.mstate.ebp + 12);
         _loc11_ = _loc11_ = _loc11_;
         _loc29_ = _loc23_;
         if(_loc29_ > _loc11_)
         {
            _loc11_ = _loc11_ = 1;
            _loc23_ = _loc23_;
            _loc11_ = _loc11_;
            _loc23_ = _loc11_ = _loc11_ / _loc23_;
         }
         _loc11_ = _loc23_;
         _loc9_ = 0;
         sf32(_loc11_,_loc4_);
         si32(_loc9_,_loc1_ + 176);
         _loc11_ = lf32(_loc1_ + 192);
         _loc23_ = 0;
         _loc4_ = _loc1_ + 176;
         _loc23_ = _loc23_ = _loc23_;
         loop0:
         while(true)
         {
            while(true)
            {
               _loc29_ = _loc11_;
               if(_loc29_ > _loc23_)
               {
                  _loc23_ = 0;
                  _loc29_ = lf32(_loc1_ + 112);
                  _loc30_ = lf32(_loc1_ + 116);
                  _loc19_ = _loc19_;
                  _loc18_ = _loc18_;
                  _loc21_ = _loc21_;
                  _loc20_ = _loc20_;
                  _loc19_ *= _loc29_;
                  _loc18_ *= _loc29_;
                  _loc21_ *= _loc30_;
                  _loc20_ *= _loc30_;
                  _loc19_ = _loc19_;
                  _loc18_ = _loc18_;
                  _loc21_ = _loc21_;
                  _loc20_ = _loc20_;
                  _loc21_ = _loc21_;
                  _loc19_ = _loc19_;
                  _loc20_ = _loc20_;
                  _loc18_ = _loc18_;
                  _loc19_ += _loc21_;
                  _loc18_ += _loc20_;
                  _loc19_ = _loc19_;
                  _loc18_ = _loc18_;
                  _loc20_ = _loc26_;
                  _loc21_ = _loc19_;
                  _loc12_ = _loc12_;
                  _loc26_ = _loc18_;
                  _loc20_ *= _loc21_;
                  _loc12_ *= _loc26_;
                  _loc20_ = _loc20_;
                  _loc12_ = _loc12_;
                  _loc15_ = _loc15_;
                  _loc14_ = _loc14_;
                  _loc12_ = _loc12_;
                  _loc20_ = _loc20_;
                  _loc12_ = _loc20_ - _loc12_;
                  _loc15_ *= _loc21_;
                  _loc14_ *= _loc26_;
                  _loc12_ = _loc12_;
                  _loc15_ = _loc15_;
                  _loc14_ = _loc14_;
                  _loc20_ = _loc12_;
                  _loc21_ = _loc16_;
                  _loc14_ = _loc14_;
                  _loc15_ = _loc15_;
                  _loc21_ *= _loc20_;
                  _loc14_ = _loc15_ - _loc14_;
                  _loc15_ = _loc21_;
                  _loc14_ = _loc14_;
                  _loc15_ = _loc15_;
                  _loc21_ = _loc14_;
                  _loc26_ = _loc35_;
                  _loc15_ *= _loc20_;
                  _loc20_ = _loc26_ * _loc21_;
                  _loc15_ = _loc15_;
                  _loc20_ = _loc20_ = _loc20_;
                  _loc15_ = _loc15_;
                  _loc26_ = _loc31_;
                  _loc15_ = _loc26_ + _loc15_;
                  _loc20_ *= _loc21_;
                  sf32(_loc18_,_loc1_ + 128);
                  _loc15_ = _loc15_;
                  _loc20_ = _loc20_;
                  sf32(_loc19_,_loc1_ + 132);
                  _loc20_ = _loc20_;
                  _loc15_ = _loc15_;
                  sf32(_loc12_,_loc1_ + 144);
                  _loc12_ = _loc15_ + _loc20_;
                  sf32(_loc14_,_loc1_ + 148);
                  _loc12_ = _loc12_;
                  _loc14_ = _loc14_ = _loc23_;
                  _loc15_ = _loc12_;
                  if(_loc15_ > _loc14_)
                  {
                     _loc14_ = 1;
                     _loc15_ = 6.28319;
                     _loc14_ = _loc14_;
                     _loc15_ = _loc15_;
                     _loc20_ = _loc12_;
                     _loc14_ = _loc14_;
                     _loc15_ = _loc15_;
                     _loc11_ = _loc11_;
                     _loc14_ /= _loc20_;
                     _loc11_ *= _loc15_;
                     _loc14_ = _loc14_;
                     _loc11_ = _loc11_;
                     _loc15_ = _loc14_;
                     _loc11_ = _loc11_;
                     _loc20_ = _loc15_ + _loc15_;
                     _loc15_ *= _loc11_;
                     _loc20_ = _loc20_;
                     _loc15_ = _loc15_;
                     sf32(_loc14_,_loc4_);
                     _loc14_ = _loc15_;
                     _loc15_ = lf32(_loc1_ + 196);
                     _loc20_ = _loc20_;
                     _loc15_ = _loc20_ * _loc15_;
                     _loc14_ *= _loc11_;
                     _loc15_ = _loc15_;
                     _loc14_ = _loc14_;
                     _loc20_ = lf32(_loc8_);
                     _loc15_ = _loc15_;
                     _loc21_ = _loc14_;
                     _loc11_ = _loc15_ * _loc11_;
                     _loc15_ = _loc20_ * _loc21_;
                     _loc11_ = _loc11_;
                     _loc15_ = _loc15_;
                     _loc11_ = _loc11_;
                     _loc15_ = _loc15_;
                     _loc18_ = _loc18_;
                     _loc13_ = _loc13_;
                     _loc19_ = _loc19_;
                     _loc21_ = _loc25_;
                     _loc11_ = _loc15_ + _loc11_;
                     _loc13_ *= _loc18_;
                     _loc15_ = _loc21_ * _loc19_;
                     _loc11_ = _loc11_;
                     _loc13_ = _loc13_;
                     _loc15_ = _loc15_;
                     _loc11_ = _loc11_;
                     _loc15_ = _loc15_;
                     _loc13_ = _loc13_;
                     _loc11_ = _loc20_ * _loc11_;
                     _loc13_ += _loc15_;
                     _loc11_ = _loc11_;
                     _loc13_ = _loc13_;
                     _loc15_ = 0;
                     _loc9_ = _loc1_ + 204;
                     _loc15_ = _loc15_;
                     _loc10_ = _loc8_;
                     _loc15_ = _loc15_;
                     _loc18_ = _loc11_;
                     if(_loc18_ <= _loc15_)
                     {
                        _loc15_ = _loc11_;
                     }
                     else
                     {
                        _loc15_ = _loc15_ = 1;
                        _loc11_ = _loc11_;
                        _loc15_ = _loc15_;
                        _loc15_ = _loc11_ = _loc11_ = _loc15_ / _loc11_;
                     }
                     _loc18_ = 0;
                     sf32(_loc15_,_loc9_);
                     _loc15_ = lf32(_loc10_);
                     _loc13_ = _loc13_;
                     _loc13_ = _loc13_ = _loc15_ * _loc13_;
                     _loc14_ = _loc14_;
                     _loc13_ = _loc13_;
                     _loc13_ = _loc13_ = _loc13_ = _loc13_ * _loc14_;
                     _loc11_ = _loc11_;
                     _loc13_ *= _loc11_;
                     _loc12_ = _loc12_;
                     _loc11_ += _loc12_;
                     _loc12_ = _loc13_;
                     _loc11_ = _loc11_;
                     sf32(_loc12_,_loc1_ + 200);
                     sf32(_loc11_,_loc4_);
                     _loc12_ = _loc12_ = _loc18_;
                     _loc13_ = _loc11_;
                     if(_loc13_ > _loc12_)
                     {
                        _loc12_ = _loc12_ = 1;
                        _loc11_ = _loc11_;
                        _loc12_ = _loc12_;
                        _loc11_ = _loc11_ = _loc12_ / _loc11_;
                        sf32(_loc11_,_loc4_);
                        _loc4_ = li8(_loc1_ + 208);
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
                  _loc9_ = 0;
                  si32(_loc9_,_loc1_ + 180);
                  si32(_loc9_,_loc4_);
               }
               _loc4_ = li8(_loc1_ + 208);
               if(_loc4_ != 0)
               {
                  break loop0;
               }
               break;
            }
            _loc9_ = 0;
            si32(_loc9_,_loc1_ + 168);
            si32(_loc9_,_loc1_ + 172);
            §§goto(addr09ed);
         }
         _loc11_ = 0;
         _loc12_ = _loc35_;
         _loc13_ = _loc16_;
         _loc12_ = _loc12_ = _loc13_ + _loc12_;
         sf32(_loc12_,_loc1_ + 168);
         _loc4_ = _loc1_ + 168;
         _loc11_ = _loc11_ = _loc11_;
         while(true)
         {
            _loc13_ = _loc12_;
            if(_loc13_ > _loc11_)
            {
               _loc11_ = _loc11_ = 1;
               _loc12_ = _loc12_;
               _loc11_ = _loc11_;
               _loc11_ = _loc11_ = _loc11_ / _loc12_;
               sf32(_loc11_,_loc4_);
               _loc4_ = li8(_loc8_ + 20);
               _loc9_ = _loc1_ + 164;
               if(_loc4_ != 0)
               {
                  addr0ab4:
                  _loc4_ = _loc9_;
                  _loc11_ = lf32(_loc4_);
                  _loc12_ = lf32(_loc8_ + 8);
                  _loc11_ = _loc11_ *= _loc12_;
                  sf32(_loc11_,_loc1_ + 164);
                  _loc12_ = lf32(_loc1_ + 180);
                  _loc13_ = lf32(_loc8_ + 8);
                  _loc12_ = _loc12_ *= _loc13_;
                  sf32(_loc12_,_loc1_ + 180);
                  _loc13_ = lf32(_loc1_ + 172);
                  _loc14_ = lf32(_loc8_ + 8);
                  _loc13_ = _loc13_ *= _loc14_;
                  sf32(_loc13_,_loc1_ + 172);
                  _loc14_ = lf32(_loc1_ + 128);
                  _loc12_ = _loc12_;
                  _loc15_ = _loc24_;
                  _loc11_ = _loc11_;
                  _loc14_ *= _loc12_;
                  _loc15_ *= _loc11_;
                  _loc14_ = _loc14_;
                  _loc15_ = _loc15_;
                  _loc14_ = _loc14_;
                  _loc15_ = _loc15_;
                  _loc16_ = lf32(_loc1_ + 132);
                  _loc14_ = _loc15_ + _loc14_;
                  _loc15_ = _loc27_;
                  _loc16_ *= _loc12_;
                  _loc14_ = _loc14_;
                  _loc15_ *= _loc11_;
                  _loc16_ = _loc16_;
                  _loc15_ = _loc15_;
                  _loc18_ = _loc22_;
                  _loc14_ = _loc14_;
                  _loc19_ = _loc14_ * _loc18_;
                  _loc16_ = _loc16_;
                  _loc15_ = _loc15_;
                  _loc20_ = lf32(_loc1_ + 144);
                  _loc15_ += _loc16_;
                  _loc16_ = _loc19_;
                  _loc19_ = _loc28_;
                  _loc15_ = _loc15_;
                  _loc20_ = _loc12_ * _loc20_;
                  _loc19_ = _loc11_ * _loc19_;
                  _loc21_ = lf32(_loc2_ + 72);
                  _loc16_ = _loc16_;
                  _loc22_ = lf32(_loc1_ + 148);
                  _loc15_ = _loc15_;
                  _loc16_ = _loc21_ - _loc16_;
                  _loc20_ = _loc20_;
                  _loc19_ = _loc19_;
                  _loc18_ = _loc15_ * _loc18_;
                  _loc16_ = _loc16_;
                  _loc20_ = _loc20_;
                  _loc19_ = _loc19_;
                  sf32(_loc16_,_loc2_ + 72);
                  _loc16_ = _loc18_;
                  _loc18_ = _loc18_ = _loc19_ + _loc20_;
                  _loc19_ = lf32(_loc2_ + 76);
                  _loc16_ = _loc16_;
                  _loc16_ = _loc19_ - _loc16_;
                  _loc18_ = _loc18_;
                  _loc13_ = _loc13_;
                  _loc16_ = _loc16_;
                  _loc18_ += _loc13_;
                  sf32(_loc16_,_loc2_ + 76);
                  _loc16_ = _loc18_;
                  _loc18_ = lf32(_loc7_);
                  _loc16_ = _loc16_;
                  _loc16_ = _loc16_ = _loc18_ * _loc16_;
                  _loc18_ = lf32(_loc2_ + 80);
                  _loc16_ = _loc16_;
                  _loc16_ = _loc16_ = _loc18_ - _loc16_;
                  sf32(_loc16_,_loc2_ + 80);
                  _loc16_ = lf32(_loc6_);
                  _loc14_ = _loc14_ *= _loc16_;
                  _loc17_ = _loc17_;
                  _loc18_ = lf32(_loc3_ + 72);
                  _loc14_ = _loc14_;
                  _loc12_ *= _loc22_;
                  _loc11_ *= _loc17_;
                  _loc14_ = _loc18_ + _loc14_;
                  _loc12_ = _loc12_;
                  _loc11_ = _loc11_;
                  _loc15_ *= _loc16_;
                  _loc14_ = _loc14_;
                  _loc12_ = _loc12_;
                  _loc11_ = _loc11_;
                  sf32(_loc14_,_loc3_ + 72);
                  _loc14_ = _loc15_;
                  _loc11_ = _loc11_ += _loc12_;
                  _loc12_ = lf32(_loc3_ + 76);
                  _loc14_ = _loc14_;
                  _loc12_ += _loc14_;
                  _loc11_ = _loc11_;
                  _loc12_ = _loc12_;
                  _loc11_ += _loc13_;
                  sf32(_loc12_,_loc3_ + 76);
                  _loc11_ = _loc11_;
                  _loc12_ = lf32(_loc5_);
                  _loc11_ = _loc11_;
                  _loc11_ = _loc11_ = _loc12_ * _loc11_;
                  _loc12_ = lf32(_loc3_ + 80);
                  _loc11_ = _loc11_;
                  _loc11_ = _loc11_ = _loc12_ + _loc11_;
                  sf32(_loc11_,_loc3_ + 80);
                  break;
               }
               _loc2_ = _loc9_;
            }
            else
            {
               addr09ed:
               _loc9_ = li8(_loc8_ + 20);
               _loc4_ = _loc1_ + 164;
               if(_loc9_ != 0)
               {
                  _loc9_ = _loc4_;
                  §§goto(addr0ab4);
               }
               else
               {
                  _loc2_ = _loc4_;
               }
            }
            _loc3_ = 0;
            si32(_loc3_,_loc2_);
            si32(_loc3_,_loc1_ + 180);
            si32(_loc3_,_loc1_ + 172);
            break;
         }
         cmodule.Box2D.mstate.esp = cmodule.Box2D.mstate.ebp;
         cmodule.Box2D.mstate.ebp = li32(cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.esp += 4;
         cmodule.Box2D.mstate.esp += 4;
      }
   }
}

