package cmodule.Box2D
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public final class FSM__UTF8_wcsnrtombs extends Machine
   {
      
      public function FSM__UTF8_wcsnrtombs()
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
         cmodule.Box2D.mstate.esp -= 4;
         si32(cmodule.Box2D.mstate.ebp,cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.ebp = cmodule.Box2D.mstate.esp;
         cmodule.Box2D.mstate.esp -= 16;
         _loc1_ = li32(cmodule.Box2D.mstate.ebp + 8);
         _loc2_ = li32(cmodule.Box2D.mstate.ebp + 12);
         _loc3_ = li32(cmodule.Box2D.mstate.ebp + 16);
         _loc4_ = li32(cmodule.Box2D.mstate.ebp + 20);
         loop2:
         while(true)
         {
            _loc5_ = li32(cmodule.Box2D.mstate.ebp + 24);
            _loc6_ = li32(_loc5_ + 4);
            if(_loc6_ == 0)
            {
               _loc6_ = li32(_loc2_);
               loop3:
               while(true)
               {
                  if(_loc1_ != 0)
                  {
                     _loc7_ = 0;
                     _loc8_ = cmodule.Box2D.mstate.ebp + -16;
                     _loc9_ = _loc7_;
                     _loc10_ = _loc7_;
                     while(true)
                     {
                        _loc12_ = _loc7_;
                        _loc11_ = _loc1_ + _loc12_;
                        _loc7_ = _loc6_;
                        if(_loc4_ != 0)
                        {
                           if(_loc9_ != _loc3_)
                           {
                              _loc13_ = li32(_loc7_);
                              if(uint(_loc13_) <= uint(127))
                              {
                                 si8(_loc13_,_loc11_);
                                 _loc7_ = li32(_loc7_);
                                 if(_loc7_ != 0)
                                 {
                                    _loc7_ = 1;
                                    continue;
                                 }
                                 _loc6_ = 1;
                              }
                              else
                              {
                                 _loc14_ = li8(cmodule.Box2D.___mb_cur_max_2E_b);
                                 _loc14_ = _loc14_ != 0 ? 6 : 0;
                                 if(uint(_loc14_) < uint(_loc4_))
                                 {
                                    cmodule.Box2D.mstate.esp -= 12;
                                    si32(_loc11_,cmodule.Box2D.mstate.esp);
                                    si32(_loc13_,cmodule.Box2D.mstate.esp + 4);
                                    si32(_loc5_,cmodule.Box2D.mstate.esp + 8);
                                    cmodule.Box2D.mstate.esp -= 4;
                                    FSM__UTF8_wcrtomb.start();
                                    _loc11_ = int(cmodule.Box2D.mstate.eax);
                                    cmodule.Box2D.mstate.esp += 12;
                                    if(_loc11_ == -1)
                                    {
                                       addr0410:
                                       _loc6_ = -1;
                                       si32(_loc7_,_loc2_);
                                       break loop3;
                                    }
                                 }
                                 else
                                 {
                                    cmodule.Box2D.mstate.esp -= 12;
                                    si32(_loc8_,cmodule.Box2D.mstate.esp);
                                    si32(_loc13_,cmodule.Box2D.mstate.esp + 4);
                                    si32(_loc5_,cmodule.Box2D.mstate.esp + 8);
                                    cmodule.Box2D.mstate.esp -= 4;
                                    FSM__UTF8_wcrtomb.start();
                                    _loc13_ = int(cmodule.Box2D.mstate.eax);
                                    cmodule.Box2D.mstate.esp += 12;
                                    if(_loc13_ == -1)
                                    {
                                       §§goto(addr0410);
                                    }
                                    else
                                    {
                                       if(uint(_loc13_) > uint(_loc4_))
                                       {
                                          addr0131:
                                          si32(_loc7_,_loc2_);
                                          cmodule.Box2D.mstate.eax = _loc10_;
                                          break loop2;
                                       }
                                       _loc14_ = _loc8_;
                                       _loc15_ = _loc13_;
                                       cmodule.Box2D.memcpy(_loc11_,_loc14_,_loc15_);
                                       _loc11_ = _loc13_;
                                    }
                                 }
                                 _loc7_ = li32(_loc7_);
                                 if(_loc7_ != 0)
                                 {
                                    _loc7_ = _loc11_;
                                    continue;
                                 }
                                 _loc6_ = _loc11_;
                              }
                              _loc7_ = 0;
                              _loc6_ = _loc10_ + _loc6_;
                              si32(_loc7_,_loc2_);
                              addr0210:
                              _loc6_ += -1;
                              break loop3;
                           }
                        }
                        §§goto(addr0131);
                        _loc6_ += 4;
                        _loc9_ += 1;
                        _loc10_ = _loc7_ + _loc10_;
                        _loc4_ -= _loc7_;
                        _loc7_ = _loc12_ + _loc7_;
                     }
                     break loop2;
                  }
                  addr0487:
                  if(_loc3_ != 0)
                  {
                     _loc4_ = 0;
                     _loc1_ = _loc3_ + -1;
                     _loc3_ = -1;
                     _loc2_ = cmodule.Box2D.mstate.ebp + -16;
                     while(true)
                     {
                        _loc7_ = li32(_loc6_);
                        _loc8_ = _loc6_;
                        if(uint(_loc7_) <= uint(127))
                        {
                           _loc7_ = 1;
                           addr01f4:
                           _loc8_ = li32(_loc8_);
                           if(_loc8_ == 0)
                           {
                              _loc6_ = _loc4_ + _loc7_;
                              §§goto(addr0210);
                           }
                           else
                           {
                              _loc6_ += 4;
                              _loc3_ += 1;
                              _loc4_ = _loc7_ + _loc4_;
                              if(_loc1_ != _loc3_)
                              {
                                 continue;
                              }
                              _loc6_ = _loc4_;
                           }
                        }
                        else
                        {
                           cmodule.Box2D.mstate.esp -= 12;
                           si32(_loc2_,cmodule.Box2D.mstate.esp);
                           si32(_loc7_,cmodule.Box2D.mstate.esp + 4);
                           si32(_loc5_,cmodule.Box2D.mstate.esp + 8);
                           cmodule.Box2D.mstate.esp -= 4;
                           FSM__UTF8_wcrtomb.start();
                           _loc7_ = int(cmodule.Box2D.mstate.eax);
                           cmodule.Box2D.mstate.esp += 12;
                           if(_loc7_ != -1)
                           {
                              §§goto(addr01f4);
                           }
                           else
                           {
                              _loc6_ = -1;
                           }
                        }
                     }
                     break loop2;
                  }
                  _loc6_ = 0;
                  _loc1_ = _loc6_;
                  cmodule.Box2D.mstate.eax = _loc1_;
                  break loop2;
                  §§goto(addr0210);
               }
               cmodule.Box2D.mstate.eax = _loc6_;
               break;
            }
            _loc1_ = 22;
            si32(_loc1_,cmodule.Box2D._val_2E_1440);
            _loc1_ = -1;
            §§goto(addr0487);
         }
         cmodule.Box2D.mstate.esp = cmodule.Box2D.mstate.ebp;
         cmodule.Box2D.mstate.ebp = li32(cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.esp += 4;
         cmodule.Box2D.mstate.esp += 4;
      }
   }
}

