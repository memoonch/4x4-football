package Box2DAS.Common
{
   public class XF
   {
      
      public var p:V2 = new V2();
      
      public var r:M22 = new M22();
      
      public function XF(param1:V2 = null, param2:M22 = null)
      {
         super();
         if(Boolean(param1) && Boolean(param2))
         {
            this.posRot(param1,param2);
         }
      }
      
      public function posRot(param1:V2, param2:M22) : void
      {
         this.p.xy(param1.x,param1.y);
         this.r.columns(param2.c1,param2.c2);
      }
      
      public function get angle() : Number
      {
         return this.r.angle;
      }
      
      public function set angle(param1:Number) : void
      {
         this.r.angle = param1;
      }
      
      public function multiply(param1:V2) : V2
      {
         var _loc2_:V2 = this.r.multiplyV(param1);
         _loc2_.add(this.p);
         return _loc2_;
      }
      
      public function multiplyT(param1:V2) : V2
      {
         return this.r.multiplyVT(V2.subtract(param1,this.p));
      }
   }
}

