package cmodule.Box2D
{
   public function regFunc(param1:Function) : int
   {
      return cmodule.Box2D.gstate.funcs.push(param1) - 1;
   }
}

