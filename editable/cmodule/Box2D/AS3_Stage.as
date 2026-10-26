package cmodule.Box2D
{
   function AS3_Stage() : Object
   {
      return cmodule.Box2D.gsprite ? cmodule.Box2D.gsprite.stage : null;
   }
}

