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
   import misc.*;
   
   public class Joint extends ScrollerChild
   {
      
      public var _collideConnected:Boolean = false;
      
      public var _lowerLimit:Number = 0;
      
      public var _upperLimit:Number = 0;
      
      public var _maxForce:Number = 0;
      
      public var _maxTorque:Number = 0;
      
      public var _motorSpeed:Number = 0;
      
      public var _enableLimit:Boolean = false;
      
      public var _enableMotor:Boolean = false;
      
      public var type:String = "None";
      
      public var axisX:Number = 0;
      
      public var axisY:Number = 0;
      
      public var _spring:Boolean = false;
      
      public var springConstant:Number = 0;
      
      public var springDamping:Number = 0;
      
      public var _frequencyHz:Number = 5;
      
      public var _dampingRatio:Number = 0.7;
      
      public var pulleyGearRatio:Number = 1;
      
      public var target1Name:String = "";
      
      public var target2Name:String = "";
      
      public var pulleyGearPartnerName:String = "";
      
      public var _gearCollideConnected:Boolean = false;
      
      public var connectorClassName:String = "";
      
      public var connectorThickness:Number = 2;
      
      public var connectorColor:uint = 8947848;
      
      public var tweened:Boolean = false;
      
      public var world:World;
      
      public var b2joint:b2Joint;
      
      public var target1Object:DisplayObject;
      
      public var bodyShape1:BodyShape;
      
      public var b2body1:b2Body;
      
      public var target2Object:DisplayObject;
      
      public var target2Joint:Joint;
      
      public var bodyShape2:BodyShape;
      
      public var b2body2:b2Body;
      
      public var pulleyGearPartner:Joint;
      
      public var b2gear:b2Joint;
      
      public var anchorPoint:Point;
      
      public var connector:Connector;
      
      public function Joint()
      {
         super();
      }
      
      public function set collideConnected(param1:Boolean) : void
      {
         if(this.b2joint)
         {
            this.b2joint.m_collideConnected = param1;
         }
         else
         {
            this._collideConnected = param1;
         }
      }
      
      public function get collideConnected() : Boolean
      {
         if(this.b2joint)
         {
            return this.b2joint.m_collideConnected;
         }
         return this._collideConnected;
      }
      
      public function set lowerLimit(param1:Number) : void
      {
         if(this.b2joint)
         {
            this.b2joint.SetLowerLimit(param1);
         }
         else
         {
            this._lowerLimit = param1;
         }
      }
      
      public function get lowerLimit() : Number
      {
         if(this.b2joint)
         {
            return this.b2joint.GetLowerLimit();
         }
         return this._lowerLimit;
      }
      
      public function set upperLimit(param1:Number) : void
      {
         if(this.b2joint)
         {
            this.b2joint.SetUpperLimit(param1);
         }
         else
         {
            this._upperLimit = param1;
         }
      }
      
      public function get upperLimit() : Number
      {
         if(this.b2joint)
         {
            return this.b2joint.GetUpperLimit();
         }
         return this._upperLimit;
      }
      
      public function set maxForce(param1:Number) : void
      {
         if(this.b2joint)
         {
            this.b2joint.SetMaxMotorForce(param1);
         }
         else
         {
            this._maxForce = param1;
         }
      }
      
      public function get maxForce() : Number
      {
         if(this.b2joint)
         {
            return this.b2joint.GetMaxMotorForce();
         }
         return this._maxForce;
      }
      
      public function set maxTorque(param1:Number) : void
      {
         if(this.b2joint)
         {
            this.b2joint.SetMaxMotorTorque(param1);
         }
         else
         {
            this._maxTorque = param1;
         }
      }
      
      public function get maxTorque() : Number
      {
         if(this.b2joint)
         {
            return this.b2joint.GetMaxMotorTorque();
         }
         return this._maxTorque;
      }
      
      public function set motorSpeed(param1:Number) : void
      {
         if(this.b2joint)
         {
            this.b2joint.SetMotorSpeed(param1);
         }
         else
         {
            this._motorSpeed = param1;
         }
      }
      
      public function get motorSpeed() : Number
      {
         if(this.b2joint)
         {
            return this.b2joint.GetMotorSpeed();
         }
         return this._motorSpeed;
      }
      
      public function set enableLimit(param1:Boolean) : void
      {
         if(this.b2joint)
         {
            this.b2joint.EnableLimit(param1);
         }
         else
         {
            this._enableLimit = param1;
         }
      }
      
      public function get enableLimit() : Boolean
      {
         if(this.b2joint)
         {
            return this.b2joint.IsLimitEnabled();
         }
         return this._enableLimit;
      }
      
      public function set enableMotor(param1:Boolean) : void
      {
         if(this.b2joint)
         {
            this.b2joint.EnableMotor(param1);
         }
         else
         {
            this._enableMotor = param1;
         }
      }
      
      public function get enableMotor() : Boolean
      {
         if(this.b2joint)
         {
            return this.b2joint.IsMotorEnabled();
         }
         return this._enableMotor;
      }
      
      public function set spring(param1:Boolean) : void
      {
         if(param1 == this._spring)
         {
            return;
         }
         this._spring = param1;
         if(this.b2joint)
         {
            if(this._spring)
            {
               this.createSpring();
            }
            else
            {
               this.destroySpring();
            }
         }
      }
      
      public function get spring() : Boolean
      {
         return this._spring;
      }
      
      public function set frequencyHz(param1:Number) : void
      {
         if(this.b2joint)
         {
            this.b2joint.SetFrequency(param1);
         }
         else
         {
            this._frequencyHz = param1;
         }
      }
      
      public function get frequencyHz() : Number
      {
         if(this.b2joint)
         {
            return this.b2joint.GetFrequency();
         }
         return this._frequencyHz;
      }
      
      public function set dampingRatio(param1:Number) : void
      {
         if(this.b2joint)
         {
            this.b2joint.SetDampingRatio(param1);
         }
         else
         {
            this._dampingRatio = param1;
         }
      }
      
      public function get dampingRatio() : Number
      {
         if(this.b2joint)
         {
            return this.b2joint.GetDampingRatio();
         }
         return this._dampingRatio;
      }
      
      public function set gearCollideConnected(param1:Boolean) : void
      {
         if(this.b2gear)
         {
            this.b2gear.m_collideConnected = param1;
         }
         else
         {
            this._gearCollideConnected = param1;
         }
      }
      
      public function get gearCollideConnected() : Boolean
      {
         if(this.b2gear)
         {
            return this.b2gear.m_collideConnected;
         }
         return this._gearCollideConnected;
      }
      
      override public function create() : void
      {
         this.locateBodies();
         this.createAnchorPoint();
         this.createJoint();
         this.createConnector();
         if(this._spring)
         {
            this.createSpring();
         }
         super.create();
      }
      
      override public function destroy() : void
      {
         if(Boolean(this.world && this.world.created) && Boolean(!this.world.disabled) && Boolean(this.world.parent))
         {
            this.destroyConnector();
            this.destroyGearJoint();
            this.destroyJoint();
            if(this._spring)
            {
               this.destroySpring();
            }
         }
      }
      
      public function locateBodies() : void
      {
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         this.world = Util.findAncestorOfClass(this,World) as World;
         this.world.ensureCreated();
         var _loc1_:Array = [];
         var _loc2_:uint = 0;
         this.target1Object = this.target1Object || this.bodyShape1;
         if(!this.target1Object && Boolean(this.target1Name))
         {
            this.target1Object = Util.getDisplayObjectByPath(this.parent,this.target1Name,this.world);
            this.bodyShape1 = this.target1Object as BodyShape;
         }
         if(this.bodyShape1)
         {
            _loc1_.push(this.bodyShape1);
         }
         else
         {
            _loc2_ = 1;
         }
         if(this.type != "Mouse")
         {
            this.target2Object = this.target2Object || this.bodyShape2;
            if(!this.target2Object && Boolean(this.target2Name))
            {
               this.target2Object = Util.getDisplayObjectByPath(this.parent,this.target2Name,this.world);
               this.bodyShape2 = this.target2Object as BodyShape;
               this.target2Joint = this.target2Object as Joint;
            }
            else if(!this.bodyShape2 && !this.target2Joint)
            {
               _loc2_++;
            }
         }
         if(_loc2_ > 0)
         {
            _loc3_ = Util.getObjectsUnderPointByClass(this.world,localToGlobal(new Point(0,0)),BodyShape,_loc2_,_loc1_);
            _loc4_ = 0;
            while(_loc4_ < _loc3_.length)
            {
               if(this.bodyShape1)
               {
                  this.bodyShape2 = _loc3_[_loc4_];
                  this.target2Object = this.bodyShape2;
               }
               else
               {
                  this.bodyShape1 = _loc3_[_loc4_];
                  this.target1Object = this.bodyShape1;
               }
               _loc4_++;
            }
         }
         if(this.bodyShape1)
         {
            this.bodyShape1.ensureCreated();
            this.b2body1 = this.bodyShape1.b2body;
         }
         else
         {
            this.b2body1 = this.world.b2world.m_groundBody;
         }
         if(this.target2Joint)
         {
            this.target2Joint.ensureCreated();
            this.bodyShape2 = this.target2Joint.bodyShape1;
         }
         if(this.bodyShape2)
         {
            this.bodyShape2.ensureCreated();
            this.b2body2 = this.bodyShape2.b2body;
         }
         else
         {
            this.b2body2 = this.world.b2world.m_groundBody;
         }
         if(!this.target2Object)
         {
            this.target2Object = this;
         }
         if(!this.pulleyGearPartner && Boolean(this.pulleyGearPartnerName))
         {
            this.pulleyGearPartner = Util.getDisplayObjectByPath(this.parent,this.pulleyGearPartnerName,this.world) as Joint;
         }
         if(this.pulleyGearPartner)
         {
            this.pulleyGearPartner.ensureCreated();
         }
         if(this.target1Object)
         {
            listenWhileVisible(this.target1Object,Event.REMOVED_FROM_STAGE,this.handleTargetRemoved);
         }
         if(this.target2Object)
         {
            listenWhileVisible(this.target2Object,Event.REMOVED_FROM_STAGE,this.handleTargetRemoved);
         }
         if(this.pulleyGearPartner)
         {
            listenWhileVisible(this.pulleyGearPartner,Event.REMOVED_FROM_STAGE,this.handleTargetRemoved);
            if(this.pulleyGearPartner.target2Object)
            {
               listenWhileVisible(this.pulleyGearPartner.target2Object,Event.REMOVED_FROM_STAGE,this.handleTargetRemoved);
            }
         }
      }
      
      public function handleTargetRemoved(param1:Event) : void
      {
         if(Boolean(this.world) && this.world.created)
         {
            if(param1.target == this.target1Object)
            {
               remove();
            }
            else if(param1.target == this.target2Object)
            {
               this.destroyJoint();
               this.destroyGearJoint();
               this.destroyConnector();
               if(this.type == "Pulley")
               {
                  this.pulleyGearPartner.destroyConnector();
               }
            }
            else if(param1.target == this.pulleyGearPartner || Boolean(this.pulleyGearPartner) && Boolean(param1.target == this.pulleyGearPartner.target2Object))
            {
               if(this.type == "Pulley")
               {
                  this.destroyJoint();
                  this.destroyConnector();
               }
               else
               {
                  this.destroyGearJoint();
               }
            }
         }
      }
      
      public function createJoint() : void
      {
         if(this.b2body1 == this.b2body2)
         {
            return;
         }
         switch(this.type)
         {
            case "Distance":
               this.createDistanceJoint();
               break;
            case "Line":
               this.createLineJoint();
               break;
            case "Mouse":
               this.createMouseJoint();
               break;
            case "Prismatic":
               this.createPrismaticJoint();
               if(this.pulleyGearPartner)
               {
                  this.createGearJoint();
               }
               break;
            case "Pulley":
               this.createPulleyJoint();
               break;
            case "Revolute":
               this.createRevoluteJoint();
               if(this.pulleyGearPartner)
               {
                  this.createGearJoint();
               }
               break;
            case "Weld":
               this.createWeldJoint();
               break;
            case "Friction":
               this.createFrictionJoint();
               break;
            case "Rope":
               this.createRopeJoint();
         }
         if(this.b2joint)
         {
            listenWhileVisible(this,GoodbyeJointEvent.GOODBYE_JOINT,this.handleGoodbyeJoint);
         }
      }
      
      public function handleGoodbyeJoint(param1:GoodbyeJointEvent) : void
      {
         if(param1.joint == this.b2joint)
         {
            this.b2joint = null;
         }
         else if(param1.joint == this.b2gear)
         {
            this.b2gear = null;
         }
      }
      
      public function createAnchorPoint() : void
      {
         if(this.target1Object)
         {
            this.anchorPoint = Util.localizePoint(this.target1Object,this);
            if(!this.tweened)
            {
               listenWhileVisible(this.world,StepEvent.STEP,this.updateAnchorPoint,false,-20);
            }
         }
      }
      
      public function updateAnchorPoint(param1:Event) : void
      {
         var _loc2_:Point = Util.localizePoint(parent,this.target1Object,this.anchorPoint);
         x = _loc2_.x;
         y = _loc2_.y;
      }
      
      public function destroyJoint() : void
      {
         if(this.b2joint)
         {
            this.world.doOutsideTimeStep(function():void
            {
               if(b2joint)
               {
                  b2joint.destroy();
                  b2joint = null;
               }
            });
         }
      }
      
      public function destroyGearJoint() : void
      {
         if(this.b2gear)
         {
            this.world.doOutsideTimeStep(function():void
            {
               if(b2gear)
               {
                  b2gear.destroy();
                  b2gear = null;
               }
            });
         }
      }
      
      public function initJointDef(param1:b2JointDef) : void
      {
         param1.collideConnected = this._collideConnected;
         param1.userData = this;
      }
      
      public function createDistanceJoint() : void
      {
         this.initJointDef(b2Def.distanceJoint);
         b2Def.distanceJoint.frequencyHz = this._frequencyHz;
         b2Def.distanceJoint.dampingRatio = this._dampingRatio;
         var _loc1_:Point = Util.localizePoint(this.world,this);
         var _loc2_:Point = Util.localizePoint(this.world,this.target2Object);
         b2Def.distanceJoint.Initialize(this.b2body1,this.b2body2,new V2(_loc1_.x / this.world.scale,_loc1_.y / this.world.scale),new V2(_loc2_.x / this.world.scale,_loc2_.y / this.world.scale));
         this.b2joint = new b2DistanceJoint(this.world.b2world,b2Def.distanceJoint,this);
      }
      
      public function createLineJoint() : void
      {
         var _loc2_:V2 = null;
         this.initJointDef(b2Def.lineJoint);
         b2Def.lineJoint.enableMotor = this._enableMotor;
         b2Def.lineJoint.maxMotorTorque = this._maxTorque;
         b2Def.lineJoint.motorSpeed = this._motorSpeed;
         b2Def.lineJoint.frequencyHz = this._frequencyHz;
         b2Def.lineJoint.dampingRatio = this._dampingRatio;
         var _loc1_:Point = Util.localizePoint(this.world,this);
         var _loc3_:Point = Util.localizePoint(this.world,this.target2Object);
         if(this.axisX == 0 && this.axisY == 0)
         {
            _loc2_ = new V2(_loc3_.x - _loc1_.x,_loc3_.y - _loc1_.y);
         }
         else
         {
            _loc2_ = new V2(this.axisX,this.axisY);
         }
         _loc2_.normalize();
         b2Def.lineJoint.Initialize(this.b2body1,this.b2body2,new V2(_loc3_.x / this.world.scale,_loc3_.y / this.world.scale),_loc2_);
         this.b2joint = new b2LineJoint(this.world.b2world,b2Def.lineJoint,this);
      }
      
      public function createMouseJoint() : void
      {
         this.initJointDef(b2Def.mouseJoint);
         b2Def.mouseJoint.frequencyHz = this._frequencyHz;
         b2Def.mouseJoint.dampingRatio = this._dampingRatio;
         b2Def.mouseJoint.maxForce = this._maxForce;
         b2Def.mouseJoint.Initialize(this.b2body1,V2.fromP(Util.localizePoint(this.world,this)).divideN(this.world.scale));
         this.b2joint = new b2MouseJoint(this.world.b2world,b2Def.mouseJoint,this);
         if(this.tweened)
         {
            listenWhileVisible(this.world,StepEvent.STEP,this.updateMouseJointTarget,false,1);
         }
      }
      
      public function updateMouseJointTarget(param1:Event) : void
      {
         (this.b2joint as b2MouseJoint).SetTarget(V2.fromP(Util.localizePoint(this.world,this)).divideN(this.world.scale));
      }
      
      public function createPrismaticJoint() : void
      {
         var _loc2_:V2 = null;
         var _loc3_:Point = null;
         var _loc4_:b2Body = null;
         this.initJointDef(b2Def.prismaticJoint);
         b2Def.prismaticJoint.enableLimit = this._enableLimit;
         b2Def.prismaticJoint.lowerTranslation = this._lowerLimit;
         b2Def.prismaticJoint.upperTranslation = this._upperLimit;
         b2Def.prismaticJoint.enableMotor = this._enableMotor;
         b2Def.prismaticJoint.maxMotorForce = this._maxForce;
         b2Def.prismaticJoint.motorSpeed = this._motorSpeed;
         var _loc1_:Point = Util.localizePoint(this.world,this);
         if(this.axisX == 0 && this.axisY == 0)
         {
            _loc3_ = Util.localizePoint(this.world,this.target2Object);
            _loc2_ = new V2(_loc3_.x - _loc1_.x,_loc3_.y - _loc1_.y);
         }
         else
         {
            _loc2_ = new V2(this.axisX,this.axisY);
         }
         _loc2_.normalize();
         if(!this.b2body1.IsStatic() && this.b2body2.IsStatic())
         {
            _loc4_ = this.b2body1;
            this.b2body1 = this.b2body2;
            this.b2body2 = _loc4_;
         }
         b2Def.prismaticJoint.Initialize(this.b2body1,this.b2body2,new V2(_loc1_.x / this.world.scale,_loc1_.y / this.world.scale),_loc2_);
         this.b2joint = new b2PrismaticJoint(this.world.b2world,b2Def.prismaticJoint,this);
      }
      
      public function createPulleyJoint() : void
      {
         this.initJointDef(b2Def.pulleyJoint);
         b2Def.pulleyJoint.maxLengthA = this._lowerLimit;
         b2Def.pulleyJoint.maxLengthB = this._upperLimit;
         b2Def.pulleyJoint.ratio = this.pulleyGearRatio;
         var _loc1_:Point = Util.localizePoint(this.world,this);
         var _loc2_:Point = Util.localizePoint(this.world,this.pulleyGearPartner);
         var _loc3_:Point = Util.localizePoint(this.world,this.target2Object);
         var _loc4_:Point = Util.localizePoint(this.world,this.pulleyGearPartner.target2Object);
         b2Def.pulleyJoint.Initialize(this.b2body1,this.pulleyGearPartner.b2body1,new V2(_loc3_.x / this.world.scale,_loc3_.y / this.world.scale),new V2(_loc4_.x / this.world.scale,_loc4_.y / this.world.scale),new V2(_loc1_.x / this.world.scale,_loc1_.y / this.world.scale),new V2(_loc2_.x / this.world.scale,_loc2_.y / this.world.scale),this.pulleyGearRatio);
         this.b2joint = new b2PulleyJoint(this.world.b2world,b2Def.pulleyJoint,this);
      }
      
      public function createRevoluteJoint() : void
      {
         var _loc2_:b2Body = null;
         this.initJointDef(b2Def.revoluteJoint);
         b2Def.revoluteJoint.enableLimit = this._enableLimit;
         b2Def.revoluteJoint.lowerAngle = this._lowerLimit;
         b2Def.revoluteJoint.upperAngle = this._upperLimit;
         b2Def.revoluteJoint.enableMotor = this._enableMotor;
         b2Def.revoluteJoint.maxMotorTorque = this._maxTorque;
         b2Def.revoluteJoint.motorSpeed = this._motorSpeed;
         var _loc1_:Point = Util.localizePoint(this.world,this);
         if(!this.b2body1.IsStatic() && this.b2body2.IsStatic())
         {
            _loc2_ = this.b2body1;
            this.b2body1 = this.b2body2;
            this.b2body2 = _loc2_;
         }
         b2Def.revoluteJoint.Initialize(this.b2body1,this.b2body2,new V2(_loc1_.x / this.world.scale,_loc1_.y / this.world.scale));
         this.b2joint = new b2RevoluteJoint(this.world.b2world,b2Def.revoluteJoint,this);
      }
      
      public function createWeldJoint() : void
      {
         this.initJointDef(b2Def.weldJoint);
         var _loc1_:Point = Util.localizePoint(this.world,this);
         b2Def.weldJoint.Initialize(this.b2body1,this.b2body2,new V2(_loc1_.x / this.world.scale,_loc1_.y / this.world.scale));
         this.b2joint = new b2WeldJoint(this.world.b2world,b2Def.weldJoint,this);
      }
      
      public function createFrictionJoint() : void
      {
         this.initJointDef(b2Def.frictionJoint);
         b2Def.frictionJoint.maxForce = this._maxForce;
         b2Def.frictionJoint.maxTorque = this._maxTorque;
         var _loc1_:Point = Util.localizePoint(this.world,this);
         b2Def.frictionJoint.Initialize(this.b2body1,this.b2body2,new V2(_loc1_.x / this.world.scale,_loc1_.y / this.world.scale));
         this.b2joint = new b2FrictionJoint(this.world.b2world,b2Def.frictionJoint,this);
      }
      
      public function createGearJoint() : void
      {
         this.initJointDef(b2Def.gearJoint);
         b2Def.gearJoint.collideConnected = this._gearCollideConnected;
         b2Def.gearJoint.Initialize(this.b2joint,this.pulleyGearPartner.b2joint,this.pulleyGearRatio);
         this.b2gear = new b2GearJoint(this.world.b2world,b2Def.gearJoint,this);
      }
      
      public function createRopeJoint() : void
      {
         this.initJointDef(b2Def.ropeJoint);
         var _loc1_:Point = Util.localizePoint(this.world,this);
         var _loc2_:Point = Util.localizePoint(this.world,this.target2Object);
         b2Def.ropeJoint.Initialize(this.b2body1,this.b2body2,new V2(_loc1_.x / this.world.scale,_loc1_.y / this.world.scale),new V2(_loc2_.x / this.world.scale,_loc2_.y / this.world.scale));
         if(this._upperLimit != 0)
         {
            b2Def.ropeJoint.maxLength = this._upperLimit;
         }
         this.b2joint = new b2RopeJoint(this.world.b2world,b2Def.ropeJoint,this);
      }
      
      public function createConnector() : void
      {
         var _loc1_:Class = null;
         var _loc2_:ConnectorLine = null;
         if(Boolean(this.target2Object) && this.connectorClassName != "")
         {
            _loc1_ = getDefinitionByName(this.connectorClassName) as Class;
            this.connector = new _loc1_() as Connector;
            this.connector.from = this;
            this.connector.to = this.target2Object;
            _loc2_ = this.connector as ConnectorLine;
            if(_loc2_)
            {
               _loc2_.color = this.connectorColor;
               _loc2_.thickness = this.connectorThickness;
            }
            this.world.addChild(this.connector);
         }
      }
      
      public function destroyConnector() : void
      {
         if(this.connector)
         {
            Util.remove(this.connector);
            this.connector = null;
         }
      }
      
      public function createSpring() : void
      {
         listenWhileVisible(this.world,StepEvent.STEP,this.updateSpring);
      }
      
      public function updateSpring(param1:Event) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc2_:b2PrismaticJoint = this.b2joint as b2PrismaticJoint;
         var _loc3_:b2LineJoint = this.b2joint as b2LineJoint;
         var _loc4_:b2RevoluteJoint = this.b2joint as b2RevoluteJoint;
         if(_loc2_)
         {
            _loc5_ = _loc2_.GetJointTranslation();
            _loc2_.SetMaxMotorForce(Math.abs(_loc5_ * this.springConstant + _loc2_.GetJointSpeed() * this.springDamping));
            _loc2_.SetMotorSpeed(_loc5_ > 0 ? -100000 : 100000);
         }
         else if(_loc4_)
         {
            _loc6_ = _loc4_.GetJointAngle();
            _loc4_.SetMaxMotorTorque(Math.abs(_loc6_ * this.springConstant + _loc4_.GetJointSpeed() * this.springDamping));
            _loc4_.SetMotorSpeed(_loc6_ > 0 ? -100000 : 100000);
         }
         else if(_loc3_)
         {
            _loc7_ = _loc3_.GetJointTranslation();
            _loc3_.SetMaxMotorForce(Math.abs(_loc7_ * this.springConstant + _loc3_.GetJointSpeed() * this.springDamping));
            _loc3_.SetMotorSpeed(_loc7_ > 0 ? -100000 : 100000);
         }
      }
      
      public function destroySpring() : void
      {
         stopListening(this.world,StepEvent.STEP,this.updateSpring);
      }
   }
}

