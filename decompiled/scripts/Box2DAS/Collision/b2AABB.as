package Box2DAS.Collision
{
   import Box2DAS.Common.b2Base;
   import Box2DAS.Common.b2Vec2;
   
   public class b2AABB extends b2Base
   {
      
      public var lowerBound:b2Vec2;
      
      public var upperBound:b2Vec2;
      
      public function b2AABB(param1:int)
      {
         super();
         _ptr = param1;
         this.lowerBound = new b2Vec2(_ptr + 0);
         this.upperBound = new b2Vec2(_ptr + 8);
      }
      
      public function get aabb() : AABB
      {
         return new AABB(this.lowerBound.v2,this.upperBound.v2);
      }
      
      public function set aabb(param1:AABB) : void
      {
         this.lowerBound.v2 = param1.lowerBound;
         this.upperBound.v2 = param1.upperBound;
      }
   }
}

