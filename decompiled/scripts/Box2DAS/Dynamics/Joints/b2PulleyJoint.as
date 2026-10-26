package Box2DAS.Dynamics.Joints
{
   import Box2DAS.Common.V2;
   import Box2DAS.Common.b2Def;
   import Box2DAS.Common.b2Vec2;
   import Box2DAS.Dynamics.b2World;
   import flash.events.IEventDispatcher;
   
   public class b2PulleyJoint extends b2Joint
   {
      
      public static var b2_minPulleyLength:Number = 0.1;
      
      public var m_groundAnchor1:b2Vec2;
      
      public var m_groundAnchor2:b2Vec2;
      
      public var m_localAnchor1:b2Vec2;
      
      public var m_localAnchor2:b2Vec2;
      
      public var m_u1:b2Vec2;
      
      public var m_u2:b2Vec2;
      
      public function b2PulleyJoint(param1:b2World, param2:b2PulleyJointDef = null, param3:IEventDispatcher = null)
      {
         param2 ||= b2Def.pulleyJoint;
         super(param1,param2,param3);
         this.m_groundAnchor1 = new b2Vec2(_ptr + 96);
         this.m_groundAnchor2 = new b2Vec2(_ptr + 104);
         this.m_localAnchor1 = new b2Vec2(_ptr + 112);
         this.m_localAnchor2 = new b2Vec2(_ptr + 120);
         this.m_u1 = new b2Vec2(_ptr + 128);
         this.m_u2 = new b2Vec2(_ptr + 136);
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
         return this.m_u2.v2.multiplyN(this.m_impulse * param1);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function GetGroundAnchor1() : V2
      {
         return this.m_groundAnchor1.v2;
      }
      
      public function GetGroundAnchor2() : V2
      {
         return this.m_groundAnchor2.v2;
      }
      
      public function GetLength1() : Number
      {
         return m_bodyA.GetWorldPoint(this.m_localAnchor1.v2).distance(this.m_groundAnchor1.v2);
      }
      
      public function GetLength2() : Number
      {
         return m_bodyB.GetWorldPoint(this.m_localAnchor2.v2).distance(this.m_groundAnchor2.v2);
      }
      
      public function GetRatio() : Number
      {
         return this.m_ratio;
      }
      
      public function get m_constant() : Number
      {
         return mem._mrf(_ptr + 144);
      }
      
      public function set m_constant(param1:Number) : void
      {
         mem._mwf(_ptr + 144,param1);
      }
      
      public function get m_ratio() : Number
      {
         return mem._mrf(_ptr + 148);
      }
      
      public function set m_ratio(param1:Number) : void
      {
         mem._mwf(_ptr + 148,param1);
      }
      
      public function get m_maxLength1() : Number
      {
         return mem._mrf(_ptr + 152);
      }
      
      public function set m_maxLength1(param1:Number) : void
      {
         mem._mwf(_ptr + 152,param1);
      }
      
      public function get m_maxLength2() : Number
      {
         return mem._mrf(_ptr + 156);
      }
      
      public function set m_maxLength2(param1:Number) : void
      {
         mem._mwf(_ptr + 156,param1);
      }
      
      public function get m_pulleyMass() : Number
      {
         return mem._mrf(_ptr + 160);
      }
      
      public function set m_pulleyMass(param1:Number) : void
      {
         mem._mwf(_ptr + 160,param1);
      }
      
      public function get m_limitMass1() : Number
      {
         return mem._mrf(_ptr + 164);
      }
      
      public function set m_limitMass1(param1:Number) : void
      {
         mem._mwf(_ptr + 164,param1);
      }
      
      public function get m_limitMass2() : Number
      {
         return mem._mrf(_ptr + 168);
      }
      
      public function set m_limitMass2(param1:Number) : void
      {
         mem._mwf(_ptr + 168,param1);
      }
      
      public function get m_impulse() : Number
      {
         return mem._mrf(_ptr + 172);
      }
      
      public function set m_impulse(param1:Number) : void
      {
         mem._mwf(_ptr + 172,param1);
      }
      
      public function get m_limitImpulse1() : Number
      {
         return mem._mrf(_ptr + 176);
      }
      
      public function set m_limitImpulse1(param1:Number) : void
      {
         mem._mwf(_ptr + 176,param1);
      }
      
      public function get m_limitImpulse2() : Number
      {
         return mem._mrf(_ptr + 180);
      }
      
      public function set m_limitImpulse2(param1:Number) : void
      {
         mem._mwf(_ptr + 180,param1);
      }
      
      public function get m_state() : int
      {
         return mem._mrs16(_ptr + 184);
      }
      
      public function set m_state(param1:int) : void
      {
         mem._mw16(_ptr + 184,param1);
      }
      
      public function get m_limitState1() : int
      {
         return mem._mrs16(_ptr + 188);
      }
      
      public function set m_limitState1(param1:int) : void
      {
         mem._mw16(_ptr + 188,param1);
      }
      
      public function get m_limitState2() : int
      {
         return mem._mrs16(_ptr + 192);
      }
      
      public function set m_limitState2(param1:int) : void
      {
         mem._mw16(_ptr + 192,param1);
      }
   }
}

