package cmodule.Box2D
{
   public function vgl_unlock() : void
   {
      if(Boolean(cmodule.Box2D.gvglbmd) && Boolean(cmodule.Box2D.gvglpixels))
      {
         cmodule.Box2D.gstate.ds.position = cmodule.Box2D.gvglpixels;
         cmodule.Box2D.gvglbmd.setPixels(cmodule.Box2D.gvglbmd.rect,cmodule.Box2D.gstate.ds);
      }
   }
}

