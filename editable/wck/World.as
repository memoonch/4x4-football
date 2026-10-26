package wck
{
   import Box2DAS.*;
   import Box2DAS.Collision.*;
   import Box2DAS.Collision.Shapes.*;
   import Box2DAS.Common.*;
   import Box2DAS.Dynamics.*;
   import Box2DAS.Dynamics.Contacts.*;
   import Box2DAS.Dynamics.Joints.*;
   import cmodule.Box2D.*;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import gravity.*;
   import misc.*;
   
   public class World extends Scroller
   {
      
      public static var dragJointClass:Class = Joint;
      
      public static var dragJointStrength:Number = 100;
      
      public static var dragJointMassFactor:Number = 200;
      
      public var scale:Number = 60;
      
      public var timeStep:Number = 0.05;
      
      public var velocityIterations:int = 10;
      
      public var positionIterations:int = 10;
      
      public var gravityX:Number = 0;
      
      public var gravityY:Number = 10;
      
      public var allowSleep:Boolean = true;
      
      public var allowDragging:Boolean = true;
      
      public var paused:Boolean = false;
      
      public var orientToGravity:Boolean = false;
      
      public var debugDraw:Boolean = false;
      
      public var outsideTS:Array = [];
      
      public var baseGravity:V2;
      
      public var b2world:b2World;
      
      public var customGravity:Gravity;
      
      public var debug:b2DebugDraw;
      
      public var kDrag:Object;
      
      public var dragMethod:String = "Mouse";
      
      public var dragJoint:Joint;
      
      public function World()
      {
         super();
      }
      
      override public function create() : void
      {
         this.baseGravity = new V2(this.gravityX,this.gravityY);
         this.b2world = new b2World(new V2(0,0),this.allowSleep,this);
         listenWhileVisible(stage,Event.ENTER_FRAME,this.step);
         listenWhileVisible(this,StepEvent.STEP,this.applyGravityToWorld,false,10);
         super.create();
         if(this.debugDraw)
         {
            this.debug = new b2DebugDraw(this.b2world,this.scale);
            addChild(this.debug);
         }
         listenWhileVisible(this,MouseEvent.MOUSE_DOWN,this.handleDragStart);
      }
      
      public function handleDragStart(param1:Event) : void
      {
         var _loc3_:Point = null;
         var _loc4_:Point = null;
         var _loc2_:BodyShape = Util.findAncestorOfClass(param1.target as DisplayObject,BodyShape,true) as BodyShape;
         if(Boolean(_loc2_) && Boolean(_loc2_.b2body) && _loc2_.allowDragging)
         {
            if(this.dragMethod == "Mouse" && _loc2_.b2body.IsDynamic())
            {
               this.createDragJoint(_loc2_);
            }
            else if(this.dragMethod == "Kinematic")
            {
               _loc2_.listenWhileVisible(stage,Event.ENTER_FRAME,this.handleDragStep,false,1000);
               _loc2_.listenWhileVisible(stage,Input.MOUSE_UP_OR_LOST,this.handleDragStop);
               _loc3_ = Input.mousePositionIn(this);
               _loc4_ = Util.localizePoint(this,_loc2_.body);
               _loc2_ = _loc2_.body;
               this.kDrag = {
                  "body":_loc2_,
                  "type":_loc2_.type,
                  "autoSleep":_loc2_.autoSleep,
                  "offset":_loc3_.subtract(_loc4_)
               };
               _loc2_.type = "Animated";
               _loc2_.awake = true;
               _loc2_.autoSleep = false;
            }
         }
      }
      
      public function createDragJoint(param1:BodyShape) : void
      {
         param1.body.awake = true;
         param1.listenWhileVisible(stage,Event.ENTER_FRAME,this.handleDragStep,false,1000);
         param1.listenWhileVisible(stage,Input.MOUSE_UP_OR_LOST,this.handleDragStop);
         this.dragJoint = new dragJointClass() as Joint;
         this.dragJoint.maxForce = dragJointStrength + param1.b2body.m_mass * dragJointMassFactor;
         this.dragJoint.frequencyHz = 999999;
         this.dragJoint.dampingRatio = 0;
         this.dragJoint.collideConnected = true;
         this.dragJoint.type = "Mouse";
         var _loc2_:Point = Input.mousePositionIn(this);
         this.dragJoint.x = _loc2_.x;
         this.dragJoint.y = _loc2_.y;
         this.dragJoint.bodyShape1 = param1.body;
         addChild(this.dragJoint);
      }
      
      public function handleDragStep(param1:Event) : void
      {
         if(this.dragJoint)
         {
            (this.dragJoint.b2joint as b2MouseJoint).SetTarget(V2.fromP(Input.mousePositionIn(this)).divideN(this.scale));
         }
         else
         {
            this.kDrag.body.setPos(Input.mousePositionIn(this).subtract(this.kDrag.offset));
         }
      }
      
      public function handleDragStop(param1:Event) : void
      {
         if(stage)
         {
            stopListening(stage,Event.ENTER_FRAME,this.handleDragStep);
            stopListening(stage,Input.MOUSE_UP_OR_LOST,this.handleDragStop);
         }
         if(this.dragJoint)
         {
            this.dragJoint.remove();
         }
         else
         {
            this.kDrag.body.type = this.kDrag.type;
            this.kDrag.body.autoSleep = this.kDrag.autoSleep;
            this.kDrag = null;
         }
      }
      
      override public function destroy() : void
      {
         this.doOutsideTimeStep(function():void
         {
            b2world.destroy();
            b2world = null;
         });
      }
      
      public function step(param1:Event = null) : void
      {
         if(this.paused)
         {
            return;
         }
         this.b2world.Step(this.timeStep,this.velocityIterations,this.positionIterations);
         var _loc2_:uint = 0;
         while(_loc2_ < this.outsideTS.length)
         {
            this.outsideTS[_loc2_][0].apply(null,this.outsideTS[_loc2_][1]);
            _loc2_++;
         }
         this.outsideTS = [];
         if(this.debug)
         {
            this.debug.Draw();
            addChild(this.debug);
         }
      }
      
      public function applyGravityToWorld(param1:Event) : void
      {
         var _loc2_:BodyShape = null;
         var _loc4_:V2 = null;
         if(this.paused)
         {
            return;
         }
         var _loc3_:b2Body = this.b2world.m_bodyList;
         while(_loc3_)
         {
            _loc2_ = _loc3_.m_userData as BodyShape;
            if(_loc3_.IsAwake() && _loc3_.IsDynamic())
            {
               _loc4_ = this.getGravityFor(_loc3_.GetWorldCenter(),_loc3_,_loc2_);
               if(!_loc2_ || _loc2_.applyGravity)
               {
                  _loc3_.m_linearVelocity.x += this.timeStep * _loc4_.x;
                  _loc3_.m_linearVelocity.y += this.timeStep * _loc4_.y;
               }
               if(_loc2_)
               {
                  _loc2_.gravity = _loc4_;
               }
            }
            _loc3_ = _loc3_.GetNext();
         }
      }
      
      public function getGravityFor(param1:V2, param2:b2Body = null, param3:BodyShape = null) : V2
      {
         var _loc4_:V2 = null;
         if(Boolean(param3) && Boolean(param3.customGravity))
         {
            _loc4_ = param3.customGravity.gravity(param1,param2,param3);
         }
         else if(this.customGravity)
         {
            _loc4_ = this.customGravity.gravity(param1,param2,param3);
         }
         else
         {
            _loc4_ = this.baseGravity.clone();
         }
         if(Boolean(param3) && param3.gravityMod)
         {
            param3.modifyGravity(_loc4_);
         }
         return _loc4_;
      }
      
      public function doOutsideTimeStep(param1:Function, ... rest) : void
      {
         if(this.b2world.IsLocked())
         {
            this.outsideTS.push([param1,rest]);
         }
         else
         {
            param1.apply(null,rest);
         }
      }
      
      override public function scrollRotation() : Number
      {
         var _loc1_:BodyShape = null;
         var _loc2_:V2 = null;
         if(this.orientToGravity)
         {
            _loc1_ = focus as BodyShape;
            _loc2_ = this.getGravityFor(V2.fromP(pos).divideN(this.scale),_loc1_ ? _loc1_.b2body : null,_loc1_);
            return Math.atan2(_loc2_.y,-_loc2_.x) * Util.R2D - 90;
         }
         return rot;
      }
   }
}

