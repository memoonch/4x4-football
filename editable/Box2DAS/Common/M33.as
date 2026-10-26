package Box2DAS.Common
{
   public class M33
   {
      
      public var c1:V3 = new V3();
      
      public var c2:V3 = new V3();
      
      public var c3:V3 = new V3();
      
      public function M33(param1:V3 = null, param2:V3 = null, param3:V3 = null)
      {
         super();
         if(Boolean(this.c1) && Boolean(this.c2) && Boolean(this.c3))
         {
            this.columns(this.c1,this.c2,this.c3);
         }
      }
      
      public static function values(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number) : M33
      {
         var _loc10_:M33 = new M33();
         _loc10_.values(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         return _loc10_;
      }
      
      public function columns(param1:V3, param2:V3, param3:V3) : void
      {
         this.c1.xyz(param1.x,param1.y,param1.z);
         this.c2.xyz(param2.x,param2.y,param2.z);
         this.c3.xyz(param3.x,param3.y,param3.z);
      }
      
      public function values(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number) : void
      {
         this.c1.xyz(param1,param2,param3);
         this.c2.xyz(param4,param5,param6);
         this.c3.xyz(param7,param8,param9);
      }
      
      public function clone() : M33
      {
         return new M33(this.c1,this.c2,this.c3);
      }
      
      public function zero() : void
      {
         this.c1.zero();
         this.c2.zero();
         this.c3.zero();
      }
      
      public function multiplyV(param1:V3) : V3
      {
         return this.c1.multiplyN(param1.x) + this.c2.multiplyN(param1.y) + this.c3.multiplyN(param1.z);
      }
   }
}

