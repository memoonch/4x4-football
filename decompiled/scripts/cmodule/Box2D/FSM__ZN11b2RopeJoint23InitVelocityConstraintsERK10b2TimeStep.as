package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZN11b2RopeJoint23InitVelocityConstraintsERK10b2TimeStep extends Machine
   {
      
      public function FSM__ZN11b2RopeJoint23InitVelocityConstraintsERK10b2TimeStep()
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
         cmodule.Box2D.mstate.esp -= 4;
         si32(cmodule.Box2D.mstate.ebp,cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.ebp = cmodule.Box2D.mstate.esp;
         cmodule.Box2D.mstate.esp -= 0;
         _loc14_ = 0;
         _loc1_ = li32(cmodule.Box2D.mstate.ebp + 8);
         _loc2_ = li32(_loc1_ + 48);
         _loc15_ = lf32(_loc1_ + 100);
         _loc16_ = lf32(_loc2_ + 40);
         _loc17_ = lf32(_loc1_ + 96);
         _loc18_ = lf32(_loc2_ + 36);
         _loc17_ -= _loc18_;
         _loc15_ -= _loc16_;
         _loc16_ = _loc17_;
         _loc15_ = _loc15_;
         _loc17_ = lf32(_loc2_ + 20);
         _loc16_ = _loc16_;
         _loc18_ = lf32(_loc2_ + 28);
         _loc15_ = _loc15_;
         _loc19_ = lf32(_loc2_ + 24);
         _loc20_ = lf32(_loc2_ + 32);
         _loc17_ *= _loc16_;
         _loc18_ *= _loc15_;
         _loc16_ = _loc19_ * _loc16_;
         _loc17_ = _loc17_;
         _loc15_ = _loc20_ * _loc15_;
         _loc18_ = _loc18_;
         _loc16_ = _loc16_;
         _loc15_ = _loc15_;
         _loc18_ = _loc18_;
         _loc17_ = _loc17_;
         _loc3_ = li32(_loc1_ + 52);
         _loc17_ += _loc18_;
         _loc15_ = _loc15_;
         _loc16_ = _loc16_;
         _loc15_ = _loc16_ + _loc15_;
         _loc16_ = _loc17_;
         _loc15_ = _loc15_;
         sf32(_loc16_,_loc1_ + 128);
         sf32(_loc15_,_loc1_ + 132);
         _loc17_ = lf32(_loc1_ + 108);
         _loc18_ = lf32(_loc3_ + 40);
         _loc19_ = lf32(_loc1_ + 104);
         _loc20_ = lf32(_loc3_ + 36);
         _loc17_ -= _loc18_;
         _loc18_ = _loc19_ - _loc20_;
         _loc17_ = _loc17_;
         _loc18_ = _loc18_;
         _loc19_ = lf32(_loc3_ + 20);
         _loc18_ = _loc18_;
         _loc20_ = lf32(_loc3_ + 28);
         _loc17_ = _loc17_;
         _loc21_ = lf32(_loc3_ + 24);
         _loc22_ = lf32(_loc3_ + 32);
         _loc20_ *= _loc17_;
         _loc19_ *= _loc18_;
         _loc17_ = _loc22_ * _loc17_;
         _loc20_ = _loc20_;
         _loc18_ = _loc21_ * _loc18_;
         _loc19_ = _loc19_;
         _loc17_ = _loc17_;
         _loc18_ = _loc18_;
         _loc20_ = _loc20_;
         _loc19_ = _loc19_;
         _loc19_ = _loc19_ + _loc20_;
         _loc17_ = _loc17_;
         _loc18_ = _loc18_;
         _loc17_ = _loc18_ + _loc17_;
         _loc18_ = _loc19_;
         _loc17_ = _loc17_;
         sf32(_loc18_,_loc1_ + 136);
         sf32(_loc17_,_loc1_ + 140);
         _loc19_ = lf32(_loc3_ + 52);
         _loc20_ = _loc18_;
         _loc21_ = lf32(_loc3_ + 56);
         _loc22_ = _loc17_;
         _loc21_ += _loc22_;
         _loc19_ += _loc20_;
         _loc20_ = _loc21_;
         _loc19_ = _loc19_;
         _loc21_ = lf32(_loc2_ + 52);
         _loc22_ = lf32(_loc2_ + 56);
         _loc20_ = _loc20_;
         _loc19_ = _loc19_;
         _loc20_ -= _loc22_;
         _loc19_ -= _loc21_;
         _loc20_ = _loc20_;
         _loc19_ = _loc19_;
         _loc21_ = _loc15_;
         _loc20_ = _loc20_;
         _loc22_ = _loc16_;
         _loc19_ = _loc19_;
         _loc20_ -= _loc21_;
         _loc19_ -= _loc22_;
         _loc20_ = _loc20_;
         _loc19_ = _loc19_;
         _loc21_ = _loc20_;
         _loc22_ = _loc19_;
         _loc21_ *= _loc21_;
         _loc22_ *= _loc22_;
         _loc21_ = _loc21_;
         _loc22_ = _loc22_;
         _loc21_ = _loc21_;
         _loc22_ = _loc22_;
         _loc21_ = _loc21_ = _loc21_ = _loc22_ + _loc21_;
         sf32(_loc19_,_loc1_ + 120);
         _loc21_ = _loc21_ = Math.sqrt(_loc21_);
         sf32(_loc20_,_loc1_ + 124);
         sf32(_loc21_,_loc1_ + 116);
         _loc22_ = lf32(_loc1_ + 112);
         _loc23_ = _loc21_;
         _loc22_ = _loc22_ = _loc23_ - _loc22_;
         _loc14_ = _loc14_ = _loc14_;
         _loc22_ = _loc22_;
         _loc4_ = _loc22_ > _loc14_ ? 2 : 0;
         si32(_loc4_,_loc1_ + 152);
         _loc14_ = lf32(cmodule.Box2D._b2_linearSlop);
         _loc4_ = _loc1_ + 132;
         _loc5_ = _loc1_ + 140;
         _loc6_ = _loc1_ + 124;
         _loc7_ = _loc1_ + 120;
         _loc8_ = _loc1_ + 136;
         _loc9_ = _loc1_ + 128;
         _loc10_ = li32(cmodule.Box2D.mstate.ebp + 12);
         if(_loc23_ > _loc14_)
         {
            _loc14_ = _loc14_ = 1;
            _loc21_ = _loc21_;
            _loc14_ = _loc14_;
            _loc14_ = _loc14_ = _loc14_ / _loc21_;
            _loc19_ = _loc19_;
            _loc14_ = _loc14_;
            _loc20_ = _loc20_;
            _loc19_ *= _loc14_;
            _loc14_ = _loc20_ * _loc14_;
            _loc19_ = _loc19_;
            _loc14_ = _loc14_;
            _loc15_ = _loc15_;
            _loc20_ = _loc19_;
            _loc16_ = _loc16_;
            _loc21_ = _loc14_;
            _loc15_ *= _loc20_;
            _loc16_ *= _loc21_;
            _loc15_ = _loc15_;
            _loc16_ = _loc16_;
            _loc15_ = _loc15_;
            _loc16_ = _loc16_;
            _loc15_ = _loc16_ - _loc15_;
            sf32(_loc19_,_loc7_);
            sf32(_loc14_,_loc6_);
            _loc15_ = _loc15_;
            _loc16_ = _loc17_;
            _loc17_ = _loc18_;
            _loc18_ = lf32(_loc2_ + 136);
            _loc15_ = _loc15_;
            _loc18_ *= _loc15_;
            _loc16_ *= _loc20_;
            _loc17_ *= _loc21_;
            _loc18_ = _loc18_;
            _loc16_ = _loc16_;
            _loc17_ = _loc17_;
            _loc18_ = _loc18_;
            _loc16_ = _loc16_;
            _loc17_ = _loc17_;
            _loc15_ = _loc18_ * _loc15_;
            _loc16_ = _loc17_ - _loc16_;
            _loc15_ = _loc15_;
            _loc16_ = _loc16_;
            _loc17_ = lf32(_loc2_ + 128);
            _loc15_ = _loc15_;
            _loc18_ = lf32(_loc3_ + 136);
            _loc16_ = _loc16_;
            _loc15_ = _loc17_ + _loc15_;
            _loc17_ = _loc18_ * _loc16_;
            _loc15_ = _loc15_;
            _loc17_ = _loc17_;
            _loc18_ = lf32(_loc3_ + 128);
            _loc15_ = _loc15_;
            _loc17_ = _loc17_;
            _loc15_ += _loc18_;
            _loc16_ = _loc17_ * _loc16_;
            _loc15_ = _loc15_;
            _loc16_ = _loc16_ = _loc16_;
            _loc15_ = _loc15_;
            _loc15_ = _loc15_ = _loc15_ + _loc16_;
            _loc16_ = 0;
            _loc6_ = _loc3_ + 136;
            _loc7_ = _loc3_ + 128;
            _loc11_ = _loc2_ + 136;
            _loc12_ = _loc2_ + 128;
            _loc16_ = _loc16_ = _loc16_;
            _loc17_ = _loc15_;
            if(_loc17_ == _loc16_)
            {
               _loc15_ = _loc15_ = 0;
            }
            else
            {
               _loc16_ = _loc16_ = 1;
               _loc15_ = _loc15_;
               _loc16_ = _loc16_;
               _loc15_ = _loc15_ = _loc16_ / _loc15_;
            }
            sf32(_loc15_,_loc1_ + 144);
            _loc13_ = li8(_loc10_ + 20);
            _loc1_ += 148;
            if(_loc13_ != 0)
            {
               _loc15_ = lf32(_loc1_);
               _loc16_ = lf32(_loc10_ + 8);
               _loc16_ = _loc15_ = _loc15_ *= _loc16_;
               _loc17_ = _loc19_;
               _loc17_ = _loc17_ = _loc17_ * _loc16_;
               sf32(_loc15_,_loc1_);
               _loc15_ = lf32(_loc12_);
               _loc17_ = _loc17_;
               _loc18_ = _loc17_ * _loc15_;
               _loc14_ = _loc14_;
               _loc18_ = _loc18_;
               _loc14_ *= _loc16_;
               _loc16_ = lf32(_loc2_ + 72);
               _loc18_ = _loc18_;
               _loc14_ = _loc14_ = _loc14_;
               _loc16_ -= _loc18_;
               _loc15_ = _loc14_ * _loc15_;
               _loc16_ = _loc16_;
               sf32(_loc16_,_loc2_ + 72);
               _loc15_ = _loc15_;
               _loc16_ = lf32(_loc2_ + 76);
               _loc15_ = _loc15_;
               _loc15_ = _loc15_ = _loc16_ - _loc15_;
               sf32(_loc15_,_loc2_ + 76);
               _loc15_ = lf32(_loc9_);
               _loc16_ = lf32(_loc4_);
               _loc15_ *= _loc14_;
               _loc16_ *= _loc17_;
               _loc15_ = _loc15_;
               _loc16_ = _loc16_ = _loc16_;
               _loc15_ = _loc15_;
               _loc15_ = _loc15_ = _loc15_ - _loc16_;
               _loc16_ = lf32(_loc11_);
               _loc15_ = _loc15_;
               _loc15_ = _loc15_ = _loc16_ * _loc15_;
               _loc16_ = lf32(_loc2_ + 80);
               _loc15_ = _loc15_;
               _loc15_ = _loc15_ = _loc16_ - _loc15_;
               sf32(_loc15_,_loc2_ + 80);
               _loc15_ = lf32(_loc7_);
               _loc16_ = _loc16_ = _loc17_ * _loc15_;
               _loc18_ = lf32(_loc3_ + 72);
               _loc16_ = _loc16_;
               _loc16_ = _loc18_ + _loc16_;
               _loc15_ = _loc14_ * _loc15_;
               _loc16_ = _loc16_;
               sf32(_loc16_,_loc3_ + 72);
               _loc15_ = _loc15_;
               _loc16_ = lf32(_loc3_ + 76);
               _loc15_ = _loc15_;
               _loc15_ = _loc15_ = _loc16_ + _loc15_;
               sf32(_loc15_,_loc3_ + 76);
               _loc15_ = lf32(_loc8_);
               _loc16_ = lf32(_loc5_);
               _loc14_ = _loc15_ * _loc14_;
               _loc15_ = _loc16_ * _loc17_;
               _loc14_ = _loc14_;
               _loc15_ = _loc15_ = _loc15_;
               _loc14_ = _loc14_;
               _loc14_ = _loc14_ = _loc14_ - _loc15_;
               _loc15_ = lf32(_loc6_);
               _loc14_ = _loc14_;
               _loc14_ = _loc14_ = _loc15_ * _loc14_;
               _loc15_ = lf32(_loc3_ + 80);
               _loc14_ = _loc14_;
               _loc14_ = _loc14_ = _loc15_ + _loc14_;
               sf32(_loc14_,_loc3_ + 80);
            }
            else
            {
               _loc2_ = 0;
               si32(_loc2_,_loc1_);
            }
         }
         else
         {
            _loc2_ = 0;
            si32(_loc2_,_loc7_);
            si32(_loc2_,_loc6_);
            si32(_loc2_,_loc1_ + 144);
            si32(_loc2_,_loc1_ + 148);
         }
         cmodule.Box2D.mstate.esp = cmodule.Box2D.mstate.ebp;
         cmodule.Box2D.mstate.ebp = li32(cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.esp += 4;
         cmodule.Box2D.mstate.esp += 4;
      }
   }
}

