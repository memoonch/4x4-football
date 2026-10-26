package Box2DAS.Collision
{
   import Box2DAS.*;
   import Box2DAS.Collision.Shapes.*;
   import Box2DAS.Common.*;
   import Box2DAS.Dynamics.*;
   import Box2DAS.Dynamics.Contacts.*;
   import Box2DAS.Dynamics.Joints.*;
   import cmodule.Box2D.*;
   
   public class b2WorldManifold
   {
      
      public var normal:V2;
      
      public var points:Array = [];
      
      public function b2WorldManifold()
      {
         super();
      }
      
      public function Initialize(param1:b2Manifold, param2:XF, param3:Number, param4:XF, param5:Number) : void
      {
         var _loc6_:V2 = null;
         var _loc7_:V2 = null;
         var _loc8_:uint = 0;
         var _loc9_:V2 = null;
         var _loc10_:V2 = null;
         var _loc11_:V2 = null;
         var _loc12_:V2 = null;
         var _loc13_:V2 = null;
         if(param1.pointCount == 0)
         {
            return;
         }
         switch(param1.type)
         {
            case b2Manifold.e_circles:
               _loc12_ = param2.multiply(param1.localPoint.v2);
               _loc13_ = param4.multiply(param1.points[0].localPoint.v2);
               _loc6_ = V2.subtract(_loc13_,_loc12_).normalize();
               this.normal = _loc6_;
               _loc10_ = _loc12_.add(V2.multiplyN(this.normal,param3));
               _loc11_ = _loc13_.subtract(V2.multiplyN(this.normal,param5));
               this.points[0] = V2.add(_loc10_,_loc11_).multiplyN(0.5);
               break;
            case b2Manifold.e_faceA:
               _loc6_ = param2.r.multiplyV(param1.localNormal.v2);
               _loc7_ = param2.multiply(param1.localPoint.v2);
               this.normal = _loc6_;
               _loc8_ = 0;
               while(_loc8_ < param1.pointCount)
               {
                  _loc9_ = param4.multiply(param1.points[_loc8_].localPoint.v2);
                  _loc10_ = V2.add(_loc9_,V2.multiplyN(this.normal,param3 - this.normal.dot(V2.subtract(_loc9_,_loc7_))));
                  _loc11_ = V2.subtract(_loc9_,V2.multiplyN(this.normal,param5));
                  this.points[_loc8_] = V2.add(_loc10_,_loc11_).multiplyN(0.5);
                  _loc8_++;
               }
               break;
            case b2Manifold.e_faceB:
               _loc6_ = param4.r.multiplyV(param1.localNormal.v2);
               _loc7_ = param4.multiply(param1.localPoint.v2);
               this.normal = _loc6_.multiplyN(-1);
               _loc8_ = 0;
               while(_loc8_ < param1.pointCount)
               {
                  _loc9_ = param2.multiply(param1.points[_loc8_].localPoint.v2);
                  _loc10_ = V2.subtract(_loc9_,V2.multiplyN(this.normal,param3));
                  _loc11_ = V2.add(_loc9_,V2.multiplyN(this.normal,param5 - this.normal.dot(V2.subtract(_loc9_,_loc7_))));
                  this.points[_loc8_] = V2.add(_loc10_,_loc11_).multiplyN(0.5);
                  _loc8_++;
               }
         }
      }
      
      public function OrientPoints() : Boolean
      {
         var _loc1_:Boolean = this.normal.x > 0 && this.points[0].y > this.points[1].y || this.normal.x < 0 && this.points[0].y < this.points[1].y || this.normal.y > 0 && this.points[0].x < this.points[1].x || this.normal.y < 0 && this.points[0].x > this.points[1].x;
         if(!_loc1_)
         {
            return true;
         }
         return false;
      }
      
      public function GetPoint() : V2
      {
         if(this.points.length == 0)
         {
            return null;
         }
         if(this.points.length == 1)
         {
            return this.points[0];
         }
         return new V2((this.points[0].x + this.points[1].x) / 2,(this.points[0].y + this.points[1].y) / 2);
      }
   }
}

