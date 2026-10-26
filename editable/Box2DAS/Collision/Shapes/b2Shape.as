package Box2DAS.Collision.Shapes
{
   import Box2DAS.Collision.AABB;
   import Box2DAS.Common.V2;
   import Box2DAS.Common.XF;
   import Box2DAS.Common.b2Base;
   import Box2DAS.Common.b2Def;
   import Box2DAS.Dynamics.b2Body;
   import Box2DAS.Dynamics.b2Fixture;
   import Box2DAS.Dynamics.b2FixtureDef;
   import flash.display.Graphics;
   
   public class b2Shape extends b2Base
   {
      
      public static const e_unknown:int = -1;
      
      public static const e_circle:int = 0;
      
      public static const e_edge:int = 1;
      
      public static const e_polygon:int = 2;
      
      public static const e_loop:int = 3;
      
      public static const e_typeCount:int = 4;
      
      public function b2Shape()
      {
         super();
      }
      
      public function GetType() : int
      {
         return this.m_type;
      }
      
      public function create(param1:b2Body, param2:b2FixtureDef = null) : b2Fixture
      {
         param2 ||= b2Def.fixture;
         param2.shape = this;
         return new b2Fixture(param1,param2);
      }
      
      public function Draw(param1:Graphics, param2:XF, param3:Number = 1, param4:Object = null) : void
      {
      }
      
      public function TestPoint(param1:XF, param2:V2) : Boolean
      {
         return false;
      }
      
      public function RayCast(param1:*, param2:*, param3:XF) : Boolean
      {
         return false;
      }
      
      public function ComputeAABB(param1:AABB, param2:XF) : void
      {
      }
      
      public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
      }
      
      public function ComputeSubmergedArea(param1:V2, param2:Number, param3:XF, param4:V2) : Number
      {
         return 0;
      }
      
      public function get m_type() : int
      {
         return mem._mrs8(_ptr + 4);
      }
      
      public function set m_type(param1:int) : void
      {
         mem._mw8(_ptr + 4,param1);
      }
      
      public function get m_radius() : Number
      {
         return mem._mrf(_ptr + 8);
      }
      
      public function set m_radius(param1:Number) : void
      {
         mem._mwf(_ptr + 8,param1);
      }
      
      public function get m_area() : Number
      {
         return mem._mrf(_ptr + 12);
      }
      
      public function set m_area(param1:Number) : void
      {
         mem._mwf(_ptr + 12,param1);
      }
   }
}

