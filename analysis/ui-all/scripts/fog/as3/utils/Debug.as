package fog.as3.utils
{
   public class Debug
   {
      
      public static var Enabled:Boolean = true;
      
      public function Debug()
      {
         super();
      }
      
      public static function log(param1:*, param2:* = "", param3:* = "", param4:* = "", param5:* = "", param6:* = "", param7:* = "") : void
      {
         if(!Debug.Enabled)
         {
            return;
         }
         var _loc9_:int = 1;
         while(_loc9_ < arguments.length)
         {
            param1 += " " + arguments[_loc9_];
            _loc9_++;
         }
         trace(param1);
      }
   }
}

