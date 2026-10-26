package cmodule.Box2D
{
   public function log(param1:int, param2:String) : void
   {
      if(param1 < cmodule.Box2D.glogLvl)
      {
         trace(param2);
      }
   }
}

