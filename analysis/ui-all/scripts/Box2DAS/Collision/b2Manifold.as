package Box2DAS.Collision
{
   import Box2DAS.*;
   import Box2DAS.Collision.Shapes.*;
   import Box2DAS.Common.*;
   import Box2DAS.Dynamics.*;
   import Box2DAS.Dynamics.Contacts.*;
   import Box2DAS.Dynamics.Joints.*;
   import cmodule.Box2D.*;
   
   public class b2Manifold extends b2Base
   {
      
      public static var e_circles:int = 0;
      
      public static var e_faceA:int = 1;
      
      public static var e_faceB:int = 2;
      
      public var points:Array = [];
      
      public var localNormal:b2Vec2;
      
      public var localPoint:b2Vec2;
      
      public function b2Manifold(param1:int)
      {
         super();
         _ptr = param1;
         this.localNormal = new b2Vec2(_ptr + 48);
         this.localPoint = new b2Vec2(_ptr + 56);
         this.points[0] = new b2ManifoldPoint(_ptr + 0);
         this.points[1] = new b2ManifoldPoint(_ptr + 24);
      }
      
      public function get type() : int
      {
         return mem._mrs8(_ptr + 64);
      }
      
      public function set type(param1:int) : void
      {
         mem._mw8(_ptr + 64,param1);
      }
      
      public function get pointCount() : int
      {
         return mem._mr32(_ptr + 68);
      }
      
      public function set pointCount(param1:int) : void
      {
         mem._mw32(_ptr + 68,param1);
      }
   }
}

