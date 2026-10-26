package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZNK14b2PolygonShape11ComputeAABBEP6b2AABBRK11b2Transformi extends Machine
   {
      
      public function FSM__ZNK14b2PolygonShape11ComputeAABBEP6b2AABBRK11b2Transformi()
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
         _loc1_ = li32(cmodule.Box2D.mstate.ebp + 16);
         _loc6_ = lf32(_loc1_ + 8);
         _loc7_ = lf32(_loc1_ + 12);
         _loc2_ = li32(cmodule.Box2D.mstate.ebp + 8);
         _loc8_ = lf32(_loc2_ + 24);
         _loc9_ = _loc6_;
         _loc10_ = _loc7_;
         _loc9_ *= _loc8_;
         _loc8_ = _loc10_ * _loc8_;
         _loc10_ = lf32(_loc1_);
         _loc11_ = lf32(_loc1_ + 16);
         _loc12_ = lf32(_loc1_ + 4);
         _loc13_ = lf32(_loc1_ + 20);
         _loc9_ = _loc9_;
         _loc8_ = _loc8_;
         _loc14_ = lf32(_loc2_ + 28);
         _loc15_ = _loc11_;
         _loc16_ = _loc13_;
         _loc9_ = _loc9_;
         _loc17_ = _loc10_;
         _loc8_ = _loc8_;
         _loc18_ = _loc12_;
         _loc9_ = _loc17_ + _loc9_;
         _loc8_ = _loc18_ + _loc8_;
         _loc15_ *= _loc14_;
         _loc14_ = _loc16_ * _loc14_;
         _loc9_ = _loc9_;
         _loc8_ = _loc8_;
         _loc15_ = _loc15_;
         _loc14_ = _loc14_;
         _loc15_ = _loc15_;
         _loc9_ = _loc9_;
         _loc14_ = _loc14_;
         _loc8_ = _loc8_;
         _loc1_ = li32(_loc2_ + 152);
         _loc9_ += _loc15_;
         _loc8_ += _loc14_;
         _loc9_ = _loc9_;
         _loc8_ = _loc8_;
         _loc3_ = li32(cmodule.Box2D.mstate.ebp + 12);
         _loc4_ = _loc2_;
         if(_loc1_ <= 1)
         {
            _loc6_ = _loc9_;
            _loc7_ = _loc8_;
         }
         else
         {
            _loc5_ = 1;
            _loc14_ = _loc9_;
            _loc15_ = _loc8_;
            do
            {
               _loc16_ = lf32(_loc4_ + 32);
               _loc17_ = _loc6_;
               _loc18_ = _loc7_;
               _loc17_ *= _loc16_;
               _loc16_ = _loc18_ * _loc16_;
               _loc17_ = _loc17_;
               _loc16_ = _loc16_;
               _loc18_ = lf32(_loc4_ + 36);
               _loc19_ = _loc11_;
               _loc20_ = _loc13_;
               _loc17_ = _loc17_;
               _loc21_ = _loc10_;
               _loc16_ = _loc16_;
               _loc22_ = _loc12_;
               _loc17_ = _loc21_ + _loc17_;
               _loc16_ = _loc22_ + _loc16_;
               _loc19_ *= _loc18_;
               _loc18_ = _loc20_ * _loc18_;
               _loc17_ = _loc17_;
               _loc16_ = _loc16_;
               _loc19_ = _loc19_;
               _loc18_ = _loc18_;
               _loc19_ = _loc19_;
               _loc17_ = _loc17_;
               _loc18_ = _loc18_;
               _loc16_ = _loc16_;
               _loc17_ += _loc19_;
               _loc16_ += _loc18_;
               _loc17_ = _loc17_;
               _loc16_ = _loc16_;
               _loc14_ = _loc14_;
               _loc17_ = _loc17_;
               _loc9_ = _loc9_;
               _loc15_ = _loc15_;
               _loc16_ = _loc16_;
               _loc8_ = _loc8_;
               _loc14_ = _loc14_ < _loc17_ ? _loc14_ : _loc17_;
               _loc9_ = _loc9_ > _loc17_ ? _loc9_ : _loc17_;
               _loc15_ = _loc15_ < _loc16_ ? _loc15_ : _loc16_;
               _loc8_ = _loc8_ > _loc16_ ? _loc8_ : _loc16_;
               _loc14_ = _loc14_;
               _loc9_ = _loc9_;
               _loc15_ = _loc15_;
               _loc8_ = _loc8_;
               _loc4_ += 8;
               _loc5_ += 1;
            }
            while(_loc1_ > _loc5_);
            _loc6_ = _loc14_;
            _loc7_ = _loc15_;
         }
         _loc10_ = lf32(_loc2_ + 8);
         _loc6_ = _loc6_;
         _loc7_ = _loc7_;
         _loc6_ -= _loc10_;
         _loc7_ -= _loc10_;
         _loc9_ = _loc9_;
         _loc6_ = _loc6_;
         _loc8_ = _loc8_;
         _loc9_ += _loc10_;
         sf32(_loc6_,_loc3_);
         _loc6_ = _loc7_;
         _loc7_ = _loc8_ + _loc10_;
         sf32(_loc6_,_loc3_ + 4);
         _loc6_ = _loc9_;
         sf32(_loc6_,_loc3_ + 8);
         _loc6_ = _loc7_;
         sf32(_loc6_,_loc3_ + 12);
         cmodule.Box2D.mstate.esp = cmodule.Box2D.mstate.ebp;
         cmodule.Box2D.mstate.ebp = li32(cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.esp += 4;
         cmodule.Box2D.mstate.esp += 4;
      }
   }
}

