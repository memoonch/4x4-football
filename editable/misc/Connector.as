package misc
{
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class Connector extends Entity
   {
      
      public var from:DisplayObject;
      
      public var to:DisplayObject;
      
      public var localPoint1:Point = new Point(0,0);
      
      public var localPoint2:Point = new Point(0,0);
      
      public var point1:Point = new Point(0,0);
      
      public var point2:Point = new Point(0,0);
      
      public var length:Number;
      
      public function Connector()
      {
         super();
      }
      
      override public function create() : void
      {
         listenWhileVisible(stage,Event.ENTER_FRAME,this.handleEnterFrame,false,-1000);
      }
      
      public function handleEnterFrame(param1:Event) : void
      {
         if(this.from)
         {
            this.point1 = Util.localizePoint(parent,this.from,this.localPoint1);
         }
         if(this.to)
         {
            this.point2 = Util.localizePoint(parent,this.to,this.localPoint2);
         }
         setPos(this.point1);
         var _loc2_:Number = this.point2.x - x;
         var _loc3_:Number = this.point2.y - y;
         this.length = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         rotation = Math.atan2(_loc3_,_loc2_) * Util.R2D;
         this.render();
      }
      
      public function render() : void
      {
      }
   }
}

