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
   
   public class b2MouseJointDef extends b2JointDef
   {
      
      public var target:b2Vec2;
      
      public function b2MouseJointDef()
      {
         super();
         _ptr = lib.b2MouseJointDef_new();
         this.target = new b2Vec2(_ptr + 20);
      }
      
      override public function create(param1:b2World, param2:IEventDispatcher = null) : b2Joint
      {
         return new b2MouseJoint(param1,this,param2);
      }
      
      override public function destroy() : void
      {
         lib.b2MouseJointDef_delete(_ptr);
         super.destroy();
      }
      
      public function Initialize(param1:b2Body, param2:V2) : void
      {
         bodyA = param1.m_world.m_groundBody;
         bodyB = param1;
         this.target.v2 = param2;
      }
      
      public function get maxForce() : Number
      {
         return mem._mrf(_ptr + 28);
      }
      
      public function set maxForce(param1:Number) : void
      {
         mem._mwf(_ptr + 28,param1);
      }
      
      public function get frequencyHz() : Number
      {
         return mem._mrf(_ptr + 32);
      }
      
      public function set frequencyHz(param1:Number) : void
      {
         mem._mwf(_ptr + 32,param1);
      }
      
      public function get dampingRatio() : Number
      {
         return mem._mrf(_ptr + 36);
      }
      
      public function set dampingRatio(param1:Number) : void
      {
         mem._mwf(_ptr + 36,param1);
      }
   }
}

