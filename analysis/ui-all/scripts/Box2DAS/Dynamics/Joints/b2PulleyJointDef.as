package Box2DAS.Dynamics.Joints
{
   import Box2DAS.*;
   import Box2DAS.Collision.*;
   import Box2DAS.Collision.Shapes.*;
   import Box2DAS.Common.*;
   import Box2DAS.Dynamics.*;
   import Box2DAS.Dynamics.Contacts.*;
   import cmodule.Box2D.*;
   import flash.events.*;
   
   public class b2PulleyJointDef extends b2JointDef
   {
      
      public var groundAnchorA:b2Vec2;
      
      public var groundAnchorB:b2Vec2;
      
      public var localAnchorA:b2Vec2;
      
      public var localAnchorB:b2Vec2;
      
      public function b2PulleyJointDef()
      {
         super();
         _ptr = lib.b2PulleyJointDef_new();
         this.groundAnchorA = new b2Vec2(_ptr + 20);
         this.groundAnchorB = new b2Vec2(_ptr + 28);
         this.localAnchorA = new b2Vec2(_ptr + 36);
         this.localAnchorB = new b2Vec2(_ptr + 44);
      }
      
      override public function create(param1:b2World, param2:IEventDispatcher = null) : b2Joint
      {
         return new b2PulleyJoint(param1,this,param2);
      }
      
      override public function destroy() : void
      {
         lib.b2PulleyJointDef_delete(_ptr);
         super.destroy();
      }
      
      public function Initialize(param1:b2Body, param2:b2Body, param3:V2, param4:V2, param5:V2, param6:V2, param7:Number) : void
      {
         bodyA = param1;
         bodyB = param2;
         this.groundAnchorA.v2 = param3;
         this.groundAnchorB.v2 = param4;
         this.localAnchorA.v2 = bodyA.GetLocalPoint(param5);
         this.localAnchorB.v2 = bodyB.GetLocalPoint(param6);
         this.lengthA = param5.distance(param3);
         this.lengthB = param6.distance(param4);
         this.ratio = param7;
         var _loc8_:Number = this.lengthA + this.ratio * this.lengthB;
         this.maxLengthA = _loc8_ - this.ratio * b2PulleyJoint.b2_minPulleyLength;
         this.maxLengthB = (_loc8_ - b2PulleyJoint.b2_minPulleyLength) / this.ratio;
      }
      
      public function get lengthA() : Number
      {
         return mem._mrf(_ptr + 52);
      }
      
      public function set lengthA(param1:Number) : void
      {
         mem._mwf(_ptr + 52,param1);
      }
      
      public function get maxLengthA() : Number
      {
         return mem._mrf(_ptr + 56);
      }
      
      public function set maxLengthA(param1:Number) : void
      {
         mem._mwf(_ptr + 56,param1);
      }
      
      public function get lengthB() : Number
      {
         return mem._mrf(_ptr + 60);
      }
      
      public function set lengthB(param1:Number) : void
      {
         mem._mwf(_ptr + 60,param1);
      }
      
      public function get maxLengthB() : Number
      {
         return mem._mrf(_ptr + 64);
      }
      
      public function set maxLengthB(param1:Number) : void
      {
         mem._mwf(_ptr + 64,param1);
      }
      
      public function get ratio() : Number
      {
         return mem._mrf(_ptr + 68);
      }
      
      public function set ratio(param1:Number) : void
      {
         mem._mwf(_ptr + 68,param1);
      }
   }
}

