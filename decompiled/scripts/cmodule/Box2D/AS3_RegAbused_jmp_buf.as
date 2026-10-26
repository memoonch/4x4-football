package cmodule.Box2D
{
   function AS3_RegAbused_jmp_buf(param1:int) : void
   {
      cmodule.Box2D.log(4,"regAbused: " + param1);
      cmodule.Box2D.log(1,"Can\'t RegAbused -- abuse support disabled");
   }
}

