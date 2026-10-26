package
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol288")]
   public dynamic class flags_mc extends MovieClip
   {
      
      public var active:MovieClip;
      
      public var label:TextField;
      
      public function flags_mc()
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

