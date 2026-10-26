package wck
{
   import Box2DAS.Dynamics.ContactEvent;
   import Box2DAS.Dynamics.b2Filter;
   import Box2DAS.Dynamics.b2Fixture;
   
   public class ContactEventFilter
   {
      
      public var excludeSensors:Boolean = true;
      
      public var excludeNotTouching:Boolean = true;
      
      public var excludeDisabled:Boolean = true;
      
      public var excludeDestroyed:Boolean = true;
      
      public var categoryBits:int = 1;
      
      public var maskBits:int = 65535;
      
      public var groupIndex:int = 0;
      
      public function ContactEventFilter()
      {
         super();
      }
      
      public function filter(param1:ContactEvent) : Boolean
      {
         if(this.excludeNotTouching && !param1.contact.IsTouching())
         {
            return false;
         }
         if(this.excludeDisabled && !param1.contact.IsEnabled())
         {
            return false;
         }
         return this.filterFixture(param1.other);
      }
      
      public function filterFixture(param1:b2Fixture) : Boolean
      {
         if(this.excludeDestroyed && !(Boolean(param1._ptr) && Boolean(param1.m_body._ptr)))
         {
            return false;
         }
         if(this.excludeSensors && param1.IsSensor())
         {
            return false;
         }
         var _loc2_:b2Filter = param1.m_filter;
         if(this.groupIndex == _loc2_.groupIndex && this.groupIndex != 0)
         {
            return this.groupIndex > 0;
         }
         return (this.maskBits & _loc2_.categoryBits) != 0 && (this.categoryBits & _loc2_.maskBits) != 0;
      }
   }
}

