package _4x4Soccer_fla
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.text.TextField;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol469")]
   public dynamic class finalscreen_48 extends MovieClip
   {
      
      public var team0:flags_mc;
      
      public var hummer0:MovieClip;
      
      public var team0_label:TextField;
      
      public var pmg:SimpleButton;
      
      public var back_menu_btn:SimpleButton;
      
      public var finalscores:TextField;
      
      public function finalscreen_48()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         stop();
      }
   }
}

