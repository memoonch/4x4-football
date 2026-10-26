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
   
   public final class FSM__ZN13WorldListener12BeginContactEP9b2Contact extends Machine
   {
      
      public static const intRegCount:int = 6;
      
      public static const NumberRegCount:int = 0;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public function FSM__ZN13WorldListener12BeginContactEP9b2Contact()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZN13WorldListener12BeginContactEP9b2Contact = null;
         _loc1_ = new FSM__ZN13WorldListener12BeginContactEP9b2Contact();
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
               this.i0 = li32(mstate.ebp + 12);
               this.i1 = li32(this.i0 + 48);
               this.i2 = li8(this.i1);
               this.i3 = li32(mstate.ebp + 8);
               if(this.i2 == 0)
               {
                  this.i2 = li32(this.i0 + 52);
                  this.i2 = li8(this.i2);
                  if(this.i2 == 0)
                  {
                     break;
                  }
               }
               this.i2 = cmodule.Box2D.__2E_str73280;
               this.i4 = li32(this.i0 + 52);
               this.i4 = li32(this.i4 + 44);
               this.i1 = li32(this.i1 + 44);
               this.i3 = li32(this.i3 + 8);
               mstate.esp -= 24;
               this.i5 = cmodule.Box2D.__2E_str28235;
               si32(this.i2,mstate.esp);
               si32(this.i3,mstate.esp + 4);
               si32(this.i5,mstate.esp + 8);
               si32(this.i0,mstate.esp + 12);
               si32(this.i1,mstate.esp + 16);
               si32(this.i4,mstate.esp + 20);
               state = 1;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_CallTS]();
               return;
            case 1:
               this.i0 = mstate.eax;
               mstate.esp += 24;
               break;
            default:
               throw "Invalid state in __ZN13WorldListener12BeginContactEP9b2Contact";
         }
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp += 4;
         mstate.esp += 4;
         mstate.gworker = caller;
      }
   }
}

