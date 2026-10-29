package Box2DAS.Collision.Shapes
{
   import Box2DAS.*;
   import Box2DAS.Collision.*;
   import Box2DAS.Common.*;
   import Box2DAS.Dynamics.*;
   import Box2DAS.Dynamics.Contacts.*;
   import Box2DAS.Dynamics.Joints.*;
   import cmodule.Box2D.*;
   import flash.display.*;
   
   public class b2CircleShape extends b2Shape
   {
      
      public var m_p:b2Vec2;
      
      public function b2CircleShape(param1:int = 0)
      {
         super();
         _ptr = param1 == 0 ? Number(lib.b2CircleShape_new()) : param1;
         this.m_p = new b2Vec2(_ptr + 16);
      }
      
      override public function destroy() : void
      {
         lib.b2CircleShape_delete(_ptr);
         super.destroy();
      }
      
      override public function Draw(param1:Graphics, param2:XF, param3:Number = 1, param4:Object = null) : void
      {
         var _loc5_:V2 = param2.multiply(this.m_p.v2);
         param1.drawCircle(_loc5_.x * param3,_loc5_.y * param3,m_radius * param3);
         param1.moveTo(_loc5_.x * param3,_loc5_.y * param3);
         var _loc6_:V2 = V2.multiplyN(param2.r.c1,m_radius).add(_loc5_);
         param1.lineTo(_loc6_.x * param3,_loc6_.y * param3);
      }
      
      override public function TestPoint(param1:XF, param2:V2) : Boolean
      {
         var _loc3_:V2 = param1.p.clone().add(param1.r.multiplyV(this.m_p.v2));
         var _loc4_:V2 = param2.clone().subtract(_loc3_);
         return _loc4_.dot(_loc4_) <= m_radius * m_radius;
      }
      
      override public function RayCast(param1:*, param2:*, param3:XF) : Boolean
      {
         return false;
      }
      
      override public function ComputeAABB(param1:AABB, param2:XF) : void
      {
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
      }
      
      override public function ComputeSubmergedArea(param1:V2, param2:Number, param3:XF, param4:V2) : Number
      {
         var _loc10_:Number = NaN;
         var _loc5_:V2 = param3.multiply(this.m_p.v2);
         var _loc6_:Number = -(param1.dot(_loc5_) - param2);
         var _loc7_:Number = m_radius;
         if(_loc6_ < -_loc7_)
         {
            return 0;
         }
         if(_loc6_ > _loc7_)
         {
            param4.copy(_loc5_);
            return m_area;
         }
         var _loc8_:Number = _loc7_ * _loc7_;
         var _loc9_:Number = _loc6_ * _loc6_;
         _loc10_ = _loc8_ * (Math.asin(_loc6_ / _loc7_) + Math.PI / 2) + _loc6_ * Math.sqrt(_loc8_ - _loc9_);
         var _loc11_:Number = -2 / 3 * Math.pow(_loc8_ - _loc9_,1.5) / _loc10_;
         param4.x = _loc5_.x + param1.x * _loc11_;
         param4.y = _loc5_.y + param1.y * _loc11_;
         return _loc10_;
      }
   }
}

