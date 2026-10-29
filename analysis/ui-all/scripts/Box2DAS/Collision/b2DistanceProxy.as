package Box2DAS.Collision
{
   import Box2DAS.Collision.Shapes.b2CircleShape;
   import Box2DAS.Collision.Shapes.b2PolygonShape;
   import Box2DAS.Collision.Shapes.b2Shape;
   import Box2DAS.Common.b2Base;
   
   public class b2DistanceProxy extends b2Base
   {
      
      public function b2DistanceProxy(param1:int)
      {
         super();
         _ptr = param1;
      }
      
      public function get m_vertices() : int
      {
         return mem._mr32(_ptr + 16);
      }
      
      public function set m_vertices(param1:int) : void
      {
         mem._mw32(_ptr + 16,param1);
      }
      
      public function get m_count() : int
      {
         return mem._mr32(_ptr + 20);
      }
      
      public function set m_count(param1:int) : void
      {
         mem._mw32(_ptr + 20,param1);
      }
      
      public function get m_radius() : Number
      {
         return mem._mrf(_ptr + 24);
      }
      
      public function set m_radius(param1:Number) : void
      {
         mem._mwf(_ptr + 24,param1);
      }
      
      public function Set(param1:b2Shape) : void
      {
         var _loc2_:b2CircleShape = null;
         var _loc3_:b2PolygonShape = null;
         switch(param1.m_type)
         {
            case b2Shape.e_circle:
               _loc2_ = param1 as b2CircleShape;
               this.m_vertices = _loc2_._ptr + 16;
               this.m_count = 1;
               this.m_radius = _loc2_.m_radius;
               break;
            case b2Shape.e_polygon:
               _loc3_ = param1 as b2PolygonShape;
               this.m_vertices = _loc3_._ptr + 24;
               this.m_count = _loc3_.m_vertexCount;
               this.m_radius = _loc3_.m_radius;
         }
      }
   }
}

