package misc
{
   import flash.display.*;
   import flash.events.*;
   import flash.geom.*;
   
   public class Entity extends MovieClip
   {
      
      public var disabled:Boolean = false;
      
      public var listeningTo:DictionaryTree = new DictionaryTree();
      
      public var created:Boolean = false;
      
      public function Entity()
      {
         super();
         addEventListener(Event.ADDED_TO_STAGE,stage ? this.handlePublishedOnStage : this.handleAddedToStage);
      }
      
      public function create() : void
      {
      }
      
      public function destroy() : void
      {
      }
      
      public function ensureCreated() : void
      {
         if(!this.created && !this.disabled)
         {
            this.created = true;
            this.create();
            addEventListener(Event.REMOVED_FROM_STAGE,this.handleRemovedFromStage);
         }
      }
      
      public function ensureDestroyed() : void
      {
         if(this.created && !this.disabled)
         {
            addEventListener(Event.ADDED_TO_STAGE,this.handleAddedToStage);
            this.removeAllListeners();
            this.destroy();
            this.created = false;
         }
      }
      
      public function handlePublishedOnStage(param1:Event) : void
      {
         var self:Entity = null;
         var s:Stage = null;
         var f:Function = null;
         var e:Event = param1;
         if(stage)
         {
            self = this;
            s = stage;
            stage.invalidate();
            f = function(param1:Event):void
            {
               if(self.stage)
               {
                  self.ensureCreated();
               }
               s.removeEventListener(Event.RENDER,f);
            };
            stage.addEventListener(Event.RENDER,f);
         }
         removeEventListener(Event.ADDED_TO_STAGE,this.handlePublishedOnStage);
         addEventListener(Event.ADDED_TO_STAGE,this.handleAddedToStage);
      }
      
      public function handleAddedToStage(param1:Event) : void
      {
         this.ensureCreated();
      }
      
      public function handleRemovedFromStage(param1:Event) : void
      {
         this.ensureDestroyed();
      }
      
      public function listenWhileVisible(param1:EventDispatcher, param2:String, param3:Function, param4:Boolean = false, param5:int = 0, param6:Boolean = false) : void
      {
         param1.addEventListener(param2,param3,param4,param5,param6);
         this.listeningTo.store([param1,param2,param3,param4],1);
      }
      
      public function listenOnceWhileVisible(param1:EventDispatcher, param2:String, param3:Function, param4:Boolean = false, param5:int = 0) : void
      {
         var f:Function = null;
         var ed:EventDispatcher = param1;
         var type:String = param2;
         var listener:Function = param3;
         var useCapture:Boolean = param4;
         var priority:int = param5;
         f = function(param1:Event):void
         {
            listener(param1);
            stopListening(ed,type,f,useCapture);
         };
         this.listenWhileVisible(ed,type,f,useCapture,priority);
      }
      
      public function listenNTimesWhileVisible(param1:int, param2:EventDispatcher, param3:String, param4:Function, param5:Boolean = false, param6:int = 0) : void
      {
         var i:int = 0;
         var f:Function = null;
         var n:int = param1;
         var ed:EventDispatcher = param2;
         var type:String = param3;
         var listener:Function = param4;
         var useCapture:Boolean = param5;
         var priority:int = param6;
         i = 0;
         f = function(param1:Event):void
         {
            listener(param1,i);
            if(++i == n)
            {
               stopListening(ed,type,f,useCapture);
            }
         };
         if(n > 0)
         {
            this.listenWhileVisible(ed,type,f,useCapture,priority);
         }
      }
      
      public function stopListening(param1:EventDispatcher, param2:String, param3:Function, param4:Boolean = false) : void
      {
         param1.removeEventListener(param2,param3,param4);
         this.listeningTo.remove([param1,param2,param3,param4]);
      }
      
      public function removeAllListeners() : void
      {
         this.listeningTo.forEach(function(param1:Array, param2:uint):void
         {
            stopListening(param1[0],param1[1],param1[2],param1[3] as Boolean);
         },this);
      }
      
      public function remove(... rest) : void
      {
         Util.remove(this);
      }
      
      public function setPos(param1:*) : void
      {
         Util.setPos(this,param1);
      }
   }
}

