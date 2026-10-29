package Box2DAS.Common
{
   public class V3
   {
      
      public var x:Number;
      
      public var y:Number;
      
      public var z:Number;
      
      public function V3(param1:Number = 0, param2:Number = 0, param3:Number = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
         this.z = param3;
      }
      
      public static function add(param1:V3, param2:V3) : V3
      {
         return new V3(param1.x + param2.x,param1.y + param2.y,param1.z + param2.z);
      }
      
      public static function subtract(param1:V3, param2:V3) : V3
      {
         return new V3(param1.x - param2.x,param1.y - param2.y,param1.z - param2.z);
      }
      
      public static function multiply(param1:V3, param2:V3) : V3
      {
         return new V3(param1.x * param2.x,param1.y * param2.y,param1.z * param2.z);
      }
      
      public static function multiplyN(param1:V3, param2:Number) : V3
      {
         return new V3(param1.x * param2,param1.y * param2,param1.z * param2);
      }
      
      public static function divide(param1:V3, param2:V3) : V3
      {
         return new V3(param1.x / param2.x,param1.y / param2.y,param1.z / param2.z);
      }
      
      public static function divideN(param1:V3, param2:Number) : V3
      {
         return new V3(param1.x / param2,param1.y / param2,param1.z / param2);
      }
      
      public static function normalize(param1:V3) : V3
      {
         var _loc2_:V3 = param1.clone();
         _loc2_.normalize();
         return _loc2_;
      }
      
      public function clone() : V3
      {
         return new V3(this.x,this.y,this.z);
      }
      
      public function equals(param1:V3) : Boolean
      {
         return this.x == param1.x && this.y == param1.y && this.z == param1.z;
      }
      
      public function zero() : void
      {
         this.x = 0;
         this.y = 0;
         this.z = 0;
      }
      
      public function xyz(param1:Number, param2:Number, param3:Number) : void
      {
         this.x = param1;
         this.y = param2;
         this.z = param3;
      }
      
      public function add(param1:V3) : void
      {
         this.x += param1.x;
         this.y += param1.y;
         this.z += param1.z;
      }
      
      public function subtract(param1:V3) : void
      {
         this.x -= param1.x;
         this.y -= param1.y;
         this.z -= param1.z;
      }
      
      public function multiply(param1:V3) : void
      {
         this.x *= param1.x;
         this.y *= param1.y;
         this.z *= param1.z;
      }
      
      public function multiplyN(param1:Number) : void
      {
         this.x *= param1;
         this.y *= param1;
         this.z *= param1;
      }
      
      public function divide(param1:V3) : void
      {
         this.x /= param1.x;
         this.y /= param1.y;
         this.z /= param1.z;
      }
      
      public function divideN(param1:Number) : void
      {
         this.x /= param1;
         this.y /= param1;
         this.z /= param1;
      }
      
      public function length() : Number
      {
         return Math.sqrt(this.x * this.x + this.y * this.y + this.z * this.z);
      }
      
      public function lengthSquared() : Number
      {
         return this.x * this.x + this.y * this.y + this.z * this.z;
      }
      
      public function distance(param1:V3) : Number
      {
         return V3.subtract(this,param1).length();
      }
      
      public function distanceSquared(param1:V3) : Number
      {
         return V3.subtract(this,param1).lengthSquared();
      }
      
      public function normalize() : void
      {
         var _loc1_:Number = this.length();
         this.x /= _loc1_;
         this.y /= _loc1_;
         this.z /= _loc1_;
      }
      
      public function dot(param1:V3) : Number
      {
         return this.x * param1.x + this.y * param1.y + this.z * param1.z;
      }
   }
}

