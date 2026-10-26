package Box2DAS.Common
{
   import flash.geom.Point;
   
   public class V2
   {
      
      public var x:Number;
      
      public var y:Number;
      
      public function V2(param1:Number = 0, param2:Number = 0)
      {
         super();
         this.x = param1;
         this.y = param2;
      }
      
      public static function fromP(param1:Point) : V2
      {
         return new V2(param1.x,param1.y);
      }
      
      public static function add(param1:V2, param2:V2) : V2
      {
         return new V2(param1.x + param2.x,param1.y + param2.y);
      }
      
      public static function subtract(param1:V2, param2:V2) : V2
      {
         return new V2(param1.x - param2.x,param1.y - param2.y);
      }
      
      public static function addN(param1:V2, param2:Number) : V2
      {
         return new V2(param1.x + param2,param1.y + param2);
      }
      
      public static function subtractN(param1:V2, param2:Number) : V2
      {
         return new V2(param1.x - param2,param1.y - param2);
      }
      
      public static function multiply(param1:V2, param2:V2) : V2
      {
         return new V2(param1.x * param2.x,param1.y * param2.y);
      }
      
      public static function multiplyN(param1:V2, param2:Number) : V2
      {
         return new V2(param1.x * param2,param1.y * param2);
      }
      
      public static function divide(param1:V2, param2:V2) : V2
      {
         return new V2(param1.x / param2.x,param1.y / param2.y);
      }
      
      public static function divideN(param1:V2, param2:Number) : V2
      {
         return new V2(param1.x / param2,param1.y / param2);
      }
      
      public static function normalize(param1:V2, param2:Number = 1) : V2
      {
         var _loc3_:V2 = param1.clone();
         _loc3_.normalize(param2);
         return _loc3_;
      }
      
      public static function crossVN(param1:V2, param2:Number) : V2
      {
         return new V2(param2 * param1.y,-param2 * param1.x);
      }
      
      public static function crossNV(param1:Number, param2:V2) : V2
      {
         return new V2(-param1 * param2.y,param1 * param2.x);
      }
      
      public static function rotate(param1:V2, param2:Number) : V2
      {
         return param1.clone().rotate(param2);
      }
      
      public static function abs(param1:V2) : V2
      {
         return param1.clone().abs();
      }
      
      public static function sign(param1:V2) : V2
      {
         return param1.clone().sign();
      }
      
      public static function flip(param1:V2) : V2
      {
         return new V2(param1.y,param1.x);
      }
      
      public static function cw90(param1:V2) : V2
      {
         return new V2(param1.y,-param1.x);
      }
      
      public static function ccw90(param1:V2) : V2
      {
         return new V2(-param1.y,param1.x);
      }
      
      public static function min(param1:V2, param2:V2) : V2
      {
         return param1.clone().min(param2);
      }
      
      public static function max(param1:V2, param2:V2) : V2
      {
         return param1.clone().max(param2);
      }
      
      public static function invert(param1:V2) : V2
      {
         return new V2(-param1.x,-param1.y);
      }
      
      public function toString() : String
      {
         return "<" + this.x + ", " + this.y + ">";
      }
      
      public function toP() : Point
      {
         return new Point(this.x,this.y);
      }
      
      public function clone() : V2
      {
         return new V2(this.x,this.y);
      }
      
      public function copy(param1:V2) : V2
      {
         this.x = param1.x;
         this.y = param1.y;
         return this;
      }
      
      public function equals(param1:V2) : Boolean
      {
         return this.x == param1.x && this.y == param1.y;
      }
      
      public function zero() : V2
      {
         this.x = 0;
         this.y = 0;
         return this;
      }
      
      public function xy(param1:Number, param2:Number) : V2
      {
         this.x = param1;
         this.y = param2;
         return this;
      }
      
      public function add(param1:V2) : V2
      {
         this.x += param1.x;
         this.y += param1.y;
         return this;
      }
      
      public function subtract(param1:V2) : V2
      {
         this.x -= param1.x;
         this.y -= param1.y;
         return this;
      }
      
      public function addN(param1:Number) : V2
      {
         this.x += param1;
         this.y += param1;
         return this;
      }
      
      public function subtractN(param1:Number) : V2
      {
         this.x -= param1;
         this.y -= param1;
         return this;
      }
      
      public function multiply(param1:V2) : V2
      {
         this.x *= param1.x;
         this.y *= param1.y;
         return this;
      }
      
      public function multiplyN(param1:Number) : V2
      {
         this.x *= param1;
         this.y *= param1;
         return this;
      }
      
      public function divide(param1:V2) : V2
      {
         this.x /= param1.x;
         this.y /= param1.y;
         return this;
      }
      
      public function divideN(param1:Number) : V2
      {
         this.x /= param1;
         this.y /= param1;
         return this;
      }
      
      public function length() : Number
      {
         return Math.sqrt(this.x * this.x + this.y * this.y);
      }
      
      public function lengthSquared() : Number
      {
         return this.x * this.x + this.y * this.y;
      }
      
      public function distance(param1:V2) : Number
      {
         return V2.subtract(this,param1).length();
      }
      
      public function distanceSquared(param1:V2) : Number
      {
         return V2.subtract(this,param1).lengthSquared();
      }
      
      public function normalize(param1:Number = 1) : V2
      {
         var _loc2_:Number = this.length();
         this.x *= param1 / _loc2_;
         this.y *= param1 / _loc2_;
         return this;
      }
      
      public function dot(param1:V2) : Number
      {
         return this.x * param1.x + this.y * param1.y;
      }
      
      public function perpDot(param1:V2) : Number
      {
         return -this.y * param1.x + this.x * param1.y;
      }
      
      public function winding(param1:V2, param2:V2) : Number
      {
         return V2.subtract(param1,this).perpDot(V2.subtract(param2,param1));
      }
      
      public function cross(param1:V2) : Number
      {
         return this.x * param1.y - this.y * param1.x;
      }
      
      public function rotate(param1:Number) : V2
      {
         var _loc2_:Number = Math.cos(param1);
         var _loc3_:Number = Math.sin(param1);
         this.xy(this.x * _loc2_ - this.y * _loc3_,this.x * _loc3_ + this.y * _loc2_);
         return this;
      }
      
      public function abs() : V2
      {
         this.x = Math.abs(this.x);
         this.y = Math.abs(this.y);
         return this;
      }
      
      public function angle() : Number
      {
         return Math.atan2(this.y,this.x);
      }
      
      public function sign() : V2
      {
         this.x = this.x > 0 ? 1 : (this.x < 0 ? -1 : 0);
         this.y = this.y > 0 ? 1 : (this.y < 0 ? -1 : 0);
         return this;
      }
      
      public function flip() : V2
      {
         return this.xy(this.y,this.x);
      }
      
      public function cw90() : V2
      {
         return this.xy(this.y,-this.x);
      }
      
      public function ccw90() : V2
      {
         return this.xy(-this.y,this.x);
      }
      
      public function min(param1:V2) : V2
      {
         this.x = Math.min(this.x,param1.x);
         this.y = Math.min(this.y,param1.y);
         return this;
      }
      
      public function max(param1:V2) : V2
      {
         this.x = Math.max(this.x,param1.x);
         this.y = Math.max(this.y,param1.y);
         return this;
      }
      
      public function invert() : V2
      {
         return this.multiplyN(-1);
      }
   }
}

