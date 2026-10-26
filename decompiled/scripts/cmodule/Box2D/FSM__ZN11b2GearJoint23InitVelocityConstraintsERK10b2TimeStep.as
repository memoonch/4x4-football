package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZN11b2GearJoint23InitVelocityConstraintsERK10b2TimeStep extends Machine
   {
      
      public function FSM__ZN11b2GearJoint23InitVelocityConstraintsERK10b2TimeStep()
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
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
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
         cmodule.Box2D.mstate.esp -= 4;
         si32(cmodule.Box2D.mstate.ebp,cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.ebp = cmodule.Box2D.mstate.esp;
         cmodule.Box2D.mstate.esp -= 0;
         _loc1_ = 0;
         _loc2_ = li32(cmodule.Box2D.mstate.ebp + 8);
         _loc3_ = li32(_loc2_ + 96);
         _loc4_ = li32(_loc2_ + 100);
         _loc5_ = li32(_loc2_ + 48);
         _loc6_ = li32(_loc2_ + 52);
         si32(_loc1_,_loc2_ + 152);
         si32(_loc1_,_loc2_ + 156);
         si32(_loc1_,_loc2_ + 160);
         si32(_loc1_,_loc2_ + 164);
         si32(_loc1_,_loc2_ + 168);
         si32(_loc1_,_loc2_ + 172);
         _loc1_ = li32(_loc2_ + 104);
         _loc7_ = _loc2_ + 156;
         _loc8_ = _loc2_ + 160;
         _loc9_ = _loc2_ + 164;
         _loc10_ = _loc2_ + 168;
         _loc11_ = _loc2_ + 172;
         _loc12_ = _loc2_ + 112;
         _loc13_ = _loc2_ + 152;
         _loc14_ = li32(cmodule.Box2D.mstate.ebp + 12);
         while(true)
         {
            if(_loc1_ != 0)
            {
               _loc15_ = 0;
               _loc3_ = -1082130432;
               _loc15_ = _loc15_;
               si32(_loc3_,_loc8_);
               _loc16_ = lf32(_loc5_ + 136);
               _loc15_ = _loc15_;
               _loc3_ = li32(_loc12_);
               _loc15_ = _loc15_ = _loc16_ + _loc15_;
               if(_loc3_ != 0)
               {
                  _loc17_ = _loc16_ = _loc16_ = 0;
                  addr03ee:
                  _loc18_ = lf32(_loc2_ + 180);
                  _loc18_ = _loc18_ = -_loc18_;
                  sf32(_loc18_,_loc11_);
                  _loc18_ = lf32(_loc6_ + 136);
                  _loc1_ = _loc4_ = _loc2_ + 180;
                  break;
               }
               _loc17_ = _loc16_ = _loc16_ = 0;
            }
            else
            {
               _loc15_ = 0;
               _loc16_ = lf32(_loc2_ + 140);
               _loc17_ = lf32(_loc5_ + 40);
               _loc18_ = lf32(_loc2_ + 136);
               _loc19_ = lf32(_loc5_ + 36);
               _loc18_ -= _loc19_;
               _loc16_ -= _loc17_;
               _loc17_ = _loc18_;
               _loc16_ = _loc16_;
               _loc1_ = li32(_loc2_ + 108);
               _loc18_ = lf32(_loc3_ + 24);
               _loc19_ = lf32(_loc1_ + 112);
               _loc20_ = lf32(_loc3_ + 20);
               _loc21_ = lf32(_loc3_ + 32);
               _loc22_ = lf32(_loc1_ + 116);
               _loc23_ = lf32(_loc3_ + 28);
               _loc24_ = lf32(_loc5_ + 24);
               _loc17_ = _loc17_;
               _loc25_ = lf32(_loc5_ + 20);
               _loc26_ = lf32(_loc5_ + 32);
               _loc27_ = lf32(_loc5_ + 28);
               _loc16_ = _loc16_;
               _loc18_ *= _loc19_;
               _loc19_ = _loc20_ * _loc19_;
               _loc20_ = _loc21_ * _loc22_;
               _loc21_ = _loc23_ * _loc22_;
               _loc22_ = _loc24_ * _loc17_;
               _loc17_ = _loc25_ * _loc17_;
               _loc23_ = _loc26_ * _loc16_;
               _loc16_ = _loc27_ * _loc16_;
               _loc18_ = _loc18_;
               _loc19_ = _loc19_;
               _loc20_ = _loc20_;
               _loc21_ = _loc21_;
               _loc22_ = _loc22_;
               _loc17_ = _loc17_;
               _loc23_ = _loc23_;
               _loc16_ = _loc16_;
               _loc20_ = _loc20_;
               _loc18_ = _loc18_;
               _loc21_ = _loc21_;
               _loc19_ = _loc19_;
               _loc23_ = _loc23_;
               _loc22_ = _loc22_;
               _loc16_ = _loc16_;
               _loc17_ = _loc17_;
               _loc18_ += _loc20_;
               _loc19_ += _loc21_;
               _loc20_ = _loc22_ + _loc23_;
               _loc16_ = _loc17_ + _loc16_;
               _loc17_ = _loc18_;
               _loc18_ = _loc19_;
               _loc19_ = _loc20_;
               _loc16_ = _loc16_;
               _loc17_ = _loc17_;
               _loc16_ = _loc16_;
               _loc18_ = _loc18_;
               _loc19_ = _loc19_;
               _loc16_ *= _loc17_;
               _loc19_ *= _loc18_;
               _loc16_ = _loc16_;
               _loc19_ = _loc19_;
               _loc18_ = -_loc18_;
               _loc17_ = -_loc17_;
               _loc16_ = _loc16_;
               _loc19_ = _loc19_;
               _loc18_ = _loc18_;
               _loc20_ = _loc19_ - _loc16_;
               sf32(_loc18_,_loc13_);
               _loc21_ = _loc17_;
               _loc16_ -= _loc19_;
               sf32(_loc21_,_loc7_);
               _loc17_ = _loc20_;
               sf32(_loc17_,_loc8_);
               _loc16_ = _loc16_;
               _loc17_ = lf32(_loc5_ + 136);
               _loc16_ = _loc16_;
               _loc17_ = _loc17_ = _loc17_ *= _loc16_;
               _loc16_ = _loc16_ = _loc17_ * _loc16_;
               _loc17_ = lf32(_loc5_ + 128);
               _loc16_ = _loc16_;
               _loc16_ = _loc16_ = _loc17_ + _loc16_;
               _loc15_ = _loc15_ = _loc15_;
               _loc16_ = _loc16_;
               _loc1_ = li32(_loc12_);
               _loc15_ = _loc15_ = _loc16_ + _loc15_;
               if(_loc1_ != 0)
               {
                  _loc17_ = _loc18_;
                  _loc16_ = _loc21_;
                  §§goto(addr03ee);
               }
               else
               {
                  _loc17_ = _loc18_;
                  _loc16_ = _loc21_;
               }
            }
            _loc18_ = lf32(_loc2_ + 148);
            _loc19_ = lf32(_loc6_ + 40);
            _loc20_ = lf32(_loc2_ + 144);
            _loc21_ = lf32(_loc6_ + 36);
            _loc20_ -= _loc21_;
            _loc18_ -= _loc19_;
            _loc19_ = _loc20_;
            _loc18_ = _loc18_;
            _loc1_ = li32(_loc2_ + 116);
            _loc20_ = lf32(_loc4_ + 24);
            _loc21_ = lf32(_loc1_ + 112);
            _loc22_ = lf32(_loc4_ + 20);
            _loc23_ = lf32(_loc4_ + 32);
            _loc24_ = lf32(_loc1_ + 116);
            _loc25_ = lf32(_loc4_ + 28);
            _loc26_ = lf32(_loc6_ + 24);
            _loc19_ = _loc19_;
            _loc27_ = lf32(_loc6_ + 20);
            _loc28_ = lf32(_loc6_ + 32);
            _loc18_ = _loc18_;
            _loc29_ = lf32(_loc6_ + 28);
            _loc20_ *= _loc21_;
            _loc21_ = _loc22_ * _loc21_;
            _loc22_ = _loc23_ * _loc24_;
            _loc23_ = _loc25_ * _loc24_;
            _loc24_ = _loc26_ * _loc19_;
            _loc19_ = _loc27_ * _loc19_;
            _loc25_ = _loc28_ * _loc18_;
            _loc18_ = _loc29_ * _loc18_;
            _loc20_ = _loc20_;
            _loc21_ = _loc21_;
            _loc22_ = _loc22_;
            _loc23_ = _loc23_;
            _loc24_ = _loc24_;
            _loc19_ = _loc19_;
            _loc25_ = _loc25_;
            _loc18_ = _loc18_;
            _loc22_ = _loc22_;
            _loc20_ = _loc20_;
            _loc23_ = _loc23_;
            _loc21_ = _loc21_;
            _loc25_ = _loc25_;
            _loc24_ = _loc24_;
            _loc18_ = _loc18_;
            _loc19_ = _loc19_;
            _loc20_ += _loc22_;
            _loc21_ += _loc23_;
            _loc22_ = _loc24_ + _loc25_;
            _loc18_ = _loc19_ + _loc18_;
            _loc19_ = _loc20_;
            _loc20_ = _loc21_;
            _loc21_ = _loc22_;
            _loc18_ = _loc18_ = _loc18_;
            _loc19_ = _loc19_;
            _loc21_ = _loc21_;
            _loc20_ = _loc20_;
            _loc22_ = lf32(_loc2_ + 180);
            _loc18_ *= _loc19_;
            _loc21_ *= _loc20_;
            _loc18_ = _loc18_;
            _loc21_ = _loc21_;
            _loc22_ = _loc22_ = -_loc22_;
            _loc21_ = _loc21_;
            _loc18_ = _loc18_;
            _loc22_ = _loc22_;
            _loc18_ = _loc18_ -= _loc21_;
            _loc20_ *= _loc22_;
            _loc18_ = _loc18_;
            _loc19_ *= _loc22_;
            _loc20_ = _loc20_;
            _loc21_ = _loc18_ * _loc22_;
            sf32(_loc20_,_loc9_);
            _loc19_ = _loc19_;
            sf32(_loc19_,_loc10_);
            _loc19_ = _loc21_;
            sf32(_loc19_,_loc11_);
            _loc19_ = lf32(_loc6_ + 136);
            _loc19_ = _loc19_ = _loc19_ = _loc19_ * _loc18_;
            _loc18_ = _loc18_ = _loc19_ * _loc18_;
            _loc19_ = lf32(_loc6_ + 128);
            _loc18_ = _loc18_;
            _loc18_ = _loc18_ = _loc19_ + _loc18_;
            _loc1_ = _loc4_ = _loc2_ + 180;
            break;
         }
         _loc3_ = _loc4_;
         _loc19_ = 0;
         _loc20_ = lf32(_loc1_);
         _loc21_ = lf32(_loc3_);
         _loc20_ = _loc20_ *= _loc21_;
         _loc18_ = _loc18_;
         _loc20_ = _loc20_;
         _loc18_ = _loc18_ = _loc20_ * _loc18_;
         _loc15_ = _loc15_;
         _loc18_ = _loc18_;
         _loc15_ = _loc15_ = _loc18_ + _loc15_;
         _loc18_ = _loc18_ = _loc19_;
         _loc19_ = _loc15_;
         if(_loc19_ <= _loc18_)
         {
            _loc15_ = _loc15_ = 0;
         }
         else
         {
            _loc18_ = _loc18_ = 1;
            _loc15_ = _loc15_;
            _loc18_ = _loc18_;
            _loc15_ = _loc15_ = _loc18_ / _loc15_;
         }
         sf32(_loc15_,_loc2_ + 184);
         _loc1_ = li8(_loc14_ + 20);
         if(_loc1_ != 0)
         {
            _loc15_ = lf32(_loc5_ + 128);
            _loc18_ = lf32(_loc2_ + 188);
            _loc15_ = _loc15_ = _loc15_ *= _loc18_;
            _loc17_ = _loc17_;
            _loc17_ = _loc17_ = _loc17_ * _loc15_;
            _loc18_ = lf32(_loc5_ + 72);
            _loc17_ = _loc17_;
            _loc16_ = _loc16_;
            _loc17_ = _loc18_ + _loc17_;
            _loc15_ = _loc16_ * _loc15_;
            _loc16_ = _loc17_;
            sf32(_loc16_,_loc5_ + 72);
            _loc15_ = _loc15_;
            _loc16_ = lf32(_loc5_ + 76);
            _loc15_ = _loc15_;
            _loc15_ = _loc15_ = _loc16_ + _loc15_;
            sf32(_loc15_,_loc5_ + 76);
            _loc15_ = lf32(_loc5_ + 136);
            _loc16_ = lf32(_loc2_ + 188);
            _loc15_ = _loc15_ *= _loc16_;
            _loc16_ = lf32(_loc8_);
            _loc15_ = _loc15_;
            _loc15_ = _loc15_ = _loc15_ * _loc16_;
            _loc16_ = lf32(_loc5_ + 80);
            _loc15_ = _loc15_;
            _loc15_ = _loc15_ = _loc16_ + _loc15_;
            sf32(_loc15_,_loc5_ + 80);
            _loc15_ = lf32(_loc6_ + 128);
            _loc16_ = lf32(_loc2_ + 188);
            _loc15_ = _loc15_ *= _loc16_;
            _loc16_ = lf32(_loc9_);
            _loc15_ = _loc15_;
            _loc16_ = _loc16_ *= _loc15_;
            _loc17_ = lf32(_loc6_ + 72);
            _loc16_ = _loc16_;
            _loc18_ = lf32(_loc10_);
            _loc16_ = _loc17_ + _loc16_;
            _loc15_ = _loc18_ * _loc15_;
            _loc16_ = _loc16_;
            sf32(_loc16_,_loc6_ + 72);
            _loc15_ = _loc15_;
            _loc16_ = lf32(_loc6_ + 76);
            _loc15_ = _loc15_;
            _loc15_ = _loc15_ = _loc16_ + _loc15_;
            sf32(_loc15_,_loc6_ + 76);
            _loc15_ = lf32(_loc6_ + 136);
            _loc16_ = lf32(_loc2_ + 188);
            _loc15_ = _loc15_ *= _loc16_;
            _loc16_ = lf32(_loc11_);
            _loc15_ = _loc15_;
            _loc15_ = _loc15_ = _loc15_ * _loc16_;
            _loc16_ = lf32(_loc6_ + 80);
            _loc15_ = _loc15_;
            _loc15_ = _loc15_ = _loc16_ + _loc15_;
            sf32(_loc15_,_loc6_ + 80);
         }
         else
         {
            _loc1_ = 0;
            si32(_loc1_,_loc2_ + 188);
         }
         cmodule.Box2D.mstate.esp = cmodule.Box2D.mstate.ebp;
         cmodule.Box2D.mstate.ebp = li32(cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.esp += 4;
         cmodule.Box2D.mstate.esp += 4;
      }
   }
}

