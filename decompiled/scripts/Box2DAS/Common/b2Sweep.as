package Box2DAS.Common
{
   public class b2Sweep extends b2Base
   {
      
      public var localCenter:b2Vec2;
      
      public var c0:b2Vec2;
      
      public var c:b2Vec2;
      
      public function b2Sweep(param1:int)
      {
         super();
         _ptr = param1;
         this.localCenter = new b2Vec2(_ptr + 0);
         this.c0 = new b2Vec2(_ptr + 8);
         this.c = new b2Vec2(_ptr + 16);
      }
      
      public function get a0() : Number
      {
         return mem._mrf(_ptr + 24);
      }
      
      public function set a0(param1:Number) : void
      {
         mem._mwf(_ptr + 24,param1);
      }
      
      public function get a() : Number
      {
         return mem._mrf(_ptr + 28);
      }
      
      public function set a(param1:Number) : void
      {
         mem._mwf(_ptr + 28,param1);
      }
      
      public function get alpha0() : Number
      {
         return mem._mrf(_ptr + 32);
      }
      
      public function set alpha0(param1:Number) : void
      {
         mem._mwf(_ptr + 32,param1);
      }
   }
}

