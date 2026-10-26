package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZN15b2CircleContact8EvaluateEP10b2ManifoldRK11b2TransformS4_ extends Machine
   {
      
      public function FSM__ZN15b2CircleContact8EvaluateEP10b2ManifoldRK11b2TransformS4_()
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
         _loc1_ = li32(cmodule.Box2D.mstate.ebp + 16);
         _loc5_ = li32(cmodule.Box2D.mstate.ebp + 20);
         _loc8_ = lf32(_loc1_ + 8);
         _loc9_ = lf32(_loc2_ + 16);
         _loc10_ = lf32(_loc1_ + 12);
         _loc11_ = lf32(_loc5_ + 8);
         _loc12_ = lf32(_loc3_ + 16);
         _loc13_ = lf32(_loc5_ + 12);
         _loc8_ *= _loc9_;
         _loc9_ = _loc10_ * _loc9_;
         _loc10_ = _loc11_ * _loc12_;
         _loc11_ = _loc13_ * _loc12_;
         _loc8_ = _loc8_;
         _loc9_ = _loc9_;
         _loc10_ = _loc10_;
         _loc11_ = _loc11_;
         _loc12_ = lf32(_loc1_);
         _loc8_ = _loc8_;
         _loc13_ = lf32(_loc1_ + 16);
         _loc14_ = lf32(_loc2_ + 20);
         _loc15_ = lf32(_loc1_ + 20);
         _loc16_ = lf32(_loc1_ + 4);
         _loc9_ = _loc9_;
         _loc17_ = lf32(_loc5_);
         _loc10_ = _loc10_;
         _loc18_ = lf32(_loc5_ + 16);
         _loc19_ = lf32(_loc3_ + 20);
         _loc20_ = lf32(_loc5_ + 20);
         _loc21_ = lf32(_loc5_ + 4);
         _loc11_ = _loc11_;
         _loc8_ = _loc12_ + _loc8_;
         _loc9_ = _loc16_ + _loc9_;
         _loc12_ = _loc13_ * _loc14_;
         _loc13_ = _loc15_ * _loc14_;
         _loc10_ = _loc17_ + _loc10_;
         _loc11_ = _loc21_ + _loc11_;
         _loc14_ = _loc18_ * _loc19_;
         _loc15_ = _loc20_ * _loc19_;
         _loc8_ = _loc8_;
         _loc9_ = _loc9_;
         _loc12_ = _loc12_;
         _loc13_ = _loc13_;
         _loc10_ = _loc10_;
         _loc11_ = _loc11_;
         _loc14_ = _loc14_;
         _loc15_ = _loc15_;
         _loc12_ = _loc12_;
         _loc8_ = _loc8_;
         _loc13_ = _loc13_;
         _loc9_ = _loc9_;
         _loc14_ = _loc14_;
         _loc10_ = _loc10_;
         _loc15_ = _loc15_;
         _loc11_ = _loc11_;
         _loc8_ += _loc12_;
         _loc9_ += _loc13_;
         _loc10_ += _loc14_;
         _loc11_ += _loc15_;
         _loc8_ = _loc8_;
         _loc9_ = _loc9_;
         _loc10_ = _loc10_;
         _loc11_ = _loc11_;
         _loc8_ = _loc8_;
         _loc10_ = _loc10_;
         _loc9_ = _loc9_;
         _loc11_ = _loc11_;
         _loc8_ = _loc10_ - _loc8_;
         _loc9_ = _loc11_ - _loc9_;
         _loc8_ = _loc8_;
         _loc9_ = _loc9_;
         _loc8_ = _loc8_;
         _loc9_ = _loc9_;
         _loc10_ = lf32(_loc2_ + 8);
         _loc11_ = lf32(_loc3_ + 8);
         _loc8_ *= _loc8_;
         _loc9_ *= _loc9_;
         _loc10_ += _loc11_;
         _loc8_ = _loc8_;
         _loc9_ = _loc9_;
         _loc10_ = _loc10_ = _loc10_;
         _loc9_ = _loc9_;
         _loc8_ = _loc8_;
         _loc8_ = _loc8_ + _loc9_;
         _loc9_ = _loc10_ * _loc10_;
         _loc1_ = _loc2_ + 20;
         _loc5_ = _loc3_ + 20;
         _loc3_ += 16;
         _loc2_ += 16;
         _loc6_ = _loc4_ + 68;
         _loc8_ = _loc8_;
         _loc9_ = _loc9_;
         _loc8_ = _loc8_;
         _loc9_ = _loc9_;
         if(_loc9_ >= _loc8_)
         {
            _loc7_ = 0;
            si32(_loc7_,_loc4_ + 64);
            _loc8_ = lf32(_loc2_);
            _loc9_ = lf32(_loc1_);
            sf32(_loc8_,_loc4_ + 56);
            sf32(_loc9_,_loc4_ + 60);
            si32(_loc7_,_loc4_ + 48);
            si32(_loc7_,_loc4_ + 52);
            _loc1_ = 1;
            si32(_loc1_,_loc6_);
            _loc8_ = lf32(_loc3_);
            _loc9_ = lf32(_loc5_);
            sf32(_loc8_,_loc4_);
            sf32(_loc9_,_loc4_ + 4);
            si32(_loc7_,_loc4_ + 16);
         }
         cmodule.Box2D.mstate.esp = cmodule.Box2D.mstate.ebp;
         cmodule.Box2D.mstate.ebp = li32(cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.esp += 4;
         cmodule.Box2D.mstate.esp += 4;
      }
   }
}

