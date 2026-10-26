package cmodule.Box2D
{
   function AS3_UnregAbused_jmp_buf(param1:int) : void
   {
      cmodule.Box2D.log(4,"unregAbused: " + param1);
      cmodule.Box2D.log(1,"Can\'t UnregAbused -- abuse support disabled");
   }
}

