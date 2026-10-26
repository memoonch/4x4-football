package Box2DAS.Dynamics
{
   import flash.events.Event;
   
   public class GoodbyeFixtureEvent extends Event
   {
      
      public static var GOODBYE_FIXTURE:String = "onGoodbyeFixture";
      
      public var fixture:b2Fixture;
      
      public function GoodbyeFixtureEvent(param1:b2Fixture)
      {
         this.fixture = param1;
         super(GOODBYE_FIXTURE);
      }
   }
}

