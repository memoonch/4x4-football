package Box2DAS.Dynamics.Joints
{
   import Box2DAS.Common.V2;
   import Box2DAS.Common.b2Def;
   import Box2DAS.Common.b2Mat22;
   import Box2DAS.Common.b2Vec2;
   import Box2DAS.Dynamics.b2World;
   import flash.events.IEventDispatcher;
   
   public class b2FrictionJoint extends b2Joint
   {
      
      public var m_localAnchorA:b2Vec2;
      
      public var m_localAnchorB:b2Vec2;
      
      public var m_linearMass:b2Mat22;
      
      public var m_linearImpulse:b2Vec2;
      
      public function b2FrictionJoint(param1:b2World, param2:b2FrictionJointDef = null, param3:IEventDispatcher = null)
      {
         param2 ||= b2Def.frictionJoint;
         super(param1,param2,param3);
         this.m_localAnchorA = new b2Vec2(_ptr + 96);
         this.m_localAnchorB = new b2Vec2(_ptr + 104);
         this.m_linearMass = new b2Mat22(_ptr + 112);
         this.m_linearImpulse = new b2Vec2(_ptr + 132);
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
         return this.m_linearImpulse.v2.multiplyN(param1);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.m_angularImpulse;
      }
      
      public function SetMaxForce(param1:Number) : void
      {
         this.m_maxForce = param1;
      }
      
      public function GetMaxForce() : Number
      {
         return this.m_maxForce;
      }
      
      public function SetMaxTorque(param1:Number) : void
      {
         this.m_maxTorque = param1;
      }
      
      public function GetMaxTorque() : Number
      {
         return this.m_maxTorque;
      }
      
      override public function SetMaxMotorForce(param1:Number) : void
      {
         this.m_maxForce = param1;
      }
      
      override public function GetMaxMotorForce() : Number
      {
         return this.m_maxForce;
      }
      
      override public function SetMaxMotorTorque(param1:Number) : void
      {
         this.m_maxTorque = param1;
      }
      
      override public function GetMaxMotorTorque() : Number
      {
         return this.m_maxTorque;
      }
      
      public function get m_angularMass() : Number
      {
         return mem._mrf(_ptr + 128);
      }
      
      public function set m_angularMass(param1:Number) : void
      {
         mem._mwf(_ptr + 128,param1);
      }
      
      public function get m_angularImpulse() : Number
      {
         return mem._mrf(_ptr + 140);
      }
      
      public function set m_angularImpulse(param1:Number) : void
      {
         mem._mwf(_ptr + 140,param1);
      }
      
      public function get m_maxForce() : Number
      {
         return mem._mrf(_ptr + 144);
      }
      
      public function set m_maxForce(param1:Number) : void
      {
         mem._mwf(_ptr + 144,param1);
      }
      
      public function get m_maxTorque() : Number
      {
         return mem._mrf(_ptr + 148);
      }
      
      public function set m_maxTorque(param1:Number) : void
      {
         mem._mwf(_ptr + 148,param1);
      }
   }
}

