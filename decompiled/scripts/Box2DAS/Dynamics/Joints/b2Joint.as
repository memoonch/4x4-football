package Box2DAS.Dynamics.Joints
{
   import Box2DAS.*;
   import Box2DAS.Collision.*;
   import Box2DAS.Collision.Shapes.*;
   import Box2DAS.Common.*;
   import Box2DAS.Dynamics.*;
   import Box2DAS.Dynamics.Contacts.*;
   import cmodule.Box2D.*;
   import flash.events.*;
   
   public class b2Joint extends b2EventDispatcher
   {
      
      public static const e_unknownJoint:int = 0;
      
      public static const e_revoluteJoint:int = 1;
      
      public static const e_prismaticJoint:int = 2;
      
      public static const e_distanceJoint:int = 3;
      
      public static const e_pulleyJoint:int = 4;
      
      public static const e_mouseJoint:int = 5;
      
      public static const e_gearJoint:int = 6;
      
      public static const e_lineJoint:int = 7;
      
      public static const e_fixedJoint:int = 8;
      
      public static const e_ropeJoint:int = 9;
      
      public static const e_inactiveLimit:int = 0;
      
      public static const e_atLowerLimit:int = 1;
      
      public static const e_atUpperLimit:int = 2;
      
      public static const e_equalLimits:int = 3;
      
      public var m_world:b2World;
      
      public var m_prev:b2Joint;
      
      public var m_next:b2Joint;
      
      public var m_bodyA:b2Body;
      
      public var m_bodyB:b2Body;
      
      public var m_userData:*;
      
      public function b2Joint(param1:b2World, param2:b2JointDef, param3:IEventDispatcher = null)
      {
         super(param3);
         this.m_bodyA = param2._bodyA;
         this.m_bodyB = param2._bodyB;
         _ptr = lib.b2World_CreateJoint(this,param1._ptr,param2._ptr);
         this.m_userData = param2.userData;
         this.m_next = param1.m_jointList;
         if(this.m_next)
         {
            this.m_next.m_prev = this;
         }
         param1.m_jointList = this;
         this.m_world = param1;
      }
      
      override public function destroy() : void
      {
         lib.b2World_DestroyJoint(this.m_world._ptr,_ptr);
         if(this.m_prev)
         {
            this.m_prev.m_next = this.m_next;
         }
         else
         {
            this.m_world.m_jointList = this.m_next;
         }
         if(this.m_next)
         {
            this.m_next.m_prev = this.m_prev;
         }
         super.destroy();
      }
      
      public function GetType() : int
      {
         return this.m_type;
      }
      
      public function GetBodyA() : b2Body
      {
         return this.m_bodyA;
      }
      
      public function GetBodyB() : b2Body
      {
         return this.m_bodyB;
      }
      
      public function GetAnchorA() : V2
      {
         return null;
      }
      
      public function GetAnchorB() : V2
      {
         return null;
      }
      
      public function GetReactionForce(param1:Number) : V2
      {
         return null;
      }
      
      public function GetReactionTorque(param1:Number) : Number
      {
         return 0;
      }
      
      public function GetNext() : b2Joint
      {
         return this.m_next;
      }
      
      public function GetUserData() : *
      {
         return this.m_userData;
      }
      
      public function SetUserData(param1:*) : void
      {
         this.m_userData = param1;
      }
      
      public function WakeUp() : void
      {
         this.m_bodyA.SetAwake(true);
         this.m_bodyB.SetAwake(true);
      }
      
      public function IsLimitEnabled() : Boolean
      {
         return false;
      }
      
      public function EnableLimit(param1:Boolean) : void
      {
      }
      
      public function GetLowerLimit() : Number
      {
         return 0;
      }
      
      public function GetUpperLimit() : Number
      {
         return 0;
      }
      
      public function SetLimits(param1:Number, param2:Number) : void
      {
      }
      
      public function SetLowerLimit(param1:Number) : void
      {
      }
      
      public function SetUpperLimit(param1:Number) : void
      {
      }
      
      public function IsMotorEnabled() : Boolean
      {
         return false;
      }
      
      public function EnableMotor(param1:Boolean) : void
      {
      }
      
      public function SetMotorSpeed(param1:Number) : void
      {
      }
      
      public function GetMotorSpeed() : Number
      {
         return 0;
      }
      
      public function SetMaxMotorForce(param1:Number) : void
      {
      }
      
      public function GetMaxMotorForce() : Number
      {
         return 0;
      }
      
      public function SetMaxMotorTorque(param1:Number) : void
      {
      }
      
      public function GetMaxMotorTorque() : Number
      {
         return 0;
      }
      
      public function SetFrequency(param1:Number) : void
      {
      }
      
      public function GetFrequency() : Number
      {
         return 0;
      }
      
      public function SetDampingRatio(param1:Number) : void
      {
      }
      
      public function GetDampingRatio() : Number
      {
         return 0;
      }
      
      public function get m_type() : int
      {
         return mem._mrs16(_ptr + 4);
      }
      
      public function set m_type(param1:int) : void
      {
         mem._mw16(_ptr + 4,param1);
      }
      
      public function get m_islandFlag() : Boolean
      {
         return mem._mru8(_ptr + 56) == 1;
      }
      
      public function set m_islandFlag(param1:Boolean) : void
      {
         mem._mw8(_ptr + 56,param1 ? 1 : 0);
      }
      
      public function get m_collideConnected() : Boolean
      {
         return mem._mru8(_ptr + 57) == 1;
      }
      
      public function set m_collideConnected(param1:Boolean) : void
      {
         mem._mw8(_ptr + 57,param1 ? 1 : 0);
      }
   }
}

