package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZN6b2Body19SynchronizeFixturesEv extends Machine
   {
      
      public static const intRegCount:int = 4;
      
      public static const NumberRegCount:int = 6;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var f0:Number;
      
      public var f1:Number;
      
      public var f2:Number;
      
      public var f3:Number;
      
      public var f5:Number;
      
      public var i3:int;
      
      public var f4:Number;
      
      public function FSM__ZN6b2Body19SynchronizeFixturesEv()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZN6b2Body19SynchronizeFixturesEv = null;
         _loc1_ = new FSM__ZN6b2Body19SynchronizeFixturesEv();
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
               mstate.esp -= 32;
               this.i0 = li32(mstate.ebp + 8);
               this.f1 = lf32(this.i0 + 60);
               this.f0 = this.f1;
               this.f0 = Math.cos(this.f0);
               this.f2 = this.f0;
               this.f0 = this.f1;
               this.f0 = Math.sin(this.f0);
               this.f1 = this.f0;
               this.f3 = -this.f1;
               sf32(this.f2,mstate.ebp + -24);
               this.f3 = this.f3;
               sf32(this.f3,mstate.ebp + -16);
               sf32(this.f0,mstate.ebp + -20);
               sf32(this.f2,mstate.ebp + -12);
               this.f0 = lf32(this.i0 + 36);
               this.f3 = lf32(this.i0 + 40);
               this.f2 = this.f2;
               this.f4 = this.f2 * this.f0;
               this.f5 = this.f3 * this.f1;
               this.f0 = this.f1 * this.f0;
               this.f1 = this.f4;
               this.f2 *= this.f3;
               this.f3 = this.f5;
               this.f0 = this.f0;
               this.f2 = this.f2;
               this.f3 = this.f3;
               this.f1 = this.f1;
               this.f1 -= this.f3;
               this.f2 = this.f2;
               this.f0 = this.f0;
               this.f0 += this.f2;
               this.f1 = this.f1;
               this.f0 = this.f0;
               this.f2 = lf32(this.i0 + 44);
               this.f1 = this.f1;
               this.f3 = lf32(this.i0 + 48);
               this.f0 = this.f0;
               this.f1 = this.f2 - this.f1;
               this.f0 = this.f3 - this.f0;
               this.f1 = this.f1;
               sf32(this.f1,mstate.ebp + -32);
               this.f0 = this.f0;
               sf32(this.f0,mstate.ebp + -28);
               this.i1 = li32(this.i0 + 96);
               this.i2 = li32(this.i0 + 108);
               this.i1 += 102872;
               if(this.i2 == 0)
               {
                  break;
               }
               this.i0 += 12;
               §§goto(addr0254);
               break;
            case 1:
               mstate.esp += 16;
               this.i2 = li32(this.i2 + 8);
               if(this.i2 != 0)
               {
                  addr0254:
                  this.i3 = mstate.ebp + -32;
                  mstate.esp -= 16;
                  si32(this.i2,mstate.esp);
                  si32(this.i1,mstate.esp + 4);
                  si32(this.i3,mstate.esp + 8);
                  si32(this.i0,mstate.esp + 12);
                  state = 1;
                  mstate.esp -= 4;
                  FSM__ZN9b2Fixture11SynchronizeEP12b2BroadPhaseRK11b2TransformS4_.start();
                  return;
               }
               break;
            default:
               throw "Invalid state in __ZN6b2Body19SynchronizeFixturesEv";
         }
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp += 4;
         mstate.esp += 4;
         mstate.gworker = caller;
      }
   }
}

