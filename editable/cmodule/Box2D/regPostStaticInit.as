package cmodule.Box2D
{
   public function regPostStaticInit(param1:Function) : void
   {
      if(!cmodule.Box2D.gpostStaticInits)
      {
         cmodule.Box2D.gpostStaticInits = [];
      }
      cmodule.Box2D.gpostStaticInits.push(param1);
   }
}

