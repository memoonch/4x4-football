package Box2DAS.Dynamics
{
   import Box2DAS.Collision.b2Manifold;
   import Box2DAS.Collision.b2WorldManifold;
   import Box2DAS.Common.V2;
   import Box2DAS.Dynamics.Contacts.b2Contact;
   import flash.events.Event;
   
   public class ContactEvent extends Event
   {
      
      public static var BEGIN_CONTACT:String = "onBeginContact";
      
      public static var END_CONTACT:String = "onEndContact";
      
      public static var PRE_SOLVE:String = "onPreSolve";
      
      public static var POST_SOLVE:String = "onPostSolve";
      
      public var userData:*;
      
      public var world:b2World;
      
      public var contact:b2Contact;
      
      public var fixture:b2Fixture;
      
      public var other:b2Fixture;
      
      public var relatedObject:*;
      
      public var worldManifold:b2WorldManifold = new b2WorldManifold();
      
      public var worldManifoldTime:int;
      
      public var oldManifold:b2Manifold;
      
      public var impulses:b2ContactImpulse;
      
      public var bias:int;
      
      public function ContactEvent(param1:String, param2:b2Contact, param3:int, param4:b2Manifold = null, param5:b2ContactImpulse = null)
      {
         this.world = param2.m_fixtureA.m_body.m_world;
         this.contact = param2;
         this.bias = param3;
         this.oldManifold = param4;
         this.impulses = param5;
         if(param3 == 1)
         {
            this.fixture = param2.m_fixtureA;
            this.other = param2.m_fixtureB;
         }
         else
         {
            this.fixture = param2.m_fixtureB;
            this.other = param2.m_fixtureA;
         }
         this.relatedObject = this.other.m_userData;
         super(param1,this.fixture.m_bubbleContacts,true);
      }
      
      override public function clone() : Event
      {
         return new ContactEvent(type,this.contact,this.bias,this.oldManifold,this.impulses);
      }
      
      override public function preventDefault() : void
      {
         super.preventDefault();
         this.contact.SetEnabled(false);
      }
      
      public function isSolid() : Boolean
      {
         return this.contact.IsSolid();
      }
      
      public function get normal() : V2
      {
         return this.getWorldManifold().normal;
      }
      
      public function get point() : V2
      {
         return this.getWorldManifold().GetPoint();
      }
      
      public function get pointCount() : uint
      {
         return this.contact.m_manifold.pointCount;
      }
      
      public function applyImpulse(param1:Number, param2:Number = 0) : void
      {
         var _loc3_:b2WorldManifold = this.getWorldManifold();
         var _loc4_:b2Body = this.other.m_body;
         var _loc5_:V2 = V2.multiplyN(_loc3_.normal,param1 + _loc4_.GetMass() * param2);
         _loc4_.ApplyImpulse(_loc5_,_loc3_.GetPoint());
      }
      
      public function applyForce(param1:Number, param2:Number = 0, param3:Boolean = false) : void
      {
         var _loc4_:b2WorldManifold = this.getWorldManifold();
         var _loc5_:b2Body = this.other.m_body;
         var _loc6_:V2 = V2.multiplyN(_loc4_.normal,param1 + _loc5_.GetMass() * param2);
         _loc5_.ApplyForce(_loc6_,_loc4_.GetPoint());
         if(param3)
         {
            this.fixture.m_body.ApplyForce(_loc6_.multiplyN(-1),_loc4_.GetPoint());
         }
      }
      
      public function getWorldManifold() : b2WorldManifold
      {
         if(!this.world.IsLocked() && this.worldManifoldTime == this.world.stepTime)
         {
            return this.worldManifold;
         }
         this.worldManifoldTime = this.world.stepTime;
         this.worldManifold = new b2WorldManifold();
         this.contact.GetWorldManifold(this.worldManifold);
         if(this.worldManifold.normal)
         {
            this.worldManifold.normal.multiplyN(this.bias);
         }
         return this.worldManifold;
      }
      
      public function update() : void
      {
         this.contact.Update();
      }
   }
}

