package Box2DAS.Dynamics.Joints
{
   import Box2DAS.Common.V2;
   import Box2DAS.Common.b2Def;
   import Box2DAS.Common.b2Vec2;
   import Box2DAS.Dynamics.b2World;
   import flash.events.IEventDispatcher;
   
   public class b2LineJoint extends b2Joint
   {
      
      public var m_localAnchorA:b2Vec2;
      
      public var m_localAnchorB:b2Vec2;
      
      public var m_localXAxisA:b2Vec2;
      
      public var m_localYAxisA:b2Vec2;
      
      public var m_ax:b2Vec2;
      
      public var m_ay:b2Vec2;
      
      public function b2LineJoint(param1:b2World, param2:b2LineJointDef = null, param3:IEventDispatcher = null)
      {
         param2 ||= b2Def.lineJoint;
         super(param1,param2,param3);
         this.m_localAnchorA = new b2Vec2(_ptr + 96);
         this.m_localAnchorB = new b2Vec2(_ptr + 104);
         this.m_ax = new b2Vec2(_ptr + 128);
         this.m_ay = new b2Vec2(_ptr + 136);
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
         return this.m_ay.v2.multiplyN(this.m_impulse).add(this.m_ax.v2.multiplyN(this.m_springImpulse)).multiplyN(param1);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return param1 * this.m_motorImpulse;
      }
      
      public function GetJointTranslation() : Number
      {
         var _loc1_:V2 = m_bodyA.GetWorldPoint(this.m_localAnchorA.v2);
         var _loc2_:V2 = m_bodyB.GetWorldPoint(this.m_localAnchorB.v2);
         return V2.subtract(_loc2_,_loc1_).dot(m_bodyA.GetWorldVector(this.m_localXAxisA.v2));
      }
      
      public function GetJointSpeed() : Number
      {
         var _loc1_:V2 = m_bodyA.m_xf.xf.r.multiplyV(this.m_localAnchorA.v2.subtract(m_bodyA.GetLocalCenter()));
         var _loc2_:V2 = m_bodyB.m_xf.xf.r.multiplyV(this.m_localAnchorB.v2.subtract(m_bodyB.GetLocalCenter()));
         var _loc3_:V2 = m_bodyA.m_sweep.c.v2.add(_loc1_).subtract(m_bodyB.m_sweep.c.v2.add(_loc2_));
         var _loc4_:V2 = m_bodyA.GetWorldVector(this.m_localXAxisA.v2);
         var _loc5_:V2 = m_bodyA.m_linearVelocity.v2;
         var _loc6_:V2 = m_bodyB.m_linearVelocity.v2;
         var _loc7_:Number = m_bodyA.m_angularVelocity;
         var _loc8_:Number = m_bodyB.m_angularVelocity;
         return _loc3_.dot(V2.crossNV(_loc7_,_loc4_)) + _loc4_.dot(_loc6_.add(V2.crossNV(_loc8_,_loc2_).subtract(_loc5_).subtract(V2.crossNV(_loc7_,_loc1_))));
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
      
      public function GetMotorTorque(param1:Number) : Number
      {
         return param1 * this.m_motorImpulse;
      }
      
      public function get m_sAx() : Number
      {
         return mem._mrf(_ptr + 144);
      }
      
      public function set m_sAx(param1:Number) : void
      {
         mem._mwf(_ptr + 144,param1);
      }
      
      public function get m_sBx() : Number
      {
         return mem._mrf(_ptr + 148);
      }
      
      public function set m_sBx(param1:Number) : void
      {
         mem._mwf(_ptr + 148,param1);
      }
      
      public function get m_sAy() : Number
      {
         return mem._mrf(_ptr + 152);
      }
      
      public function set m_sAy(param1:Number) : void
      {
         mem._mwf(_ptr + 152,param1);
      }
      
      public function get m_sBy() : Number
      {
         return mem._mrf(_ptr + 156);
      }
      
      public function set m_sBy(param1:Number) : void
      {
         mem._mwf(_ptr + 156,param1);
      }
      
      public function get m_mass() : Number
      {
         return mem._mrf(_ptr + 160);
      }
      
      public function set m_mass(param1:Number) : void
      {
         mem._mwf(_ptr + 160,param1);
      }
      
      public function get m_impulse() : Number
      {
         return mem._mrf(_ptr + 164);
      }
      
      public function set m_impulse(param1:Number) : void
      {
         mem._mwf(_ptr + 164,param1);
      }
      
      public function get m_motorMass() : Number
      {
         return mem._mrf(_ptr + 168);
      }
      
      public function set m_motorMass(param1:Number) : void
      {
         mem._mwf(_ptr + 168,param1);
      }
      
      public function get m_motorImpulse() : Number
      {
         return mem._mrf(_ptr + 172);
      }
      
      public function set m_motorImpulse(param1:Number) : void
      {
         mem._mwf(_ptr + 172,param1);
      }
      
      public function get m_springMass() : Number
      {
         return mem._mrf(_ptr + 176);
      }
      
      public function set m_springMass(param1:Number) : void
      {
         mem._mwf(_ptr + 176,param1);
      }
      
      public function get m_springImpulse() : Number
      {
         return mem._mrf(_ptr + 180);
      }
      
      public function set m_springImpulse(param1:Number) : void
      {
         mem._mwf(_ptr + 180,param1);
      }
      
      public function get m_maxMotorTorque() : Number
      {
         return mem._mrf(_ptr + 184);
      }
      
      public function set m_maxMotorTorque(param1:Number) : void
      {
         mem._mwf(_ptr + 184,param1);
      }
      
      public function get m_motorSpeed() : Number
      {
         return mem._mrf(_ptr + 188);
      }
      
      public function set m_motorSpeed(param1:Number) : void
      {
         mem._mwf(_ptr + 188,param1);
      }
      
      public function get m_frequencyHz() : Number
      {
         return mem._mrf(_ptr + 192);
      }
      
      public function set m_frequencyHz(param1:Number) : void
      {
         mem._mwf(_ptr + 192,param1);
      }
      
      public function get m_dampingRatio() : Number
      {
         return mem._mrf(_ptr + 196);
      }
      
      public function set m_dampingRatio(param1:Number) : void
      {
         mem._mwf(_ptr + 196,param1);
      }
      
      public function get m_bias() : Number
      {
         return mem._mrf(_ptr + 200);
      }
      
      public function set m_bias(param1:Number) : void
      {
         mem._mwf(_ptr + 200,param1);
      }
      
      public function get m_gamma() : Number
      {
         return mem._mrf(_ptr + 204);
      }
      
      public function set m_gamma(param1:Number) : void
      {
         mem._mwf(_ptr + 204,param1);
      }
      
      public function get m_enableMotor() : Boolean
      {
         return mem._mru8(_ptr + 208) == 1;
      }
      
      public function set m_enableMotor(param1:Boolean) : void
      {
         mem._mw8(_ptr + 208,param1 ? 1 : 0);
      }
   }
}

