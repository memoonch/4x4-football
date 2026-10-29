package Box2DAS.Dynamics
{
   import Box2DAS.*;
   import Box2DAS.Collision.*;
   import Box2DAS.Collision.Shapes.*;
   import Box2DAS.Common.*;
   import Box2DAS.Dynamics.Contacts.*;
   import Box2DAS.Dynamics.Joints.*;
   import cmodule.Box2D.*;
   import flash.display.*;
   import flash.events.*;
   import flash.utils.*;
   
   public class b2Fixture extends b2EventDispatcher
   {
      
      public var m_userData:*;
      
      public var m_body:b2Body;
      
      public var m_shape:b2Shape;
      
      public var m_next:b2Fixture;
      
      public var m_bubbleContacts:Boolean = true;
      
      public var m_filter:b2Filter;
      
      public function b2Fixture(param1:b2Body, param2:b2FixtureDef = null, param3:IEventDispatcher = null)
      {
         super(param3);
         param2 ||= b2Def.fixture;
         _ptr = lib.b2Body_CreateFixture(this,param1._ptr,param2._ptr);
         this.m_filter = new b2Filter(_ptr + 36);
         this.m_body = param1;
         var _loc4_:Class = getDefinitionByName(getQualifiedClassName(param2._shape)) as Class;
         this.m_shape = new _loc4_(mem._mr32(_ptr + 16));
         this.m_userData = param2.userData;
         this.m_next = param1.m_fixtureList;
         param1.m_fixtureList = this;
      }
      
      public function Draw(param1:Graphics, param2:XF, param3:Number = 1) : void
      {
         this.m_shape.Draw(param1,param2,param3);
      }
      
      override public function destroy() : void
      {
         var _loc1_:b2Fixture = null;
         lib.b2Body_DestroyFixture(this.m_body._ptr,_ptr);
         if(this.m_body.m_fixtureList == this)
         {
            this.m_body.m_fixtureList = this.m_next;
         }
         else
         {
            _loc1_ = this.m_body.m_fixtureList;
            while(_loc1_.m_next != this)
            {
               _loc1_ = _loc1_.m_next;
            }
            _loc1_.m_next = this.m_next;
         }
         super.destroy();
      }
      
      public function GetType() : int
      {
         return this.m_shape.GetType();
      }
      
      public function GetShape() : b2Shape
      {
         return this.m_shape;
      }
      
      public function IsSensor() : Boolean
      {
         return this.m_isSensor;
      }
      
      public function SetSensor(param1:Boolean) : void
      {
         this.m_isSensor = param1;
      }
      
      public function SetFilterData(param1:Object, param2:Boolean = true) : void
      {
         this.m_filter.filter = param1;
         if(param2)
         {
            this.Refilter();
         }
      }
      
      public function Refilter() : void
      {
         var _loc2_:b2Contact = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Fixture = null;
         if(!this.m_body)
         {
            return;
         }
         var _loc1_:b2ContactEdge = this.m_body.GetContactList();
         while(_loc1_)
         {
            _loc2_ = _loc1_.contact;
            _loc3_ = _loc2_.GetFixtureA();
            _loc4_ = _loc2_.GetFixtureB();
            if(_loc3_ == this || _loc4_ == this)
            {
               _loc2_.FlagForFiltering();
            }
            _loc1_ = _loc1_.next;
         }
      }
      
      public function GetFilterData() : Object
      {
         return this.m_filter.filter;
      }
      
      public function GetBody() : b2Body
      {
         return this.m_body;
      }
      
      public function GetNext() : b2Fixture
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
      
      public function TestPoint(param1:V2) : Boolean
      {
         return this.m_shape.TestPoint(this.m_body.GetTransform(),param1);
      }
      
      public function RayCast() : void
      {
      }
      
      public function GetMassData() : b2MassData
      {
         return null;
      }
      
      public function SetDensity(param1:Number) : void
      {
         this.m_density = param1;
      }
      
      public function GetDensity() : Number
      {
         return this.m_density;
      }
      
      public function GetFriction() : Number
      {
         return this.m_friction;
      }
      
      public function SetFriction(param1:Number) : void
      {
         this.m_friction = param1;
      }
      
      public function GetRestitution() : Number
      {
         return this.m_restitution;
      }
      
      public function SetRestitution(param1:Number) : void
      {
         this.m_restitution = param1;
      }
      
      public function GetDistance(param1:b2Fixture) : V2
      {
         var _loc2_:b2DistanceInput = b2Def.distanceInput;
         var _loc3_:b2DistanceOutput = b2Def.distanceOutput;
         _loc2_.proxyA.Set(this.m_shape);
         _loc2_.proxyB.Set(param1.m_shape);
         _loc2_.transformA.xf = this.m_body.GetTransform();
         _loc2_.transformB.xf = param1.m_body.GetTransform();
         _loc2_.useRadii = true;
         b2Def.simplexCache.count = 0;
         b2Distance();
         return _loc3_.pointB.v2.subtract(_loc3_.pointA.v2);
      }
      
      public function get m_reportBeginContact() : Boolean
      {
         return mem._mru8(_ptr + 0) == 1;
      }
      
      public function set m_reportBeginContact(param1:Boolean) : void
      {
         mem._mw8(_ptr + 0,param1 ? 1 : 0);
      }
      
      public function get m_reportEndContact() : Boolean
      {
         return mem._mru8(_ptr + 1) == 1;
      }
      
      public function set m_reportEndContact(param1:Boolean) : void
      {
         mem._mw8(_ptr + 1,param1 ? 1 : 0);
      }
      
      public function get m_reportPreSolve() : Boolean
      {
         return mem._mru8(_ptr + 2) == 1;
      }
      
      public function set m_reportPreSolve(param1:Boolean) : void
      {
         mem._mw8(_ptr + 2,param1 ? 1 : 0);
      }
      
      public function get m_reportPostSolve() : Boolean
      {
         return mem._mru8(_ptr + 3) == 1;
      }
      
      public function set m_reportPostSolve(param1:Boolean) : void
      {
         mem._mw8(_ptr + 3,param1 ? 1 : 0);
      }
      
      public function get m_friction() : Number
      {
         return mem._mrf(_ptr + 20);
      }
      
      public function set m_friction(param1:Number) : void
      {
         mem._mwf(_ptr + 20,param1);
      }
      
      public function get m_restitution() : Number
      {
         return mem._mrf(_ptr + 24);
      }
      
      public function set m_restitution(param1:Number) : void
      {
         mem._mwf(_ptr + 24,param1);
      }
      
      public function get m_proxyId() : int
      {
         return mem._mr32(mem._mr32(_ptr + 28) + 24);
      }
      
      public function set m_proxyId(param1:int) : void
      {
         mem._mw32(mem._mr32(_ptr + 28) + 24,param1);
      }
      
      public function get m_aabb() : b2AABB
      {
         return new b2AABB(mem._mr32(_ptr + 28));
      }
      
      public function get m_isSensor() : Boolean
      {
         return mem._mru8(_ptr + 42) == 1;
      }
      
      public function set m_isSensor(param1:Boolean) : void
      {
         mem._mw8(_ptr + 42,param1 ? 1 : 0);
      }
      
      public function get m_density() : Number
      {
         return mem._mrf(_ptr + 4);
      }
      
      public function set m_density(param1:Number) : void
      {
         mem._mwf(_ptr + 4,param1);
      }
      
      public function get m_conveyorBeltSpeed() : Number
      {
         return mem._mrf(_ptr + 48);
      }
      
      public function set m_conveyorBeltSpeed(param1:Number) : void
      {
         mem._mwf(_ptr + 48,param1);
      }
   }
}

