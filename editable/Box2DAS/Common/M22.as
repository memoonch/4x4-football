package Box2DAS.Common
{
   public class M22
   {
      
      public var c1:V2 = new V2();
      
      public var c2:V2 = new V2();
      
      public function M22(param1:V2 = null, param2:V2 = null)
      {
         super();
         if(Boolean(param1) && Boolean(param2))
         {
            this.columns(param1,param2);
         }
      }
      
      public static function values(param1:Number, param2:Number, param3:Number, param4:Number) : M22
      {
         var _loc5_:M22 = new M22();
         _loc5_.values(param1,param2,param3,param4);
         return _loc5_;
      }
      
      public static function angle(param1:Number) : M22
      {
         var _loc2_:M22 = new M22();
         _loc2_.angle = param1;
         return _loc2_;
      }
      
      public static function identity() : M22
      {
         return new M22().identity();
      }
      
      public function toString() : String
      {
         return "<<" + this.c1.x + ", " + this.c1.y + ">, <" + this.c2.x + ", " + this.c2.y + ">>";
      }
      
      public function columns(param1:V2, param2:V2) : void
      {
         this.c1.xy(param1.x,param1.y);
         this.c2.xy(param2.x,param2.y);
      }
      
      public function values(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.c1.xy(param1,param2);
         this.c2.xy(param3,param4);
      }
      
      public function clone() : M22
      {
         return new M22(this.c1,this.c2);
      }
      
      public function set angle(param1:Number) : void
      {
         this.c1.x = Math.cos(param1);
         this.c1.y = Math.sin(param1);
         this.c2.x = -this.c1.y;
         this.c2.y = this.c1.x;
      }
      
      public function get angle() : Number
      {
         return Math.atan2(this.c1.y,this.c1.x);
      }
      
      public function zero() : void
      {
         this.c1.zero();
         this.c2.zero();
      }
      
      public function multiplyV(param1:V2) : V2
      {
         return new V2(this.c1.x * param1.x + this.c2.x * param1.y,this.c1.y * param1.x + this.c2.y * param1.y);
      }
      
      public function multiplyVT(param1:V2) : V2
      {
         return new V2(param1.dot(this.c1),param1.dot(this.c2));
      }
      
      public function identity() : M22
      {
         this.c1.x = 1;
         this.c2.y = 1;
         return this;
      }
   }
}

