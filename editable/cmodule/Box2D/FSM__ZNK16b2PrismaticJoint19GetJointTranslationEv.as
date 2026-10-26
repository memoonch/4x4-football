package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZNK16b2PrismaticJoint19GetJointTranslationEv extends Machine
   {
      
      public function FSM__ZNK16b2PrismaticJoint19GetJointTranslationEv()
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
         cmodule.Box2D.mstate.esp -= 4;
         si32(cmodule.Box2D.mstate.ebp,cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.ebp = cmodule.Box2D.mstate.esp;
         cmodule.Box2D.mstate.esp -= 0;
         _loc1_ = li32(cmodule.Box2D.mstate.ebp + 8);
         _loc2_ = li32(_loc1_ + 48);
         _loc3_ = li32(_loc1_ + 52);
         _loc4_ = lf32(_loc2_ + 20);
         _loc5_ = lf32(_loc1_ + 96);
         _loc6_ = lf32(_loc2_ + 24);
         _loc7_ = lf32(_loc3_ + 20);
         _loc8_ = lf32(_loc1_ + 104);
         _loc9_ = lf32(_loc3_ + 24);
         _loc10_ = _loc6_ * _loc5_;
         _loc5_ = _loc4_ * _loc5_;
         _loc9_ *= _loc8_;
         _loc7_ *= _loc8_;
         _loc8_ = _loc10_;
         _loc5_ = _loc5_;
         _loc9_ = _loc9_;
         _loc7_ = _loc7_;
         _loc10_ = lf32(_loc2_ + 12);
         _loc5_ = _loc5_;
         _loc11_ = lf32(_loc2_ + 28);
         _loc12_ = lf32(_loc1_ + 100);
         _loc13_ = lf32(_loc2_ + 32);
         _loc14_ = lf32(_loc2_ + 16);
         _loc8_ = _loc8_;
         _loc15_ = lf32(_loc3_ + 12);
         _loc7_ = _loc7_;
         _loc16_ = lf32(_loc3_ + 28);
         _loc17_ = lf32(_loc1_ + 108);
         _loc18_ = lf32(_loc3_ + 32);
         _loc19_ = lf32(_loc3_ + 16);
         _loc9_ = _loc9_;
         _loc5_ = _loc10_ + _loc5_;
         _loc10_ = _loc13_ * _loc12_;
         _loc8_ = _loc14_ + _loc8_;
         _loc12_ = _loc11_ * _loc12_;
         _loc7_ = _loc15_ + _loc7_;
         _loc14_ = _loc18_ * _loc17_;
         _loc9_ = _loc19_ + _loc9_;
         _loc15_ = _loc16_ * _loc17_;
         _loc5_ = _loc5_;
         _loc10_ = _loc10_;
         _loc8_ = _loc8_;
         _loc12_ = _loc12_;
         _loc7_ = _loc7_;
         _loc14_ = _loc14_;
         _loc9_ = _loc9_;
         _loc15_ = _loc15_;
         _loc16_ = lf32(_loc1_ + 112);
         _loc17_ = lf32(_loc1_ + 116);
         _loc12_ = _loc12_;
         _loc5_ = _loc5_;
         _loc10_ = _loc10_;
         _loc8_ = _loc8_;
         _loc15_ = _loc15_;
         _loc7_ = _loc7_;
         _loc14_ = _loc14_;
         _loc9_ = _loc9_;
         _loc5_ += _loc12_;
         _loc8_ += _loc10_;
         _loc10_ = _loc13_ * _loc17_;
         _loc6_ *= _loc16_;
         _loc11_ *= _loc17_;
         _loc4_ *= _loc16_;
         _loc7_ += _loc15_;
         _loc9_ += _loc14_;
         _loc5_ = _loc5_;
         _loc8_ = _loc8_;
         _loc10_ = _loc10_;
         _loc6_ = _loc6_;
         _loc11_ = _loc11_;
         _loc4_ = _loc4_;
         _loc7_ = _loc7_;
         _loc9_ = _loc9_;
         _loc5_ = _loc5_;
         _loc7_ = _loc7_;
         _loc8_ = _loc8_;
         _loc9_ = _loc9_;
         _loc10_ = _loc10_;
         _loc6_ = _loc6_;
         _loc11_ = _loc11_;
         _loc4_ = _loc4_;
         _loc5_ = _loc7_ - _loc5_;
         _loc7_ = _loc9_ - _loc8_;
         _loc6_ += _loc10_;
         _loc4_ += _loc11_;
         _loc5_ = _loc5_;
         _loc7_ = _loc7_;
         _loc6_ = _loc6_;
         _loc4_ = _loc4_ = _loc4_;
         _loc5_ = _loc5_;
         _loc6_ = _loc6_;
         _loc7_ = _loc7_;
         _loc4_ = _loc5_ * _loc4_;
         _loc5_ = _loc7_ * _loc6_;
         _loc4_ = _loc4_;
         _loc5_ = _loc5_ = _loc5_;
         _loc4_ = _loc4_;
         _loc4_ = _loc4_ = _loc4_ + _loc5_;
         cmodule.Box2D.mstate.st0 = _loc4_;
         cmodule.Box2D.mstate.esp = cmodule.Box2D.mstate.ebp;
         cmodule.Box2D.mstate.ebp = li32(cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.esp += 4;
         cmodule.Box2D.mstate.esp += 4;
      }
   }
}

