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
   
   public class b2GearJointDef extends b2JointDef
   {
      
      public var _joint1:b2Joint;
      
      public var _joint2:b2Joint;
      
      public function b2GearJointDef()
      {
         super();
         _ptr = lib.b2GearJointDef_new();
      }
      
      override public function create(param1:b2World, param2:IEventDispatcher = null) : b2Joint
      {
         return new b2GearJoint(param1,this,param2);
      }
      
      override public function destroy() : void
      {
         lib.b2GearJointDef_delete(_ptr);
         super.destroy();
      }
      
      public function Initialize(param1:b2Joint, param2:b2Joint, param3:Number) : void
      {
         bodyA = param1.GetBodyB();
         bodyB = param2.GetBodyB();
         this.joint1 = param1;
         this.joint2 = param2;
         this.ratio = param3;
      }
      
      public function get joint1() : b2Joint
      {
         return this._joint1;
      }
      
      public function set joint1(param1:b2Joint) : void
      {
         mem._mw32(_ptr + 20,param1._ptr);
         this._joint1 = param1;
      }
      
      public function get joint2() : b2Joint
      {
         return this._joint2;
      }
      
      public function set joint2(param1:b2Joint) : void
      {
         mem._mw32(_ptr + 24,param1._ptr);
         this._joint2 = param1;
      }
      
      public function get ratio() : Number
      {
         return mem._mrf(_ptr + 28);
      }
      
      public function set ratio(param1:Number) : void
      {
         mem._mwf(_ptr + 28,param1);
      }
   }
}

