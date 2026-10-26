package Box2DAS.Collision
{
   import Box2DAS.*;
   import Box2DAS.Collision.Shapes.*;
   import Box2DAS.Common.*;
   import Box2DAS.Dynamics.*;
   import Box2DAS.Dynamics.Contacts.*;
   import Box2DAS.Dynamics.Joints.*;
   import cmodule.Box2D.*;
   
   public function b2Distance(param1:b2DistanceOutput = null, param2:b2SimplexCache = null, param3:b2DistanceInput = null) : void
   {
      param1 ||= b2Def.distanceOutput;
      param2 ||= b2Def.simplexCache;
      param3 ||= b2Def.distanceInput;
      b2Base.lib.b2Distance(param1._ptr,param2._ptr,param3._ptr);
   }
}

