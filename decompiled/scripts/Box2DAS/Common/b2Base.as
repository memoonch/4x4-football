package Box2DAS.Common
{
   import Box2DAS.*;
   import Box2DAS.Collision.*;
   import Box2DAS.Collision.Shapes.*;
   import Box2DAS.Dynamics.*;
   import Box2DAS.Dynamics.Contacts.*;
   import Box2DAS.Dynamics.Joints.*;
   import cmodule.Box2D.*;
   import flash.utils.*;
   
   public class b2Base
   {
      
      public static var loader:CLibInit;
      
      public static var lib:Object;
      
      public static var bytes:ByteArray;
      
      public static var mem:MemUser;
      
      public static var initialized:Boolean = false;
      
      public var _ptr:Number;
      
      public function b2Base()
      {
         super();
      }
      
      public static function initialize(param1:Boolean = true) : void
      {
         if(initialized)
         {
            return;
         }
         initialized = true;
         loader = new CLibInit();
         lib = loader.init();
         mem = new MemUser();
         bytes = gstate.ds;
         if(param1)
         {
            b2Def.initialize();
         }
      }
      
      public static function goodbyeBox2D() : void
      {
         b2Def.destroy();
         bytes.length = 0;
         initialized = false;
         loader = null;
         lib = null;
         bytes = null;
         mem = null;
      }
      
      public static function getArr() : Array
      {
         return arr;
      }
      
      public static function deref(param1:int) : *
      {
         return vt.get(param1);
      }
      
      public function destroy() : void
      {
         this._ptr = 0;
      }
      
      public function get valid() : Boolean
      {
         return this._ptr != 0;
      }
      
      public function writeVertices(param1:int, param2:Vector.<V2>) : void
      {
         bytes.position = param1;
         var _loc3_:uint = param2.length;
         var _loc4_:uint = 0;
         while(_loc4_ < _loc3_)
         {
            bytes.writeFloat(param2[_loc4_].x);
            bytes.writeFloat(param2[_loc4_].y);
            _loc4_++;
         }
      }
      
      public function readVertices(param1:int, param2:int) : Vector.<V2>
      {
         var _loc3_:Vector.<V2> = new Vector.<V2>();
         bytes.position = param1;
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc3_[_loc4_] = new V2(bytes.readFloat(),bytes.readFloat());
            _loc4_++;
         }
         return _loc3_;
      }
   }
}

