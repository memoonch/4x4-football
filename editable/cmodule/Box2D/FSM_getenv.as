package cmodule.Box2D
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM_getenv extends Machine
   {
      
      public function FSM_getenv()
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
         cmodule.Box2D.mstate.esp -= 4;
         si32(cmodule.Box2D.mstate.ebp,cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.ebp = cmodule.Box2D.mstate.esp;
         cmodule.Box2D.mstate.esp -= 0;
         _loc1_ = li32(cmodule.Box2D.mstate.ebp + 8);
         loop3:
         while(true)
         {
            if(_loc1_ != 0)
            {
               _loc2_ = li32(cmodule.Box2D._environ);
               _loc3_ = _loc2_;
               if(_loc2_ != 0)
               {
                  _loc4_ = _loc1_;
                  while(true)
                  {
                     _loc5_ = li8(_loc4_);
                     _loc6_ = _loc4_;
                     if(_loc5_ == 0)
                     {
                        break;
                     }
                     _loc5_ &= 255;
                     if(_loc5_ == 61)
                     {
                        break;
                     }
                     _loc4_ += 1;
                  }
                  _loc3_ = li32(_loc3_);
                  if(_loc3_ != 0)
                  {
                     _loc2_ += 4;
                     _loc4_ = _loc6_ - _loc1_;
                     loop1:
                     while(true)
                     {
                        _loc5_ = 0;
                        _loc6_ = _loc2_;
                        while(true)
                        {
                           _loc8_ = _loc5_;
                           _loc5_ = _loc1_ + _loc8_;
                           _loc7_ = _loc3_ + _loc8_;
                           if(_loc4_ == _loc8_)
                           {
                              break;
                           }
                           _loc7_ = li8(_loc7_);
                           if(_loc7_ != 0)
                           {
                              _loc5_ = li8(_loc5_);
                              _loc9_ = _loc8_ + 1;
                              _loc7_ &= 255;
                              if(_loc7_ == _loc5_)
                              {
                                 continue;
                              }
                              addr0193:
                              _loc3_ += _loc9_;
                           }
                           else
                           {
                              _loc3_ += _loc8_;
                           }
                           if(_loc4_ == _loc8_)
                           {
                              _loc5_ = li8(_loc3_);
                              _loc3_ += 1;
                              if(_loc5_ == 61)
                              {
                                 _loc1_ = _loc3_;
                                 break loop3;
                              }
                           }
                           _loc3_ = li32(_loc6_);
                           _loc2_ += 4;
                           if(_loc3_ != 0)
                           {
                              continue loop1;
                           }
                           _loc5_ = _loc9_;
                        }
                        _loc3_ += _loc8_;
                        §§goto(addr0193);
                     }
                     break;
                  }
               }
            }
            _loc1_ = 0;
            break;
         }
         cmodule.Box2D.mstate.eax = _loc1_;
         cmodule.Box2D.mstate.esp = cmodule.Box2D.mstate.ebp;
         cmodule.Box2D.mstate.ebp = li32(cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.esp += 4;
         cmodule.Box2D.mstate.esp += 4;
      }
   }
}

