package wck
{
   import Box2DAS.Common.b2Base;
   import misc.Entity;
   import misc.Input;
   
   public class WCK extends Entity
   {
      
      public var worldofcars1:cars;
      
      public function WCK()
      {
         super();
      }
      
      override public function create() : void
      {
         b2Base.initialize();
         Input.initialize(stage);
      }
   }
}

