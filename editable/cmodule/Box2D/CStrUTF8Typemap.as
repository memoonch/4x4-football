package cmodule.Box2D
{
   import flash.utils.ByteArray;
   
   internal class CStrUTF8Typemap extends CAllocedValueTypemap
   {
      
      public function CStrUTF8Typemap(param1:ICAllocator = null)
      {
         if(!param1)
         {
            param1 = new CHeapAllocator();
         }
         super(param1);
      }
      
      protected function ByteArrayForString(param1:String) : ByteArray
      {
         var _loc2_:ByteArray = null;
         _loc2_ = new ByteArray();
         _loc2_.writeUTFBytes(param1);
         _loc2_.writeByte(0);
         _loc2_.position = 0;
         return _loc2_;
      }
      
      override public function readValue(param1:int) : *
      {
         var _loc2_:int = 0;
         cmodule.Box2D.mstate.ds.position = param1;
         _loc2_ = 0;
         while(cmodule.Box2D.mstate.ds.readByte() != 0)
         {
            _loc2_++;
         }
         cmodule.Box2D.mstate.ds.position = param1;
         return cmodule.Box2D.mstate.ds.readUTFBytes(_loc2_);
      }
      
      override public function getValueSize(param1:*) : int
      {
         return this.ByteArrayForString(String(param1)).length;
      }
      
      override public function get ptrLevel() : int
      {
         return 1;
      }
      
      override public function writeValue(param1:int, param2:*) : void
      {
         this.ByteArrayForString(String(param2)).readBytes(cmodule.Box2D.mstate.ds,param1);
      }
   }
}

