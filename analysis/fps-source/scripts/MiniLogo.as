package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.getTimer;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol414")]
   public dynamic class MiniLogo extends MovieClip
   {
      
      private var meter:TextField;
      
      private var previous:int = 0;
      
      private var windowStart:int = 0;
      
      private var frames:int = 0;
      
      private var intervals:Array = [];
      
      public function MiniLogo()
      {
         super();
         meter = new TextField();
         meter.defaultTextFormat = new TextFormat("_sans",11,16777215,true);
         meter.width = 190;
         meter.height = 36;
         meter.x = 0;
         meter.y = 32;
         meter.background = true;
         meter.backgroundColor = 1318955;
         meter.mouseEnabled = false;
         meter.selectable = false;
         meter.text = "FPS: measuring… / 25";
         addChild(meter);
         addEventListener(Event.ENTER_FRAME,measure,false,-1000,true);
      }
      
      private function measure(event:Event) : void
      {
         var now:int = getTimer();
         if(previous == 0)
         {
            previous = windowStart = now;
            return;
         }
         var delta:int = now - previous;
         previous = now;
         if(delta > 1000)
         {
            frames = 0;
            intervals = [];
            windowStart = now;
            return;
         }
         intervals.push(delta);
         ++frames;
         var elapsed:int = now - windowStart;
         if(elapsed < 1000)
         {
            return;
         }
         intervals.sort(Array.NUMERIC);
         var p95:Number = Number(intervals[Math.min(intervals.length - 1,Math.ceil(intervals.length * 0.95) - 1)]);
         meter.text = "FPS: " + (frames * 1000 / elapsed).toFixed(1) + " / 25\nFrame p95: " + p95 + " ms";
         frames = 0;
         intervals = [];
         windowStart = now;
      }
   }
}

