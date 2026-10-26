package cmodule.Box2D
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZN23b2EdgeAndPolygonContact8EvaluateEP10b2ManifoldRK11b2TransformS4_ extends Machine
   {
      
      public static const intRegCount:int = 5;
      
      public static const NumberRegCount:int = 0;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public function FSM__ZN23b2EdgeAndPolygonContact8EvaluateEP10b2ManifoldRK11b2TransformS4_()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZN23b2EdgeAndPolygonContact8EvaluateEP10b2ManifoldRK11b2TransformS4_ = null;
         _loc1_ = new FSM__ZN23b2EdgeAndPolygonContact8EvaluateEP10b2ManifoldRK11b2TransformS4_();
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
               mstate.esp -= 400;
               this.i0 = mstate.ebp + -400;
               this.i1 = li32(mstate.ebp + 8);
               this.i2 = li32(this.i1 + 52);
               this.i1 = li32(this.i1 + 48);
               this.i2 = li32(this.i2 + 16);
               this.i1 = li32(this.i1 + 16);
               mstate.esp -= 20;
               this.i3 = li32(mstate.ebp + 16);
               this.i4 = li32(mstate.ebp + 20);
               si32(this.i0,mstate.esp);
               si32(this.i1,mstate.esp + 4);
               si32(this.i3,mstate.esp + 8);
               si32(this.i2,mstate.esp + 12);
               si32(this.i4,mstate.esp + 16);
               mstate.esp -= 4;
               FSM__ZN12b2EPColliderC1EPK11b2EdgeShapeRK11b2TransformPK14b2PolygonShapeS5_.start();
               break;
            case 1:
               break;
            case 2:
               mstate.esp += 8;
               mstate.esp = mstate.ebp;
               mstate.ebp = li32(mstate.esp);
               mstate.esp += 4;
               mstate.esp += 4;
               mstate.gworker = caller;
               return;
            default:
               throw "Invalid state in __ZN23b2EdgeAndPolygonContact8EvaluateEP10b2ManifoldRK11b2TransformS4_";
         }
         mstate.esp += 20;
         mstate.esp -= 8;
         this.i1 = li32(mstate.ebp + 12);
         si32(this.i0,mstate.esp);
         si32(this.i1,mstate.esp + 4);
         state = 2;
         mstate.esp -= 4;
         FSM__ZN12b2EPCollider7CollideEP10b2Manifold.start();
      }
   }
}

