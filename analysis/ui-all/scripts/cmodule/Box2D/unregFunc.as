package cmodule.Box2D
{
   public function unregFunc(param1:int) : void
   {
      if(param1 + 1 == cmodule.Box2D.gstate.funcs.length)
      {
         cmodule.Box2D.gstate.funcs.pop();
      }
   }
}

