package cmodule.Box2D
{
   public function vgl_keyinit(param1:int) : int
   {
      trace("vgl_keymode: " + param1);
      cmodule.Box2D.vglKeyMode = param1;
      return 0;
   }
}

