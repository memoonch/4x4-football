package Box2DAS.Dynamics.Joints
{
   import Box2DAS.Common.b2Base;
   import Box2DAS.Dynamics.b2Body;
   import Box2DAS.Dynamics.b2World;
   import flash.events.IEventDispatcher;
   
   public class b2JointDef extends b2Base
   {
      
      public var userData:*;
      
      public var _bodyA:b2Body;
      
      public var _bodyB:b2Body;
      
      public function b2JointDef()
      {
         super();
      }
      
      public function create(param1:b2World, param2:IEventDispatcher = null) : b2Joint
      {
         return new b2Joint(param1,this,param2);
      }
      
      public function get type() : int
      {
         return mem._mrs16(_ptr + 0);
      }
      
      public function set type(param1:int) : void
      {
         mem._mw16(_ptr + 0,param1);
      }
      
      public function get bodyA() : b2Body
      {
         return this._bodyA;
      }
      
      public function set bodyA(param1:b2Body) : void
      {
         mem._mw32(_ptr + 8,param1._ptr);
         this._bodyA = param1;
      }
      
      public function get bodyB() : b2Body
      {
         return this._bodyB;
      }
      
      public function set bodyB(param1:b2Body) : void
      {
         mem._mw32(_ptr + 12,param1._ptr);
         this._bodyB = param1;
      }
      
      public function get collideConnected() : Boolean
      {
         return mem._mru8(_ptr + 16) == 1;
      }
      
      public function set collideConnected(param1:Boolean) : void
      {
         mem._mw8(_ptr + 16,param1 ? 1 : 0);
      }
   }
}

