package Box2DAS.Common
{
   public class b2Vec3 extends b2Base
   {
      
      public function b2Vec3(param1:int)
      {
         super();
         _ptr = param1;
      }
      
      public function get v3() : V3
      {
         return new V3(this.x,this.y,this.z);
      }
      
      public function set v3(param1:V3) : void
      {
         this.x = param1.x;
         this.y = param1.y;
         this.z = param1.z;
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
      
      public function get z() : Number
      {
         return mem._mrf(_ptr + 8);
      }
      
      public function set z(param1:Number) : void
      {
         mem._mwf(_ptr + 8,param1);
      }
   }
}

