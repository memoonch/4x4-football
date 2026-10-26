package Box2DAS.Collision
{
   import Box2DAS.Common.b2Base;
   import Box2DAS.Common.b2Vec2;
   import Box2DAS.Dynamics.Contacts.b2ContactID;
   
   public class b2ManifoldPoint extends b2Base
   {
      
      public var localPoint:b2Vec2;
      
      public var id:b2ContactID;
      
      public function b2ManifoldPoint(param1:int)
      {
         super();
         _ptr = param1;
         this.localPoint = new b2Vec2(_ptr + 0);
         this.id = new b2ContactID(_ptr + 16);
      }
      
      public function get normalImpulse() : Number
      {
         return mem._mrf(_ptr + 8);
      }
      
      public function set normalImpulse(param1:Number) : void
      {
         mem._mwf(_ptr + 8,param1);
      }
      
      public function get tangentImpulse() : Number
      {
         return mem._mrf(_ptr + 12);
      }
      
      public function set tangentImpulse(param1:Number) : void
      {
         mem._mwf(_ptr + 12,param1);
      }
      
      public function get isNew() : Boolean
      {
         return mem._mru8(_ptr + 20) == 1;
      }
      
      public function set isNew(param1:Boolean) : void
      {
         mem._mw8(_ptr + 20,param1 ? 1 : 0);
      }
   }
}

