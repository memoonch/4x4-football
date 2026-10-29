package Box2DAS.Collision.Shapes
{
   import Box2DAS.*;
   import Box2DAS.Collision.*;
   import Box2DAS.Common.*;
   import Box2DAS.Dynamics.*;
   import Box2DAS.Dynamics.Contacts.*;
   import Box2DAS.Dynamics.Joints.*;
   import cmodule.Box2D.*;
   
   public class b2MassData extends b2Base
   {
      
      public var center:b2Vec2;
      
      public function b2MassData(param1:int = 0)
      {
         super();
         _ptr = param1 ? param1 : Number(lib.b2MassData_new());
         this.center = new b2Vec2(_ptr + 4);
      }
      
      public function get mass() : Number
      {
         return mem._mrf(_ptr + 0);
      }
      
      public function set mass(param1:Number) : void
      {
         mem._mwf(_ptr + 0,param1);
      }
      
      public function get I() : Number
      {
         return mem._mrf(_ptr + 12);
      }
      
      public function set I(param1:Number) : void
      {
         mem._mwf(_ptr + 12,param1);
      }
   }
}

