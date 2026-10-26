package Box2DAS.Common
{
   public class b2Vec2 extends b2Base
   {
      
      public function b2Vec2(param1:int)
      {
         super();
         _ptr = param1;
      }
      
      public function get v2() : V2
      {
         return new V2(this.x,this.y);
      }
      
      public function set v2(param1:V2) : void
      {
         this.x = param1.x;
         this.y = param1.y;
      }
      
      public function get x() : Number
      {
         return mem._mrf(_ptr + 0);
      }
      
      public function set x(param1:Number) : void
      {
         mem._mwf(_ptr + 0,param1);
      }
      
      public function get y() : Number
      {
         return mem._mrf(_ptr + 4);
      }
      
      public function set y(param1:Number) : void
      {
         mem._mwf(_ptr + 4,param1);
      }
   }
}

