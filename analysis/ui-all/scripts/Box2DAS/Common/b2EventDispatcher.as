package Box2DAS.Common
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class b2EventDispatcher extends b2Base implements IEventDispatcher
   {
      
      public var dispatcher:IEventDispatcher;
      
      public function b2EventDispatcher(param1:IEventDispatcher = null)
      {
         super();
         this.dispatcher = param1 || new EventDispatcher(this);
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.dispatcher.addEventListener(param1,param2,param3,param4);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.dispatcher.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.dispatcher.hasEventListener(param1);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.dispatcher.removeEventListener(param1,param2,param3);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.dispatcher.willTrigger(param1);
      }
   }
}

