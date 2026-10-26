package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public final class FSM__Z19b2ClipSegmentToLineP12b2ClipVertexPKS_RK6b2Vec2fi342 extends Machine
   {
      
      public function FSM__Z19b2ClipSegmentToLineP12b2ClipVertexPKS_RK6b2Vec2fi342()
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
         cmodule.Box2D.mstate.esp -= 4;
         si32(cmodule.Box2D.mstate.ebp,cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.ebp = cmodule.Box2D.mstate.esp;
         cmodule.Box2D.mstate.esp -= 0;
         _loc11_ = 0;
         _loc1_ = li32(cmodule.Box2D.mstate.ebp + 12);
         _loc12_ = lf32(_loc1_);
         _loc13_ = lf32(_loc1_ + 4);
         _loc14_ = lf32(cmodule.Box2D.mstate.ebp + 20);
         _loc15_ = lf32(_loc1_ + 16);
         _loc16_ = lf32(_loc1_ + 12);
         _loc17_ = lf32(cmodule.Box2D.mstate.ebp + 16);
         _loc18_ = _loc12_;
         _loc18_ = _loc18_ * _loc17_;
         _loc13_ *= _loc14_;
         _loc16_ *= _loc17_;
         _loc14_ = _loc15_ * _loc14_;
         _loc15_ = _loc18_;
         _loc13_ = _loc13_;
         _loc16_ = _loc16_;
         _loc14_ = _loc14_;
         _loc13_ = _loc13_;
         _loc15_ = _loc15_;
         _loc14_ = _loc14_;
         _loc16_ = _loc16_;
         _loc13_ = _loc15_ + _loc13_;
         _loc14_ = _loc16_ + _loc14_;
         _loc13_ = _loc13_;
         _loc14_ = _loc14_;
         _loc15_ = lf32(cmodule.Box2D.mstate.ebp + 24);
         _loc13_ = _loc13_;
         _loc14_ = _loc14_;
         _loc13_ -= _loc15_;
         _loc14_ -= _loc15_;
         _loc13_ = _loc13_;
         _loc14_ = _loc14_;
         _loc2_ = _loc1_ + 16;
         _loc3_ = _loc1_ + 12;
         _loc4_ = _loc1_ + 4;
         _loc5_ = li32(cmodule.Box2D.mstate.ebp + 8);
         _loc6_ = li32(cmodule.Box2D.mstate.ebp + 28);
         _loc11_ = _loc11_;
         _loc7_ = _loc1_;
         _loc11_ = _loc11_;
         _loc15_ = _loc13_;
         if(_loc15_ > _loc11_)
         {
            _loc8_ = 0;
         }
         else
         {
            _loc8_ = 1;
            sf32(_loc12_,_loc5_);
            _loc11_ = lf32(_loc4_);
            sf32(_loc11_,_loc5_ + 4);
            _loc9_ = li32(_loc1_ + 8);
            si32(_loc9_,_loc5_ + 8);
         }
         _loc11_ = _loc11_ = _loc11_ = 0;
         _loc12_ = _loc14_;
         if(_loc12_ <= _loc11_)
         {
            _loc9_ = _loc8_ * 12;
            _loc11_ = lf32(_loc3_);
            _loc9_ = _loc5_ + _loc9_;
            sf32(_loc11_,_loc9_);
            _loc11_ = lf32(_loc2_);
            sf32(_loc11_,_loc9_ + 4);
            _loc10_ = li32(_loc1_ + 20);
            si32(_loc10_,_loc9_ + 8);
            _loc8_ += 1;
         }
         _loc11_ = 0;
         _loc12_ = _loc14_;
         _loc15_ = _loc13_;
         _loc12_ = _loc12_ = _loc15_ * _loc12_;
         _loc11_ = _loc11_ = _loc11_;
         _loc12_ = _loc12_;
         if(_loc12_ < _loc11_)
         {
            _loc9_ = 0;
            _loc11_ = _loc14_;
            _loc12_ = _loc13_;
            _loc11_ = _loc11_ = _loc11_ = _loc12_ - _loc11_;
            _loc13_ = lf32(_loc3_);
            _loc14_ = lf32(_loc7_);
            _loc11_ = _loc12_ / _loc11_;
            _loc12_ = _loc13_ - _loc14_;
            _loc13_ = lf32(_loc2_);
            _loc15_ = lf32(_loc4_);
            _loc11_ = _loc11_;
            _loc13_ -= _loc15_;
            _loc12_ = _loc12_;
            _loc13_ = _loc13_;
            _loc11_ = _loc11_;
            _loc12_ = _loc12_;
            _loc13_ = _loc13_;
            _loc12_ *= _loc11_;
            _loc11_ = _loc13_ * _loc11_;
            _loc12_ = _loc12_;
            _loc11_ = _loc11_;
            _loc12_ = _loc12_;
            _loc11_ = _loc11_;
            _loc12_ = _loc14_ + _loc12_;
            _loc2_ = _loc8_ * 12;
            _loc11_ = _loc15_ + _loc11_;
            _loc12_ = _loc12_;
            _loc2_ = _loc5_ + _loc2_;
            sf32(_loc12_,_loc2_);
            _loc11_ = _loc11_;
            sf32(_loc11_,_loc2_ + 4);
            si8(_loc6_,_loc2_ + 8);
            _loc1_ = li8(_loc1_ + 9);
            si8(_loc1_,_loc2_ + 9);
            si8(_loc9_,_loc2_ + 10);
            _loc1_ = 1;
            si8(_loc1_,_loc2_ + 11);
            _loc8_ += 1;
         }
         cmodule.Box2D.mstate.eax = _loc8_;
         cmodule.Box2D.mstate.esp = cmodule.Box2D.mstate.ebp;
         cmodule.Box2D.mstate.ebp = li32(cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.esp += 4;
         cmodule.Box2D.mstate.esp += 4;
      }
   }
}

