package Box2DAS.Dynamics.Joints
{
   import Box2DAS.Common.V2;
   import Box2DAS.Common.b2Def;
   import Box2DAS.Common.b2Mat33;
   import Box2DAS.Common.b2Vec2;
   import Box2DAS.Common.b2Vec3;
   import Box2DAS.Dynamics.b2World;
   import flash.events.IEventDispatcher;
   
   public class b2WeldJoint extends b2Joint
   {
      
      public var m_localAnchorA:b2Vec2;
      
      public var m_localAnchorB:b2Vec2;
      
      public var m_impulse:b2Vec3;
      
      public var m_mass:b2Mat33;
      
      public function b2WeldJoint(param1:b2World, param2:b2WeldJointDef = null, param3:IEventDispatcher = null)
      {
         param2 ||= b2Def.weldJoint;
         super(param1,param2,param3);
         this.m_localAnchorA = new b2Vec2(_ptr + 96);
         this.m_localAnchorB = new b2Vec2(_ptr + 104);
         this.m_impulse = new b2Vec3(_ptr + 116);
         this.m_mass = new b2Mat33(_ptr + 128);
      }
      
      override public function GetAnchorA() : V2
      {
         return m_bodyA.GetWorldPoint(this.m_localAnchorA.v2);
      }
      
      override public function GetAnchorB() : V2
      {
         return m_bodyB.GetWorldPoint(this.m_localAnchorB.v2);
      }
      
      override public function GetReactionForce(param1:Number) : V2
      {
         return new V2(this.m_impulse.x,this.m_impulse.y).multiplyN(param1);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.m_impulse.z;
      }
      
      public function get m_referenceAngle() : Number
      {
         return mem._mrf(_ptr + 112);
      }
      
      public function set m_referenceAngle(param1:Number) : void
      {
         mem._mwf(_ptr + 112,param1);
      }
   }
}

