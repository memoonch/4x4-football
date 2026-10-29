package cmodule.Box2D
{
   public function regPreStaticInit(param1:Function) : void
   {
      if(!cmodule.Box2D.gpreStaticInits)
      {
         cmodule.Box2D.gpreStaticInits = [];
      }
      cmodule.Box2D.gpreStaticInits.push(param1);
   }
}

