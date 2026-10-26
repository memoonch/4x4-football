package Box2DAS.Collision
{
   import Box2DAS.*;
   import Box2DAS.Collision.Shapes.*;
   import Box2DAS.Common.*;
   import Box2DAS.Dynamics.*;
   import Box2DAS.Dynamics.Contacts.*;
   import Box2DAS.Dynamics.Joints.*;
   import cmodule.Box2D.*;
   
   public class b2DistanceOutput extends b2Base
   {
      
      public var pointA:b2Vec2;
      
      public var pointB:b2Vec2;
      
      public function b2DistanceOutput()
      {
         super();
         _ptr = lib.b2DistanceOutput_new();
         this.pointA = new b2Vec2(_ptr + 0);
         this.pointB = new b2Vec2(_ptr + 8);
      }
      
      override public function destroy() : void
      {
         lib.b2DistanceOutput_delete(_ptr);
         super.destroy();
      }
      
      public function get distance() : Number
      {
         return mem._mrf(_ptr + 16);
      }
      
      public function set distance(param1:Number) : void
      {
         mem._mwf(_ptr + 16,param1);
      }
      
      public function get iterations() : int
      {
         return mem._mr32(_ptr + 20);
      }
      
      public function set iterations(param1:int) : void
      {
         mem._mw32(_ptr + 20,param1);
      }
   }
}

