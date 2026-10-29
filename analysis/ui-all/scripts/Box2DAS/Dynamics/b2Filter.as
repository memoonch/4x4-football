package Box2DAS.Dynamics
{
   import Box2DAS.*;
   import Box2DAS.Collision.*;
   import Box2DAS.Collision.Shapes.*;
   import Box2DAS.Common.*;
   import Box2DAS.Dynamics.Contacts.*;
   import Box2DAS.Dynamics.Joints.*;
   import cmodule.Box2D.*;
   
   public class b2Filter extends b2Base
   {
      
      public function b2Filter(param1:int)
      {
         super();
         _ptr = param1;
      }
      
      public function set filter(param1:Object) : void
      {
         this.categoryBits = param1.categoryBits;
         this.maskBits = param1.maskBits;
         this.groupIndex = param1.groupIndex;
      }
      
      public function get filter() : Object
      {
         return {
            "categoryBits":this.categoryBits,
            "maskBits":this.maskBits,
            "groupIndex":this.groupIndex
         };
      }
      
      public function get categoryBits() : int
      {
         return mem._mru16(_ptr + 0);
      }
      
      public function set categoryBits(param1:int) : void
      {
         mem._mw16(_ptr + 0,param1);
      }
      
      public function get maskBits() : int
      {
         return mem._mru16(_ptr + 2);
      }
      
      public function set maskBits(param1:int) : void
      {
         mem._mw16(_ptr + 2,param1);
      }
      
      public function get groupIndex() : int
      {
         return mem._mrs16(_ptr + 4);
      }
      
      public function set groupIndex(param1:int) : void
      {
         mem._mw16(_ptr + 4,param1);
      }
   }
}

