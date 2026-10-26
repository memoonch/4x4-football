package Box2DAS.Common
{
   import Box2DAS.*;
   import Box2DAS.Collision.*;
   import Box2DAS.Collision.Shapes.*;
   import Box2DAS.Dynamics.*;
   import Box2DAS.Dynamics.Contacts.*;
   import Box2DAS.Dynamics.Joints.*;
   import cmodule.Box2D.*;
   
   public class b2Settings extends b2Base
   {
      
      public function b2Settings()
      {
         super();
      }
      
      public static function get b2_maxFloat() : Number
      {
         return mem._mrf(lib.b2Settings.b2_maxFloat);
      }
      
      public static function set b2_maxFloat(param1:Number) : void
      {
         mem._mwf(lib.b2Settings.b2_maxFloat,param1);
      }
      
      public static function get b2_epsilon() : Number
      {
         return mem._mrf(lib.b2Settings.b2_epsilon);
      }
      
      public static function set b2_epsilon(param1:Number) : void
      {
         mem._mwf(lib.b2Settings.b2_epsilon,param1);
      }
      
      public static function get b2_pi() : Number
      {
         return mem._mrf(lib.b2Settings.b2_pi);
      }
      
      public static function set b2_pi(param1:Number) : void
      {
         mem._mwf(lib.b2Settings.b2_pi,param1);
      }
      
      public static function get b2_maxManifoldPoints() : int
      {
         return mem._mr32(lib.b2Settings.b2_maxManifoldPoints);
      }
      
      public static function set b2_maxManifoldPoints(param1:int) : void
      {
         mem._mw32(lib.b2Settings.b2_maxManifoldPoints,param1);
      }
      
      public static function get b2_maxPolygonVertices() : int
      {
         return mem._mr32(lib.b2Settings.b2_maxPolygonVertices);
      }
      
      public static function set b2_maxPolygonVertices(param1:int) : void
      {
         mem._mw32(lib.b2Settings.b2_maxPolygonVertices,param1);
      }
      
      public static function get b2_aabbExtension() : Number
      {
         return mem._mrf(lib.b2Settings.b2_aabbExtension);
      }
      
      public static function set b2_aabbExtension(param1:Number) : void
      {
         mem._mwf(lib.b2Settings.b2_aabbExtension,param1);
      }
      
      public static function get b2_aabbMultiplier() : Number
      {
         return mem._mrf(lib.b2Settings.b2_aabbMultiplier);
      }
      
      public static function set b2_aabbMultiplier(param1:Number) : void
      {
         mem._mwf(lib.b2Settings.b2_aabbMultiplier,param1);
      }
      
      public static function get b2_linearSlop() : Number
      {
         return mem._mrf(lib.b2Settings.b2_linearSlop);
      }
      
      public static function set b2_linearSlop(param1:Number) : void
      {
         mem._mwf(lib.b2Settings.b2_linearSlop,param1);
      }
      
      public static function get b2_angularSlop() : Number
      {
         return mem._mrf(lib.b2Settings.b2_angularSlop);
      }
      
      public static function set b2_angularSlop(param1:Number) : void
      {
         mem._mwf(lib.b2Settings.b2_angularSlop,param1);
      }
      
      public static function get b2_polygonRadius() : Number
      {
         return mem._mrf(lib.b2Settings.b2_polygonRadius);
      }
      
      public static function set b2_polygonRadius(param1:Number) : void
      {
         mem._mwf(lib.b2Settings.b2_polygonRadius,param1);
      }
      
      public static function get b2_maxSubSteps() : Number
      {
         return mem._mrf(lib.b2Settings.b2_maxSubSteps);
      }
      
      public static function set b2_maxSubSteps(param1:Number) : void
      {
         mem._mwf(lib.b2Settings.b2_maxSubSteps,param1);
      }
      
      public static function get b2_maxTOIContacts() : int
      {
         return mem._mr32(lib.b2Settings.b2_maxTOIContacts);
      }
      
      public static function set b2_maxTOIContacts(param1:int) : void
      {
         mem._mw32(lib.b2Settings.b2_maxTOIContacts,param1);
      }
      
      public static function get b2_velocityThreshold() : Number
      {
         return mem._mrf(lib.b2Settings.b2_velocityThreshold);
      }
      
      public static function set b2_velocityThreshold(param1:Number) : void
      {
         mem._mwf(lib.b2Settings.b2_velocityThreshold,param1);
      }
      
      public static function get b2_maxLinearCorrection() : Number
      {
         return mem._mrf(lib.b2Settings.b2_maxLinearCorrection);
      }
      
      public static function set b2_maxLinearCorrection(param1:Number) : void
      {
         mem._mwf(lib.b2Settings.b2_maxLinearCorrection,param1);
      }
      
      public static function get b2_maxAngularCorrection() : Number
      {
         return mem._mrf(lib.b2Settings.b2_maxAngularCorrection);
      }
      
      public static function set b2_maxAngularCorrection(param1:Number) : void
      {
         mem._mwf(lib.b2Settings.b2_maxAngularCorrection,param1);
      }
      
      public static function get b2_maxTranslation() : Number
      {
         return mem._mrf(lib.b2Settings.b2_maxTranslation);
      }
      
      public static function set b2_maxTranslation(param1:Number) : void
      {
         mem._mwf(lib.b2Settings.b2_maxTranslation,param1);
      }
      
      public static function get b2_maxTranslationSquared() : Number
      {
         return mem._mrf(lib.b2Settings.b2_maxTranslationSquared);
      }
      
      public static function set b2_maxTranslationSquared(param1:Number) : void
      {
         mem._mwf(lib.b2Settings.b2_maxTranslationSquared,param1);
      }
      
      public static function get b2_maxRotation() : Number
      {
         return mem._mrf(lib.b2Settings.b2_maxRotation);
      }
      
      public static function set b2_maxRotation(param1:Number) : void
      {
         mem._mwf(lib.b2Settings.b2_maxRotation,param1);
      }
      
      public static function get b2_maxRotationSquared() : Number
      {
         return mem._mrf(lib.b2Settings.b2_maxRotationSquared);
      }
      
      public static function set b2_maxRotationSquared(param1:Number) : void
      {
         mem._mwf(lib.b2Settings.b2_maxRotationSquared,param1);
      }
      
      public static function get b2_contactBaumgarte() : Number
      {
         return mem._mrf(lib.b2Settings.b2_contactBaumgarte);
      }
      
      public static function set b2_contactBaumgarte(param1:Number) : void
      {
         mem._mwf(lib.b2Settings.b2_contactBaumgarte,param1);
      }
      
      public static function get b2_timeToSleep() : Number
      {
         return mem._mrf(lib.b2Settings.b2_timeToSleep);
      }
      
      public static function set b2_timeToSleep(param1:Number) : void
      {
         mem._mwf(lib.b2Settings.b2_timeToSleep,param1);
      }
      
      public static function get b2_linearSleepTolerance() : Number
      {
         return mem._mrf(lib.b2Settings.b2_linearSleepTolerance);
      }
      
      public static function set b2_linearSleepTolerance(param1:Number) : void
      {
         mem._mwf(lib.b2Settings.b2_linearSleepTolerance,param1);
      }
      
      public static function get b2_angularSleepTolerance() : Number
      {
         return mem._mrf(lib.b2Settings.b2_angularSleepTolerance);
      }
      
      public static function set b2_angularSleepTolerance(param1:Number) : void
      {
         mem._mwf(lib.b2Settings.b2_angularSleepTolerance,param1);
      }
   }
}

