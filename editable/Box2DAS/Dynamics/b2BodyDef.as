package Box2DAS.Dynamics
{
   import Box2DAS.*;
   import Box2DAS.Collision.*;
   import Box2DAS.Collision.Shapes.*;
   import Box2DAS.Common.*;
   import Box2DAS.Dynamics.Contacts.*;
   import Box2DAS.Dynamics.Joints.*;
   import cmodule.Box2D.*;
   
   public class b2BodyDef extends b2Base
   {
      
      public var userData:*;
      
      public var position:b2Vec2;
      
      public var linearVelocity:b2Vec2;
      
      public function b2BodyDef()
      {
         super();
         _ptr = lib.b2BodyDef_new(this);
         this.position = new b2Vec2(_ptr + 4);
         this.linearVelocity = new b2Vec2(_ptr + 16);
      }
      
      public function create(param1:b2World) : b2Body
      {
         return new b2Body(param1,this);
      }
      
      override public function destroy() : void
      {
         lib.b2BodyDef_delete(_ptr);
         super.destroy();
      }
      
      public function get angle() : Number
      {
         return mem._mrf(_ptr + 12);
      }
      
      public function set angle(param1:Number) : void
      {
         mem._mwf(_ptr + 12,param1);
      }
      
      public function get angularVelocity() : Number
      {
         return mem._mrf(_ptr + 24);
      }
      
      public function set angularVelocity(param1:Number) : void
      {
         mem._mwf(_ptr + 24,param1);
      }
      
      public function get linearDamping() : Number
      {
         return mem._mrf(_ptr + 28);
      }
      
      public function set linearDamping(param1:Number) : void
      {
         mem._mwf(_ptr + 28,param1);
      }
      
      public function get angularDamping() : Number
      {
         return mem._mrf(_ptr + 32);
      }
      
      public function set angularDamping(param1:Number) : void
      {
         mem._mwf(_ptr + 32,param1);
      }
      
      public function get allowSleep() : Boolean
      {
         return mem._mru8(_ptr + 36) == 1;
      }
      
      public function set allowSleep(param1:Boolean) : void
      {
         mem._mw8(_ptr + 36,param1 ? 1 : 0);
      }
      
      public function get awake() : Boolean
      {
         return mem._mru8(_ptr + 37) == 1;
      }
      
      public function set awake(param1:Boolean) : void
      {
         mem._mw8(_ptr + 37,param1 ? 1 : 0);
      }
      
      public function get fixedRotation() : Boolean
      {
         return mem._mru8(_ptr + 38) == 1;
      }
      
      public function set fixedRotation(param1:Boolean) : void
      {
         mem._mw8(_ptr + 38,param1 ? 1 : 0);
      }
      
      public function get bullet() : Boolean
      {
         return mem._mru8(_ptr + 39) == 1;
      }
      
      public function set bullet(param1:Boolean) : void
      {
         mem._mw8(_ptr + 39,param1 ? 1 : 0);
      }
      
      public function get type() : int
      {
         return mem._mrs16(_ptr + 0);
      }
      
      public function set type(param1:int) : void
      {
         mem._mw16(_ptr + 0,param1);
      }
      
      public function get active() : Boolean
      {
         return mem._mru8(_ptr + 40) == 1;
      }
      
      public function set active(param1:Boolean) : void
      {
         mem._mw8(_ptr + 40,param1 ? 1 : 0);
      }
      
      public function get inertiaScale() : Number
      {
         return mem._mrf(_ptr + 48);
      }
      
      public function set inertiaScale(param1:Number) : void
      {
         mem._mwf(_ptr + 48,param1);
      }
   }
}

