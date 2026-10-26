package Box2DAS.Collision
{
   import Box2DAS.*;
   import Box2DAS.Collision.Shapes.*;
   import Box2DAS.Common.*;
   import Box2DAS.Dynamics.*;
   import Box2DAS.Dynamics.Contacts.*;
   import Box2DAS.Dynamics.Joints.*;
   import cmodule.Box2D.*;
   
   public class b2DistanceInput extends b2Base
   {
      
      public var proxyA:b2DistanceProxy;
      
      public var proxyB:b2DistanceProxy;
      
      public var transformA:b2Transform;
      
      public var transformB:b2Transform;
      
      public function b2DistanceInput()
      {
         super();
         _ptr = lib.b2DistanceInput_new();
         this.proxyA = new b2DistanceProxy(_ptr + 0);
         this.proxyB = new b2DistanceProxy(_ptr + 28);
         this.transformA = new b2Transform(_ptr + 56);
         this.transformB = new b2Transform(_ptr + 80);
      }
      
      override public function destroy() : void
      {
         lib.b2DistanceInput_delete(_ptr);
         super.destroy();
      }
      
      public function init(param1:b2Fixture, param2:b2Fixture) : void
      {
         this.proxyA.Set(param1.m_shape);
         this.proxyB.Set(param2.m_shape);
         this.transformA.xf = param1.m_body.m_xf.xf;
         this.transformB.xf = param2.m_body.m_xf.xf;
      }
      
      public function get useRadii() : Boolean
      {
         return mem._mru8(_ptr + 104) == 1;
      }
      
      public function set useRadii(param1:Boolean) : void
      {
         mem._mw8(_ptr + 104,param1 ? 1 : 0);
      }
   }
}

