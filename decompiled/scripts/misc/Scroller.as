package misc
{
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class Scroller extends Entity
   {
      
      public var focusOn:String = "";
      
      public var mouseNudgeX:Number = 0;
      
      public var mouseNudgeY:Number = 0;
      
      public var scrolling:Boolean = false;
      
      public var focus:DisplayObject = null;
      
      public var localPos:Point = null;
      
      public var pos:Point = new Point(0,0);
      
      public var rot:Number = 0;
      
      public var tFunc:Function;
      
      public var tFrames:int;
      
      public var tFramesTot:int;
      
      public var tPos:Point;
      
      public var tRot:Number;
      
      public var tMX:Number;
      
      public var tMY:Number;
      
      public var shake:Point;
      
      public function Scroller()
      {
         super();
      }
      
      override public function create() : void
      {
         if(!this.focus && this.focusOn != "")
         {
            this.focus = Util.getDisplayObjectByPath(this,this.focusOn);
         }
         this.pos = globalToLocal(new Point(stage.stageWidth / 2,stage.stageHeight / 2));
         this.rot = rotation;
         super.create();
         if(this.scrolling)
         {
            listenWhileVisible(stage,Event.ENTER_FRAME,this.updateScroll,false,-9999);
         }
      }
      
      public function updateScroll(param1:Event = null) : void
      {
         if(this.focus)
         {
            this.pos = Util.localizePoint(this,this.focus,this.localPos);
         }
         var _loc2_:Point = this.pos.clone();
         this.rot = this.scrollRotation();
         var _loc3_:Number = this.rot;
         if(this.tFunc != null)
         {
            if(++this.tFrames == this.tFramesTot)
            {
               this.tFunc = null;
            }
            else
            {
               _loc3_ = this.tFunc(this.tFrames,this.tRot,Util.findBetterAngleTarget(this.tRot,_loc3_) - this.tRot,this.tFramesTot);
               _loc2_.x = this.tFunc(this.tFrames,this.tPos.x,_loc2_.x - this.tPos.x,this.tFramesTot);
               _loc2_.y = this.tFunc(this.tFrames,this.tPos.y,_loc2_.y - this.tPos.y,this.tFramesTot);
            }
         }
         rotation = _loc3_;
         x = 0;
         y = 0;
         _loc2_ = localToGlobal(_loc2_);
         x = stage.stageWidth / 2 - _loc2_.x;
         y = stage.stageHeight / 2 - _loc2_.y;
         if(Input.mouseDetected)
         {
            x += (stage.stageWidth / 2 - Input.mousePos.x) * (this.tFunc != null ? this.tFunc(this.tFrames,this.tMX,this.mouseNudgeX - this.tMX,this.tFramesTot) : this.mouseNudgeX);
            y += (stage.stageHeight / 2 - Input.mousePos.y) * (this.tFunc != null ? this.tFunc(this.tFrames,this.tMY,this.mouseNudgeY - this.tMY,this.tFramesTot) : this.mouseNudgeY);
         }
         if(this.shake)
         {
            x += this.shake.x;
            y += this.shake.y;
            this.shake.normalize(this.shake.length * -0.5);
            if(this.shake.length < 1)
            {
               this.shake = null;
            }
         }
      }
      
      public function scrollRotation() : Number
      {
         return this.rot;
      }
      
      public function startFocusTween(param1:uint = 30, param2:Function = null) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(param2 == null)
         {
            param2 = Util.linearEase;
         }
         if(this.tFunc != null)
         {
            this.tRot = this.tFunc(this.tFrames,this.tRot,Util.findBetterAngleTarget(this.tRot,this.rot) - this.tRot,this.tFramesTot);
            _loc3_ = this.tFunc(this.tFrames,this.tPos.x,this.pos.x - this.tPos.x,this.tFramesTot);
            _loc4_ = this.tFunc(this.tFrames,this.tPos.y,this.pos.y - this.tPos.y,this.tFramesTot);
            this.tPos = new Point(_loc3_,_loc4_);
            this.tMX = this.tFunc(this.tFrames,this.tMX,this.mouseNudgeX - this.tMX,this.tFramesTot);
            this.tMY = this.tFunc(this.tFrames,this.tMY,this.mouseNudgeY - this.tMY,this.tFramesTot);
         }
         else
         {
            this.tPos = this.pos.clone();
            this.tRot = this.rot;
            this.tMX = this.mouseNudgeX;
            this.tMY = this.mouseNudgeY;
         }
         this.tFramesTot = param1;
         this.tFrames = 0;
         this.tFunc = param2;
      }
   }
}

