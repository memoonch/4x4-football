package Box2DAS.Dynamics.Joints
{
   import Box2DAS.Common.V2;
   import Box2DAS.Common.b2Def;
   import Box2DAS.Common.b2Vec2;
   import Box2DAS.Common.b2Vec3;
   import Box2DAS.Dynamics.b2World;
   import flash.events.IEventDispatcher;
   
   public class b2PrismaticJoint extends b2Joint
   {
      
      public var m_localAnchor1:b2Vec2;
      
      public var m_localAnchor2:b2Vec2;
      
      public var m_localXAxis1:b2Vec2;
      
      public var m_localYAxis1:b2Vec2;
      
      public var m_axis:b2Vec2;
      
      public var m_perp:b2Vec2;
      
      public var m_impulse:b2Vec3;
      
      public function b2PrismaticJoint(param1:b2World, param2:b2PrismaticJointDef = null, param3:IEventDispatcher = null)
      {
         param2 ||= b2Def.prismaticJoint;
         super(param1,param2,param3);
         this.m_localAnchor1 = new b2Vec2(_ptr + 96);
         this.m_localAnchor2 = new b2Vec2(_ptr + 104);
         this.m_localXAxis1 = new b2Vec2(_ptr + 112);
         this.m_localYAxis1 = new b2Vec2(_ptr + 120);
         this.m_axis = new b2Vec2(_ptr + 132);
         this.m_perp = new b2Vec2(_ptr + 140);
         this.m_impulse = new b2Vec3(_ptr + 200);
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
         return this.m_perp.v2.multiplyN(this.m_impulse.x).add(this.m_axis.v2.multiplyN(this.m_motorImpulse + this.m_impulse.z)).multiplyN(param1);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.m_impulse.y;
      }
      
      public function GetJointTranslation() : Number
      {
         var _loc1_:V2 = m_bodyA.GetWorldPoint(this.m_localAnchor1.v2);
         var _loc2_:V2 = m_bodyB.GetWorldPoint(this.m_localAnchor2.v2);
         return V2.subtract(_loc2_,_loc1_).dot(m_bodyA.GetWorldVector(this.m_localXAxis1.v2));
      }
      
      public function GetJointSpeed() : Number
      {
         var _loc1_:V2 = m_bodyA.m_xf.xf.r.multiplyV(this.m_localAnchor1.v2.subtract(m_bodyA.GetLocalCenter()));
         var _loc2_:V2 = m_bodyB.m_xf.xf.r.multiplyV(this.m_localAnchor2.v2.subtract(m_bodyB.GetLocalCenter()));
         var _loc3_:V2 = m_bodyA.m_sweep.c.v2.add(_loc1_).subtract(m_bodyB.m_sweep.c.v2.add(_loc2_));
         var _loc4_:V2 = m_bodyA.GetWorldVector(this.m_localXAxis1.v2);
         var _loc5_:V2 = m_bodyA.m_linearVelocity.v2;
         var _loc6_:V2 = m_bodyB.m_linearVelocity.v2;
         var _loc7_:Number = m_bodyA.m_angularVelocity;
         var _loc8_:Number = m_bodyB.m_angularVelocity;
         return _loc3_.dot(V2.crossNV(_loc7_,_loc4_)) + _loc4_.dot(_loc6_.add(V2.crossNV(_loc8_,_loc2_).subtract(_loc5_).subtract(V2.crossNV(_loc7_,_loc1_))));
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
         return this.m_lowerTranslation;
      }
      
      override public function GetUpperLimit() : Number
      {
         return this.m_upperTranslation;
      }
      
      override public function SetLimits(param1:Number, param2:Number) : void
      {
         WakeUp();
         this.m_lowerTranslation = param1;
         this.m_upperTranslation = param2;
      }
      
      override public function SetLowerLimit(param1:Number) : void
      {
         WakeUp();
         this.m_lowerTranslation = param1;
      }
      
      override public function SetUpperLimit(param1:Number) : void
      {
         WakeUp();
         this.m_upperTranslation = param1;
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
      
      override public function SetMaxMotorForce(param1:Number) : void
      {
         WakeUp();
         this.m_maxMotorForce = param1;
      }
      
      override public function GetMaxMotorForce() : Number
      {
         return this.m_maxMotorForce;
      }
      
      public function GetMotorForce() : Number
      {
         return this.m_motorImpulse;
      }
      
      public function AtLowerLimit() : Boolean
      {
         return this.m_limitState == e_equalLimits || this.m_limitState == b2Joint.e_atLowerLimit;
      }
      
      public function AtUpperLimit() : Boolean
      {
         return this.m_limitState == e_equalLimits || this.m_limitState == b2Joint.e_atUpperLimit;
      }
      
      public function AtLimit() : Boolean
      {
         return this.AtLowerLimit() || this.AtUpperLimit();
      }
      
      public function get m_refAngle() : Number
      {
         return mem._mrf(_ptr + 128);
      }
      
      public function set m_refAngle(param1:Number) : void
      {
         mem._mwf(_ptr + 128,param1);
      }
      
      public function get m_s1() : Number
      {
         return mem._mrf(_ptr + 148);
      }
      
      public function set m_s1(param1:Number) : void
      {
         mem._mwf(_ptr + 148,param1);
      }
      
      public function get m_s2() : Number
      {
         return mem._mrf(_ptr + 152);
      }
      
      public function set m_s2(param1:Number) : void
      {
         mem._mwf(_ptr + 152,param1);
      }
      
      public function get m_a1() : Number
      {
         return mem._mrf(_ptr + 156);
      }
      
      public function set m_a1(param1:Number) : void
      {
         mem._mwf(_ptr + 156,param1);
      }
      
      public function get m_a2() : Number
      {
         return mem._mrf(_ptr + 160);
      }
      
      public function set m_a2(param1:Number) : void
      {
         mem._mwf(_ptr + 160,param1);
      }
      
      public function get m_motorMass() : Number
      {
         return mem._mrf(_ptr + 212);
      }
      
      public function set m_motorMass(param1:Number) : void
      {
         mem._mwf(_ptr + 212,param1);
      }
      
      public function get m_motorImpulse() : Number
      {
         return mem._mrf(_ptr + 216);
      }
      
      public function set m_motorImpulse(param1:Number) : void
      {
         mem._mwf(_ptr + 216,param1);
      }
      
      public function get m_lowerTranslation() : Number
      {
         return mem._mrf(_ptr + 220);
      }
      
      public function set m_lowerTranslation(param1:Number) : void
      {
         mem._mwf(_ptr + 220,param1);
      }
      
      public function get m_upperTranslation() : Number
      {
         return mem._mrf(_ptr + 224);
      }
      
      public function set m_upperTranslation(param1:Number) : void
      {
         mem._mwf(_ptr + 224,param1);
      }
      
      public function get m_maxMotorForce() : Number
      {
         return mem._mrf(_ptr + 228);
      }
      
      public function set m_maxMotorForce(param1:Number) : void
      {
         mem._mwf(_ptr + 228,param1);
      }
      
      public function get m_motorSpeed() : Number
      {
         return mem._mrf(_ptr + 232);
      }
      
      public function set m_motorSpeed(param1:Number) : void
      {
         mem._mwf(_ptr + 232,param1);
      }
      
      public function get m_enableLimit() : Boolean
      {
         return mem._mru8(_ptr + 236) == 1;
      }
      
      public function set m_enableLimit(param1:Boolean) : void
      {
         mem._mw8(_ptr + 236,param1 ? 1 : 0);
      }
      
      public function get m_enableMotor() : Boolean
      {
         return mem._mru8(_ptr + 237) == 1;
      }
      
      public function set m_enableMotor(param1:Boolean) : void
      {
         mem._mw8(_ptr + 237,param1 ? 1 : 0);
      }
      
      public function get m_limitState() : int
      {
         return mem._mrs16(_ptr + 240);
      }
      
      public function set m_limitState(param1:int) : void
      {
         mem._mw16(_ptr + 240,param1);
      }
   }
}

