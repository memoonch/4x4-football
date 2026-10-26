package cmodule.Box2D
{
   import flash.display.Stage;
   import flash.events.MouseEvent;
   
   function vgl_mouse_buttons() : int
   {
      var stage:Stage = null;
      if(cmodule.Box2D.vglMouseFirst)
      {
         stage = cmodule.Box2D.gsprite.stage;
         stage.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):*
         {
            cmodule.Box2D.vglMouseButtons = 1;
         });
         stage.addEventListener(MouseEvent.MOUSE_UP,function(param1:MouseEvent):*
         {
            cmodule.Box2D.vglMouseButtons = 0;
         });
         cmodule.Box2D.vglMouseFirst = false;
      }
      return cmodule.Box2D.vglMouseButtons;
   }
}

