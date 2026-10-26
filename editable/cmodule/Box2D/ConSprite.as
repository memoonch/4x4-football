package cmodule.Box2D
{
   import flash.display.Sprite;
   
   public class ConSprite extends Sprite
   {
      
      private var runner:CRunner = new CRunner();
      
      public function ConSprite()
      {
         super();
         if(cmodule.Box2D.gsprite)
         {
            cmodule.Box2D.log(1,"More than one sprite!");
         }
         cmodule.Box2D.gsprite = this;
         this.runner.startSystem();
      }
   }
}

