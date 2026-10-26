package Box2DAS.Dynamics
{
   import Box2DAS.*;
   import Box2DAS.Collision.*;
   import Box2DAS.Collision.Shapes.*;
   import Box2DAS.Common.*;
   import Box2DAS.Controllers.*;
   import Box2DAS.Dynamics.Contacts.*;
   import Box2DAS.Dynamics.Joints.*;
   import cmodule.Box2D.*;
   import flash.display.*;
   import flash.events.*;
   import flash.utils.*;
   
   public class b2World extends b2EventDispatcher
   {
      
      public static var defaultContactListener:Class = b2ContactListener;
      
      public static var defaultDestructionListener:Class = b2DestructionListener;
      
      public static const e_newFixture:int = 1;
      
      public static const e_locked:int = 2;
      
      public static const e_clearForces:int = 4;
      
      public var stepTime:int = 0;
      
      public var m_bodyList:b2Body;
      
      public var m_jointList:b2Joint;
      
      public var m_controllers:Dictionary = new Dictionary();
      
      public var m_destructionListener:b2DestructionListener;
      
      public var m_contactListener:b2ContactListener;
      
      public var m_gravity:b2Vec2;
      
      public var m_groundBody:b2Body;
      
      public var m_contactManager:b2ContactManager;
      
      public function b2World(param1:*, param2:Boolean = true, param3:IEventDispatcher = null)
      {
         b2Base.initialize();
         super(param3);
         var _loc4_:V2 = param1 as V2;
         if(_loc4_)
         {
            _ptr = lib.b2World_new(this,_loc4_.x,_loc4_.y,param2);
         }
         else
         {
            _ptr = param1 as int;
         }
         this.m_gravity = new b2Vec2(_ptr + 102968);
         var _loc5_:b2BodyDef = new b2BodyDef();
         this.m_groundBody = new b2Body(this,_loc5_);
         _loc5_.destroy();
         this.m_contactManager = new b2ContactManager(_ptr + 102872);
         this.SetContactListener(new defaultContactListener() as b2ContactListener);
         this.SetDestructionListener(new defaultDestructionListener() as b2DestructionListener);
         addEventListener(StepEvent.STEP,this.HandleStep);
      }
      
      override public function destroy() : void
      {
         lib.b2World_delete(_ptr);
         removeEventListener(StepEvent.STEP,this.HandleStep);
         super.destroy();
      }
      
      public function QueryAABB(param1:Function, param2:AABB) : void
      {
         lib.b2World_QueryAABB(_ptr,param1,param2.lowerBound.x,param2.lowerBound.y,param2.upperBound.x,param2.upperBound.y);
      }
      
      public function QueryPoint(param1:Function, param2:V2) : void
      {
         var callback:Function = param1;
         var p:V2 = param2;
         this.QueryAABB(function(param1:b2Fixture):Boolean
         {
            if(param1.m_shape.TestPoint(param1.m_body.GetTransform(),p))
            {
               return callback(param1);
            }
            return true;
         },AABB.FromV2(p));
      }
      
      public function RayCast(param1:Function, param2:V2, param3:V2) : void
      {
         var callback:Function = param1;
         var point1:V2 = param2;
         var point2:V2 = param3;
         lib.b2World_RayCast(_ptr,function(param1:b2Fixture, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number):Number
         {
            return Number(callback(param1,new V2(param2,param3),new V2(param4,param5),param6));
         },point1.x,point1.y,point2.x,point2.y);
      }
      
      public function CreateBody(param1:b2BodyDef = null) : b2Body
      {
         return new b2Body(this,param1);
      }
      
      public function DestroyBody(param1:b2Body) : void
      {
         param1.destroy();
      }
      
      public function CreateJoint(param1:b2JointDef, param2:IEventDispatcher = null) : b2Joint
      {
         return param1.create(this,param2);
      }
      
      public function DestroyJoint(param1:b2Joint) : void
      {
         param1.destroy();
      }
      
      public function Step(param1:Number, param2:int, param3:int) : void
      {
         ++this.stepTime;
         var _loc4_:StepEvent = new StepEvent(param1,param2,param3,this.stepTime);
         dispatchEvent(_loc4_);
      }
      
      public function HandleStep(param1:StepEvent) : void
      {
         lib.b2World_Step(_ptr,param1.timeStep,param1.velocityIterations,param1.positionIterations);
      }
      
      public function GetBodyList() : b2Body
      {
         return this.m_bodyList;
      }
      
      public function GetJointList() : b2Joint
      {
         return this.m_jointList;
      }
      
      public function GetContactList() : b2Contact
      {
         return this.m_contactManager.m_contactList;
      }
      
      public function SetWarmStarting(param1:Boolean) : void
      {
         this.m_warmStarting = param1;
      }
      
      public function SetContinuousPhysics(param1:Boolean) : void
      {
         this.m_continuousPhysics = param1;
      }
      
      public function GetProxyCount() : int
      {
         return this.m_contactManager.m_broadPhase.GetProxyCount();
      }
      
      public function GetBodyCount() : int
      {
         return this.m_bodyCount;
      }
      
      public function GetJointCount() : int
      {
         return this.m_jointCount;
      }
      
      public function GetContactCount() : int
      {
         return this.m_contactManager.m_contactCount;
      }
      
      public function SetGravity(param1:V2) : void
      {
         this.m_gravity.v2 = param1;
      }
      
      public function GetGravity() : V2
      {
         return this.m_gravity.v2;
      }
      
      public function IsLocked() : Boolean
      {
         return (this.m_flags & e_locked) == e_locked;
      }
      
      public function AddController(param1:b2Controller) : void
      {
         param1.world = this;
         this.m_controllers[param1] = true;
         addEventListener(StepEvent.STEP,param1.Step,false,param1.priority);
      }
      
      public function RemoveController(param1:b2Controller) : void
      {
         param1.world = null;
         delete this.m_controllers[param1];
         removeEventListener(StepEvent.STEP,param1.Step);
      }
      
      public function SetDestructionListener(param1:b2DestructionListener) : void
      {
         this.m_destructionListener = param1;
      }
      
      public function SetContactListener(param1:b2ContactListener) : void
      {
         this.m_contactListener = param1;
      }
      
      public function SetAutoClearForces(param1:Boolean) : void
      {
         if(param1)
         {
            this.m_flags |= e_clearForces;
         }
         else
         {
            this.m_flags &= ~e_clearForces;
         }
      }
      
      public function GetAutoClearForces() : Boolean
      {
         return (this.m_flags & e_clearForces) == e_clearForces;
      }
      
      public function ClearForces() : void
      {
         var _loc1_:b2Body = this.m_bodyList;
         while(_loc1_)
         {
            _loc1_.m_force.x = 0;
            _loc1_.m_force.y = 0;
            _loc1_.m_torque = 0;
            _loc1_ = _loc1_.GetNext();
         }
      }
      
      public function get m_flags() : int
      {
         return mem._mr32(_ptr + 102868);
      }
      
      public function set m_flags(param1:int) : void
      {
         mem._mw32(_ptr + 102868,param1);
      }
      
      public function get m_bodyCount() : int
      {
         return mem._mr32(_ptr + 102960);
      }
      
      public function set m_bodyCount(param1:int) : void
      {
         mem._mw32(_ptr + 102960,param1);
      }
      
      public function get m_jointCount() : int
      {
         return mem._mr32(_ptr + 102964);
      }
      
      public function set m_jointCount(param1:int) : void
      {
         mem._mw32(_ptr + 102964,param1);
      }
      
      public function get m_allowSleep() : Boolean
      {
         return mem._mru8(_ptr + 102976) == 1;
      }
      
      public function set m_allowSleep(param1:Boolean) : void
      {
         mem._mw8(_ptr + 102976,param1 ? 1 : 0);
      }
      
      public function get m_warmStarting() : Boolean
      {
         return mem._mru8(_ptr + 102992) == 1;
      }
      
      public function set m_warmStarting(param1:Boolean) : void
      {
         mem._mw8(_ptr + 102992,param1 ? 1 : 0);
      }
      
      public function get m_continuousPhysics() : Boolean
      {
         return mem._mru8(_ptr + 102993) == 1;
      }
      
      public function set m_continuousPhysics(param1:Boolean) : void
      {
         mem._mw8(_ptr + 102993,param1 ? 1 : 0);
      }
      
      public function BeginContact(param1:int, param2:b2Fixture, param3:b2Fixture) : void
      {
         if(this.m_contactListener)
         {
            this.m_contactListener.BeginContact(new b2Contact(param1,param2,param3));
         }
      }
      
      public function EndContact(param1:int, param2:b2Fixture, param3:b2Fixture) : void
      {
         if(this.m_contactListener)
         {
            this.m_contactListener.EndContact(new b2Contact(param1,param2,param3));
         }
      }
      
      public function PreSolve(param1:int, param2:b2Fixture, param3:b2Fixture, param4:int) : void
      {
         if(this.m_contactListener)
         {
            this.m_contactListener.PreSolve(new b2Contact(param1,param2,param3),new b2Manifold(param4));
         }
      }
      
      public function PostSolve(param1:int, param2:b2Fixture, param3:b2Fixture, param4:int) : void
      {
         if(this.m_contactListener)
         {
            this.m_contactListener.PostSolve(new b2Contact(param1,param2,param3),new b2ContactImpulse(param4));
         }
      }
      
      public function SayGoodbyeJoint(param1:b2Joint) : void
      {
         if(this.m_destructionListener)
         {
            this.m_destructionListener.SayGoodbyeJoint(param1);
         }
      }
      
      public function SayGoodbyeFixture(param1:b2Fixture) : void
      {
         if(this.m_destructionListener)
         {
            this.m_destructionListener.SayGoodbyeFixture(param1);
         }
      }
   }
}

