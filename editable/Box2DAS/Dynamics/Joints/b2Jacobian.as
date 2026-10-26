package Box2DAS.Dynamics.Joints
{
   import Box2DAS.Common.b2Base;
   import Box2DAS.Common.b2Vec2;
   
   public class b2Jacobian extends b2Base
   {
      
      public var linear1:b2Vec2;
      
      public var linear2:b2Vec2;
      
      public function b2Jacobian(param1:int)
      {
         super();
         _ptr = param1;
         this.linear1 = new b2Vec2(_ptr + 0);
         this.linear2 = new b2Vec2(_ptr + 12);
      }
      
      public function get angular1() : Number
      {
         return mem._mrf(_ptr + 8);
      }
      
      public function set angular1(param1:Number) : void
      {
         mem._mwf(_ptr + 8,param1);
      }
      
      public function get angular2() : Number
      {
         return mem._mrf(_ptr + 20);
      }
      
      public function set angular2(param1:Number) : void
      {
         mem._mwf(_ptr + 20,param1);
      }
   }
}

