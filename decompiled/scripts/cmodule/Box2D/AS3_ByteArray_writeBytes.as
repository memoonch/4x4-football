package cmodule.Box2D
{
   import flash.utils.ByteArray;
   
   function AS3_ByteArray_writeBytes(param1:ByteArray, param2:int, param3:int) : int
   {
      cmodule.Box2D.log(5,"--- wrteBytes: ba length = " + param1.length + " / " + param3);
      if(param3 > 0)
      {
         param1.writeBytes(cmodule.Box2D.gstate.ds,param2,param3);
         return param3;
      }
      return 0;
   }
}

