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
   
   public class b2FrictionJointDef extends b2JointDef
   {
      
      public var localAnchorA:b2Vec2;
      
      public var localAnchorB:b2Vec2;
      
      public function b2FrictionJointDef()
      {
         super();
         _ptr = lib.b2FrictionJointDef_new();
         this.localAnchorA = new b2Vec2(_ptr + 20);
         this.localAnchorB = new b2Vec2(_ptr + 28);
      }
      
      override public function create(param1:b2World, param2:IEventDispatcher = null) : b2Joint
      {
         return new b2FrictionJoint(param1,this,param2);
      }
      
      override public function destroy() : void
      {
         lib.b2FrictionJointDef_delete(_ptr);
         super.destroy();
      }
      
      public function Initialize(param1:b2Body, param2:b2Body, param3:V2) : void
      {
         bodyA = param1;
         bodyB = param2;
         this.localAnchorA.v2 = bodyA.GetLocalPoint(param3);
         this.localAnchorB.v2 = bodyB.GetLocalPoint(param3);
      }
      
      public function get maxForce() : Number
      {
         return mem._mrf(_ptr + 36);
      }
      
      public function set maxForce(param1:Number) : void
      {
         mem._mwf(_ptr + 36,param1);
      }
      
      public function get maxTorque() : Number
      {
         return mem._mrf(_ptr + 40);
      }
      
      public function set maxTorque(param1:Number) : void
      {
         mem._mwf(_ptr + 40,param1);
      }
   }
}

