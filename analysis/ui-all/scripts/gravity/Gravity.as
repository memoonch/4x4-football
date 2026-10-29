package gravity
{
   import Box2DAS.Common.V2;
   import Box2DAS.Dynamics.ContactEvent;
   import Box2DAS.Dynamics.StepEvent;
   import Box2DAS.Dynamics.b2Body;
   import flash.events.Event;
   import misc.Entity;
   import misc.Util;
   import shapes.ShapeBase;
   import wck.BodyShape;
   import wck.World;
   
   public class Gravity extends Entity
   {
      
      public var base:V2;
      
      public var world:World;
      
      public var sensorName:String = "";
      
      public function Gravity()
      {
         super();
      }
      
      override public function create() : void
      {
         var _loc1_:ShapeBase = null;
         visible = false;
         this.world = Util.findAncestorOfClass(this,World) as World;
         this.world.ensureCreated();
         if(this.sensorName != "")
         {
            _loc1_ = Util.getDisplayObjectByPath(this.world,this.sensorName,this.world) as ShapeBase;
            _loc1_.reportBeginContact = true;
            _loc1_.reportEndContact = true;
            _loc1_.ensureCreated();
            listenWhileVisible(_loc1_,ContactEvent.BEGIN_CONTACT,this.handleBeginContact);
            listenWhileVisible(_loc1_,ContactEvent.END_CONTACT,this.handleEndContact);
         }
         else
         {
            this.world.customGravity = this;
         }
         this.base = new V2(this.world.gravityX,this.world.gravityY);
         listenWhileVisible(this.world,StepEvent.STEP,this.initStep,false,15);
      }
      
      public function handleBeginContact(param1:ContactEvent) : void
      {
         var _loc2_:ShapeBase = param1.relatedObject as ShapeBase;
         _loc2_.customGravity = this;
      }
      
      public function handleEndContact(param1:ContactEvent) : void
      {
         var _loc2_:ShapeBase = param1.relatedObject as ShapeBase;
         _loc2_.customGravity = null;
      }
      
      public function initStep(param1:Event) : void
      {
      }
      
      public function gravity(param1:V2, param2:b2Body = null, param3:BodyShape = null) : V2
      {
         return this.base;
      }
   }
}

