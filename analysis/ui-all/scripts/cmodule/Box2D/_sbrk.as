package cmodule.Box2D
{
   public function _sbrk(param1:int) : int
   {
      var _loc2_:int = 0;
      var _loc3_:int = 0;
      _loc2_ = int(cmodule.Box2D.gstate.ds.length);
      _loc3_ = _loc2_ + param1;
      cmodule.Box2D.gstate.ds.length = _loc3_;
      return _loc2_;
   }
}

