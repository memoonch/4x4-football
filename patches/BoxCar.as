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
   import fl.transitions.Tween;
   import fl.transitions.TweenEvent;
   import fl.transitions.easing.*;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.*;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.media.SoundMixer;
   import alternativa.engine3d.materials.TextureMaterial;
   import flash.text.*;
   import flash.utils.*;
   import misc.*;
   import shapes.*;
   import wck.*;
   
   public class BoxCar extends BodyShape
   {
      
      protected static const toRAD:Number = Math.PI / 180;
      
      protected static const toDEG:Number = 180 / Math.PI;
      
      public var rear:Circle;
      
      public var middle:Box;
      
      public var colorOverlay:MovieClip;
      
      public var front:Circle;
      
      public var difficulty:*;
      
      public var NAME:String;
      
      public var PATH:Array;
      
      public var prediction:* = 1;
      
      public var SPEED:Number = 220;
      
      public var VELMAX:Number = 30;
      
      public var STEER:Number = 0.9599310885968813;
      
      public var STEERSPEED:Number = 0.66;
      
      public var STEERSPEEDMIN:Number = 0.66;
      
      public var STEERSPEEDMAX:Number = 2.16;
      
      public var ANGVEL:Number = 2.3;
      
      public var SKID:Number = 5;
      
      public var SKIDFRICTION:Number = 0.6;
      
      public var ANGVELMAX:* = 10;
      
      public var DRIFTDELAY:* = 50;
      
      public var chaseObject:*;
      
      public var goalObject:*;
      
      public var team:*;
      
      public var border:*;
      
      private var _player:String;
      
      private var ACCEL:Number = 1;
      
      private var speed:Number;
      
      private var steer:Number;
      
      private var skidding:Boolean;
      
      private var drift_transp:Number;
      
      private var pathIndex:Number;
      
      public var racing:Boolean;
      
      public var contacts:ContactList;
      
      private var contactTime:Number = 0;
      
      private var contactTimeLimit:Number = 2;
      
      public var left:*;
      
      public var right:*;
      
      public var up:*;
      
      public var down:*;
      
      public var handbrake:Boolean = false;
      
      private var motorsound:MP3Player;
      
      private var maxspeed_loop:Sound = new EngineLoop();
      
      private var motorFreqMin:* = 0.8;
      
      private var motorFreqMax:* = 2.8;
      
      private var skate_snd:Sound = new sd_skate();
      
      private var hit_snd:Sound = new crash();
      
      private var bump_snd:Sound = new ballBounce();
      
      public var soundfx:SoundChannel = new SoundChannel();
      
      public var skidfx:SoundChannel = new SoundChannel();
      
      public var crashfx:SoundChannel = new SoundChannel();
      
      private var crashfx_DURATION:* = 5;
      
      private var crashfx_sound_duration:* = this.crashfx_DURATION;
      
      private var soundVolume:* = 0;
      
      private var soundPan:* = 0;
      
      public var masterVolume:* = 0;
      
      private var skate_snd_playing:Boolean = false;
      
      public var totalTime:Number;
      
      public var subtotalTime:Number;
      
      public var lapTime:Number;
      
      public var bestLapTime:Number;
      
      public var currentTime:Number;
      
      public var currentLap:int;
      
      public var startTime:Number;
      
      public var pauseTime:Number;
      
      public var TIMESPEED:Number = 1;
      
      public var currentCP:int;
      
      private var lastCP:int;
      
      public var totalCP:int;
      
      public var currentCPwLap:Number;
      
      private var prevCPwLap:Number;
      
      private var stuck:*;
      
      private var stuckAccum:Number;
      
      private var reverse:Boolean;
      
      private var reverseCount:int;
      
      public var totalLaps:int;
      
      public var currentPosition:int;
      
      // AI only needs coordinates; retaining animated display markers leaked per step.
      private var chasePoint:Point = new Point();
      
      public var frontJointLeft:*;
      
      public var frontWheelLeft:*;
      
      public var rearWheelLeft:*;
      
      public var frontJointRight:*;
      
      public var frontWheelRight:*;
      
      public var rearWheelRight:*;
      
      public var wheels:Boolean = false;
      
      public function BoxCar()
      {
         super();
      }

      public static function cleanFinishedTweens(list:Array):void
      {
         for(var i:int = list.length - 1; i >= 0; i--)
         {
            if(!list[i].isPlaying) list.splice(i,1);
         }
      }
      
      internal static function getClass(param1:Object) : Class
      {
         return Class(getDefinitionByName(getQualifiedClassName(param1)));
      }
      
      public function set Player(param1:String) : void
      {
         this._player = param1;
      }
      
      public function get Player() : String
      {
         return this._player;
      }
      
      public function get carSpeed() : Number
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:V2 = null;
         var _loc5_:Number = NaN;
         if(this.wheels)
         {
            _loc1_ = this.frontWheelLeft;
            _loc2_ = this.frontWheelRight;
         }
         else
         {
            _loc1_ = this;
         }
         if(_loc1_.b2body)
         {
            _loc3_ = _loc1_.b2body.GetLinearVelocity();
            _loc4_ = _loc1_.b2body.GetTransform().r.c1.clone();
            _loc5_ = Number(_loc3_.dot(_loc4_));
            _loc4_.multiplyN(this.SPEED);
            return _loc5_;
         }
         return 0;
      }
      
      public function get carSpeedSide() : Number
      {
         var _loc1_:* = undefined;
         var _loc2_:V2 = null;
         var _loc3_:Number = NaN;
         if(this.b2body)
         {
            _loc1_ = this.b2body.GetLinearVelocity();
            _loc2_ = this.b2body.GetTransform().r.c2.clone();
            _loc3_ = Number(_loc1_.dot(_loc2_));
            _loc2_.multiplyN(this.SPEED);
            return _loc3_;
         }
         return 0;
      }
      
      public function get carSteer() : Number
      {
         if(b2body)
         {
            return b2body.GetAngularVelocity();
         }
         return 0;
      }
      
      override public function create() : void
      {
         super.create();
      }

      override public function destroy() : void
      {
         // Removed match worlds must release their procedural engine audio callbacks.
         if(this.motorsound != null)
         {
            this.motorsound.stop();
            this.motorsound = null;
         }
         if(this.skidfx != null)
         {
            this.skidfx.removeEventListener(Event.SOUND_COMPLETE,this.completeSoundfx);
            this.skidfx.stop();
            this.skidfx = null;
         }
         if(this.soundfx != null) this.soundfx.stop();
         super.destroy();
      }
      
      public function initCar() : *
      {
         this.speed = 0;
         this.steer = 0;
         this.skidding = false;
         this.drift_transp = 0.3;
         this.pathIndex = 0;
         this.motorsound = new MP3Player(this.maxspeed_loop,false);
         this.motorsound.setVolumeAndPan(this.masterVolume,0);
         this.motorsound.playbackSpeed = this.motorFreqMin;
         this.motorsound.playLoadedSound();
         this.totalTime = 0;
         this.subtotalTime = 0;
         this.lapTime = 0;
         this.bestLapTime = 0;
         this.currentTime = 0;
         this.currentLap = 0;
         this.currentCP = 0;
         this.lastCP = this.currentCP;
         this.totalCP = this.PATH.length;
         if(this.wheels)
         {
            this.frontJointLeft.enableLimit = true;
            this.frontJointLeft.upperLimit = this.STEER;
            this.frontJointLeft.lowerLimit = -this.STEER;
            this.frontJointRight.enableLimit = true;
            this.frontJointRight.upperLimit = this.STEER;
            this.frontJointRight.lowerLimit = -this.STEER;
         }
         listenWhileVisible(world,StepEvent.STEP,this.parseInput,false,10);
         listenWhileVisible(this,ContactEvent.BEGIN_CONTACT,this.handleBeginContact);
         this.contacts = new ContactList();
         this.contacts.listenTo(this);
         this.startTime = getTimer();
      }
      
      public function parseInput(param1:Event) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc8_:* = undefined;
         var _loc9_:Number = NaN;
         if(this.racing)
         {
            this.currentTime += (getTimer() - this.startTime) * this.TIMESPEED - this.currentTime;
            this.lapTime = this.currentTime;
            this.subtotalTime = this.totalTime + this.currentTime;
            switch(this._player)
            {
               case "Computer":
                  this.computePath();
                  break;
               case "Player1":
                  this.left = Input.kd("A");
                  this.right = Input.kd("D");
                  this.up = Input.kd("W");
                  this.down = Input.kd("S");
                  this.handbrake = Input.kd("CTRL");
                  break;
               case "Player2":
                  this.left = Input.kd("LEFT");
                  this.right = Input.kd("RIGHT");
                  this.up = Input.kd("UP");
                  this.down = Input.kd("DOWN");
                  this.handbrake = Input.kd("CTRL");
            }
            // Preserve computer steering; smooth keyboard input at the original 25 Hz.
            if(this._player == "Computer")
            {
               this.STEERSPEED = this.STEERSPEEDMIN;
               if(this.left)
               {
                  if(this._player == "Computer")
                  {
                     this.steer = this.STEER / 1;
                  }
                  else
                  {
                     this.steer += this.STEER / 4;
                  }
                  if(this.steer > this.STEER)
                  {
                     this.steer = this.STEER;
                  }
               }
               else if(this.right)
               {
                  if(this._player == "Computer")
                  {
                     this.steer = -this.STEER / 1;
                  }
                  else
                  {
                     this.steer += -this.STEER / 4;
                  }
                  if(this.steer < -this.STEER)
                  {
                     this.steer = -this.STEER;
                  }
               }
               else
               {
                  this.steer = 0;
                  this.STEERSPEED = this.STEERSPEEDMAX;
               }
            }
            else
            {
               var steeringTarget:Number = this.left ? this.STEER : (this.right ? -this.STEER : 0);
               // About 120 ms to 90% response; quicker centering and direction changes.
               var steeringResponse:Number = steeringTarget == 0 ? 0.65 : 0.55;
               this.steer += (steeringTarget - this.steer) * steeringResponse;
               if(Math.abs(steeringTarget - this.steer) < this.STEER * 0.005)
               {
                  this.steer = steeringTarget;
               }
               this.STEERSPEED = steeringTarget == 0 ? this.STEERSPEEDMAX : this.STEERSPEEDMIN;
            }
            if(this.up)
            {
               this.speed += this.SPEED / 4;
               if(this.speed > this.SPEED)
               {
                  this.speed = this.SPEED;
               }
            }
            else if(this.down)
            {
               this.speed += -this.SPEED / 4;
               if(this.speed < -this.SPEED)
               {
                  this.speed = -this.SPEED;
               }
            }
            else
            {
               this.speed *= 0.95;
            }
            if(this.handbrake)
            {
               this.speed *= 0.78;
            }
            if(this._player == "Computer")
            {
               this.speed *= Math.random() * (1 - this.difficulty) + this.difficulty;
            }
         }
         this.graphics.clear();
         if(this.wheels)
         {
            _loc2_ = this.frontWheelLeft;
            _loc3_ = this.frontWheelRight;
         }
         else
         {
            _loc2_ = this;
         }
         this.applySideFriction(_loc2_.b2body,false);
         if(this.wheels)
         {
            this.applySideFriction(_loc3_.b2body,false);
            this.applySideFriction(this.rearWheelLeft.b2body,true);
            this.applySideFriction(this.rearWheelRight.b2body,true);
         }
         var _loc4_:V2 = this.b2body.GetLinearVelocity();
         this.drawForce(_loc4_,255,3);
         var _loc5_:V2 = _loc2_.b2body.GetTransform().r.c1.clone();
         var _loc6_:Number = _loc4_.dot(_loc5_);
         _loc5_.multiplyN(this.speed);
         _loc2_.b2body.ApplyForce(_loc5_,_loc2_.b2body.GetWorldCenter());
         if(this.wheels)
         {
            _loc4_ = _loc3_.b2body.GetLinearVelocity();
            _loc5_ = _loc3_.b2body.GetTransform().r.c1.clone();
            _loc6_ = _loc4_.dot(_loc5_);
            _loc5_.multiplyN(this.speed);
            _loc3_.b2body.ApplyForce(_loc5_,_loc3_.b2body.GetWorldCenter());
         }
         if(this.wheels)
         {
            _loc8_ = this.steer - this.frontJointLeft.b2joint.GetJointAngle();
            this.frontJointLeft.motorSpeed = _loc8_ * this.STEERSPEED;
            _loc8_ = this.steer - this.frontJointRight.b2joint.GetJointAngle();
            this.frontJointRight.motorSpeed = _loc8_ * this.STEERSPEED;
         }
         else
         {
            _loc9_ = b2body.GetAngularVelocity();
            _loc2_.b2body.ApplyTorque(-this.steer * _loc6_ * b2body.GetMass());
         }
         var _loc7_:* = (_loc4_.length() / this.VELMAX + this.motorFreqMin) * 1;
         if(_loc7_ < this.motorFreqMin)
         {
            _loc7_ = this.motorFreqMin;
         }
         if(_loc7_ > this.motorFreqMax)
         {
            _loc7_ = this.motorFreqMax;
         }
         this.motorsound.playbackSpeed = _loc7_ * (1 + Math.random() * 0.03);
      }
      
      private function calculatePosition() : *
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:Number = NaN;
         var _loc4_:* = undefined;
         var _loc5_:MovieClip = null;
         _loc4_ = this.PATH[this.currentCP];
         if(this.currentCP < this.PATH.length - 1)
         {
            _loc5_ = this.PATH[this.currentCP + 1];
         }
         else
         {
            _loc5_ = this.PATH[0];
         }
         _loc1_ = this.dist(this,_loc4_);
         _loc2_ = this.dist(this,_loc5_);
         _loc3_ = this.dist(_loc4_,_loc5_);
         this.prevCPwLap = this.currentCPwLap;
         this.currentCPwLap = this.currentLap * this.totalCP + this.currentCP + (_loc3_ - _loc2_) / _loc3_;
      }
      
      private function computePath() : *
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         var _loc10_:Number = NaN;
         var _loc11_:* = undefined;
         var _loc12_:MovieClip = null;
         var _loc14_:* = undefined;
         var _loc15_:* = undefined;
         var _loc16_:* = undefined;
         var _loc17_:* = undefined;
         var _loc13_:Point = this.chasePoint;
         if(!this.reverse)
         {
            _loc16_ = Math.abs(this.carSpeed);
            if(_loc16_ < 2)
            {
               ++this.stuck;
               this.stuckAccum += _loc16_;
               _loc17_ = this.stuckAccum / this.stuck;
               if(this.stuck > 5 && _loc17_ < 0.7 || this.stuck > 30 && _loc17_ < 1.5)
               {
                  this.reverse = true;
                  this.reverseCount = 0;
               }
            }
            else
            {
               this.stuck = 0;
               this.stuckAccum = 0;
            }
         }
         else if(this.reverse)
         {
            this.stuck = 0;
            this.stuckAccum = 0;
            ++this.reverseCount;
            if(this.reverseCount < Math.random() * 20 + 20)
            {
               this.up = false;
               this.down = true;
               this.left = this.right = false;
               return;
            }
            this.up = true;
            this.down = false;
            this.reverse = false;
            this.reverseCount = 0;
         }
         _loc11_ = this.chaseObject;
         _loc12_ = this.goalObject;
         _loc3_ = this.dist(this,_loc11_);
         _loc4_ = this.dist(this,_loc12_);
         _loc5_ = this.dist(_loc11_,_loc12_);
         _loc10_ = -_loc3_ / _loc5_ * this.prediction;
         _loc13_.x = _loc11_.x + (_loc12_.x - _loc11_.x) * _loc10_;
         _loc13_.y = _loc11_.y + (_loc12_.y - _loc11_.y) * _loc10_;
         if(_loc13_.x < this.border.x)
         {
            _loc13_.x = this.border.x;
         }
         if(_loc13_.x > this.border.x + this.border.width)
         {
            _loc13_.x = this.border.x + this.border.width;
         }
         if(_loc13_.y < this.border.y)
         {
            _loc13_.y = this.border.y;
         }
         if(_loc13_.y > this.border.y + this.border.height)
         {
            _loc13_.y = this.border.y + this.border.height;
         }
         _loc1_ = this.rad2deg(this.angle(_loc13_,this));
         if(this.wheels)
         {
            _loc15_ = this.frontWheelLeft;
         }
         else
         {
            _loc15_ = this;
         }
         _loc2_ = _loc15_.rotation;
         _loc6_ = this.diffangle(_loc1_,_loc2_);
         _loc7_ = 10;
         _loc8_ = 180;
         this.left = false;
         this.right = false;
         this.down = false;
         if(_loc6_ > -_loc8_ && _loc6_ < -_loc7_)
         {
            if(!this.reverse)
            {
               this.left = true;
            }
         }
         else if(_loc6_ > _loc7_ && _loc6_ < _loc8_)
         {
            if(!this.reverse)
            {
               this.right = true;
            }
         }
         else if(_loc6_ > -_loc7_ && _loc6_ < _loc7_)
         {
            if(!this.reverse)
            {
               this.up = true;
            }
         }
         if(_loc10_ > 0.6 || _loc3_ > _loc4_)
         {
            this.down = false;
            ++this.pathIndex;
            if(this.pathIndex >= this.PATH.length)
            {
               this.pathIndex = 0;
            }
         }
         _loc13_ = null;
      }
      
      private function angle(param1:*, param2:*) : Number
      {
         var _loc3_:* = param1.x - param2.x;
         var _loc4_:* = param1.y - param2.y;
         return Math.atan2(_loc4_,_loc3_);
      }
      
      private function diffangle(param1:*, param2:*) : Number
      {
         var _loc3_:* = (param1 - param2) % 360;
         if(_loc3_ > 180)
         {
            _loc3_ -= 360;
         }
         if(_loc3_ < -180)
         {
            _loc3_ += 360;
         }
         return _loc3_;
      }
      
      private function dist(param1:*, param2:*) : Number
      {
         return Math.sqrt((param1.x - param2.x) * (param1.x - param2.x) + (param1.y - param2.y) * (param1.y - param2.y));
      }
      
      private function deg2rad(param1:*) : Number
      {
         return param1 / 360 * (2 * Math.PI);
      }
      
      private function rad2deg(param1:*) : Number
      {
         return param1 / (2 * Math.PI) * 360;
      }
      
      private function applySideFriction(param1:b2Body, param2:Boolean) : *
      {
         var _loc10_:SoundTransform = null;
         var _loc3_:* = 1;
         var _loc4_:V2 = param1.GetLinearVelocity();
         var _loc5_:V2 = param1.GetTransform().r.c1.clone();
         var _loc6_:Number = _loc4_.dot(_loc5_);
         _loc5_.multiplyN(_loc6_);
         var _loc7_:V2 = param1.GetTransform().r.c2.clone();
         var _loc8_:Number = _loc4_.dot(_loc7_);
         if(Math.abs(_loc8_) > this.SKID || this.handbrake)
         {
            if(param2)
            {
               this.skidding = true;
               _loc3_ = 0;
               if(!this.skate_snd_playing && false)
               {
                  _loc10_ = this.skidfx.soundTransform;
                  _loc10_.volume = this.soundVolume * this.masterVolume;
                  _loc10_.pan = this.soundPan;
                  this.skidfx.soundTransform = _loc10_;
                  this.skidfx = this.skate_snd.play();
                  this.skate_snd_playing = true;
                  this.skidfx.addEventListener(Event.SOUND_COMPLETE,this.completeSoundfx);
               }
            }
         }
         else
         {
            this.skidding = false;
         }
         _loc7_.multiplyN(_loc8_ * _loc3_);
         var _loc9_:* = _loc4_.subtract(_loc7_);
         param1.SetLinearVelocity(_loc9_);
      }
      
      private function killOrthogonalVelocity(param1:b2Body) : *
      {
         var _loc2_:* = new V2(0,0);
         var _loc3_:V2 = param1.GetLinearVelocityFromLocalPoint(_loc2_);
         var _loc4_:* = param1.GetTransform().r.c1.clone();
         _loc4_.multiplyN(_loc3_.dot(_loc4_));
         param1.SetLinearVelocity(_loc4_);
      }
      
      private function driftHandler(param1:Event) : *
      {
         var e:Event = param1;
         with(e.target)
         {
            --timecount;
            if(timecount == 0)
            {
               e.target.removeEventListener(Event.ENTER_FRAME,driftHandler);
               e.target.parent.removeChild(e.target);
            }
         }
      }
      
      public function handleBeginContact(param1:ContactEvent) : void
      {
         var _loc4_:Point = null;
         var _loc5_:V2 = null;
         var _loc6_:V2 = null;
         var _loc7_:SoundTransform = null;
         var _loc8_:Sound = null;
         var _loc2_:* = param1.target;
         var _loc3_:* = param1.relatedObject;
         if(!_loc3_.isSensor)
         {
            _loc4_ = this.globalToLocal(param1.point.toP());
            if(this.racing)
            {
               if(this.crashfx_sound_duration > 0)
               {
                  --this.crashfx_sound_duration;
               }
               else
               {
                  this.crashfx_sound_duration = this.crashfx_DURATION;
                  _loc7_ = new SoundTransform(this.soundVolume * this.masterVolume,this.soundPan);
                  if(_loc2_.parent is getClass(cars) || _loc3_.parent is getClass(cars))
                  {
                     _loc8_ = new sd_hit();
                     this.crashfx = _loc8_.play(0,1,_loc7_);
                     this.crashfx.soundTransform = _loc7_;
                  }
                  else
                  {
                     _loc8_ = new crash();
                     this.crashfx = _loc8_.play(0,1,_loc7_);
                     this.crashfx.soundTransform = _loc7_;
                  }
               }
            }
            _loc5_ = b2body.GetTransform().r.c1.clone();
            _loc5_.multiplyN(1 * b2body.GetMass());
            _loc6_ = b2body.GetTransform().r.c2.clone();
            _loc6_.multiplyN(10 * b2body.GetMass());
         }
         else
         {
            this.currentCP = Number(_loc3_.name.substr(2,_loc3_.name.length));
            if(this.currentCP == 0 && this.lastCP == this.totalCP - 1)
            {
               this.totalTime += this.lapTime;
               if(this.bestLapTime == 0 || this.bestLapTime > this.lapTime)
               {
                  this.bestLapTime = this.lapTime;
               }
               if(this.currentLap < this.totalLaps)
               {
                  this.startTime = getTimer();
               }
               ++this.currentLap;
               this.lastCP = this.currentCP;
               this.calculatePosition();
               if(this.currentLap == this.totalLaps)
               {
                  this.speed = 0;
                  this.racing = false;
                  --this.currentLap;
               }
            }
            else if(this.currentCP == this.lastCP + 1)
            {
               this.lastCP = this.currentCP;
            }
         }
         ++this.contactTime;
      }
      
      public function handlePostSolve(param1:ContactEvent) : *
      {
         trace(param1.impulses.normalImpulse1);
      }
      
      private function completeSoundfx(param1:Event) : *
      {
         this.skate_snd_playing = false;
      }
      
      public function handleEndContact(param1:ContactEvent) : void
      {
         this.contactTime = 0;
      }
      
      private function applyVolume(param1:*) : *
      {
         var _loc2_:SoundTransform = param1.soundTransform;
         if(this._player == "Player1" || this._player == "Player2")
         {
            _loc2_.volume = 1;
         }
         else
         {
            _loc2_.volume = 0.1;
         }
         param1.soundTransform = _loc2_;
      }
      
      private function drawForce(param1:*, param2:*, param3:*) : *
      {
         var g:Point = null;
         var l:V2 = null;
         var velocity:* = param1;
         var clr:* = param2;
         var factor:* = param3;
         if((this.parent as cars).debugDraw)
         {
            g = new Point(velocity.x,velocity.y);
            l = new V2(g.x,g.y);
            l.rotate(-b2body.GetAngle());
            with(this.graphics)
            {
               
               lineStyle(5,clr,0.5);
               moveTo(0,0);
               lineTo(l.x * factor,l.y * factor);
               lineTo(l.x * factor,0);
            }
         }
      }
      
      private function onMotionFinish(param1:*) : *
      {
         param1.target.obj.parent.removeChild(param1.target.obj);
      }
      
      public function setSound(param1:*, param2:*) : *
      {
         this.soundVolume = param1;
         this.soundPan = param2;
         var _loc3_:Number = (this.motorsound.playbackSpeed - this.motorFreqMin) / (this.motorFreqMax - this.motorFreqMin);
         this.motorsound.setVolumeAndPan(param1 * 1 * (0.3 + _loc3_) * this.masterVolume,param2);
      }
      
      public function pauseSound(param1:*) : *
      {
         if(param1)
         {
            this.motorsound.stop();
         }
         else
         {
            this.motorsound.playLoadedSound();
         }
      }
   }
}





