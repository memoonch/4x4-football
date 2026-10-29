package cmodule.Box2D
{
   public function vgl_keych() : int
   {
      if(cmodule.Box2D.vglKeys.length)
      {
         return cmodule.Box2D.vglKeys.shift();
      }
      return 0;
   }
}

