package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si32;
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.system.*;
   import flash.text.*;
   import flash.utils.*;
   
   public final class FSM__ZN15RayCastCallback13ReportFixtureEP9b2FixtureRK6b2Vec2S4_f extends Machine
   {
      
      public static const intRegCount:int = 5;
      
      public static const NumberRegCount:int = 5;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var f0:Number;
      
      public var i4:int;
      
      public var f2:Number;
      
      public var f3:Number;
      
      public var i3:int;
      
      public var f4:Number;
      
      public var f1:Number;
      
      public function FSM__ZN15RayCastCallback13ReportFixtureEP9b2FixtureRK6b2Vec2S4_f()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZN15RayCastCallback13ReportFixtureEP9b2FixtureRK6b2Vec2S4_f = null;
         _loc1_ = new FSM__ZN15RayCastCallback13ReportFixtureEP9b2FixtureRK6b2Vec2S4_f();
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
               this.i0 = cmodule.Box2D.__2E_str33240;
               this.i1 = li32(mstate.ebp + 20);
               this.i2 = li32(mstate.ebp + 16);
               this.i3 = li32(mstate.ebp + 12);
               this.i4 = li32(mstate.ebp + 8);
               this.f0 = lf32(this.i1 + 4);
               this.f1 = lf32(this.i1);
               this.f2 = lf32(this.i2 + 4);
               this.f3 = lf32(this.i2);
               this.i1 = li32(this.i3 + 44);
               this.i2 = li32(this.i4 + 4);
               mstate.esp -= 56;
               this.f4 = lf32(mstate.ebp + 24);
               this.i3 = 0;
               si32(this.i2,mstate.esp);
               si32(this.i3,mstate.esp + 4);
               si32(this.i0,mstate.esp + 8);
               si32(this.i1,mstate.esp + 12);
               sf64(this.f3,mstate.esp + 16);
               sf64(this.f2,mstate.esp + 24);
               sf64(this.f1,mstate.esp + 32);
               sf64(this.f0,mstate.esp + 40);
               sf64(this.f4,mstate.esp + 48);
               state = 1;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_CallT]();
               return;
            case 1:
               this.i0 = mstate.eax;
               mstate.esp += 56;
               mstate.esp -= 4;
               si32(this.i0,mstate.esp);
               state = 2;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_NumberValue]();
               return;
            case 2:
               this.f0 = mstate.st0;
               mstate.esp += 4;
               mstate.esp -= 4;
               si32(this.i0,mstate.esp);
               state = 3;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Release]();
               return;
            case 3:
               mstate.esp += 4;
               this.f0 = this.f0;
               mstate.st0 = this.f0;
               mstate.esp = mstate.ebp;
               mstate.ebp = li32(mstate.esp);
               mstate.esp += 4;
               mstate.esp += 4;
               mstate.gworker = caller;
               return;
            default:
               throw "Invalid state in __ZN15RayCastCallback13ReportFixtureEP9b2FixtureRK6b2Vec2S4_f";
         }
      }
   }
}

