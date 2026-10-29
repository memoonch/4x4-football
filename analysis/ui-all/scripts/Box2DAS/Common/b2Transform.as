package Box2DAS.Common
{
   public class b2Transform extends b2Base
   {
      
      public var position:b2Vec2;
      
      public var R:b2Mat22;
      
      public function b2Transform(param1:int)
      {
         super();
         _ptr = param1;
         this.position = new b2Vec2(_ptr + 0);
         this.R = new b2Mat22(_ptr + 8);
      }
      
      public function get xf() : XF
      {
         return new XF(this.position.v2,this.R.m22);
      }
      
      public function set xf(param1:XF) : void
      {
         this.position.v2 = param1.p;
         this.R.m22 = param1.r;
      }
   }
}

