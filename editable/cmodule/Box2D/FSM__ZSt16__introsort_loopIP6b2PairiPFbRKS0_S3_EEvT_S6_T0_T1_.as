package cmodule.Box2D
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZSt16__introsort_loopIP6b2PairiPFbRKS0_S3_EEvT_S6_T0_T1_ extends Machine
   {
      
      public function FSM__ZSt16__introsort_loopIP6b2PairiPFbRKS0_S3_EEvT_S6_T0_T1_()
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
         cmodule.Box2D.mstate.esp -= 32;
         _loc1_ = li32(cmodule.Box2D.mstate.ebp + 8);
         _loc2_ = li32(cmodule.Box2D.mstate.ebp + 12);
         _loc3_ = li32(cmodule.Box2D.mstate.ebp + 16);
         _loc4_ = _loc1_;
         _loc5_ = _loc2_ - _loc1_;
         if(_loc5_ >= 204)
         {
            _loc5_ = 0;
            _loc6_ = _loc3_ + -1;
            _loc7_ = _loc1_ + 4;
            _loc8_ = _loc1_;
            while(true)
            {
               if(_loc5_ == _loc3_)
               {
                  _loc5_ = _loc2_ - _loc4_;
                  _loc6_ = _loc2_;
                  if(_loc5_ >= 24)
                  {
                     _loc3_ = cmodule.Box2D.mstate.ebp + -16;
                     _loc6_ -= _loc4_;
                     _loc6_ = _loc6_ / 12;
                     _loc6_ = _loc6_ + -2;
                     _loc9_ = _loc6_ >>> 31;
                     _loc10_ = _loc5_ / 12;
                     _loc6_ += _loc9_;
                     _loc9_ = _loc10_ + -2;
                     _loc11_ = _loc9_ >>> 31;
                     _loc6_ >>= 1;
                     _loc9_ += _loc11_;
                     _loc11_ = _loc6_ * 12;
                     _loc9_ >>= 1;
                     _loc11_ = _loc4_ + _loc11_;
                     _loc12_ = 0;
                     _loc13_ = _loc3_ + 8;
                     _loc14_ = _loc3_ + 4;
                     _loc15_ = _loc13_;
                     _loc16_ = _loc3_;
                     while(true)
                     {
                        _loc17_ = li32(_loc11_);
                        si32(_loc17_,_loc16_);
                        _loc17_ = li32(_loc11_ + 4);
                        si32(_loc17_,_loc14_);
                        _loc17_ = li32(_loc11_ + 8);
                        si32(_loc17_,_loc13_);
                        _loc17_ = li32(_loc15_);
                        _loc18_ = li32(_loc3_);
                        _loc19_ = li32(_loc3_ + 4);
                        cmodule.Box2D.mstate.esp -= 24;
                        si32(_loc1_,cmodule.Box2D.mstate.esp);
                        si32(_loc6_,cmodule.Box2D.mstate.esp + 4);
                        si32(_loc10_,cmodule.Box2D.mstate.esp + 8);
                        si32(_loc18_,cmodule.Box2D.mstate.esp + 12);
                        si32(_loc19_,cmodule.Box2D.mstate.esp + 16);
                        si32(_loc17_,cmodule.Box2D.mstate.esp + 20);
                        cmodule.Box2D.mstate.esp -= 4;
                        FSM__ZSt13__adjust_heapIP6b2PairiS0_PFbRKS0_S3_EEvT_T0_S7_T1_T2_.start();
                        cmodule.Box2D.mstate.esp += 24;
                        if(_loc12_ == _loc9_)
                        {
                           break;
                        }
                        _loc11_ += -12;
                        _loc6_ += -1;
                        _loc12_ += 1;
                     }
                  }
                  if(_loc5_ >= 24)
                  {
                     _loc10_ = cmodule.Box2D.mstate.ebp + -32;
                     _loc3_ = 0;
                     _loc11_ = _loc1_ + 8;
                     _loc12_ = _loc10_ + 8;
                     _loc5_ = _loc10_ + 4;
                     _loc9_ = _loc12_;
                     _loc6_ = _loc10_;
                     do
                     {
                        _loc13_ = 0;
                        _loc14_ = _loc3_ ^ -1;
                        _loc14_ = _loc14_ * 12;
                        _loc14_ = _loc2_ + _loc14_;
                        _loc15_ = li32(_loc14_);
                        _loc16_ = li32(_loc14_ + 4);
                        _loc17_ = li32(_loc14_ + 8);
                        si32(_loc15_,_loc6_);
                        si32(_loc16_,_loc5_);
                        si32(_loc17_,_loc12_);
                        _loc15_ = li32(_loc8_);
                        si32(_loc15_,_loc14_);
                        _loc15_ = li32(_loc7_);
                        si32(_loc15_,_loc14_ + 4);
                        _loc15_ = li32(_loc11_);
                        si32(_loc15_,_loc14_ + 8);
                        _loc15_ = li32(_loc9_);
                        _loc16_ = li32(_loc10_);
                        _loc17_ = li32(_loc10_ + 4);
                        _loc14_ -= _loc4_;
                        cmodule.Box2D.mstate.esp -= 24;
                        _loc18_ = _loc14_ / 12;
                        si32(_loc1_,cmodule.Box2D.mstate.esp);
                        si32(_loc13_,cmodule.Box2D.mstate.esp + 4);
                        si32(_loc18_,cmodule.Box2D.mstate.esp + 8);
                        si32(_loc16_,cmodule.Box2D.mstate.esp + 12);
                        si32(_loc17_,cmodule.Box2D.mstate.esp + 16);
                        si32(_loc15_,cmodule.Box2D.mstate.esp + 20);
                        cmodule.Box2D.mstate.esp -= 4;
                        FSM__ZSt13__adjust_heapIP6b2PairiS0_PFbRKS0_S3_EEvT_T0_S7_T1_T2_.start();
                        cmodule.Box2D.mstate.esp += 24;
                        _loc3_ += 1;
                     }
                     while(_loc14_ >= 24);
                  }
                  break;
               }
               _loc9_ = _loc2_ - _loc4_;
               _loc9_ = _loc9_ / 24;
               _loc10_ = _loc9_ * 12;
               _loc10_ = _loc1_ + _loc10_;
               _loc11_ = li32(_loc8_);
               _loc12_ = li32(_loc10_);
               _loc13_ = _loc2_ + -12;
               if(_loc11_ < _loc12_)
               {
                  _loc14_ = 0;
               }
               else if(_loc11_ != _loc12_)
               {
                  _loc14_ = 1;
               }
               else
               {
                  _loc14_ = _loc9_ * 12;
                  _loc14_ = _loc1_ + _loc14_;
                  _loc15_ = li32(_loc7_);
                  _loc14_ = li32(_loc14_ + 4);
                  _loc14_ = _loc15_ >= _loc14_ ? 1 : 0;
               }
               _loc15_ = li32(_loc2_ + -12);
               while(true)
               {
                  _loc14_ &= 1;
                  if(_loc14_ == 0)
                  {
                     if(_loc12_ >= _loc15_)
                     {
                        if(_loc12_ == _loc15_)
                        {
                           _loc9_ *= 12;
                           _loc9_ = _loc1_ + _loc9_;
                           _loc9_ = li32(_loc9_ + 4);
                           _loc12_ = li32(_loc2_ + -8);
                           if(_loc9_ < _loc12_)
                           {
                              addr0524:
                              _loc9_ = _loc10_;
                              break;
                           }
                        }
                        if(_loc11_ >= _loc15_)
                        {
                           if(_loc11_ == _loc15_)
                           {
                              _loc9_ = li32(_loc7_);
                              _loc10_ = li32(_loc2_ + -8);
                              if(_loc9_ < _loc10_)
                              {
                                 addr0488:
                                 _loc9_ = _loc13_;
                                 break;
                                 addr0487:
                              }
                           }
                           addr04b7:
                           _loc9_ = _loc1_;
                           break;
                        }
                        §§goto(addr0488);
                     }
                     §§goto(addr0524);
                  }
                  else
                  {
                     if(_loc11_ >= _loc15_)
                     {
                        if(_loc11_ == _loc15_)
                        {
                           _loc14_ = li32(_loc7_);
                           _loc16_ = li32(_loc2_ + -8);
                           if(_loc14_ < _loc16_)
                           {
                              addr04b6:
                              §§goto(addr04b7);
                           }
                        }
                        if(_loc12_ >= _loc15_)
                        {
                           if(_loc12_ == _loc15_)
                           {
                              _loc9_ *= 12;
                              _loc9_ = _loc1_ + _loc9_;
                              _loc9_ = li32(_loc9_ + 4);
                              _loc12_ = li32(_loc2_ + -8);
                              if(_loc9_ < _loc12_)
                              {
                                 §§goto(addr0487);
                              }
                           }
                           §§goto(addr0524);
                        }
                        §§goto(addr0487);
                     }
                     §§goto(addr04b6);
                  }
               }
               _loc10_ = li32(_loc9_);
               _loc9_ = li32(_loc9_ + 4);
               if(_loc11_ < _loc10_)
               {
                  addr0546:
                  _loc11_ = _loc1_;
                  _loc12_ = _loc2_;
                  while(true)
                  {
                     _loc13_ = 1;
                     _loc14_ = _loc11_;
                     while(true)
                     {
                        _loc15_ = li32(_loc14_ + 12);
                        if(_loc15_ >= _loc10_)
                        {
                           if(_loc15_ != _loc10_)
                           {
                              break;
                           }
                           _loc15_ = li32(_loc14_ + 16);
                           if(_loc15_ >= _loc9_)
                           {
                              break;
                           }
                        }
                        _loc14_ += 12;
                        _loc13_ += 1;
                     }
                     _loc13_ *= 12;
                     _loc13_ = _loc11_ + _loc13_;
                     _loc11_ = _loc12_;
                     _loc12_ = _loc13_;
                     _loc17_ = li32(_loc12_);
                     _loc18_ = li32(_loc12_ + 4);
                     _loc19_ = li32(_loc12_ + 8);
                     _loc14_ *= 12;
                     si32(_loc16_,_loc12_);
                     _loc11_ += _loc14_;
                     _loc14_ = li32(_loc11_ + 4);
                     si32(_loc14_,_loc12_ + 4);
                     _loc14_ = li32(_loc11_ + 8);
                     si32(_loc14_,_loc12_ + 8);
                     si32(_loc17_,_loc15_);
                     si32(_loc18_,_loc11_ + 4);
                     si32(_loc19_,_loc11_ + 8);
                     _loc11_ = _loc12_;
                     _loc12_ = _loc13_;
                  }
                  break;
                  addr0557:
               }
               else
               {
                  while(true)
                  {
                     if(_loc11_ == _loc10_)
                     {
                        _loc11_ = li32(_loc7_);
                        if(_loc11_ < _loc9_)
                        {
                           §§goto(addr0546);
                        }
                     }
                     _loc11_ = _loc2_;
                     _loc12_ = _loc1_;
                     break;
                  }
               }
               _loc13_ = 0;
               do
               {
                  _loc14_ = _loc13_ ^ -1;
                  _loc15_ = _loc14_ * 12;
                  _loc15_ = _loc11_ + _loc15_;
                  _loc16_ = li32(_loc15_);
                  if(_loc10_ < _loc16_)
                  {
                     _loc17_ = 0;
                  }
                  else if(_loc10_ != _loc16_)
                  {
                     _loc17_ = 1;
                  }
                  else
                  {
                     _loc17_ = _loc14_ * 12;
                     _loc17_ = _loc11_ + _loc17_;
                     _loc17_ = li32(_loc17_ + 4);
                     _loc17_ = _loc9_ >= _loc17_ ? 1 : 0;
                  }
                  _loc13_ += 1;
               }
               while(_loc17_ &= 1, _loc17_ == 0);
               _loc13_ = _loc14_ * 12;
               _loc13_ = _loc11_ + _loc13_;
               if(uint(_loc12_) < uint(_loc13_))
               {
                  _loc17_ = li32(_loc12_);
                  _loc18_ = li32(_loc12_ + 4);
                  _loc19_ = li32(_loc12_ + 8);
                  _loc14_ *= 12;
                  si32(_loc16_,_loc12_);
                  _loc11_ += _loc14_;
                  _loc14_ = li32(_loc11_ + 4);
                  si32(_loc14_,_loc12_ + 4);
                  _loc14_ = li32(_loc11_ + 8);
                  si32(_loc14_,_loc12_ + 8);
                  si32(_loc17_,_loc15_);
                  si32(_loc18_,_loc11_ + 4);
                  si32(_loc19_,_loc11_ + 8);
                  _loc11_ = _loc12_;
                  _loc12_ = _loc13_;
                  §§goto(addr0557);
               }
               cmodule.Box2D.mstate.esp -= 12;
               si32(_loc12_,cmodule.Box2D.mstate.esp);
               si32(_loc2_,cmodule.Box2D.mstate.esp + 4);
               si32(_loc6_,cmodule.Box2D.mstate.esp + 8);
               cmodule.Box2D.mstate.esp -= 4;
               FSM__ZSt16__introsort_loopIP6b2PairiPFbRKS0_S3_EEvT_S6_T0_T1_.start();
               cmodule.Box2D.mstate.esp += 12;
               _loc2_ = _loc6_ + -1;
               _loc5_ += 1;
               _loc6_ = _loc12_ - _loc4_;
               if(_loc6_ < 204)
               {
                  break;
               }
               _loc6_ = _loc2_;
               _loc2_ = _loc12_;
            }
         }
         cmodule.Box2D.mstate.esp = cmodule.Box2D.mstate.ebp;
         cmodule.Box2D.mstate.ebp = li32(cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.esp += 4;
         cmodule.Box2D.mstate.esp += 4;
      }
   }
}

