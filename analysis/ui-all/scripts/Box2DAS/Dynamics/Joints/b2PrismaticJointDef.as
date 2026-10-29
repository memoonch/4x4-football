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
   
   public class b2PrismaticJointDef extends b2JointDef
   {
      
      public var localAnchorA:b2Vec2;
      
      public var localAnchorB:b2Vec2;
      
      public var localAxis1:b2Vec2;
      
      public function b2PrismaticJointDef()
      {
         super();
         _ptr = lib.b2PrismaticJointDef_new();
         this.localAnchorA = new b2Vec2(_ptr + 20);
         this.localAnchorB = new b2Vec2(_ptr + 28);
         this.localAxis1 = new b2Vec2(_ptr + 36);
      }
      
      override public function create(param1:b2World, param2:IEventDispatcher = null) : b2Joint
      {
         return new b2PrismaticJoint(param1,this,param2);
      }
      
      override public function destroy() : void
      {
         lib.b2PrismaticJointDef_delete(_ptr);
         super.destroy();
      }
      
      public function Initialize(param1:b2Body, param2:b2Body, param3:V2, param4:V2) : void
      {
         bodyA = param1;
         bodyB = param2;
         this.localAnchorA.v2 = bodyA.GetLocalPoint(param3);
         this.localAnchorB.v2 = bodyB.GetLocalPoint(param3);
         this.localAxis1.v2 = bodyA.GetLocalVector(param4);
         this.referenceAngle = bodyB.GetAngle() - bodyA.GetAngle();
      }
      
      public function get referenceAngle() : Number
      {
         return mem._mrf(_ptr + 44);
      }
      
      public function set referenceAngle(param1:Number) : void
      {
         mem._mwf(_ptr + 44,param1);
      }
      
      public function get enableLimit() : Boolean
      {
         return mem._mru8(_ptr + 48) == 1;
      }
      
      public function set enableLimit(param1:Boolean) : void
      {
         mem._mw8(_ptr + 48,param1 ? 1 : 0);
      }
      
      public function get lowerTranslation() : Number
      {
         return mem._mrf(_ptr + 52);
      }
      
      public function set lowerTranslation(param1:Number) : void
      {
         mem._mwf(_ptr + 52,param1);
      }
      
      public function get upperTranslation() : Number
      {
         return mem._mrf(_ptr + 56);
      }
      
      public function set upperTranslation(param1:Number) : void
      {
         mem._mwf(_ptr + 56,param1);
      }
      
      public function get enableMotor() : Boolean
      {
         return mem._mru8(_ptr + 60) == 1;
      }
      
      public function set enableMotor(param1:Boolean) : void
      {
         mem._mw8(_ptr + 60,param1 ? 1 : 0);
      }
      
      public function get maxMotorForce() : Number
      {
         return mem._mrf(_ptr + 64);
      }
      
      public function set maxMotorForce(param1:Number) : void
      {
         mem._mwf(_ptr + 64,param1);
      }
      
      public function get motorSpeed() : Number
      {
         return mem._mrf(_ptr + 68);
      }
      
      public function set motorSpeed(param1:Number) : void
      {
         mem._mwf(_ptr + 68,param1);
      }
   }
}

