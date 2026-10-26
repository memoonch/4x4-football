package Box2DAS.Dynamics.Joints
{
   import Box2DAS.Common.V2;
   import Box2DAS.Common.b2Def;
   import Box2DAS.Common.b2Vec2;
   import Box2DAS.Common.b2Vec3;
   import Box2DAS.Dynamics.b2World;
   import flash.events.IEventDispatcher;
   
   public class b2RevoluteJoint extends b2Joint
   {
      
      public var m_localAnchor1:b2Vec2;
      
      public var m_localAnchor2:b2Vec2;
      
      public var m_impulse:b2Vec3;
      
      public function b2RevoluteJoint(param1:b2World, param2:b2RevoluteJointDef = null, param3:IEventDispatcher = null)
      {
         param2 ||= b2Def.revoluteJoint;
         super(param1,param2,param3);
         this.m_localAnchor1 = new b2Vec2(_ptr + 96);
         this.m_localAnchor2 = new b2Vec2(_ptr + 104);
         this.m_impulse = new b2Vec3(_ptr + 112);
      }
      
      override public function GetAnchorA() : V2
      {
         return m_bodyA.GetWorldPoint(this.m_localAnchor1.v2);
      }
      
      override public function GetAnchorB() : V2
      {
         return m_bodyB.GetWorldPoint(this.m_localAnchor2.v2);
      }
      
      override public function GetReactionForce(param1:Number) : V2
      {
         return new V2(this.m_impulse.x,this.m_impulse.y).multiplyN(param1);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.m_impulse.z;
      }
      
      public function GetJointAngle() : Number
      {
         return m_bodyB.m_sweep.a - m_bodyA.m_sweep.a - this.m_referenceAngle;
      }
      
      public function GetJointSpeed() : Number
      {
         return m_bodyB.m_angularVelocity - m_bodyA.m_angularVelocity;
      }
      
      override public function IsLimitEnabled() : Boolean
      {
         return this.m_enableLimit;
      }
      
      override public function EnableLimit(param1:Boolean) : void
      {
         WakeUp();
         this.m_enableLimit = param1;
      }
      
      override public function GetLowerLimit() : Number
      {
         return this.m_lowerAngle;
      }
      
      override public function GetUpperLimit() : Number
      {
         return this.m_upperAngle;
      }
      
      override public function SetLimits(param1:Number, param2:Number) : void
      {
         WakeUp();
         this.m_lowerAngle = param1;
         this.m_upperAngle = param2;
      }
      
      override public function SetLowerLimit(param1:Number) : void
      {
         WakeUp();
         this.m_lowerAngle = param1;
      }
      
      override public function SetUpperLimit(param1:Number) : void
      {
         WakeUp();
         this.m_upperAngle = param1;
      }
      
      override public function IsMotorEnabled() : Boolean
      {
         return this.m_enableMotor;
      }
      
      override public function EnableMotor(param1:Boolean) : void
      {
         WakeUp();
         this.m_enableMotor = param1;
      }
      
      override public function SetMotorSpeed(param1:Number) : void
      {
         WakeUp();
         this.m_motorSpeed = param1;
      }
      
      override public function GetMotorSpeed() : Number
      {
         return this.m_motorSpeed;
      }
      
      override public function SetMaxMotorTorque(param1:Number) : void
      {
         WakeUp();
         this.m_maxMotorTorque = param1;
      }
      
      override public function GetMaxMotorTorque() : Number
      {
         return this.m_maxMotorTorque;
      }
      
      public function GetMotorTorque() : Number
      {
         return this.m_motorImpulse;
      }
      
      public function get m_motorImpulse() : Number
      {
         return mem._mrf(_ptr + 124);
      }
      
      public function set m_motorImpulse(param1:Number) : void
      {
         mem._mwf(_ptr + 124,param1);
      }
      
      public function get m_motorMass() : Number
      {
         return mem._mrf(_ptr + 164);
      }
      
      public function set m_motorMass(param1:Number) : void
      {
         mem._mwf(_ptr + 164,param1);
      }
      
      public function get m_enableMotor() : Boolean
      {
         return mem._mru8(_ptr + 168) == 1;
      }
      
      public function set m_enableMotor(param1:Boolean) : void
      {
         mem._mw8(_ptr + 168,param1 ? 1 : 0);
      }
      
      public function get m_maxMotorTorque() : Number
      {
         return mem._mrf(_ptr + 172);
      }
      
      public function set m_maxMotorTorque(param1:Number) : void
      {
         mem._mwf(_ptr + 172,param1);
      }
      
      public function get m_motorSpeed() : Number
      {
         return mem._mrf(_ptr + 176);
      }
      
      public function set m_motorSpeed(param1:Number) : void
      {
         mem._mwf(_ptr + 176,param1);
      }
      
      public function get m_enableLimit() : Boolean
      {
         return mem._mru8(_ptr + 180) == 1;
      }
      
      public function set m_enableLimit(param1:Boolean) : void
      {
         mem._mw8(_ptr + 180,param1 ? 1 : 0);
      }
      
      public function get m_referenceAngle() : Number
      {
         return mem._mrf(_ptr + 184);
      }
      
      public function set m_referenceAngle(param1:Number) : void
      {
         mem._mwf(_ptr + 184,param1);
      }
      
      public function get m_lowerAngle() : Number
      {
         return mem._mrf(_ptr + 188);
      }
      
      public function set m_lowerAngle(param1:Number) : void
      {
         mem._mwf(_ptr + 188,param1);
      }
      
      public function get m_upperAngle() : Number
      {
         return mem._mrf(_ptr + 192);
      }
      
      public function set m_upperAngle(param1:Number) : void
      {
         mem._mwf(_ptr + 192,param1);
      }
      
      public function get m_limitState() : int
      {
         return mem._mrs16(_ptr + 196);
      }
      
      public function set m_limitState(param1:int) : void
      {
         mem._mw16(_ptr + 196,param1);
      }
   }
}

