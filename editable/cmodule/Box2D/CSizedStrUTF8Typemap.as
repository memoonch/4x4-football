package cmodule.Box2D
{
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.system.*;
   import flash.text.*;
   import flash.utils.*;
   
   internal class CSizedStrUTF8Typemap extends CTypemap
   {
      
      public function CSizedStrUTF8Typemap()
      {
         super();
      }
      
      override public function fromC(param1:Array) : *
      {
         cmodule.Box2D.mstate.ds.position = param1[0];
         return cmodule.Box2D.mstate.ds.readUTFBytes(param1[1]);
      }
      
      override public function get typeSize() : int
      {
         return 8;
      }
   }
}

