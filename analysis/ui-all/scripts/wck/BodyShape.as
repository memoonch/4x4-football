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
   import gravity.Gravity;
   import misc.*;
   
   public class BodyShape extends ScrollerChild
   {
      
      public var boja:MovieClip;
      
      public var trailer1:Box;
      
      public var _linearVelocity:V2 = new V2(0,0);
      
      public var _angularVelocity:Number = 0;
      
      public var _linearDamping:Number = 0;
      
      public var _angularDamping:Number = 0;
      
      public var _autoSleep:Boolean = true;
      
      public var _awake:Boolean = true;
      
      public var _fixedRotation:Boolean = false;
      
      public var _bullet:Boolean = false;
      
      public var _type:String = "Dynamic";
      
      public var _tweened:Boolean = false;
      
      public var _active:Boolean = true;
      
      public var _inertiaScale:Number = 1;
      
      public var _friction:Number = 0.2;
      
      public var _restitution:Number = 0;
      
      public var _density:Number = 1;
      
      public var _categoryBits:int = 1;
      
      public var _maskBits:int = 65535;
      
      public var _groupIndex:int = 0;
      
      public var _isSensor:Boolean = false;
      
      public var _reportBeginContact:Boolean = false;
      
      public var _reportEndContact:Boolean = false;
      
      public var _reportPreSolve:Boolean = false;
      
      public var _reportPostSolve:Boolean = false;
      
      public var _bubbleContacts:Boolean = true;
      
      public var _conveyorBeltSpeed:Number = 0;
      
      public var isGround:Boolean = false;
      
      public var applyGravity:Boolean = true;
      
      public var gravityMod:Boolean = false;
      
      public var gravityScale:Number = 1;
      
      public var gravityAngle:Number = 0;
      
      public var allowDragging:Boolean = true;
      
      public var isGuideShape:Boolean = false;
      
      public var customGravityName:String = "";
      
      public var world:World = null;
      
      public var selfBody:Boolean = false;
      
      public var body:BodyShape = null;
      
      public var b2body:b2Body = null;
      
      public var b2fixtures:Vector.<b2Fixture> = null;
      
      public var matrix:Matrix = null;
      
      public var gravity:V2;
      
      public var customGravity:Gravity = null;
      
      public var bufferedShapes:Array = [];
      
      public function BodyShape()
      {
         super();
      }
      
      public static function typeStringToInt(param1:String) : int
      {
         return {
            "Static":b2Body.b2_staticBody,
            "Kinematic":b2Body.b2_kinematicBody,
            "Dynamic":b2Body.b2_dynamicBody,
            "Animated":b2Body.b2_kinematicBody
         }[param1];
      }
      
      public function set linearVelocityX(param1:Number) : void
      {
         if(this.b2body)
         {
            this.b2body.m_linearVelocity.x = param1;
         }
         else
         {
            this._linearVelocity.x = param1;
         }
      }
      
      public function get linearVelocityX() : Number
      {
         if(this.b2body)
         {
            return this.b2body.m_linearVelocity.x;
         }
         return this._linearVelocity.x;
      }
      
      public function set linearVelocityY(param1:Number) : void
      {
         if(this.b2body)
         {
            this.b2body.m_linearVelocity.y = param1;
         }
         else
         {
            this._linearVelocity.y = param1;
         }
      }
      
      public function get linearVelocityY() : Number
      {
         if(this.b2body)
         {
            return this.b2body.m_linearVelocity.y;
         }
         return this._linearVelocity.y;
      }
      
      public function set linearVelocity(param1:V2) : void
      {
         if(this.b2body)
         {
            this.b2body.SetLinearVelocity(param1);
         }
         else
         {
            this._linearVelocity.copy(param1);
         }
      }
      
      public function get linearVelocity() : V2
      {
         if(this.b2body)
         {
            return this.b2body.GetLinearVelocity();
         }
         return this._linearVelocity;
      }
      
      public function set angularVelocity(param1:Number) : void
      {
         if(this.b2body)
         {
            this.b2body.SetAngularVelocity(param1);
         }
         else
         {
            this._angularVelocity = param1;
         }
      }
      
      public function get angularVelocity() : Number
      {
         if(this.b2body)
         {
            return this.b2body.GetAngularVelocity();
         }
         return this._angularVelocity;
      }
      
      public function set linearDamping(param1:Number) : void
      {
         if(this.b2body)
         {
            this.b2body.SetLinearDamping(param1);
         }
         else
         {
            this._linearDamping = param1;
         }
      }
      
      public function get linearDamping() : Number
      {
         if(this.b2body)
         {
            return this.b2body.GetLinearDamping();
         }
         return this._linearDamping;
      }
      
      public function set angularDamping(param1:Number) : void
      {
         if(this.b2body)
         {
            this.b2body.SetAngularDamping(param1);
         }
         else
         {
            this._angularDamping = param1;
         }
      }
      
      public function get angularDamping() : Number
      {
         if(this.b2body)
         {
            return this.b2body.GetAngularDamping();
         }
         return this._angularDamping;
      }
      
      public function set autoSleep(param1:Boolean) : void
      {
         if(this.b2body)
         {
            this.b2body.SetSleepingAllowed(param1);
         }
         else
         {
            this._autoSleep = param1;
         }
      }
      
      public function get autoSleep() : Boolean
      {
         if(this.b2body)
         {
            return this.b2body.IsSleepingAllowed();
         }
         return this._autoSleep;
      }
      
      public function set awake(param1:Boolean) : void
      {
         if(this.b2body)
         {
            this.b2body.SetAwake(param1);
         }
         else
         {
            this._awake = param1;
         }
      }
      
      public function get awake() : Boolean
      {
         if(this.b2body)
         {
            return this.b2body.IsAwake();
         }
         return this._awake;
      }
      
      public function set fixedRotation(param1:Boolean) : void
      {
         if(this.b2body)
         {
            this.b2body.SetFixedRotation(param1);
         }
         else
         {
            this._fixedRotation = param1;
         }
      }
      
      public function get fixedRotation() : Boolean
      {
         if(this.b2body)
         {
            return this.b2body.IsFixedRotation();
         }
         return this._fixedRotation;
      }
      
      public function set bullet(param1:Boolean) : void
      {
         if(this.b2body)
         {
            this.b2body.SetBullet(param1);
         }
         else
         {
            this._bullet = param1;
         }
      }
      
      public function get bullet() : Boolean
      {
         if(this.b2body)
         {
            return this.b2body.IsBullet();
         }
         return this._bullet;
      }
      
      public function set type(param1:String) : void
      {
         if(this._tweened)
         {
            param1 = "Animated";
         }
         if(Boolean(this.b2body) && this.selfBody)
         {
            this.b2body.SetType(typeStringToInt(param1));
            this._type = param1;
            this.setUpdateMethod();
         }
         else
         {
            this._type = param1;
         }
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set tweened(param1:Boolean) : void
      {
         this._tweened = param1;
         this.type = "Animated";
      }
      
      public function get tweened() : Boolean
      {
         return this._tweened;
      }
      
      public function set active(param1:Boolean) : void
      {
         if(this.b2body)
         {
            this.b2body.SetActive(param1);
         }
         else
         {
            this._active = param1;
         }
      }
      
      public function get active() : Boolean
      {
         if(this.b2body)
         {
            return this.b2body.IsActive();
         }
         return this._active;
      }
      
      public function set inertiaScale(param1:Number) : void
      {
         this._inertiaScale = param1;
      }
      
      public function get inertiaScale() : Number
      {
         return this._inertiaScale;
      }
      
      public function set friction(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.b2fixtures)
         {
            _loc2_ = 0;
            while(_loc2_ < this.b2fixtures.length)
            {
               this.b2fixtures[_loc2_].SetFriction(param1);
               _loc2_++;
            }
         }
         else
         {
            this._friction = param1;
         }
      }
      
      public function get friction() : Number
      {
         if(Boolean(this.b2fixtures) && this.b2fixtures.length > 0)
         {
            return this.b2fixtures[0].GetFriction();
         }
         return this._friction;
      }
      
      public function set restitution(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.b2fixtures)
         {
            _loc2_ = 0;
            while(_loc2_ < this.b2fixtures.length)
            {
               this.b2fixtures[_loc2_].SetRestitution(param1);
               _loc2_++;
            }
         }
         else
         {
            this._restitution = param1;
         }
      }
      
      public function get restitution() : Number
      {
         if(Boolean(this.b2fixtures) && this.b2fixtures.length > 0)
         {
            return this.b2fixtures[0].GetRestitution();
         }
         return this._restitution;
      }
      
      public function set density(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.b2fixtures)
         {
            _loc2_ = 0;
            while(_loc2_ < this.b2fixtures.length)
            {
               this.b2fixtures[_loc2_].SetDensity(param1);
               _loc2_++;
            }
         }
         else
         {
            this._density = param1;
         }
      }
      
      public function get density() : Number
      {
         if(Boolean(this.b2fixtures) && this.b2fixtures.length > 0)
         {
            return this.b2fixtures[0].GetDensity();
         }
         return this._density;
      }
      
      public function set categoryBits(param1:*) : void
      {
         var _loc2_:int = 0;
         param1 = param1 is String ? parseInt(param1) : param1;
         if(Boolean(this.b2fixtures) && this.b2fixtures.length > 0)
         {
            _loc2_ = 0;
            while(_loc2_ < this.b2fixtures.length)
            {
               this.b2fixtures[_loc2_].m_filter.categoryBits = param1;
               this.b2fixtures[_loc2_].Refilter();
               _loc2_++;
            }
         }
         else
         {
            this._categoryBits = param1;
         }
      }
      
      public function get categoryBits() : int
      {
         if(Boolean(this.b2fixtures) && this.b2fixtures.length > 0)
         {
            return this.b2fixtures[0].m_filter.categoryBits;
         }
         return this._categoryBits;
      }
      
      public function set maskBits(param1:*) : void
      {
         var _loc2_:int = 0;
         param1 = param1 is String ? parseInt(param1) : param1;
         if(Boolean(this.b2fixtures) && this.b2fixtures.length > 0)
         {
            _loc2_ = 0;
            while(_loc2_ < this.b2fixtures.length)
            {
               this.b2fixtures[_loc2_].m_filter.maskBits = param1;
               this.b2fixtures[_loc2_].Refilter();
               _loc2_++;
            }
         }
         else
         {
            this._maskBits = param1;
         }
      }
      
      public function get maskBits() : int
      {
         if(Boolean(this.b2fixtures) && this.b2fixtures.length > 0)
         {
            return this.b2fixtures[0].m_filter.maskBits;
         }
         return this._maskBits;
      }
      
      public function set groupIndex(param1:int) : void
      {
         this._groupIndex = param1;
      }
      
      public function get groupIndex() : int
      {
         return this._groupIndex;
      }
      
      public function set isSensor(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         if(this.b2fixtures)
         {
            _loc2_ = 0;
            while(_loc2_ < this.b2fixtures.length)
            {
               this.b2fixtures[_loc2_].SetSensor(param1);
               _loc2_++;
            }
         }
         else
         {
            this._isSensor = param1;
         }
      }
      
      public function get isSensor() : Boolean
      {
         if(Boolean(this.b2fixtures) && this.b2fixtures.length > 0)
         {
            return this.b2fixtures[0].IsSensor();
         }
         return this._isSensor;
      }
      
      public function set reportBeginContact(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         if(this.b2fixtures)
         {
            _loc2_ = 0;
            while(_loc2_ < this.b2fixtures.length)
            {
               this.b2fixtures[_loc2_].m_reportBeginContact = param1;
               _loc2_++;
            }
         }
         else
         {
            this._reportBeginContact = param1;
         }
      }
      
      public function get reportBeginContact() : Boolean
      {
         if(Boolean(this.b2fixtures) && this.b2fixtures.length > 0)
         {
            return this.b2fixtures[0].m_reportBeginContact;
         }
         return this._reportBeginContact;
      }
      
      public function set reportEndContact(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         if(this.b2fixtures)
         {
            _loc2_ = 0;
            while(_loc2_ < this.b2fixtures.length)
            {
               this.b2fixtures[_loc2_].m_reportEndContact = param1;
               _loc2_++;
            }
         }
         else
         {
            this._reportEndContact = param1;
         }
      }
      
      public function get reportEndContact() : Boolean
      {
         if(Boolean(this.b2fixtures) && this.b2fixtures.length > 0)
         {
            return this.b2fixtures[0].m_reportEndContact;
         }
         return this._reportEndContact;
      }
      
      public function set reportPreSolve(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         if(this.b2fixtures)
         {
            _loc2_ = 0;
            while(_loc2_ < this.b2fixtures.length)
            {
               this.b2fixtures[_loc2_].m_reportPreSolve = param1;
               _loc2_++;
            }
         }
         else
         {
            this._reportPreSolve = param1;
         }
      }
      
      public function get reportPreSolve() : Boolean
      {
         if(Boolean(this.b2fixtures) && this.b2fixtures.length > 0)
         {
            return this.b2fixtures[0].m_reportPreSolve;
         }
         return this._reportPreSolve;
      }
      
      public function set reportPostSolve(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         if(this.b2fixtures)
         {
            _loc2_ = 0;
            while(_loc2_ < this.b2fixtures.length)
            {
               this.b2fixtures[_loc2_].m_reportPostSolve = param1;
               _loc2_++;
            }
         }
         else
         {
            this._reportPostSolve = param1;
         }
      }
      
      public function get reportPostSolve() : Boolean
      {
         if(Boolean(this.b2fixtures) && this.b2fixtures.length > 0)
         {
            return this.b2fixtures[0].m_reportPostSolve;
         }
         return this._reportPostSolve;
      }
      
      public function set bubbleContacts(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         if(this.b2fixtures)
         {
            _loc2_ = 0;
            while(_loc2_ < this.b2fixtures.length)
            {
               this.b2fixtures[_loc2_].m_bubbleContacts = param1;
               _loc2_++;
            }
         }
         else
         {
            this._bubbleContacts = param1;
         }
      }
      
      public function get bubbleContacts() : Boolean
      {
         if(Boolean(this.b2fixtures) && this.b2fixtures.length > 0)
         {
            return this.b2fixtures[0].m_bubbleContacts;
         }
         return this._bubbleContacts;
      }
      
      public function set conveyorBeltSpeed(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(this.b2fixtures)
         {
            _loc2_ = 0;
            while(_loc2_ < this.b2fixtures.length)
            {
               this.b2fixtures[_loc2_].m_conveyorBeltSpeed = param1;
               _loc2_++;
            }
         }
         else
         {
            this._conveyorBeltSpeed = param1;
         }
      }
      
      public function get conveyorBeltSpeed() : Number
      {
         if(Boolean(this.b2fixtures) && this.b2fixtures.length > 0)
         {
            return this.b2fixtures[0].m_conveyorBeltSpeed;
         }
         return this._conveyorBeltSpeed;
      }
      
      public function shape(param1:Function, ... rest) : void
      {
         if(this.b2body)
         {
            param1.apply(this,rest);
         }
         this.bufferedShapes.push([param1,rest]);
      }
      
      public function createBufferedShapes() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.bufferedShapes.length)
         {
            this.bufferedShapes[_loc1_][0].apply(this,this.bufferedShapes[_loc1_][1]);
            _loc1_++;
         }
      }
      
      public function shapes() : void
      {
      }
      
      public function box(param1:Number = 0, param2:Number = 0, param3:V2 = null, param4:Number = 0) : b2Fixture
      {
         var _loc8_:Rectangle = null;
         param3 ||= new V2();
         if(param1 == 0 || param2 == 0)
         {
            _loc8_ = Util.bounds(this);
            if(param1 == 0)
            {
               param1 = _loc8_.width;
            }
            if(param2 == 0)
            {
               param2 = _loc8_.height;
            }
         }
         var _loc5_:Number = param1 / 2;
         var _loc6_:Number = param2 / 2;
         var _loc7_:Vector.<V2> = Vector.<V2>([new V2(-_loc5_,-_loc6_),new V2(_loc5_,-_loc6_),new V2(_loc5_,_loc6_),new V2(-_loc5_,_loc6_)]);
         this.orientVertices(_loc7_,param3,param4);
         return this.polygon(_loc7_);
      }
      
      public function circle(param1:Number = 0, param2:V2 = null) : b2Fixture
      {
         var _loc5_:Rectangle = null;
         param2 ||= new V2();
         if(param1 == 0)
         {
            _loc5_ = Util.bounds(this);
            param1 = _loc5_.width / 2;
         }
         var _loc3_:V2 = param2.clone();
         var _loc4_:Vector.<V2> = Vector.<V2>([_loc3_,new V2(_loc3_.x + param1,_loc3_.y)]);
         this.transformVertices(_loc4_);
         b2Def.circle.m_radius = _loc4_[0].distance(_loc4_[1]);
         b2Def.circle.m_p.x = _loc4_[0].x;
         b2Def.circle.m_p.y = _loc4_[0].y;
         this.initFixtureDef();
         b2Def.fixture.shape = b2Def.circle;
         return this.createFixture();
      }
      
      public function oval(param1:Number = 0, param2:Number = 0, param3:V2 = null, param4:uint = 0, param5:Number = 4, param6:Number = 0) : Array
      {
         var _loc17_:Rectangle = null;
         var _loc18_:Number = NaN;
         var _loc19_:Vector.<V2> = null;
         var _loc20_:uint = 0;
         var _loc21_:uint = 0;
         var _loc22_:Number = NaN;
         param3 ||= new V2();
         if(param1 == 0)
         {
            _loc17_ = Util.bounds(this);
            param1 = _loc17_.width;
            param2 = _loc17_.height;
         }
         var _loc7_:Number = param1 / 2;
         var _loc8_:Number = param2 / 2;
         var _loc9_:Point = Util.localizePoint(this.world,this,new Point(_loc7_,0));
         var _loc10_:Point = Util.localizePoint(this.world,this,new Point(0,_loc8_));
         var _loc11_:Point = Util.localizePoint(this.world,this);
         var _loc12_:Number = Point.distance(_loc9_,_loc11_);
         var _loc13_:Number = Point.distance(_loc10_,_loc11_);
         var _loc14_:Number = Math.abs(_loc12_ - _loc13_);
         if(_loc14_ < 2)
         {
            return [this.circle(_loc7_,param3)];
         }
         if(param4 == 0)
         {
            _loc18_ = Point.distance(_loc9_,_loc10_);
            param4 = Math.round(_loc18_ / this.world.scale * param5);
         }
         var _loc15_:Array = [];
         param4 = Math.max(param4,12);
         var _loc16_:uint = 1;
         while(_loc16_ < param4)
         {
            _loc19_ = Vector.<V2>([new V2(_loc7_,0)]);
            _loc20_ = Math.min(_loc16_ + 6,param4 - 1);
            _loc21_ = _loc16_;
            while(_loc21_ <= _loc20_)
            {
               _loc22_ = _loc21_ / param4 * Math.PI * 2;
               _loc19_.push(new V2(_loc7_ * Math.cos(_loc22_),_loc8_ * Math.sin(_loc22_)));
               _loc21_++;
            }
            this.orientVertices(_loc19_,param3,param6);
            _loc15_.push(this.polygon(_loc19_));
            _loc16_ += 6;
         }
         return _loc15_;
      }
      
      public function polyN(param1:uint = 5, param2:Number = 0, param3:V2 = null, param4:Number = 0) : b2Fixture
      {
         param3 ||= new V2();
         if(param2 == 0)
         {
            param2 = Util.bounds(this).top;
         }
         var _loc5_:Vector.<V2> = new Vector.<V2>();
         var _loc6_:uint = 0;
         while(_loc6_ < param1)
         {
            _loc5_.push(new V2(0,param2).rotate(_loc6_ / param1 * Math.PI * 2));
            _loc6_++;
         }
         this.orientVertices(_loc5_,param3,param4);
         return this.polygon(_loc5_);
      }
      
      public function arc(param1:Number = 360, param2:uint = 0, param3:Number = 0, param4:V2 = null, param5:Number = 0, param6:Number = 4) : Array
      {
         var _loc10_:Number = NaN;
         var _loc11_:Vector.<V2> = null;
         var _loc12_:uint = 0;
         var _loc13_:uint = 0;
         param4 ||= new V2();
         if(param3 == 0)
         {
            param3 = Util.bounds(this).top;
         }
         if(param2 == 0)
         {
            _loc10_ = Point.distance(Util.localizePoint(this.world,this,new Point(param3,0)),Util.localizePoint(this.world,this,new Point(0,param3)));
            param2 = Math.round(_loc10_ / this.world.scale * param6);
         }
         param2 = Math.max(param2,12);
         var _loc7_:Number = Util.D2R * param1;
         var _loc8_:Array = [];
         var _loc9_:uint = 0;
         while(_loc9_ < param2)
         {
            _loc11_ = Vector.<V2>([new V2()]);
            _loc12_ = Math.min(_loc9_ + 4,param2);
            _loc13_ = _loc9_;
            while(_loc13_ <= _loc12_)
            {
               _loc11_.push(new V2(0,param3).rotate(_loc13_ / param2 * _loc7_));
               _loc13_++;
            }
            this.orientVertices(_loc11_,param4,param5);
            _loc8_.push(this.polygon(_loc11_));
            _loc9_ += 4;
         }
         return _loc8_;
      }
      
      public function edgeArc(param1:Number = 360, param2:uint = 0, param3:Number = 0, param4:V2 = null, param5:Number = 0, param6:Number = 8) : Array
      {
         var _loc10_:Number = NaN;
         param4 ||= new V2();
         if(param3 == 0)
         {
            param3 = Util.bounds(this).top;
         }
         if(param2 == 0)
         {
            _loc10_ = Point.distance(Util.localizePoint(this.world,this,new Point(param3,0)),Util.localizePoint(this.world,this,new Point(0,param3)));
            param2 = Math.round(_loc10_ / this.world.scale * param6);
         }
         var _loc7_:Number = Util.D2R * param1;
         var _loc8_:Vector.<V2> = new Vector.<V2>();
         var _loc9_:uint = 0;
         while(_loc9_ <= param2)
         {
            _loc8_.push(new V2(0,param3).rotate(_loc9_ / param2 * _loc7_));
            _loc9_++;
         }
         this.orientVertices(_loc8_,param4,param5);
         return this.edges(_loc8_);
      }
      
      public function lineArc(param1:Number = 360, param2:uint = 0, param3:Number = 0, param4:V2 = null, param5:Number = 0, param6:Number = 8) : Array
      {
         var _loc11_:Number = NaN;
         param4 ||= new V2();
         if(param3 == 0)
         {
            param3 = Util.bounds(this).top;
         }
         if(param2 == 0)
         {
            _loc11_ = Point.distance(Util.localizePoint(this.world,this,new Point(param3,0)),Util.localizePoint(this.world,this,new Point(0,param3)));
            param2 = Math.round(_loc11_ / this.world.scale * param6);
         }
         var _loc7_:Number = Util.D2R * param1;
         var _loc8_:Array = [];
         var _loc9_:Vector.<V2> = Vector.<V2>([new V2(0,param3)]);
         var _loc10_:uint = 0;
         while(_loc10_ < param2)
         {
            _loc9_[1] = new V2(0,param3).rotate((_loc10_ + 1) / param2 * _loc7_);
            this.orientVertices(_loc9_,param4,param5);
            _loc8_.push(this.line(_loc9_[0],_loc9_[1]));
            _loc9_[0].x = _loc9_[1].x;
            _loc9_[0].y = _loc9_[1].y;
            _loc10_++;
         }
         return _loc8_;
      }
      
      public function triangle(param1:Number = 0, param2:Number = 0, param3:V2 = null, param4:Number = 0) : b2Fixture
      {
         var _loc8_:Rectangle = null;
         param3 ||= new V2();
         if(param1 == 0 || param2 == 0)
         {
            _loc8_ = Util.bounds(this);
            if(param1 == 0)
            {
               param1 = _loc8_.width;
            }
            if(param2 == 0)
            {
               param2 = _loc8_.height;
            }
         }
         var _loc5_:Number = param1 / 2;
         var _loc6_:Number = param2 / 2;
         var _loc7_:Vector.<V2> = Vector.<V2>([new V2(-_loc5_,-_loc6_),new V2(_loc5_,_loc6_),new V2(-_loc5_,_loc6_)]);
         this.orientVertices(_loc7_,param3,param4);
         return this.polygon(_loc7_);
      }
      
      public function line(param1:V2 = null, param2:V2 = null) : b2Fixture
      {
         var _loc3_:Rectangle = null;
         if(!(Boolean(param1) && Boolean(param2)))
         {
            _loc3_ = Util.bounds(this);
            param1 ||= new V2(0,_loc3_.top);
            param2 ||= new V2(0,_loc3_.bottom);
         }
         return this.polygon(Vector.<V2>([param1,param2]));
      }
      
      public function edge(param1:V2 = null, param2:V2 = null) : b2Fixture
      {
         var _loc4_:Rectangle = null;
         if(!(Boolean(param1) && Boolean(param2)))
         {
            _loc4_ = Util.bounds(this);
            param1 ||= new V2(0,_loc4_.top);
            param2 ||= new V2(0,_loc4_.bottom);
         }
         var _loc3_:Array = this.edges(Vector.<V2>([param1,param2]));
         return _loc3_[0];
      }
      
      public function poly(param1:Array) : b2Fixture
      {
         var _loc2_:Vector.<V2> = new Vector.<V2>();
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc2_.push(new V2(param1[_loc3_][0],param1[_loc3_][1]));
            _loc3_++;
         }
         return this.polygon(_loc2_);
      }
      
      public function polys(param1:Array) : Array
      {
         var _loc2_:Array = [];
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc2_.push(this.poly(param1[_loc3_]));
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function decomposedPoly(param1:Vector.<Number>) : Array
      {
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            param1[_loc2_] /= this.world.scale;
            _loc2_++;
         }
         var _loc3_:Vector.<b2PolygonShape> = b2PolygonShape.Decompose(param1);
         this.initFixtureDef();
         var _loc4_:Array = [];
         _loc2_ = 0;
         while(_loc2_ < _loc3_.length)
         {
            b2Def.fixture.shape = _loc3_[_loc2_];
            _loc4_.push(this.createFixture());
            _loc3_[_loc2_].destroy();
            _loc2_++;
         }
         return _loc4_;
      }
      
      public function polygon(param1:Vector.<V2>) : b2Fixture
      {
         this.transformVertices(param1);
         b2PolygonShape.EnsureCorrectVertexDirection(param1);
         b2Def.polygon.Set(param1);
         this.initFixtureDef();
         b2Def.fixture.shape = b2Def.polygon;
         return this.createFixture();
      }
      
      public function edges(param1:Vector.<V2>) : Array
      {
         this.transformVertices(param1);
         this.initFixtureDef();
         b2Def.fixture.shape = b2Def.edge;
         var _loc2_:Array = [];
         var _loc3_:int = 1;
         while(_loc3_ < param1.length)
         {
            b2Def.edge.m_vertex1.v2 = param1[_loc3_ - 1];
            b2Def.edge.m_vertex2.v2 = param1[_loc3_];
            b2Def.edge.m_hasVertex0 = _loc3_ > 1;
            b2Def.edge.m_hasVertex3 = _loc3_ + 1 < param1.length;
            b2Def.edge.m_vertex0.v2 = b2Def.edge.m_hasVertex0 ? param1[_loc3_ - 2] : new V2();
            b2Def.edge.m_vertex3.v2 = b2Def.edge.m_hasVertex3 ? param1[_loc3_ + 1] : new V2();
            _loc2_.push(this.createFixture());
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function initFixtureDef() : void
      {
         var _loc1_:BodyShape = this.findGuideOwner();
         b2Def.fixture.friction = _loc1_._friction;
         b2Def.fixture.restitution = _loc1_._restitution;
         b2Def.fixture.density = _loc1_._density;
         b2Def.fixture.filter.categoryBits = _loc1_._categoryBits;
         b2Def.fixture.filter.maskBits = _loc1_._maskBits;
         b2Def.fixture.filter.groupIndex = _loc1_._groupIndex;
         b2Def.fixture.isSensor = _loc1_._isSensor;
         b2Def.fixture.userData = _loc1_;
      }
      
      public function findGuideOwner() : BodyShape
      {
         var _loc2_:BodyShape = null;
         var _loc1_:DisplayObject = this;
         while(_loc1_)
         {
            _loc2_ = _loc1_ as BodyShape;
            if(Boolean(_loc2_) && !_loc2_.isGuideShape)
            {
               return _loc2_;
            }
            _loc1_ = _loc1_.parent;
         }
         return this;
      }
      
      public function createFixture() : b2Fixture
      {
         var _loc1_:BodyShape = this.findGuideOwner();
         var _loc2_:b2Fixture = new b2Fixture(this.b2body,b2Def.fixture,_loc1_);
         _loc1_.b2fixtures.push(_loc2_);
         _loc2_.m_reportBeginContact = _loc1_._reportBeginContact;
         _loc2_.m_reportEndContact = _loc1_._reportEndContact;
         _loc2_.m_reportPreSolve = _loc1_._reportPreSolve;
         _loc2_.m_reportPostSolve = _loc1_._reportPostSolve;
         _loc2_.m_conveyorBeltSpeed = _loc1_._conveyorBeltSpeed;
         _loc2_.m_bubbleContacts = _loc1_._bubbleContacts;
         return _loc2_;
      }
      
      public function orientVertices(param1:Vector.<V2>, param2:V2 = null, param3:Number = 0) : void
      {
         var _loc4_:uint = 0;
         param2 ||= new V2();
         if(param3 != 0 || param2.x != 0 || param2.y != 0)
         {
            _loc4_ = 0;
            while(_loc4_ < param1.length)
            {
               param1[_loc4_].rotate(Util.D2R * param3).add(param2);
               _loc4_++;
            }
         }
      }
      
      public function transformVertices(param1:Vector.<V2>) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            param1[_loc2_] = this.transformVertex(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function transformVertex(param1:V2) : V2
      {
         var _loc2_:Point = this.matrix.transformPoint(param1.toP());
         return new V2(_loc2_.x / this.world.scale,_loc2_.y / this.world.scale);
      }
      
      override public function create() : void
      {
         this.world = Util.findAncestorOfClass(this,World) as World;
         if(!this.world || this.world.disabled)
         {
            return;
         }
         this.world.ensureCreated();
         if(this.customGravityName != "")
         {
            this.customGravity = Util.getDisplayObjectByPath(this.world,this.customGravityName,this.world) as Gravity;
         }
         if(this.isGround)
         {
            this.world.doOutsideTimeStep(this.createShapes);
         }
         else if(this.type == "Kinematic" || this.type == "Animated")
         {
            this.world.doOutsideTimeStep(this.createBody);
         }
         else
         {
            this.body = Util.findAncestorOfClass(this,BodyShape) as BodyShape;
            if(this.body)
            {
               if(!this.body.disabled)
               {
                  this.body.ensureCreated();
                  if(this.body.world == this.world)
                  {
                     this.body = this.body.body;
                     this.world.doOutsideTimeStep(this.createShapes);
                  }
                  else
                  {
                     this.world.doOutsideTimeStep(this.createBody);
                  }
               }
            }
            else if(this.world)
            {
               this.world.doOutsideTimeStep(this.createBody);
            }
         }
         super.create();
      }
      
      override public function destroy() : void
      {
         this.customGravity = null;
         if(Boolean(this.world && this.world.created) && Boolean(!this.world.disabled) && Boolean(this.world.parent))
         {
            if(this.selfBody)
            {
               this.destroyBody();
            }
            else if(Boolean(this.body) && Boolean(!this.body.disabled) && (this.body.created || this.body.isGround))
            {
               this.destroyShapes();
            }
            this.world.doOutsideTimeStep(function():void
            {
               b2body = null;
               b2fixtures = null;
               world = null;
            });
         }
         else
         {
            this.b2body = null;
            this.b2fixtures = null;
            this.world = null;
         }
      }
      
      public function createBody() : void
      {
         this.selfBody = true;
         this.body = this;
         this.matrix = Util.localizeMatrix(this.world,this);
         b2Def.body.position.x = this.matrix.tx / this.world.scale;
         b2Def.body.position.y = this.matrix.ty / this.world.scale;
         b2Def.body.angle = Math.atan2(this.matrix.b,this.matrix.a);
         b2Def.body.linearVelocity.x = this._linearVelocity.x;
         b2Def.body.linearVelocity.y = this._linearVelocity.y;
         b2Def.body.angularVelocity = this._angularVelocity;
         b2Def.body.linearDamping = this._linearDamping;
         b2Def.body.angularDamping = this._angularDamping;
         b2Def.body.allowSleep = this._autoSleep;
         b2Def.body.awake = this._awake;
         b2Def.body.fixedRotation = this._fixedRotation;
         b2Def.body.bullet = this._bullet;
         b2Def.body.type = typeStringToInt(this._type);
         b2Def.body.active = this._active;
         b2Def.body.inertiaScale = this._inertiaScale;
         b2Def.body.userData = this;
         this.b2body = new b2Body(this.world.b2world,b2Def.body);
         this.matrix.tx = 0;
         this.matrix.ty = 0;
         var _loc1_:Number = Math.atan2(-this.matrix.c,this.matrix.d) - Math.atan2(this.matrix.b,this.matrix.a);
         var _loc2_:Number = Math.sqrt(this.matrix.c * this.matrix.c + this.matrix.d * this.matrix.d);
         this.matrix.c = -_loc2_ * Math.sin(_loc1_);
         this.matrix.d = _loc2_ * Math.cos(_loc1_);
         this.matrix.a = Math.sqrt(this.matrix.a * this.matrix.a + this.matrix.b * this.matrix.b);
         this.matrix.b = 0;
         this.b2fixtures = new Vector.<b2Fixture>();
         this.createBufferedShapes();
         this.shapes();
         this.setUpdateMethod();
      }
      
      public function setUpdateMethod() : void
      {
         stopListening(this.world,StepEvent.STEP,this.updateBodyMatrixSimple);
         stopListening(this.world,StepEvent.STEP,this.updateBodyMatrix);
         stopListening(this.world,StepEvent.STEP,this.updateTween);
         if(this._type == "Static")
         {
            return;
         }
         if(this._type == "Animated")
         {
            listenWhileVisible(this.world,StepEvent.STEP,this.updateTween,false,2);
         }
         else if(parent == this.world)
         {
            listenWhileVisible(this.world,StepEvent.STEP,this.updateBodyMatrixSimple,false,-10);
         }
         else
         {
            listenWhileVisible(this.world,StepEvent.STEP,this.updateBodyMatrix,false,-10);
         }
      }
      
      public function syncTransform() : void
      {
         this.body.matrix = Util.localizeMatrix(this.world,this.body);
         var _loc1_:Number = this.body.matrix.tx / this.world.scale;
         var _loc2_:Number = this.body.matrix.ty / this.world.scale;
         var _loc3_:Number = Math.atan2(this.matrix.b,this.matrix.a);
         this.b2body.SetTransform(new V2(_loc1_,_loc2_),_loc3_);
      }
      
      public function updateTween(param1:Event) : void
      {
         var _loc2_:V2 = this.b2body.m_xf.position.v2;
         var _loc3_:Number = this.b2body.m_sweep.a;
         var _loc4_:V2 = V2.fromP(Util.localizePoint(this.world,this)).divideN(this.world.scale);
         var _loc5_:Number = Util.findBetterAngleTarget(_loc3_ * Util.R2D,Util.localizeRotation(this.world,this)) * Util.D2R;
         var _loc6_:V2 = V2.subtract(_loc4_,_loc2_);
         var _loc7_:Number = _loc5_ - _loc3_;
         if(_loc6_.length() > b2Settings.b2_maxTranslation || _loc7_ > b2Settings.b2_maxRotation)
         {
            this.syncTransform();
            _loc6_.x = 0;
            _loc6_.y = 0;
            _loc7_ = 0;
         }
         else
         {
            _loc6_.divideN(this.world.timeStep);
            _loc7_ /= this.world.timeStep;
         }
         this.b2body.SetAwake(true);
         this.b2body.SetLinearVelocity(_loc6_);
         this.b2body.SetAngularVelocity(_loc7_);
      }
      
      public function createShapes() : void
      {
         if(this.isGround)
         {
            this.matrix = Util.localizeMatrix(this.world,this);
            this.body = this;
            this.b2body = this.world.b2world.m_groundBody;
         }
         else
         {
            this.body.ensureCreated();
            this.b2body = this.body.b2body;
            this.matrix = Util.localizeMatrix(this.body,this);
            this.matrix.concat(this.body.matrix);
         }
         this.selfBody = false;
         this.b2fixtures = new Vector.<b2Fixture>();
         this.shapes();
         this.createBufferedShapes();
      }
      
      public function destroyBody() : void
      {
         this.world.doOutsideTimeStep(function():void
         {
            b2body.destroy();
         });
      }
      
      public function destroyShapes() : void
      {
         this.world.doOutsideTimeStep(function():void
         {
            var _loc1_:int = 0;
            while(_loc1_ < b2fixtures.length)
            {
               b2fixtures[_loc1_].destroy();
               _loc1_++;
            }
         });
      }
      
      public function updateBodyMatrix(param1:Event) : void
      {
         var _loc3_:Matrix = null;
         var _loc2_:Matrix = this.matrix.clone();
         _loc2_.rotate(this.b2body.m_sweep.a % Util.PI2);
         _loc2_.translate(this.b2body.m_xf.position.x * this.world.scale,this.b2body.m_xf.position.y * this.world.scale);
         if(parent != this.world)
         {
            _loc3_ = Util.localizeMatrix(this.world,parent);
            _loc3_.invert();
            _loc2_.concat(_loc3_);
         }
         transform.matrix = _loc2_;
      }
      
      public function updateBodyMatrixSimple(param1:Event) : void
      {
         rotation = this.b2body.m_sweep.a * Util.R2D % 360;
         x = this.b2body.m_xf.position.x * this.world.scale;
         y = this.b2body.m_xf.position.y * this.world.scale;
      }
      
      public function modifyGravity(param1:V2) : void
      {
         param1.multiplyN(this.gravityScale);
         if(this.gravityAngle != 0)
         {
            param1.rotate(this.gravityAngle * Util.D2R);
         }
      }
   }
}

