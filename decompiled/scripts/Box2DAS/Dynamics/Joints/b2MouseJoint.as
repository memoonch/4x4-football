package Box2DAS.Dynamics.Joints
{
   import Box2DAS.Common.V2;
   import Box2DAS.Common.b2Def;
   import Box2DAS.Common.b2Vec2;
   import Box2DAS.Dynamics.b2World;
   import flash.events.IEventDispatcher;
   
   public class b2MouseJoint extends b2Joint
   {
      
      public var m_localAnchor:b2Vec2;
      
      public var m_target:b2Vec2;
      
      public var m_impulse:b2Vec2;
      
      public var m_C:b2Vec2;
      
      public function b2MouseJoint(param1:b2World, param2:b2MouseJointDef = null, param3:IEventDispatcher = null)
      {
         param2 ||= b2Def.mouseJoint;
         super(param1,param2,param3);
         this.m_localAnchor = new b2Vec2(_ptr + 96);
         this.m_target = new b2Vec2(_ptr + 104);
         this.m_impulse = new b2Vec2(_ptr + 112);
         this.m_C = new b2Vec2(_ptr + 136);
      }
      
      override public function GetAnchorA() : V2
      {
         return this.m_target.v2;
      }
      
      override public function GetAnchorB() : V2
      {
         return m_bodyB.GetWorldPoint(this.m_localAnchor.v2);
      }
      
      override public function GetReactionForce(param1:Number) : V2
      {
         return this.m_impulse.v2.multiplyN(param1);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function SetTarget(param1:V2) : void
      {
         m_bodyB.SetAwake(true);
         this.m_target.v2 = param1;
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
      
      public function SetMaxForce(param1:Number) : void
      {
         this.m_maxForce = param1;
      }
      
      public function GetMaxForce() : Number
      {
         return this.m_maxForce;
      }
      
      override public function SetMaxMotorForce(param1:Number) : void
      {
         this.m_maxForce = param1;
      }
      
      override public function GetMaxMotorForce() : Number
      {
         return this.m_maxForce;
      }
      
      public function get m_maxForce() : Number
      {
         return mem._mrf(_ptr + 144);
      }
      
      public function set m_maxForce(param1:Number) : void
      {
         mem._mwf(_ptr + 144,param1);
      }
      
      public function get m_frequencyHz() : Number
      {
         return mem._mrf(_ptr + 148);
      }
      
      public function set m_frequencyHz(param1:Number) : void
      {
         mem._mwf(_ptr + 148,param1);
      }
      
      public function get m_dampingRatio() : Number
      {
         return mem._mrf(_ptr + 152);
      }
      
      public function set m_dampingRatio(param1:Number) : void
      {
         mem._mwf(_ptr + 152,param1);
      }
      
      public function get m_beta() : Number
      {
         return mem._mrf(_ptr + 156);
      }
      
      public function set m_beta(param1:Number) : void
      {
         mem._mwf(_ptr + 156,param1);
      }
      
      public function get m_gamma() : Number
      {
         return mem._mrf(_ptr + 160);
      }
      
      public function set m_gamma(param1:Number) : void
      {
         mem._mwf(_ptr + 160,param1);
      }
   }
}

