package Box2DAS.Dynamics.Contacts
{
   import Box2DAS.Common.b2Base;
   
   public class b2ContactID extends b2Base
   {
      
      public static var e_vertex:int = 0;
      
      public static var e_face:int = 1;
      
      public function b2ContactID(param1:int)
      {
         super();
         _ptr = param1;
      }
      
      public function get key() : int
      {
         return mem._mr32(_ptr + 0);
      }
      
      public function set key(param1:int) : void
      {
         mem._mw32(_ptr + 0,param1);
      }
      
      public function get indexA() : int
      {
         return mem._mru8(_ptr + 0);
      }
      
      public function set indexA(param1:int) : void
      {
         mem._mw8(_ptr + 0,param1);
      }
      
      public function get indexB() : int
      {
         return mem._mru8(_ptr + 1);
      }
      
      public function set indexB(param1:int) : void
      {
         mem._mw8(_ptr + 1,param1);
      }
      
      public function get typeA() : int
      {
         return mem._mru8(_ptr + 2);
      }
      
      public function set typeA(param1:int) : void
      {
         mem._mw8(_ptr + 2,param1);
      }
      
      public function get typeB() : int
      {
         return mem._mru8(_ptr + 3);
      }
      
      public function set typeB(param1:int) : void
      {
         mem._mw8(_ptr + 3,param1);
      }
   }
}

