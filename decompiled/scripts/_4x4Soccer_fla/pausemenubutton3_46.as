package _4x4Soccer_fla
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol443")]
   public dynamic class pausemenubutton3_46 extends MovieClip
   {
      
      public function pausemenubutton3_46()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,4,this.frame5);
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
         this.buttonMode = true;
         this.mouseChildren = false;
      }
      
      internal function frame3() : *
      {
         stop();
      }
      
      internal function frame5() : *
      {
         stop();
      }
   }
}

