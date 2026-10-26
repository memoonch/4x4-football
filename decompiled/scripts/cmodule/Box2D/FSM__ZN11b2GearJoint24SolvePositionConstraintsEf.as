package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZN11b2GearJoint24SolvePositionConstraintsEf extends Machine
   {
      
      public function FSM__ZN11b2GearJoint24SolvePositionConstraintsEf()
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
         cmodule.Box2D.mstate.esp -= 4;
         si32(cmodule.Box2D.mstate.ebp,cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.ebp = cmodule.Box2D.mstate.esp;
         cmodule.Box2D.mstate.esp -= 0;
         _loc1_ = li32(cmodule.Box2D.mstate.ebp + 8);
         _loc2_ = li32(_loc1_ + 48);
         _loc3_ = li32(_loc1_ + 52);
         _loc4_ = li32(_loc1_ + 104);
         _loc5_ = _loc1_ + 112;
         while(true)
         {
            if(_loc4_ != 0)
            {
               _loc6_ = li32(_loc4_ + 52);
               _loc7_ = li32(_loc4_ + 48);
               _loc8_ = lf32(_loc6_ + 64);
               _loc9_ = lf32(_loc7_ + 64);
               _loc8_ = _loc8_ -= _loc9_;
               _loc9_ = lf32(_loc4_ + 184);
               _loc8_ = _loc8_;
               _loc5_ = li32(_loc5_);
               _loc8_ = _loc8_ -= _loc9_;
               if(_loc5_ != 0)
               {
                  addr0159:
                  _loc4_ = _loc5_;
                  _loc5_ = li32(_loc4_ + 52);
                  _loc6_ = li32(_loc4_ + 48);
                  _loc9_ = lf32(_loc5_ + 64);
                  _loc10_ = lf32(_loc6_ + 64);
                  _loc9_ = _loc9_ -= _loc10_;
                  _loc10_ = lf32(_loc4_ + 184);
                  _loc9_ = _loc9_;
                  _loc9_ = _loc9_ = _loc9_ - _loc10_;
                  break;
               }
            }
            else
            {
               _loc4_ = li32(_loc1_ + 108);
               cmodule.Box2D.mstate.esp -= 4;
               si32(_loc4_,cmodule.Box2D.mstate.esp);
               cmodule.Box2D.mstate.esp -= 4;
               FSM__ZNK16b2PrismaticJoint19GetJointTranslationEv.start();
               _loc8_ = Number(cmodule.Box2D.mstate.st0);
               cmodule.Box2D.mstate.esp += 4;
               _loc5_ = li32(_loc5_);
               if(_loc5_ != 0)
               {
                  §§goto(addr0159);
               }
            }
            _loc4_ = li32(_loc1_ + 116);
            cmodule.Box2D.mstate.esp -= 4;
            si32(_loc4_,cmodule.Box2D.mstate.esp);
            cmodule.Box2D.mstate.esp -= 4;
            FSM__ZNK16b2PrismaticJoint19GetJointTranslationEv.start();
            _loc9_ = Number(cmodule.Box2D.mstate.st0);
            cmodule.Box2D.mstate.esp += 4;
            break;
         }
         _loc10_ = 0;
         _loc11_ = lf32(_loc1_ + 180);
         _loc9_ = _loc9_;
         _loc9_ = _loc9_ = _loc11_ * _loc9_;
         _loc8_ = _loc8_;
         _loc9_ = _loc9_;
         _loc8_ = _loc8_ = _loc9_ + _loc8_;
         _loc9_ = lf32(_loc1_ + 176);
         _loc8_ = _loc8_;
         _loc8_ = _loc8_ = _loc8_ - _loc9_;
         _loc9_ = lf32(_loc1_ + 184);
         _loc8_ = _loc8_;
         _loc8_ = _loc8_ = _loc9_ * _loc8_;
         _loc9_ = lf32(_loc2_ + 128);
         _loc8_ = _loc8_;
         _loc9_ = _loc9_ *= _loc8_;
         _loc11_ = lf32(_loc1_ + 152);
         _loc9_ = _loc9_;
         _loc11_ = _loc11_ *= _loc9_;
         _loc12_ = lf32(_loc2_ + 52);
         _loc11_ = _loc11_;
         _loc13_ = lf32(_loc1_ + 156);
         _loc11_ = _loc12_ + _loc11_;
         _loc9_ = _loc13_ * _loc9_;
         _loc11_ = _loc11_;
         sf32(_loc11_,_loc2_ + 52);
         _loc9_ = _loc9_;
         _loc11_ = lf32(_loc2_ + 56);
         _loc9_ = _loc9_;
         _loc9_ = _loc9_ = _loc11_ + _loc9_;
         sf32(_loc9_,_loc2_ + 56);
         _loc9_ = lf32(_loc2_ + 136);
         _loc9_ = _loc9_ = _loc9_ * _loc8_;
         _loc11_ = lf32(_loc1_ + 160);
         _loc9_ = _loc9_;
         _loc9_ = _loc9_ = _loc9_ * _loc11_;
         _loc11_ = lf32(_loc2_ + 64);
         _loc9_ = _loc9_;
         _loc9_ = _loc9_ = _loc11_ + _loc9_;
         sf32(_loc9_,_loc2_ + 64);
         _loc9_ = lf32(_loc3_ + 128);
         _loc9_ = _loc9_ = _loc9_ * _loc8_;
         _loc11_ = lf32(_loc1_ + 164);
         _loc9_ = _loc9_;
         _loc11_ = _loc11_ *= _loc9_;
         _loc12_ = lf32(_loc3_ + 52);
         _loc11_ = _loc11_;
         _loc13_ = lf32(_loc1_ + 168);
         _loc11_ = _loc12_ + _loc11_;
         _loc9_ = _loc13_ * _loc9_;
         _loc11_ = _loc11_;
         sf32(_loc11_,_loc3_ + 52);
         _loc9_ = _loc9_;
         _loc11_ = lf32(_loc3_ + 56);
         _loc9_ = _loc9_;
         _loc9_ = _loc9_ = _loc11_ + _loc9_;
         sf32(_loc9_,_loc3_ + 56);
         _loc9_ = lf32(_loc3_ + 136);
         _loc8_ = _loc8_ = _loc9_ * _loc8_;
         _loc9_ = lf32(_loc1_ + 172);
         _loc8_ = _loc8_;
         _loc8_ = _loc8_ = _loc8_ * _loc9_;
         _loc9_ = lf32(_loc3_ + 64);
         _loc8_ = _loc8_;
         _loc8_ = _loc8_ = _loc9_ + _loc8_;
         sf32(_loc8_,_loc3_ + 64);
         _loc8_ = _loc9_ = lf32(_loc2_ + 64);
         _loc11_ = _loc8_ = Math.cos(_loc8_);
         _loc8_ = _loc9_;
         _loc9_ = _loc8_ = Math.sin(_loc8_);
         _loc12_ = -_loc9_;
         sf32(_loc11_,_loc2_ + 20);
         _loc12_ = _loc12_;
         sf32(_loc12_,_loc2_ + 28);
         sf32(_loc8_,_loc2_ + 24);
         sf32(_loc11_,_loc2_ + 32);
         _loc8_ = lf32(_loc2_ + 36);
         _loc12_ = lf32(_loc2_ + 40);
         _loc11_ = _loc11_;
         _loc13_ = _loc11_ * _loc8_;
         _loc14_ = _loc12_ * _loc9_;
         _loc8_ = _loc9_ * _loc8_;
         _loc9_ = _loc13_;
         _loc11_ *= _loc12_;
         _loc12_ = _loc14_;
         _loc8_ = _loc8_;
         _loc11_ = _loc11_;
         _loc12_ = _loc12_;
         _loc9_ = _loc9_;
         _loc9_ = _loc9_ - _loc12_;
         _loc11_ = _loc11_;
         _loc8_ = _loc8_;
         _loc8_ = _loc8_ + _loc11_;
         _loc9_ = _loc9_;
         _loc8_ = _loc8_;
         _loc11_ = lf32(_loc2_ + 52);
         _loc9_ = _loc9_;
         _loc12_ = lf32(_loc2_ + 56);
         _loc8_ = _loc8_;
         _loc9_ = _loc11_ - _loc9_;
         _loc8_ = _loc12_ - _loc8_;
         _loc9_ = _loc9_;
         sf32(_loc9_,_loc2_ + 12);
         _loc8_ = _loc8_;
         sf32(_loc8_,_loc2_ + 16);
         _loc8_ = _loc9_ = lf32(_loc3_ + 64);
         _loc11_ = _loc8_ = Math.cos(_loc8_);
         _loc8_ = _loc9_;
         _loc9_ = _loc8_ = Math.sin(_loc8_);
         _loc12_ = -_loc9_;
         sf32(_loc11_,_loc3_ + 20);
         _loc12_ = _loc12_;
         sf32(_loc12_,_loc3_ + 28);
         sf32(_loc8_,_loc3_ + 24);
         sf32(_loc11_,_loc3_ + 32);
         _loc8_ = lf32(_loc3_ + 36);
         _loc12_ = lf32(_loc3_ + 40);
         _loc11_ = _loc11_;
         _loc13_ = _loc11_ * _loc8_;
         _loc14_ = _loc12_ * _loc9_;
         _loc8_ = _loc9_ * _loc8_;
         _loc9_ = _loc13_;
         _loc11_ *= _loc12_;
         _loc12_ = _loc14_;
         _loc8_ = _loc8_;
         _loc11_ = _loc11_;
         _loc12_ = _loc12_;
         _loc9_ = _loc9_;
         _loc9_ = _loc9_ - _loc12_;
         _loc11_ = _loc11_;
         _loc8_ = _loc8_;
         _loc8_ = _loc8_ + _loc11_;
         _loc9_ = _loc9_;
         _loc8_ = _loc8_;
         _loc11_ = lf32(_loc3_ + 52);
         _loc9_ = _loc9_;
         _loc12_ = lf32(_loc3_ + 56);
         _loc8_ = _loc8_;
         _loc9_ = _loc11_ - _loc9_;
         _loc8_ = _loc12_ - _loc8_;
         _loc9_ = _loc9_;
         sf32(_loc9_,_loc3_ + 12);
         _loc8_ = _loc8_;
         sf32(_loc8_,_loc3_ + 16);
         _loc8_ = _loc10_;
         _loc9_ = lf32(cmodule.Box2D._b2_linearSlop);
         _loc8_ = _loc8_;
         _loc1_ = _loc9_ > _loc8_ ? 1 : 0;
         _loc1_ &= 1;
         cmodule.Box2D.mstate.eax = _loc1_;
         cmodule.Box2D.mstate.esp = cmodule.Box2D.mstate.ebp;
         cmodule.Box2D.mstate.ebp = li32(cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.esp += 4;
         cmodule.Box2D.mstate.esp += 4;
      }
   }
}

