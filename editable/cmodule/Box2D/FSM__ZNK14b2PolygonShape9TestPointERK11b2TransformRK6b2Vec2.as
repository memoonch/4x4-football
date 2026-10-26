package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZNK14b2PolygonShape9TestPointERK11b2TransformRK6b2Vec2 extends Machine
   {
      
      public function FSM__ZNK14b2PolygonShape9TestPointERK11b2TransformRK6b2Vec2()
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
         cmodule.Box2D.mstate.esp -= 4;
         si32(cmodule.Box2D.mstate.ebp,cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.ebp = cmodule.Box2D.mstate.esp;
         cmodule.Box2D.mstate.esp -= 0;
         _loc1_ = li32(cmodule.Box2D.mstate.ebp + 16);
         _loc2_ = li32(cmodule.Box2D.mstate.ebp + 12);
         _loc4_ = lf32(_loc1_ + 4);
         _loc5_ = lf32(_loc2_ + 4);
         _loc6_ = lf32(_loc1_);
         _loc7_ = lf32(_loc2_);
         _loc4_ -= _loc5_;
         _loc5_ = _loc6_ - _loc7_;
         _loc4_ = _loc4_;
         _loc5_ = _loc5_;
         _loc6_ = lf32(_loc2_ + 16);
         _loc5_ = _loc5_;
         _loc7_ = lf32(_loc2_ + 8);
         _loc8_ = lf32(_loc2_ + 20);
         _loc4_ = _loc4_;
         _loc9_ = lf32(_loc2_ + 12);
         _loc8_ = _loc4_ * _loc8_;
         _loc4_ *= _loc9_;
         _loc6_ = _loc5_ * _loc6_;
         _loc5_ *= _loc7_;
         _loc7_ = _loc8_;
         _loc4_ = _loc4_;
         _loc6_ = _loc6_;
         _loc5_ = _loc5_;
         _loc1_ = li32(cmodule.Box2D.mstate.ebp + 8);
         _loc7_ = _loc7_;
         _loc6_ = _loc6_;
         _loc4_ = _loc4_;
         _loc5_ = _loc5_;
         _loc2_ = li32(_loc1_ + 152);
         _loc6_ += _loc7_;
         _loc4_ = _loc5_ + _loc4_;
         _loc5_ = _loc6_;
         _loc4_ = _loc4_;
         loop1:
         while(true)
         {
            if(_loc2_ > 0)
            {
               _loc3_ = 0;
               while(true)
               {
                  _loc6_ = 0;
                  _loc7_ = lf32(_loc1_ + 28);
                  _loc8_ = _loc5_;
                  _loc9_ = lf32(_loc1_ + 24);
                  _loc10_ = _loc4_;
                  _loc7_ = _loc8_ - _loc7_;
                  _loc8_ = _loc10_ - _loc9_;
                  _loc7_ = _loc7_;
                  _loc8_ = _loc8_;
                  _loc9_ = lf32(_loc1_ + 88);
                  _loc10_ = lf32(_loc1_ + 92);
                  _loc7_ = _loc7_;
                  _loc8_ = _loc8_;
                  _loc7_ = _loc10_ * _loc7_;
                  _loc8_ = _loc9_ * _loc8_;
                  _loc7_ = _loc7_;
                  _loc8_ = _loc8_;
                  _loc7_ = _loc7_;
                  _loc8_ = _loc8_;
                  _loc7_ = _loc7_ = _loc8_ + _loc7_;
                  _loc6_ = _loc6_ = _loc6_;
                  _loc7_ = _loc7_;
                  if(_loc7_ > _loc6_)
                  {
                     _loc1_ = 0;
                     break loop1;
                  }
                  _loc1_ += 8;
                  _loc3_ += 1;
                  if(_loc2_ > _loc3_)
                  {
                     continue;
                  }
               }
               break;
            }
            _loc1_ = 1;
            break;
         }
         _loc1_ &= 255;
         cmodule.Box2D.mstate.eax = _loc1_;
         cmodule.Box2D.mstate.esp = cmodule.Box2D.mstate.ebp;
         cmodule.Box2D.mstate.ebp = li32(cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.esp += 4;
         cmodule.Box2D.mstate.esp += 4;
      }
   }
}

