package Box2DAS.Dynamics.Contacts
{
   import Box2DAS.Common.b2Base;
   import Box2DAS.Dynamics.b2Body;
   
   public class b2ContactEdge extends b2Base
   {
      
      public function b2ContactEdge(param1:int)
      {
         super();
         _ptr = param1;
      }
      
      public function get other() : b2Body
      {
         return deref(mem._mr32(mem._mr32(_ptr + 0) + 152)) as b2Body;
      }
      
      public function get contact() : b2Contact
      {
         return new b2Contact(mem._mr32(_ptr + 4));
      }
      
      public function get prev() : b2ContactEdge
      {
         var _loc1_:int = mem._mr32(_ptr + 8);
         return _loc1_ ? new b2ContactEdge(_loc1_) : null;
      }
      
      public function get next() : b2ContactEdge
      {
         var _loc1_:int = mem._mr32(_ptr + 12);
         return _loc1_ ? new b2ContactEdge(_loc1_) : null;
      }
   }
}

