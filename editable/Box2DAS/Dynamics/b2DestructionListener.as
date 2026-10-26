package Box2DAS.Dynamics
{
   import Box2DAS.Dynamics.Joints.b2Joint;
   
   public class b2DestructionListener
   {
      
      public function b2DestructionListener()
      {
         super();
      }
      
      public function SayGoodbyeJoint(param1:b2Joint) : void
      {
         param1.dispatchEvent(new GoodbyeJointEvent(param1));
      }
      
      public function SayGoodbyeFixture(param1:b2Fixture) : void
      {
         param1.dispatchEvent(new GoodbyeFixtureEvent(param1));
      }
   }
}

