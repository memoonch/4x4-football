package Box2DAS.Dynamics.Contacts
{
   import Box2DAS.*;
   import Box2DAS.Collision.*;
   import Box2DAS.Collision.Shapes.*;
   import Box2DAS.Common.*;
   import Box2DAS.Dynamics.*;
   import Box2DAS.Dynamics.Joints.*;
   import cmodule.Box2D.*;
   
   public class b2Contact extends b2Base
   {
      
      public static var e_islandFlag:int = 1;
      
      public static var e_touchingFlag:int = 2;
      
      public static var e_enabledFlag:int = 4;
      
      public static var e_filterFlag:int = 8;
      
      public static var e_bulletHitFlag:int = 16;
      
      public static var e_toiFlag:int = 32;
      
      public var m_fixtureA:b2Fixture;
      
      public var m_fixtureB:b2Fixture;
      
      public var m_manifold:b2Manifold;
      
      public function b2Contact(param1:int, param2:b2Fixture = null, param3:b2Fixture = null)
      {
         super();
         _ptr = param1;
         this.m_manifold = new b2Manifold(_ptr + 64);
         this.m_fixtureA = param2 ? param2 : deref(mem._mr32(mem._mr32(_ptr + 48) + 44)) as b2Fixture;
         this.m_fixtureB = param3 ? param3 : deref(mem._mr32(mem._mr32(_ptr + 52) + 44)) as b2Fixture;
      }
      
      public function GetManifold() : b2Manifold
      {
         return this.m_manifold;
      }
      
      public function GetWorldManifold(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.m_fixtureA.GetBody();
         var _loc3_:b2Body = this.m_fixtureB.GetBody();
         var _loc4_:b2Shape = this.m_fixtureA.GetShape();
         var _loc5_:b2Shape = this.m_fixtureB.GetShape();
         param1.Initialize(this.m_manifold,_loc2_.GetTransform(),_loc4_.m_radius,_loc3_.GetTransform(),_loc5_.m_radius);
      }
      
      public function IsSolid() : Boolean
      {
         return this.IsTouching();
      }
      
      public function IsTouching() : Boolean
      {
         return (this.m_flags & e_touchingFlag) != 0;
      }
      
      public function Disable() : void
      {
         this.m_flags &= ~e_enabledFlag;
      }
      
      public function SetEnabled(param1:Boolean) : void
      {
         if(param1)
         {
            this.m_flags |= e_enabledFlag;
         }
         else
         {
            this.m_flags &= ~e_enabledFlag;
         }
      }
      
      public function IsEnabled() : Boolean
      {
         return (this.m_flags & e_enabledFlag) == e_enabledFlag;
      }
      
      public function GetNext() : b2Contact
      {
         return this.m_next ? new b2Contact(this.m_next) : null;
      }
      
      public function GetFixtureA() : b2Fixture
      {
         return this.m_fixtureA;
      }
      
      public function GetFixtureB() : b2Fixture
      {
         return this.m_fixtureB;
      }
      
      public function FlagForFiltering() : void
      {
         this.m_flags |= e_filterFlag;
      }
      
      public function Update() : void
      {
         lib.b2Contact_Update(_ptr);
      }
      
      public function Evaluate() : void
      {
         lib.b2Contact_Evaluate(_ptr);
      }
      
      public function get m_flags() : int
      {
         return mem._mr32(_ptr + 4);
      }
      
      public function set m_flags(param1:int) : void
      {
         mem._mw32(_ptr + 4,param1);
      }
      
      public function get m_indexA() : int
      {
         return mem._mr32(_ptr + 56);
      }
      
      public function set m_indexA(param1:int) : void
      {
         mem._mw32(_ptr + 56,param1);
      }
      
      public function get m_indexB() : int
      {
         return mem._mr32(_ptr + 60);
      }
      
      public function set m_indexB(param1:int) : void
      {
         mem._mw32(_ptr + 60,param1);
      }
      
      public function get m_toiCount() : int
      {
         return mem._mr32(_ptr + 136);
      }
      
      public function set m_toiCount(param1:int) : void
      {
         mem._mw32(_ptr + 136,param1);
      }
      
      public function get m_toi() : Number
      {
         return mem._mrf(_ptr + 140);
      }
      
      public function set m_toi(param1:Number) : void
      {
         mem._mwf(_ptr + 140,param1);
      }
      
      public function get frictionDisabled() : Boolean
      {
         return mem._mru8(_ptr + 144) == 1;
      }
      
      public function set frictionDisabled(param1:Boolean) : void
      {
         mem._mw8(_ptr + 144,param1 ? 1 : 0);
      }
      
      public function get m_next() : int
      {
         return mem._mr32(_ptr + 12);
      }
      
      public function set m_next(param1:int) : void
      {
         mem._mw32(_ptr + 12,param1);
      }
      
      public function get m_prev() : int
      {
         return mem._mr32(_ptr + 8);
      }
      
      public function set m_prev(param1:int) : void
      {
         mem._mw32(_ptr + 8,param1);
      }
   }
}

