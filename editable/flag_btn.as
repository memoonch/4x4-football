package
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class flag_btn extends MovieClip
   {
      
      public var flags:flags_mc;
      
      public function flag_btn()
      {
         super();
      }
      
      public function onOver(param1:*) : *
      {
         this.gotoAndPlay("over");
      }
      
      public function onOut(param1:*) : *
      {
         this.gotoAndPlay("out");
      }
   }
}

