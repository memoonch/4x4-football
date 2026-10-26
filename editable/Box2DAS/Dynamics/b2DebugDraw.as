package Box2DAS.Dynamics
{
   import Box2DAS.*;
   import Box2DAS.Collision.*;
   import Box2DAS.Collision.Shapes.*;
   import Box2DAS.Common.*;
   import Box2DAS.Dynamics.Contacts.*;
   import Box2DAS.Dynamics.Joints.*;
   import cmodule.Box2D.*;
   import flash.display.*;
   import flash.events.*;
   import flash.utils.*;
   
   public class b2DebugDraw extends Shape
   {
      
      public var colors:Object = {
         "shape":[8359035,0],
         "static":[6119513,0],
         "kinematic":[6118992,0],
         "inactive":[16777215,0],
         "asleep":[12894638,0],
         "joints":0,
         "pairs":0
      };
      
      public var scale:Number = 1;
      
      public var world:b2World;
      
      public var shapes:Boolean = true;
      
      public var joints:Boolean = true;
      
      public var pairs:Boolean = false;
      
      public function b2DebugDraw(param1:b2World = null, param2:Number = 1)
      {
         super();
         this.world = param1;
         this.scale = param2;
      }
      
      public function Draw() : void
      {
         var _loc1_:b2Body = null;
         var _loc2_:XF = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Joint = null;
         var _loc5_:b2Contact = null;
         graphics.clear();
         if(this.shapes)
         {
            _loc1_ = this.world.m_bodyList;
            while(_loc1_)
            {
               _loc2_ = _loc1_.GetTransform();
               _loc3_ = _loc1_.GetFixtureList();
               while(_loc3_)
               {
                  this.DrawShape(_loc3_,_loc2_);
                  _loc3_ = _loc3_.GetNext();
               }
               _loc1_ = _loc1_.GetNext();
            }
         }
         if(this.joints)
         {
            _loc4_ = this.world.m_jointList;
            while(_loc4_)
            {
               this.DrawJoint(_loc4_);
               _loc4_ = _loc4_.GetNext();
            }
         }
         if(this.pairs)
         {
            _loc5_ = this.world.GetContactList();
            while(_loc5_)
            {
               this.DrawPair(_loc5_);
               _loc5_ = _loc5_.GetNext();
            }
         }
      }
      
      public function DrawShape(param1:b2Fixture, param2:XF) : void
      {
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:Array = !_loc3_.IsActive() ? this.colors.inactive : (_loc3_.IsStatic() ? this.colors.static : (_loc3_.IsKinematic() ? this.colors.kinematic : (!_loc3_.IsAwake() ? this.colors.asleep : this.colors.shape)));
         graphics.beginFill(_loc4_[0],0.5);
         graphics.lineStyle(1,_loc4_[1]);
         param1.m_shape.Draw(graphics,param2,this.scale);
      }
      
      public function DrawJoint(param1:b2Joint) : void
      {
         var _loc10_:b2PulleyJoint = null;
         var _loc11_:V2 = null;
         var _loc12_:V2 = null;
         var _loc2_:b2Body = param1.GetBodyA();
         var _loc3_:b2Body = param1.GetBodyB();
         var _loc4_:XF = _loc2_.GetTransform();
         var _loc5_:XF = _loc3_.GetTransform();
         var _loc6_:V2 = _loc4_.p;
         var _loc7_:V2 = _loc5_.p;
         var _loc8_:V2 = param1.GetAnchorA();
         var _loc9_:V2 = param1.GetAnchorB();
         graphics.lineStyle(1,this.colors.joint);
         switch(param1.GetType())
         {
            case b2Joint.e_mouseJoint:
            case b2Joint.e_distanceJoint:
               this.DrawSegment(_loc8_,_loc9_);
               break;
            case b2Joint.e_pulleyJoint:
               _loc10_ = param1 as b2PulleyJoint;
               _loc11_ = _loc10_.GetGroundAnchor1();
               _loc12_ = _loc10_.GetGroundAnchor2();
               this.DrawSegment(_loc11_,_loc8_);
               this.DrawSegment(_loc12_,_loc9_);
               this.DrawSegment(_loc11_,_loc12_);
               break;
            default:
               this.DrawSegment(_loc6_,_loc8_);
               this.DrawSegment(_loc8_,_loc9_);
               this.DrawSegment(_loc7_,_loc9_);
         }
      }
      
      public function DrawPair(param1:b2Contact) : void
      {
         var _loc2_:V2 = param1.m_fixtureA.m_aabb.aabb.getCenter();
         var _loc3_:V2 = param1.m_fixtureB.m_aabb.aabb.getCenter();
         this.DrawSegment(_loc2_,_loc3_);
      }
      
      public function DrawSegment(param1:V2, param2:V2) : void
      {
         graphics.moveTo(param1.x * this.scale,param1.y * this.scale);
         graphics.lineTo(param2.x * this.scale,param2.y * this.scale);
      }
   }
}

