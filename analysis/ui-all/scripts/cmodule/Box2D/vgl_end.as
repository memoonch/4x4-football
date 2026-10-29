package cmodule.Box2D
{
   public function vgl_end(param1:int) : int
   {
      var _loc2_:int = 0;
      _loc2_ = cmodule.Box2D.gvglpixels;
      cmodule.Box2D.gvglpixels = 0;
      return _loc2_;
   }
}

