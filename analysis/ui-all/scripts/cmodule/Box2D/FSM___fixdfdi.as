package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si32;
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.system.*;
   import flash.text.*;
   import flash.utils.*;
   
   public final class FSM___fixdfdi extends Machine
   {
      
      public function FSM___fixdfdi()
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
         cmodule.Box2D.mstate.esp -= 4;
         si32(cmodule.Box2D.mstate.ebp,cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.ebp = cmodule.Box2D.mstate.esp;
         cmodule.Box2D.mstate.esp -= 0;
         _loc4_ = 0;
         _loc5_ = lf64(cmodule.Box2D.mstate.ebp + 8);
         if(_loc5_ < _loc4_)
         {
            _loc4_ = -9223370000000000000;
            if(_loc5_ <= _loc4_)
            {
               _loc1_ = -2147483648;
               _loc2_ = 0;
            }
            else
            {
               _loc1_ = 0;
               cmodule.Box2D.mstate.esp -= 8;
               _loc5_ = -_loc5_;
               sf64(_loc5_,cmodule.Box2D.mstate.esp);
               cmodule.Box2D.mstate.esp -= 4;
               cmodule.Box2D.mstate.funcs[cmodule.Box2D.___fixunsdfdi]();
               _loc2_ = int(cmodule.Box2D.mstate.eax);
               _loc3_ = int(cmodule.Box2D.mstate.edx);
               cmodule.Box2D.mstate.esp += 8;
               _loc2_ = int(cmodule.Box2D.__subc(_loc1_,_loc2_));
               _loc1_ = int(cmodule.Box2D.__sube(_loc1_,_loc3_));
            }
            addr0177:
            cmodule.Box2D.mstate.edx = _loc1_;
            cmodule.Box2D.mstate.eax = _loc2_;
         }
         else
         {
            _loc4_ = 9223370000000000000;
            if(_loc5_ >= _loc4_)
            {
               _loc1_ = 2147483647;
               _loc2_ = -1;
               §§goto(addr0177);
            }
            else
            {
               cmodule.Box2D.mstate.esp -= 8;
               sf64(_loc5_,cmodule.Box2D.mstate.esp);
               cmodule.Box2D.mstate.esp -= 4;
               cmodule.Box2D.mstate.funcs[cmodule.Box2D.___fixunsdfdi]();
               _loc1_ = int(cmodule.Box2D.mstate.eax);
               _loc2_ = int(cmodule.Box2D.mstate.edx);
               cmodule.Box2D.mstate.esp += 8;
               cmodule.Box2D.mstate.edx = _loc2_;
               cmodule.Box2D.mstate.eax = _loc1_;
            }
         }
         cmodule.Box2D.mstate.esp = cmodule.Box2D.mstate.ebp;
         cmodule.Box2D.mstate.ebp = li32(cmodule.Box2D.mstate.esp);
         cmodule.Box2D.mstate.esp += 4;
         cmodule.Box2D.mstate.esp += 4;
      }
   }
}

