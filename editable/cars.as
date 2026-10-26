package
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
   import shapes.*;
   import wck.*;
   
   public class cars extends World
   {
      
      protected static const toRAD:Number = Math.PI / 180;
      
      public var flag_red:MovieClip;
      
      public var sensor_goLeft:sensor;
      
      public var flag_green:MovieClip;
      
      public var crowd:MovieClip;
      
      public var fp:controlpoint;
      
      public var bckgrnd:MovieClip;
      
      public var car1:Car1;
      
      public var car2:Car1;
      
      public var border:MovieClip;
      
      public var car3:Car1;
      
      public var car4:Car1;
      
      public var tree:MovieClip;
      
      public var sensor_goRight:sensor;
      
      public var goLeft:go;
      
      public var goRight:go;
      
      private var toDEG:Number = 57.29577951308232;
      
      public var PATH:Array;
      
      public var totalLaps:int;
      
      private var pauseTime:Number;
      
      public var FENCE1:Array;
      
      public var FENCE2:Array;
      
      public var players:Array;
      
      public var speeds:Array = new Array(60,150,150,150);
      
      public var CARS:Array;
      
      public var SCALEFACTOR:*;
      
      public var DIFFICULTY:*;
      
      public var ball:*;
      
      public var inGoal:int;
      
      private var initialPosition:Point;
      
      private var initialPositions:Array = new Array();
      
      private var initialRotations:Array = new Array();
      
      public function cars()
      {
         super();
         this.players = new Array();
         this.players.push(this.car1);
         this.players.push(this.car2);
         this.players.push(this.car3);
         this.players.push(this.car4);
         this.__setProp_goLeft_WorldofCars_gos_0();
         this.__setProp_goRight_WorldofCars_gos_0();
         this.__setProp_sensor_goRight_WorldofCars_gosensors_0();
         this.__setProp_sensor_goLeft_WorldofCars_gosensors_0();
         this.__setProp_car1_WorldofCars_car1_0();
         this.__setProp_car2_WorldofCars_car2_0();
         this.__setProp_car3_WorldofCars_car3_0();
         this.__setProp_car4_WorldofCars_car4_0();
         this.__setProp_ball_WorldofCars_ball_0();
      }
      
      override public function create() : void
      {
         super.create();
         if(Boolean(stage))
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.init);
         }
      }
      
      override public function destroy() : void
      {
         super.destroy();
      }
      
      private function init(param1:Event = null) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         var _loc10_:* = undefined;
         removeEventListener(Event.ADDED_TO_STAGE,this.init);
         this.inGoal = 0;
         this.initialPosition = new Point(this.ball.x,this.ball.y);
         this.initPath(this);
         this.initFence(this,this.FENCE1,"fp");
         var _loc2_:* = 0;
         while(_loc2_ < this.players.length)
         {
            this.initCar(this.players[_loc2_],this.CARS[_loc2_].MAXSPEED,this.CARS[_loc2_].PREDICTION,this.CARS[_loc2_].NAME,this.DIFFICULTY,int(_loc2_ / 2 + 1));
            _loc3_ = new Box();
            _loc3_.name = "frontWheelLeft" + _loc2_;
            _loc4_ = new Joint2();
            this.setupWheel(_loc3_,_loc4_,_loc2_,-1,1,false);
            this.addChild(_loc3_);
            this.addChild(_loc4_);
            _loc5_ = new Box();
            _loc5_.name = "frontWheelRight" + _loc2_;
            _loc6_ = new Joint2();
            this.setupWheel(_loc5_,_loc6_,_loc2_,1,1,false);
            this.addChild(_loc5_);
            this.addChild(_loc6_);
            _loc7_ = new Box();
            _loc7_.name = "rearWheelLeft" + _loc2_;
            _loc8_ = new Joint2();
            this.setupWheel(_loc7_,_loc8_,_loc2_,-1,-1,true);
            this.addChild(_loc7_);
            this.addChild(_loc8_);
            _loc9_ = new Box();
            _loc9_.name = "rearWheelRight" + _loc2_;
            _loc10_ = new Joint2();
            this.setupWheel(_loc9_,_loc10_,_loc2_,1,-1,true);
            this.addChild(_loc9_);
            this.addChild(_loc10_);
            this.players[_loc2_].frontWheelLeft = _loc3_;
            this.players[_loc2_].frontJointLeft = _loc4_;
            this.players[_loc2_].frontWheelRight = _loc5_;
            this.players[_loc2_].frontJointRight = _loc6_;
            this.players[_loc2_].rearWheelLeft = _loc7_;
            this.players[_loc2_].rearWheelRight = _loc9_;
            this.players[_loc2_].wheels = true;
            this.players[_loc2_].initCar();
            _loc2_++;
         }
         listenWhileVisible(this.sensor_goLeft,ContactEvent.BEGIN_CONTACT,this.handleBeginContactGoLeft);
         listenWhileVisible(this.sensor_goRight,ContactEvent.BEGIN_CONTACT,this.handleBeginContactGoRight);
         listenWhileVisible(this.ball,ContactEvent.BEGIN_CONTACT,this.handleBeginContactBall);
      }
      
      public function addBall() : *
      {
         this.ball = new Ball();
         with(this.ball)
         {
            allowDraging = false;
            applyGravity = false;
            bullet = true;
            categoryBits = 2;
            fixedRotation = true;
            friction = 0.1;
            linearDumping = 0.2;
            maskBits = 16777215;
            reportBeginContact = true;
            restitution = 0.7;
            name = "ball";
         }
         this.addChild(this.ball);
         listenOnceWhileVisible(this.ball,ContactEvent.BEGIN_CONTACT,this.handleBeginContactBall);
      }
      
      private function setupWheel(param1:*, param2:*, param3:*, param4:*, param5:*, param6:*) : *
      {
         var angle:* = undefined;
         var d:* = undefined;
         var obj:* = param1;
         var joint:* = param2;
         var k:* = param3;
         var right:* = param4;
         var front:* = param5;
         var fixed:* = param6;
         with(obj)
         {
            density = 10;
            allowDraging = false;
            applyGravity = false;
            width = CARS[k].WHEELRADIUS * 2 * SCALEFACTOR;
            height = 0.2 * SCALEFACTOR;
            angle = Math.atan2(right * CARS[k].FRONTWHEEL.y,front * CARS[k].FRONTWHEEL.x);
            d = dist(new Point(CARS[k].FRONTWHEEL.x,CARS[k].FRONTWHEEL.y),new Point(0,0));
            x = SCALEFACTOR * d * Math.cos(angle + players[k].rotation * toRAD) + players[k].x;
            y = SCALEFACTOR * d * Math.sin(angle + players[k].rotation * toRAD) + players[k].y;
            rotation = players[k].rotation;
         }
         with(joint)
         {
            x = obj.x;
            y = obj.y;
            target1Name = obj.name;
            target2Name = players[k].name;
            if(!fixed)
            {
               type = "Revolute";
               dampingRatio = 0;
               maxForce = 100;
               maxTorque = 100;
               enableMotor = true;
            }
            else
            {
               type = "Prismatic";
               dampingRatio = 0.7;
               enableLimit = true;
               enableMotor = true;
            }
         }
      }
      
      private function initPath(param1:*) : *
      {
         var _loc5_:* = undefined;
         this.PATH = new Array();
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         while(_loc3_ < param1.numChildren)
         {
            if(param1.getChildAt(_loc3_).name.substr(0,2) == "cp")
            {
               _loc2_++;
            }
            _loc3_++;
         }
         var _loc4_:* = 0;
         while(_loc4_ < _loc2_)
         {
            _loc5_ = param1["cp" + _loc4_];
            this.PATH.push(_loc5_);
            _loc5_.visible = false;
            _loc4_++;
         }
      }
      
      private function initFence(param1:*, param2:*, param3:*) : *
      {
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         var _loc10_:* = undefined;
         param2 = new Array();
         var _loc4_:Shape = new Shape();
         var _loc5_:Boolean = true;
         _loc4_.graphics.lineStyle(3,16711680,0.5);
         var _loc6_:* = 0;
         while(_loc6_ < param1.numChildren)
         {
            _loc8_ = param1.getChildAt(_loc6_);
            if(_loc8_.name == param3)
            {
               if(_loc5_)
               {
                  _loc4_.graphics.moveTo(_loc8_.x,_loc8_.y);
                  _loc5_ = false;
               }
               else
               {
                  _loc4_.graphics.lineTo(_loc8_.x,_loc8_.y);
               }
               param2.push(_loc8_);
               _loc8_.visible = false;
            }
            _loc6_++;
         }
         _loc4_.graphics.lineTo(param2[0].x,param2[0].y);
         var _loc7_:* = 0;
         while(_loc7_ < param2.length)
         {
            _loc9_ = new Line40();
            _loc10_ = param2[_loc7_ + 1];
            if(_loc7_ == param2.length - 1)
            {
               _loc10_ = param2[0];
            }
            _loc9_.type = "Static";
            _loc9_.friction = 0.02;
            _loc9_.x = (param2[_loc7_].x + _loc10_.x) / 2;
            _loc9_.y = (param2[_loc7_].y + _loc10_.y) / 2;
            _loc9_.height = this.dist(param2[_loc7_],_loc10_);
            _loc9_.rotation = Math.atan2(param2[_loc7_].y - _loc10_.y,param2[_loc7_].x - _loc10_.x) * this.toDEG + 90;
            param1.addChild(_loc9_);
            _loc9_.visible = false;
            _loc7_++;
         }
      }
      
      private function initCar(param1:*, param2:*, param3:*, param4:*, param5:*, param6:*) : *
      {
         this.initialPositions.push(new Point(param1.x,param1.y));
         this.initialRotations.push(param1.rotation);
         param1.SPEED = param2;
         param1.prediction = param3;
         param1.PATH = this.PATH;
         param1.totalLaps = this.totalLaps;
         param1.NAME = param4;
         param1.difficulty = param5;
         param1.chaseObject = this.ball;
         param1.border = this.border;
         param1.team = param6;
         if(param6 == 2)
         {
            param1.goalObject = this.goLeft;
         }
         else
         {
            param1.goalObject = this.goRight;
         }
      }
      
      public function startRace() : *
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.players.length)
         {
            this.players[_loc1_].racing = true;
            this.players[_loc1_].startTime = getTimer();
            this.players[_loc1_].up = true;
            _loc1_++;
         }
      }
      
      public function stopRace() : *
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.players.length)
         {
            this.players[_loc1_].racing = false;
            _loc1_++;
         }
      }
      
      public function pauseGame(param1:*) : *
      {
         var _loc2_:int = 0;
         paused = param1;
         if(param1)
         {
            this.pauseTime = getTimer();
            _loc2_ = 0;
            while(_loc2_ < this.players.length)
            {
               this.players[_loc2_].pauseSound(param1);
               _loc2_++;
            }
         }
         else
         {
            _loc2_ = 0;
            while(_loc2_ < this.players.length)
            {
               this.players[_loc2_].startTime += getTimer() - this.pauseTime;
               this.players[_loc2_].pauseSound(param1);
               _loc2_++;
            }
         }
      }
      
      private function Update(param1:Event) : void
      {
      }
      
      private function keydown(param1:*) : *
      {
         switch(param1.keyCode)
         {
            case Keyboard.SPACE:
         }
      }
      
      private function keyup(param1:*) : *
      {
         switch(param1.keyCode)
         {
            case Keyboard.SPACE:
         }
      }
      
      private function dist(param1:*, param2:*) : Number
      {
         return Math.sqrt((param1.x - param2.x) * (param1.x - param2.x) + (param1.y - param2.y) * (param1.y - param2.y));
      }
      
      public function handleBeginContactGoLeft(param1:ContactEvent) : void
      {
         var _loc2_:* = param1.target;
         var _loc3_:* = param1.relatedObject;
         this.inGoal = 1;
      }
      
      public function handleBeginContactGoRight(param1:ContactEvent) : void
      {
         var _loc2_:* = param1.target;
         var _loc3_:* = param1.relatedObject;
         this.inGoal = 2;
      }
      
      public function handleBeginContactBall(param1:ContactEvent) : void
      {
         var _loc2_:* = param1.target;
         var _loc3_:* = param1.relatedObject;
      }
      
      public function resetPositions() : *
      {
         var k:*;
         this.ball.linearVelocityX = 0;
         this.ball.linearVelocityY = 0;
         this.ball.angularVelocity = 0;
         Util.setPos(this.ball,this.initialPosition);
         this.ball.syncTransform();
         this.inGoal = 0;
         k = 0;
         while(k < this.players.length)
         {
            with(this.players[k])
            {
               
               linearVelocityX = 0;
               linearVelocityY = 0;
               angularVelocity = 0;
            }
            k++;
         }
      }
      
      internal function __setProp_goLeft_WorldofCars_gos_0() : *
      {
         try
         {
            this.goLeft["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         this.goLeft.active = true;
         this.goLeft.allowDragging = false;
         this.goLeft.angularDamping = 0;
         this.goLeft.angularVelocity = 0;
         this.goLeft.applyGravity = false;
         this.goLeft.autoSleep = true;
         this.goLeft.awake = true;
         this.goLeft.bubbleContacts = true;
         this.goLeft.bullet = false;
         this.goLeft.categoryBits = "0x0001";
         this.goLeft.conveyorBeltSpeed = 0;
         this.goLeft.customGravityName = "";
         this.goLeft.density = 1;
         this.goLeft.disabled = false;
         this.goLeft.fixedRotation = false;
         this.goLeft.focusOn = false;
         this.goLeft.friction = 0.2;
         this.goLeft.gravityAngle = 0;
         this.goLeft.gravityMod = false;
         this.goLeft.gravityScale = 1;
         this.goLeft.groupIndex = 0;
         this.goLeft.inertiaScale = 1;
         this.goLeft.isGround = false;
         this.goLeft.isGuideShape = false;
         this.goLeft.isSensor = false;
         this.goLeft.linearDamping = 0;
         this.goLeft.linearVelocityX = 0;
         this.goLeft.linearVelocityY = 0;
         this.goLeft.maskBits = "0xFFFF";
         this.goLeft.reportBeginContact = false;
         this.goLeft.reportEndContact = false;
         this.goLeft.reportPostSolve = false;
         this.goLeft.reportPreSolve = false;
         this.goLeft.restitution = 0;
         this.goLeft.tweened = false;
         this.goLeft.type = "Static";
         try
         {
            this.goLeft["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      internal function __setProp_goRight_WorldofCars_gos_0() : *
      {
         try
         {
            this.goRight["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         this.goRight.active = true;
         this.goRight.allowDragging = false;
         this.goRight.angularDamping = 0;
         this.goRight.angularVelocity = 0;
         this.goRight.applyGravity = false;
         this.goRight.autoSleep = true;
         this.goRight.awake = true;
         this.goRight.bubbleContacts = true;
         this.goRight.bullet = false;
         this.goRight.categoryBits = "0x0001";
         this.goRight.conveyorBeltSpeed = 0;
         this.goRight.customGravityName = "";
         this.goRight.density = 1;
         this.goRight.disabled = false;
         this.goRight.fixedRotation = false;
         this.goRight.focusOn = false;
         this.goRight.friction = 0.2;
         this.goRight.gravityAngle = 0;
         this.goRight.gravityMod = false;
         this.goRight.gravityScale = 1;
         this.goRight.groupIndex = 0;
         this.goRight.inertiaScale = 1;
         this.goRight.isGround = false;
         this.goRight.isGuideShape = false;
         this.goRight.isSensor = false;
         this.goRight.linearDamping = 0;
         this.goRight.linearVelocityX = 0;
         this.goRight.linearVelocityY = 0;
         this.goRight.maskBits = "0xFFFF";
         this.goRight.reportBeginContact = false;
         this.goRight.reportEndContact = false;
         this.goRight.reportPostSolve = false;
         this.goRight.reportPreSolve = false;
         this.goRight.restitution = 0;
         this.goRight.tweened = false;
         this.goRight.type = "Static";
         try
         {
            this.goRight["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      internal function __setProp_sensor_goRight_WorldofCars_gosensors_0() : *
      {
         try
         {
            this.sensor_goRight["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         this.sensor_goRight.active = true;
         this.sensor_goRight.allowDragging = false;
         this.sensor_goRight.angularDamping = 0;
         this.sensor_goRight.angularVelocity = 0;
         this.sensor_goRight.applyGravity = false;
         this.sensor_goRight.autoSleep = true;
         this.sensor_goRight.awake = true;
         this.sensor_goRight.bubbleContacts = true;
         this.sensor_goRight.bullet = false;
         this.sensor_goRight.categoryBits = "0x0004";
         this.sensor_goRight.conveyorBeltSpeed = 0;
         this.sensor_goRight.customGravityName = "";
         this.sensor_goRight.density = 1;
         this.sensor_goRight.disabled = false;
         this.sensor_goRight.fixedRotation = false;
         this.sensor_goRight.focusOn = false;
         this.sensor_goRight.friction = 0.2;
         this.sensor_goRight.gravityAngle = 0;
         this.sensor_goRight.gravityMod = false;
         this.sensor_goRight.gravityScale = 1;
         this.sensor_goRight.groupIndex = 0;
         this.sensor_goRight.inertiaScale = 1;
         this.sensor_goRight.isGround = false;
         this.sensor_goRight.isGuideShape = false;
         this.sensor_goRight.isSensor = true;
         this.sensor_goRight.linearDamping = 0;
         this.sensor_goRight.linearVelocityX = 0;
         this.sensor_goRight.linearVelocityY = 0;
         this.sensor_goRight.maskBits = "0x0002";
         this.sensor_goRight.reportBeginContact = true;
         this.sensor_goRight.reportEndContact = false;
         this.sensor_goRight.reportPostSolve = false;
         this.sensor_goRight.reportPreSolve = false;
         this.sensor_goRight.restitution = 0;
         this.sensor_goRight.tweened = false;
         this.sensor_goRight.type = "Static";
         try
         {
            this.sensor_goRight["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      internal function __setProp_sensor_goLeft_WorldofCars_gosensors_0() : *
      {
         try
         {
            this.sensor_goLeft["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         this.sensor_goLeft.active = true;
         this.sensor_goLeft.allowDragging = false;
         this.sensor_goLeft.angularDamping = 0;
         this.sensor_goLeft.angularVelocity = 0;
         this.sensor_goLeft.applyGravity = false;
         this.sensor_goLeft.autoSleep = true;
         this.sensor_goLeft.awake = true;
         this.sensor_goLeft.bubbleContacts = true;
         this.sensor_goLeft.bullet = false;
         this.sensor_goLeft.categoryBits = "0x0004";
         this.sensor_goLeft.conveyorBeltSpeed = 0;
         this.sensor_goLeft.customGravityName = "";
         this.sensor_goLeft.density = 1;
         this.sensor_goLeft.disabled = false;
         this.sensor_goLeft.fixedRotation = false;
         this.sensor_goLeft.focusOn = false;
         this.sensor_goLeft.friction = 0.2;
         this.sensor_goLeft.gravityAngle = 0;
         this.sensor_goLeft.gravityMod = false;
         this.sensor_goLeft.gravityScale = 1;
         this.sensor_goLeft.groupIndex = 0;
         this.sensor_goLeft.inertiaScale = 1;
         this.sensor_goLeft.isGround = false;
         this.sensor_goLeft.isGuideShape = false;
         this.sensor_goLeft.isSensor = true;
         this.sensor_goLeft.linearDamping = 0;
         this.sensor_goLeft.linearVelocityX = 0;
         this.sensor_goLeft.linearVelocityY = 0;
         this.sensor_goLeft.maskBits = "0x0002";
         this.sensor_goLeft.reportBeginContact = true;
         this.sensor_goLeft.reportEndContact = false;
         this.sensor_goLeft.reportPostSolve = false;
         this.sensor_goLeft.reportPreSolve = false;
         this.sensor_goLeft.restitution = 0;
         this.sensor_goLeft.tweened = false;
         this.sensor_goLeft.type = "Static";
         try
         {
            this.sensor_goLeft["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      internal function __setProp_car1_WorldofCars_car1_0() : *
      {
         try
         {
            this.car1["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         this.car1.active = true;
         this.car1.allowDragging = false;
         this.car1.angularDamping = 10;
         this.car1.angularVelocity = 0;
         this.car1.applyGravity = false;
         this.car1.autoSleep = false;
         this.car1.awake = true;
         this.car1.bubbleContacts = true;
         this.car1.bullet = true;
         this.car1.categoryBits = "0x0001";
         this.car1.conveyorBeltSpeed = 0;
         this.car1.customGravityName = "";
         this.car1.density = 0.1;
         this.car1.disabled = false;
         this.car1.fixedRotation = false;
         this.car1.focusOn = false;
         this.car1.friction = 0.05;
         this.car1.gravityAngle = 0;
         this.car1.gravityMod = false;
         this.car1.gravityScale = 1;
         this.car1.groupIndex = 0;
         this.car1.inertiaScale = 1;
         this.car1.isGround = false;
         this.car1.isGuideShape = false;
         this.car1.isSensor = false;
         this.car1.linearDamping = 1.8;
         this.car1.linearVelocityX = 0;
         this.car1.linearVelocityY = 0;
         this.car1.maskBits = "0xFFFF";
         this.car1.Player = "Computer";
         this.car1.reportBeginContact = false;
         this.car1.reportEndContact = false;
         this.car1.reportPostSolve = false;
         this.car1.reportPreSolve = false;
         this.car1.restitution = 0.3;
         this.car1.tweened = false;
         this.car1.type = "Dynamic";
         try
         {
            this.car1["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      internal function __setProp_car2_WorldofCars_car2_0() : *
      {
         try
         {
            this.car2["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         this.car2.active = true;
         this.car2.allowDragging = false;
         this.car2.angularDamping = 10;
         this.car2.angularVelocity = 0;
         this.car2.applyGravity = false;
         this.car2.autoSleep = false;
         this.car2.awake = true;
         this.car2.bubbleContacts = true;
         this.car2.bullet = true;
         this.car2.categoryBits = "0x0001";
         this.car2.conveyorBeltSpeed = 0;
         this.car2.customGravityName = "";
         this.car2.density = 0.1;
         this.car2.disabled = false;
         this.car2.fixedRotation = false;
         this.car2.focusOn = false;
         this.car2.friction = 0.05;
         this.car2.gravityAngle = 0;
         this.car2.gravityMod = false;
         this.car2.gravityScale = 1;
         this.car2.groupIndex = 0;
         this.car2.inertiaScale = 1;
         this.car2.isGround = false;
         this.car2.isGuideShape = false;
         this.car2.isSensor = false;
         this.car2.linearDamping = 1.8;
         this.car2.linearVelocityX = 0;
         this.car2.linearVelocityY = 0;
         this.car2.maskBits = "0xFFFF";
         this.car2.Player = "Computer";
         this.car2.reportBeginContact = false;
         this.car2.reportEndContact = false;
         this.car2.reportPostSolve = false;
         this.car2.reportPreSolve = false;
         this.car2.restitution = 0.3;
         this.car2.tweened = false;
         this.car2.type = "Dynamic";
         try
         {
            this.car2["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      internal function __setProp_car3_WorldofCars_car3_0() : *
      {
         try
         {
            this.car3["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         this.car3.active = true;
         this.car3.allowDragging = false;
         this.car3.angularDamping = 10;
         this.car3.angularVelocity = 0;
         this.car3.applyGravity = false;
         this.car3.autoSleep = false;
         this.car3.awake = true;
         this.car3.bubbleContacts = true;
         this.car3.bullet = true;
         this.car3.categoryBits = "0x0001";
         this.car3.conveyorBeltSpeed = 0;
         this.car3.customGravityName = "";
         this.car3.density = 0.1;
         this.car3.disabled = false;
         this.car3.fixedRotation = false;
         this.car3.focusOn = false;
         this.car3.friction = 0.05;
         this.car3.gravityAngle = 0;
         this.car3.gravityMod = false;
         this.car3.gravityScale = 1;
         this.car3.groupIndex = 0;
         this.car3.inertiaScale = 1;
         this.car3.isGround = false;
         this.car3.isGuideShape = false;
         this.car3.isSensor = false;
         this.car3.linearDamping = 1.8;
         this.car3.linearVelocityX = 0;
         this.car3.linearVelocityY = 0;
         this.car3.maskBits = "0xFFFF";
         this.car3.Player = "Computer";
         this.car3.reportBeginContact = false;
         this.car3.reportEndContact = false;
         this.car3.reportPostSolve = false;
         this.car3.reportPreSolve = false;
         this.car3.restitution = 0.3;
         this.car3.tweened = false;
         this.car3.type = "Dynamic";
         try
         {
            this.car3["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      internal function __setProp_car4_WorldofCars_car4_0() : *
      {
         try
         {
            this.car4["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         this.car4.active = true;
         this.car4.allowDragging = false;
         this.car4.angularDamping = 10;
         this.car4.angularVelocity = 0;
         this.car4.applyGravity = false;
         this.car4.autoSleep = false;
         this.car4.awake = true;
         this.car4.bubbleContacts = true;
         this.car4.bullet = true;
         this.car4.categoryBits = "0x0001";
         this.car4.conveyorBeltSpeed = 0;
         this.car4.customGravityName = "";
         this.car4.density = 0.1;
         this.car4.disabled = false;
         this.car4.fixedRotation = false;
         this.car4.focusOn = false;
         this.car4.friction = 0.05;
         this.car4.gravityAngle = 0;
         this.car4.gravityMod = false;
         this.car4.gravityScale = 1;
         this.car4.groupIndex = 0;
         this.car4.inertiaScale = 1;
         this.car4.isGround = false;
         this.car4.isGuideShape = false;
         this.car4.isSensor = false;
         this.car4.linearDamping = 1.8;
         this.car4.linearVelocityX = 0;
         this.car4.linearVelocityY = 0;
         this.car4.maskBits = "0xFFFF";
         this.car4.Player = "Computer";
         this.car4.reportBeginContact = false;
         this.car4.reportEndContact = false;
         this.car4.reportPostSolve = false;
         this.car4.reportPreSolve = false;
         this.car4.restitution = 0.3;
         this.car4.tweened = false;
         this.car4.type = "Dynamic";
         try
         {
            this.car4["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      internal function __setProp_ball_WorldofCars_ball_0() : *
      {
         try
         {
            this.ball["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         this.ball.active = true;
         this.ball.allowDragging = true;
         this.ball.angularDamping = 0;
         this.ball.angularVelocity = 0;
         this.ball.applyGravity = false;
         this.ball.autoSleep = true;
         this.ball.awake = true;
         this.ball.bubbleContacts = false;
         this.ball.bullet = true;
         this.ball.categoryBits = "0x0002";
         this.ball.conveyorBeltSpeed = 0;
         this.ball.customGravityName = "";
         this.ball.density = 1;
         this.ball.disabled = false;
         this.ball.fixedRotation = true;
         this.ball.focusOn = false;
         this.ball.friction = 0.1;
         this.ball.gravityAngle = 0;
         this.ball.gravityMod = false;
         this.ball.gravityScale = 1;
         this.ball.groupIndex = 0;
         this.ball.inertiaScale = 1;
         this.ball.isGround = false;
         this.ball.isGuideShape = false;
         this.ball.isSensor = false;
         this.ball.linearDamping = 0.1;
         this.ball.linearVelocityX = 0;
         this.ball.linearVelocityY = 0;
         this.ball.maskBits = "0xFFFF";
         this.ball.reportBeginContact = false;
         this.ball.reportEndContact = false;
         this.ball.reportPostSolve = false;
         this.ball.reportPreSolve = false;
         this.ball.restitution = 0.7;
         this.ball.tweened = false;
         this.ball.type = "Dynamic";
         try
         {
            this.ball["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
   }
}

