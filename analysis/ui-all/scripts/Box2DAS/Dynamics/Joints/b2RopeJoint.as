package Box2DAS.Dynamics.Joints
{
   import Box2DAS.Common.V2;
   import Box2DAS.Common.b2Def;
   import Box2DAS.Common.b2Vec2;
   import Box2DAS.Dynamics.b2World;
   import flash.events.IEventDispatcher;
   
   public class b2RopeJoint extends b2Joint
   {
      
      public var m_localAnchorA:b2Vec2;
      
      public var m_localAnchorB:b2Vec2;
      
      public var m_u:b2Vec2;
      
      public var m_rA:b2Vec2;
      
      public var m_rB:b2Vec2;
      
      public function b2RopeJoint(param1:b2World, param2:b2RopeJointDef = null, param3:IEventDispatcher = null)
      {
         param2 ||= b2Def.ropeJoint;
         super(param1,param2,param3);
         this.m_localAnchorA = new b2Vec2(_ptr + 96);
         this.m_localAnchorB = new b2Vec2(_ptr + 104);
         this.m_u = new b2Vec2(_ptr + 120);
         this.m_rA = new b2Vec2(_ptr + 128);
         this.m_rB = new b2Vec2(_ptr + 136);
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
         return this.m_u.v2.multiplyN(param1 * this.m_impulse);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function get m_maxLength() : Number
      {
         return mem._mrf(_ptr + 112);
      }
      
      public function set m_maxLength(param1:Number) : void
      {
         mem._mwf(_ptr + 112,param1);
      }
      
      public function get m_length() : Number
      {
         return mem._mrf(_ptr + 116);
      }
      
      public function set m_length(param1:Number) : void
      {
         mem._mwf(_ptr + 116,param1);
      }
      
      public function get m_mass() : Number
      {
         return mem._mrf(_ptr + 144);
      }
      
      public function set m_mass(param1:Number) : void
      {
         mem._mwf(_ptr + 144,param1);
      }
      
      public function get m_impulse() : Number
      {
         return mem._mrf(_ptr + 148);
      }
      
      public function set m_impulse(param1:Number) : void
      {
         mem._mwf(_ptr + 148,param1);
      }
      
      public function get m_limitState() : int
      {
         return mem._mrs16(_ptr + 212);
      }
      
      public function set m_limitState(param1:int) : void
      {
         mem._mw16(_ptr + 212,param1);
      }
   }
}

