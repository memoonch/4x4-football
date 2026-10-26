package cmodule.Box2D
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZSt16__insertion_sortIP6b2PairPFbRKS0_S3_EEvT_S6_T0_ extends Machine
   {
      
      public function FSM__ZSt16__insertion_sortIP6b2PairPFbRKS0_S3_EEvT_S6_T0_()
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
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         var _loc19_:int = 0;
         cmodule.Box2D.mstate.esp -= 4;
         si32(cmodule.Box2D.mstate.ebp,cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.ebp = cmodule.Box2D.mstate.esp;
         cmodule.Box2D.mstate.esp -= 0;
         _loc1_ = li32(cmodule.Box2D.mstate.ebp + 8);
         _loc2_ = li32(cmodule.Box2D.mstate.ebp + 12);
         if(_loc1_ != _loc2_)
         {
            _loc3_ = _loc1_ + 8;
            _loc4_ = _loc1_ + 4;
            _loc5_ = _loc1_;
            _loc6_ = _loc1_;
            loop0:
            while(true)
            {
               _loc7_ = _loc1_;
               _loc8_ = _loc1_ + 12;
               if(_loc8_ == _loc2_)
               {
                  break;
               }
               _loc8_ = 0;
               _loc9_ = _loc1_;
               while(true)
               {
                  _loc10_ = li32(_loc9_ + 12);
                  _loc11_ = li32(_loc9_ + 16);
                  _loc12_ = li32(_loc9_ + 20);
                  _loc13_ = li32(_loc5_);
                  _loc14_ = _loc7_ + 12;
                  _loc15_ = _loc8_ + 1;
                  if(_loc10_ >= _loc13_)
                  {
                     if(_loc10_ != _loc13_)
                     {
                        break;
                     }
                     _loc13_ = li32(_loc4_);
                     if(_loc11_ >= _loc13_)
                     {
                        break;
                     }
                  }
                  _loc15_ = _loc14_;
                  _loc13_ = _loc14_ - _loc6_;
                  if(_loc13_ >= 12)
                  {
                     _loc13_ = 0;
                     _loc15_ -= _loc6_;
                     _loc15_ = _loc15_ / 12;
                     do
                     {
                        _loc14_ = _loc7_ + _loc13_;
                        _loc16_ = li32(_loc14_);
                        _loc17_ = _loc9_ + _loc13_;
                        si32(_loc16_,_loc17_ + 12);
                        _loc16_ = li32(_loc14_ + 4);
                        si32(_loc16_,_loc17_ + 16);
                        _loc14_ = li32(_loc14_ + 8);
                        si32(_loc14_,_loc17_ + 20);
                        _loc13_ += -12;
                     }
                     while(_loc15_ += -1, _loc15_ >= 1);
                  }
                  si32(_loc10_,_loc5_);
                  si32(_loc11_,_loc4_);
                  si32(_loc12_,_loc3_);
                  _loc9_ = _loc7_ + 12;
                  _loc8_ += 1;
                  _loc10_ = _loc9_;
                  _loc7_ += 24;
                  if(_loc7_ == _loc2_)
                  {
                     break loop0;
                  }
                  _loc7_ = _loc10_;
               }
               _loc9_ = _loc8_ * 12;
               _loc9_ = _loc1_ + _loc9_;
               _loc9_ = li32(_loc9_);
               if(_loc10_ < _loc9_)
               {
                  _loc8_ = 0;
               }
               else if(_loc10_ != _loc9_)
               {
                  _loc8_ = 1;
               }
               else
               {
                  _loc8_ *= 12;
                  _loc8_ = _loc1_ + _loc8_;
                  _loc8_ = li32(_loc8_ + 4);
                  _loc8_ = _loc11_ >= _loc8_ ? 1 : 0;
               }
               _loc9_ = _loc15_ * 12;
               _loc8_ ^= 1;
               _loc9_ = _loc1_ + _loc9_;
               _loc8_ &= 1;
               if(_loc8_ == 0)
               {
                  _loc1_ = _loc7_ + 12;
               }
               else
               {
                  _loc8_ = 0;
                  _loc13_ = -2;
                  _loc16_ = _loc14_ = _loc7_ + 12;
                  while(true)
                  {
                     _loc17_ = li32(_loc14_ + -12);
                     si32(_loc17_,_loc9_);
                     _loc9_ = li32(_loc14_ + -8);
                     si32(_loc9_,_loc16_ + 4);
                     _loc9_ = _loc15_ + _loc13_;
                     _loc17_ = _loc8_ ^ -1;
                     _loc14_ = li32(_loc14_ + -4);
                     _loc17_ = _loc15_ + _loc17_;
                     _loc18_ = _loc9_ * 12;
                     _loc19_ = _loc17_ * 12;
                     si32(_loc14_,_loc16_ + 8);
                     _loc14_ = _loc1_ + _loc18_;
                     _loc14_ = li32(_loc14_);
                     _loc18_ = _loc1_ + _loc19_;
                     if(_loc10_ < _loc14_)
                     {
                        _loc9_ = 0;
                     }
                     else if(_loc10_ != _loc14_)
                     {
                        _loc9_ = 1;
                     }
                     else
                     {
                        _loc9_ *= 12;
                        _loc9_ = _loc1_ + _loc9_;
                        _loc9_ = li32(_loc9_ + 4);
                        _loc9_ = _loc11_ >= _loc9_ ? 1 : 0;
                     }
                     _loc14_ = _loc17_ * 12;
                     _loc13_ += -1;
                     _loc8_ += 1;
                     _loc17_ = _loc1_ + _loc14_;
                     _loc9_ &= 1;
                     if(_loc9_ != 0)
                     {
                        break;
                     }
                     _loc16_ = _loc18_;
                     _loc14_ = _loc18_;
                     _loc9_ = _loc17_;
                  }
                  _loc1_ = _loc18_;
                  _loc9_ = _loc17_;
               }
               _loc8_ = _loc9_;
               si32(_loc10_,_loc8_);
               si32(_loc11_,_loc1_ + 4);
               si32(_loc12_,_loc1_ + 8);
               _loc1_ = _loc7_ + 12;
            }
         }
         cmodule.Box2D.mstate.esp = cmodule.Box2D.mstate.ebp;
         cmodule.Box2D.mstate.ebp = li32(cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.esp += 4;
         cmodule.Box2D.mstate.esp += 4;
      }
   }
}

