package Box2DAS.Dynamics
{
   import Box2DAS.Collision.b2Manifold;
   import Box2DAS.Dynamics.Contacts.b2Contact;
   
   public class b2ContactListener
   {
      
      public function b2ContactListener()
      {
         super();
      }
      
      public function BeginContact(param1:b2Contact) : void
      {
         this.ContactDispatch(ContactEvent.BEGIN_CONTACT,param1);
      }
      
      public function EndContact(param1:b2Contact) : void
      {
         this.ContactDispatch(ContactEvent.END_CONTACT,param1);
      }
      
      public function PreSolve(param1:b2Contact, param2:b2Manifold) : void
      {
         this.ContactDispatch(ContactEvent.PRE_SOLVE,param1,param2);
      }
      
      public function PostSolve(param1:b2Contact, param2:b2ContactImpulse) : void
      {
         this.ContactDispatch(ContactEvent.POST_SOLVE,param1,null,param2);
      }
      
      public function ContactDispatch(param1:String, param2:b2Contact, param3:b2Manifold = null, param4:b2ContactImpulse = null) : void
      {
         param2.m_fixtureA.dispatchEvent(new ContactEvent(param1,param2,1,param3,param4));
         param2.m_fixtureB.dispatchEvent(new ContactEvent(param1,param2,-1,param3,param4));
      }
   }
}

