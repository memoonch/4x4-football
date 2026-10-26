package Box2DAS.Dynamics.Joints
{
   import Box2DAS.Common.V2;
   import Box2DAS.Common.b2Def;
   import Box2DAS.Common.b2Vec2;
   import Box2DAS.Dynamics.b2World;
   import flash.events.IEventDispatcher;
   
   public class b2DistanceJoint extends b2Joint
   {
      
      public var m_localAnchor1:b2Vec2;
      
      public var m_localAnchor2:b2Vec2;
      
      public var m_u:b2Vec2;
      
      public function b2DistanceJoint(param1:b2World, param2:b2DistanceJointDef = null, param3:IEventDispatcher = null)
      {
         param2 ||= b2Def.distanceJoint;
         super(param1,param2,param3);
         this.m_localAnchor1 = new b2Vec2(_ptr + 96);
         this.m_localAnchor2 = new b2Vec2(_ptr + 104);
         this.m_u = new b2Vec2(_ptr + 112);
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
         return this.m_u.v2.multiplyN(this.m_impulse * param1);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      override public function SetFrequency(param1:Number) : void
      {
         this.m_frequencyHz = param1;
      }
      
      override public function GetFrequency() : Number
      {
         return this.m_frequencyHz;
      }
      
      override public function SetDampingRatio(param1:Number) : void
      {
         this.m_dampingRatio = param1;
      }
      
      override public function GetDampingRatio() : Number
      {
         return this.m_dampingRatio;
      }
      
      public function get m_frequencyHz() : Number
      {
         return mem._mrf(_ptr + 120);
      }
      
      public function set m_frequencyHz(param1:Number) : void
      {
         mem._mwf(_ptr + 120,param1);
      }
      
      public function get m_dampingRatio() : Number
      {
         return mem._mrf(_ptr + 124);
      }
      
      public function set m_dampingRatio(param1:Number) : void
      {
         mem._mwf(_ptr + 124,param1);
      }
      
      public function get m_gamma() : Number
      {
         return mem._mrf(_ptr + 128);
      }
      
      public function set m_gamma(param1:Number) : void
      {
         mem._mwf(_ptr + 128,param1);
      }
      
      public function get m_bias() : Number
      {
         return mem._mrf(_ptr + 132);
      }
      
      public function set m_bias(param1:Number) : void
      {
         mem._mwf(_ptr + 132,param1);
      }
      
      public function get m_impulse() : Number
      {
         return mem._mrf(_ptr + 136);
      }
      
      public function set m_impulse(param1:Number) : void
      {
         mem._mwf(_ptr + 136,param1);
      }
      
      public function get m_mass() : Number
      {
         return mem._mrf(_ptr + 140);
      }
      
      public function set m_mass(param1:Number) : void
      {
         mem._mwf(_ptr + 140,param1);
      }
      
      public function get m_length() : Number
      {
         return mem._mrf(_ptr + 144);
      }
      
      public function set m_length(param1:Number) : void
      {
         mem._mwf(_ptr + 144,param1);
      }
   }
}

