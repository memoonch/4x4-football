package Box2DAS.Dynamics
{
   import Box2DAS.*;
   import Box2DAS.Collision.*;
   import Box2DAS.Collision.Shapes.*;
   import Box2DAS.Common.*;
   import Box2DAS.Dynamics.Contacts.*;
   import Box2DAS.Dynamics.Joints.*;
   import cmodule.Box2D.*;
   
   public class b2FixtureDef extends b2Base
   {
      
      public var _shape:b2Shape;
      
      public var userData:*;
      
      public var filter:b2Filter;
      
      public function b2FixtureDef()
      {
         super();
         _ptr = lib.b2FixtureDef_new(this);
         this.filter = new b2Filter(_ptr + 26);
      }
      
      override public function destroy() : void
      {
         lib.b2FixtureDef_delete(_ptr);
         super.destroy();
      }
      
      public function create(param1:b2Body) : b2Fixture
      {
         return new b2Fixture(param1,this);
      }
      
      public function get shape() : b2Shape
      {
         return this._shape;
      }
      
      public function set shape(param1:b2Shape) : void
      {
         mem._mw32(_ptr + 4,param1 ? int(param1._ptr) : 0);
         this._shape = param1;
      }
      
      public function get friction() : Number
      {
         return mem._mrf(_ptr + 12);
      }
      
      public function set friction(param1:Number) : void
      {
         mem._mwf(_ptr + 12,param1);
      }
      
      public function get restitution() : Number
      {
         return mem._mrf(_ptr + 16);
      }
      
      public function set restitution(param1:Number) : void
      {
         mem._mwf(_ptr + 16,param1);
      }
      
      public function get density() : Number
      {
         return mem._mrf(_ptr + 20);
      }
      
      public function set density(param1:Number) : void
      {
         mem._mwf(_ptr + 20,param1);
      }
      
      public function get isSensor() : Boolean
      {
         return mem._mru8(_ptr + 24) == 1;
      }
      
      public function set isSensor(param1:Boolean) : void
      {
         mem._mw8(_ptr + 24,param1 ? 1 : 0);
      }
   }
}

