package Box2DAS.Dynamics.Joints
{
   import Box2DAS.Common.V2;
   import Box2DAS.Common.b2Def;
   import Box2DAS.Common.b2Vec2;
   import Box2DAS.Dynamics.b2Body;
   import Box2DAS.Dynamics.b2World;
   import flash.events.IEventDispatcher;
   
   public class b2GearJoint extends b2Joint
   {
      
      public var m_ground1:b2Body;
      
      public var m_ground2:b2Body;
      
      public var m_revolute1:b2RevoluteJoint;
      
      public var m_prismatic1:b2PrismaticJoint;
      
      public var m_revolute2:b2RevoluteJoint;
      
      public var m_prismatic2:b2PrismaticJoint;
      
      public var m_groundAnchor1:b2Vec2;
      
      public var m_groundAnchor2:b2Vec2;
      
      public var m_localAnchor1:b2Vec2;
      
      public var m_localAnchor2:b2Vec2;
      
      public var m_J:b2Jacobian;
      
      public function b2GearJoint(param1:b2World, param2:b2GearJointDef = null, param3:IEventDispatcher = null)
      {
         param2 ||= b2Def.gearJoint;
         super(param1,param2,param3);
         this.m_ground1 = param2.joint1.GetBodyA();
         this.m_ground2 = param2.joint2.GetBodyA();
         this.m_revolute1 = param2.joint1 as b2RevoluteJoint;
         this.m_prismatic1 = param2.joint1 as b2PrismaticJoint;
         this.m_revolute2 = param2.joint2 as b2RevoluteJoint;
         this.m_prismatic2 = param2.joint2 as b2PrismaticJoint;
         this.m_groundAnchor1 = new b2Vec2(_ptr + 120);
         this.m_groundAnchor2 = new b2Vec2(_ptr + 128);
         this.m_localAnchor1 = new b2Vec2(_ptr + 136);
         this.m_localAnchor2 = new b2Vec2(_ptr + 144);
         this.m_J = new b2Jacobian(_ptr + 152);
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
         return this.m_J.linear2.v2.multiplyN(this.m_impulse);
      }
      
      override public function GetReactionTorque(param1:Number) : Number
      {
         var _loc2_:V2 = m_bodyB.GetTransform().r.multiplyV(this.m_localAnchor2.v2.subtract(m_bodyB.GetLocalCenter()));
         var _loc3_:V2 = this.m_J.linear2.v2.multiplyN(this.m_impulse);
         var _loc4_:Number = this.m_impulse * this.m_J.angular2 - _loc2_.cross(_loc3_);
         return param1 * _loc4_;
      }
      
      public function get m_constant() : Number
      {
         return mem._mrf(_ptr + 176);
      }
      
      public function set m_constant(param1:Number) : void
      {
         mem._mwf(_ptr + 176,param1);
      }
      
      public function get m_ratio() : Number
      {
         return mem._mrf(_ptr + 180);
      }
      
      public function set m_ratio(param1:Number) : void
      {
         mem._mwf(_ptr + 180,param1);
      }
      
      public function get m_mass() : Number
      {
         return mem._mrf(_ptr + 184);
      }
      
      public function set m_mass(param1:Number) : void
      {
         mem._mwf(_ptr + 184,param1);
      }
      
      public function get m_impulse() : Number
      {
         return mem._mrf(_ptr + 188);
      }
      
      public function set m_impulse(param1:Number) : void
      {
         mem._mwf(_ptr + 188,param1);
      }
   }
}

