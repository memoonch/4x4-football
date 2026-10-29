package Box2DAS.Dynamics
{
   import Box2DAS.Common.b2Base;
   
   public class b2ContactImpulse extends b2Base
   {
      
      public function b2ContactImpulse(param1:int)
      {
         super();
         _ptr = param1;
      }
      
      public function get normalImpulse1() : Number
      {
         return mem._mrf(_ptr + 0);
      }
      
      public function set normalImpulse1(param1:Number) : void
      {
         mem._mwf(_ptr + 0,param1);
      }
      
      public function get normalImpulse2() : Number
      {
         return mem._mrf(_ptr + 4);
      }
      
      public function set normalImpulse2(param1:Number) : void
      {
         mem._mwf(_ptr + 4,param1);
      }
      
      public function get tangentImpulse1() : Number
      {
         return mem._mrf(_ptr + 8);
      }
      
      public function set tangentImpulse1(param1:Number) : void
      {
         mem._mwf(_ptr + 8,param1);
      }
      
      public function get tangentImpulse2() : Number
      {
         return mem._mrf(_ptr + 12);
      }
      
      public function set tangentImpulse2(param1:Number) : void
      {
         mem._mwf(_ptr + 12,param1);
      }
   }
}

