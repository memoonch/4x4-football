package
{
   import flash.display.LoaderInfo;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.TextField;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol6")]
   public class Preloader extends Sprite
   {
      
      public var label:TextField;
      
      private var _targetLoaderInfo:LoaderInfo;
      
      private var _loadPercent:Number = 0;
      
      public function Preloader()
      {
         super();
         this.addEventListener(Event.ADDED_TO_STAGE,this._init);
      }
      
      private function _init(param1:Event) : void
      {
         this._targetLoaderInfo = stage.loaderInfo;
         this.removeEventListener(Event.ADDED_TO_STAGE,this._init);
         this.addEventListener(Event.ENTER_FRAME,this._onCheckLoaded);
      }
      
      private function _onCheckLoaded(param1:Event) : void
      {
         this._loadPercent = this._targetLoaderInfo.bytesLoaded / this._targetLoaderInfo.bytesTotal;
         this.label.text = "Loaded " + Math.round(this._loadPercent * 100) + "%";
         if(this._loadPercent == 1)
         {
            this.removeEventListener(Event.ENTER_FRAME,this._onCheckLoaded);
            this.dispatchEvent(new Event(Event.COMPLETE));
         }
      }
   }
}

