package Box2DAS.Common
{
   public class b2Mat33 extends b2Base
   {
      
      public var col1:b2Vec3;
      
      public var col2:b2Vec3;
      
      public var col3:b2Vec3;
      
      public function b2Mat33(param1:int)
      {
         super();
         _ptr = param1;
         this.col1 = new b2Vec3(_ptr + 0);
         this.col2 = new b2Vec3(_ptr + 12);
         this.col3 = new b2Vec3(_ptr + 24);
      }
      
      public function get m33() : M33
      {
         return new M33(this.col1.v3,this.col2.v3,this.col3.v3);
      }
      
      public function set m33(param1:M33) : void
      {
         this.col1.v3 = param1.c1;
         this.col2.v3 = param1.c2;
         this.col3.v3 = param1.c3;
      }
   }
}

