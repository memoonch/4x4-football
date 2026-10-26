package Box2DAS.Common
{
   public class b2Mat22 extends b2Base
   {
      
      public var col1:b2Vec2;
      
      public var col2:b2Vec2;
      
      public function b2Mat22(param1:int)
      {
         super();
         _ptr = param1;
         this.col1 = new b2Vec2(_ptr + 0);
         this.col2 = new b2Vec2(_ptr + 8);
      }
      
      public function get m22() : M22
      {
         return new M22(this.col1.v2,this.col2.v2);
      }
      
      public function set m22(param1:M22) : void
      {
         this.col1.v2 = param1.c1;
         this.col2.v2 = param1.c2;
      }
   }
}

