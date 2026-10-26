package cmodule.Box2D
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.system.*;
   import flash.text.*;
   import flash.utils.*;
   
   public final class FSM__ZN13WorldListener8PreSolveEP9b2ContactPK10b2Manifold extends Machine
   {
      
      public static const intRegCount:int = 7;
      
      public static const NumberRegCount:int = 0;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public var i6:int;
      
      public function FSM__ZN13WorldListener8PreSolveEP9b2ContactPK10b2Manifold()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZN13WorldListener8PreSolveEP9b2ContactPK10b2Manifold = null;
         _loc1_ = new FSM__ZN13WorldListener8PreSolveEP9b2ContactPK10b2Manifold();
         cmodule.Box2D.gstate.gworker = _loc1_;
      }
      
      final override public function work() : void
      {
         switch(state)
         {
            case 0:
               mstate.esp -= 4;
               si32(mstate.ebp,mstate.esp);
               mstate.ebp = mstate.esp;
               mstate.esp -= 0;
               this.i0 = li32(mstate.ebp + 8);
               this.i1 = li32(mstate.ebp + 12);
               this.i2 = li32(mstate.ebp + 16);
               this.i3 = li32(this.i1 + 4);
               this.i3 &= 2;
               if(this.i3 != 0)
               {
                  this.i3 = li32(this.i1 + 48);
                  this.i4 = li8(this.i3 + 2);
                  if(this.i4 == 0)
                  {
                     this.i4 = li32(this.i1 + 52);
                     this.i4 = li8(this.i4 + 2);
                     if(this.i4 == 0)
                     {
                        break;
                     }
                  }
                  this.i4 = cmodule.Box2D.__2E_str29236;
                  this.i5 = li32(this.i1 + 52);
                  this.i5 = li32(this.i5 + 44);
                  this.i3 = li32(this.i3 + 44);
                  this.i0 = li32(this.i0 + 8);
                  mstate.esp -= 28;
                  this.i6 = cmodule.Box2D.__2E_str30237;
                  si32(this.i4,mstate.esp);
                  si32(this.i0,mstate.esp + 4);
                  si32(this.i6,mstate.esp + 8);
                  si32(this.i1,mstate.esp + 12);
                  si32(this.i3,mstate.esp + 16);
                  si32(this.i5,mstate.esp + 20);
                  si32(this.i2,mstate.esp + 24);
                  state = 1;
                  mstate.esp -= 4;
                  mstate.funcs[cmodule.Box2D._AS3_CallTS]();
                  return;
               }
               break;
            case 1:
               this.i0 = mstate.eax;
               mstate.esp += 28;
               break;
            default:
               throw "Invalid state in __ZN13WorldListener8PreSolveEP9b2ContactPK10b2Manifold";
         }
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp += 4;
         mstate.esp += 4;
         mstate.gworker = caller;
      }
   }
}

