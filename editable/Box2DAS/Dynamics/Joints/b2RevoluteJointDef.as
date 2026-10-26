package Box2DAS.Dynamics.Joints
{
   import Box2DAS.*;
   import Box2DAS.Collision.*;
   import Box2DAS.Collision.Shapes.*;
   import Box2DAS.Common.*;
   import Box2DAS.Dynamics.*;
   import Box2DAS.Dynamics.Contacts.*;
   import cmodule.Box2D.*;
   import flash.events.*;
   
   public class b2RevoluteJointDef extends b2JointDef
   {
      
      public var localAnchorA:b2Vec2;
      
      public var localAnchorB:b2Vec2;
      
      public function b2RevoluteJointDef()
      {
         super();
         _ptr = lib.b2RevoluteJointDef_new();
         this.localAnchorA = new b2Vec2(_ptr + 20);
         this.localAnchorB = new b2Vec2(_ptr + 28);
      }
      
      override public function create(param1:b2World, param2:IEventDispatcher = null) : b2Joint
      {
         return new b2RevoluteJoint(param1,this,param2);
      }
      
      override public function destroy() : void
      {
         lib.b2RevoluteJointDef_delete(_ptr);
         super.destroy();
      }
      
      public function Initialize(param1:b2Body, param2:b2Body, param3:V2) : void
      {
         bodyA = param1;
         bodyB = param2;
         this.localAnchorA.v2 = bodyA.GetLocalPoint(param3);
         this.localAnchorB.v2 = bodyB.GetLocalPoint(param3);
         this.referenceAngle = bodyB.GetAngle() - bodyA.GetAngle();
      }
      
      public function get referenceAngle() : Number
      {
         return mem._mrf(_ptr + 36);
      }
      
      public function set referenceAngle(param1:Number) : void
      {
         mem._mwf(_ptr + 36,param1);
      }
      
      public function get enableLimit() : Boolean
      {
         return mem._mru8(_ptr + 40) == 1;
      }
      
      public function set enableLimit(param1:Boolean) : void
      {
         mem._mw8(_ptr + 40,param1 ? 1 : 0);
      }
      
      public function get lowerAngle() : Number
      {
         return mem._mrf(_ptr + 44);
      }
      
      public function set lowerAngle(param1:Number) : void
      {
         mem._mwf(_ptr + 44,param1);
      }
      
      public function get upperAngle() : Number
      {
         return mem._mrf(_ptr + 48);
      }
      
      public function set upperAngle(param1:Number) : void
      {
         mem._mwf(_ptr + 48,param1);
      }
      
      public function get enableMotor() : Boolean
      {
         return mem._mru8(_ptr + 52) == 1;
      }
      
      public function set enableMotor(param1:Boolean) : void
      {
         mem._mw8(_ptr + 52,param1 ? 1 : 0);
      }
      
      public function get motorSpeed() : Number
      {
         return mem._mrf(_ptr + 56);
      }
      
      public function set motorSpeed(param1:Number) : void
      {
         mem._mwf(_ptr + 56,param1);
      }
      
      public function get maxMotorTorque() : Number
      {
         return mem._mrf(_ptr + 60);
      }
      
      public function set maxMotorTorque(param1:Number) : void
      {
         mem._mwf(_ptr + 60,param1);
      }
   }
}

