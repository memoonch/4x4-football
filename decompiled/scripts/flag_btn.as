package
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol290")]
   public dynamic class flag_btn extends MovieClip
   {
      
      public var flags:flags_mc;
      
      public function flag_btn()
      {
         super();
         addFrameScript(0,this.frame1,6,this.frame7,14,this.frame15);
      }
      
      public function onOver(param1:*) : *
      {
         this.gotoAndPlay("over");
      }
      
      public function onOut(param1:*) : *
      {
         this.gotoAndPlay("out");
      }
      
      internal function frame1() : *
      {
         stop();
         this.addEventListener(MouseEvent.MOUSE_OVER,this.onOver);
         this.addEventListener(MouseEvent.MOUSE_OUT,this.onOut);
      }
      
      internal function frame7() : *
      {
         stop();
      }
      
      internal function frame15() : *
      {
         stop();
      }
   }
}

