package cmodule.Box2D
{
   public function memcpy(param1:int, param2:int, param3:int) : int
   {
      if(param3)
      {
         cmodule.Box2D.gstate.ds.position = param1;
         cmodule.Box2D.gstate.ds.writeBytes(cmodule.Box2D.gstate.ds,param2,param3);
      }
      return param1;
   }
}

