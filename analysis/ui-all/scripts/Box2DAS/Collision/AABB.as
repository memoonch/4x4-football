package Box2DAS.Collision
{
   import Box2DAS.Common.V2;
   
   public class AABB
   {
      
      public var lowerBound:V2 = new V2();
      
      public var upperBound:V2 = new V2();
      
      public function AABB(param1:V2 = null, param2:V2 = null)
      {
         super();
         if(param1)
         {
            this.lowerBound.xy(param1.x,param1.y);
         }
         if(param2)
         {
            this.upperBound.xy(param2.x,param2.y);
         }
      }
      
      public static function FromV2(param1:V2, param2:Number = 0.001, param3:Number = 0.001) : AABB
      {
         return new AABB(new V2(param1.x - param2,param1.y - param3),new V2(param1.x + param2,param1.y + param3));
      }
      
      public function get width() : Number
      {
         return this.upperBound.x - this.lowerBound.x;
      }
      
      public function get height() : Number
      {
         return this.upperBound.y - this.lowerBound.y;
      }
      
      public function IsValid() : Boolean
      {
         var _loc1_:V2 = V2.subtract(this.upperBound,this.lowerBound);
         return _loc1_.x > 0 && _loc1_.y > 0;
      }
      
      public function getCenter() : V2
      {
         return V2.add(this.lowerBound,this.upperBound).divideN(2);
      }
      
      public function GetExtents() : V2
      {
         return V2.subtract(this.upperBound,this.lowerBound).divideN(2);
      }
      
      public function Combine(param1:AABB, param2:AABB) : void
      {
         this.lowerBound = V2.min(param1.lowerBound,param2.lowerBound);
         this.upperBound = V2.max(param1.upperBound,param2.upperBound);
      }
      
      public function Contains(param1:AABB) : Boolean
      {
         return this.lowerBound.x <= param1.lowerBound.x && this.lowerBound.y <= param1.lowerBound.y && param1.upperBound.x <= this.upperBound.x && param1.upperBound.y <= this.upperBound.y;
      }
      
      public function Expand(param1:Number) : void
      {
         this.lowerBound.subtractN(param1);
         this.upperBound.addN(param1);
      }
      
      public function toString() : String
      {
         return "<AABB <" + this.lowerBound.x + ", " + this.lowerBound.y + ">, <" + this.upperBound.x + ", " + this.upperBound.y + ">>";
      }
   }
}

