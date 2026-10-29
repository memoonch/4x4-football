package fog.as3
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import fog.as3.utils.JSON;
   
   public class FogDevSocial extends MovieClip
   {
      
      private var Core:FogDevAPI;
      
      private var fakeauth:Boolean = false;
      
      public var restserver:String = "http://www.freeonlinegames.com/api/rest";
      
      public var uid:int = 0;
      
      public var user:Object = new Object();
      
      private var reqCache:Object = new Object();
      
      private function anonFunc():void
      {
      }
      public function FogDevSocial(param1:FogDevAPI)
      {
         super();
         this.Core = param1;
         this.user = {
            "id":0,
            "token":"",
            "name":"guest",
            "nick":"Guest",
            "score":0,
            "highscore":0,
            "thumb":""
         };
         this.Core.addEventListener(this.Core.Events.PreloaderStarted,this.init);
      }
      
      public function init(param1:Event = null) : void
      {
         this.call("auth","guq=" + this.Core.ID);
      }
      
      public function call(param1:String = "", param2:String = "", param3:Function = null) : void
      {
         var _loc10_:Array = null;
         var _loc4_:URLRequest = new URLRequest(this.restserver + "/" + param1);
         _loc4_.method = "POST";
         _loc4_.data = param2;
         var _loc5_:Array = param2.split("&");
         var _loc6_:Object = new Object();
         var _loc7_:int = 0;
         var _loc8_:int = int(_loc5_.length);
         while(_loc7_ < _loc8_)
         {
            _loc10_ = _loc5_[_loc7_].split("=");
            _loc6_[_loc10_[0]] = _loc10_[1];
            _loc7_++;
         }
         var _loc9_:URLLoader = new URLLoader();
         _loc9_.addEventListener(Event.COMPLETE,_loc6_.raw ? this.bindVars(param3,param1,this.responseRaw) : this.bindVars(param3,param1,this.response));
         _loc9_.addEventListener(IOErrorEvent.IO_ERROR,this.callerror);
         _loc9_.load(_loc4_);
      }
      
      private function bindVars(param1:Function, param2:String, param3:Function) : Function
      {
         var cb:Function = param1;
         var m:String = param2;
         var ex:Function = param3;
         return function(param1:Event):void
         {
            ex(param1,cb,m);
         };
      }
      
      private function response(param1:Event, param2:Function, param3:String) : void
      {
         var data:String = null;
         var j:Object = null;
         var e:Event = param1;
         var cb:Function = param2;
         var m:String = param3;
         data = e.target.data;
         this.Core.debug("> DATA: " + data);
         try
         {
            j = fog.as3.utils.JSON.decode(data);
            if(j.uid)
            {
               this.uid = j.uid;
               this.user.id = this.uid;
               this.user.nick = j.nick;
               this.user.name = j.name;
            }
            if(typeof cb == "function")
            {
               cb(j);
            }
         }
         catch(e:Error)
         {
            Core.debug("JSON Error: " + e.message);
            Core.debug("> " + data);
         }
         if(j["package"] == "auth")
         {
            this.Core.dispatchEvent(new Event(this.Core.Events.Authenticated));
         }
      }
      
      private function responseRaw(param1:Event = null, param2:Function = null, param3:String = null) : void
      {
         var _loc4_:String = param1.target.data;
         if(typeof param2 == "function")
         {
            param2(_loc4_);
         }
      }
      
      private function callerror(param1:IOErrorEvent) : void
      {
         this.Core.debug("> Social Request Error");
         this.Core.debug("> " + param1.text);
      }
      
      public function fakeUser(param1:Object) : void
      {
         var _loc2_:String = null;
         this.fakeauth = true;
         for(_loc2_ in param1)
         {
            this.user[_loc2_] = param1[_loc2_];
         }
      }
      
      public function getUser() : Object
      {
         return this.user;
      }
      
      public function doLogin(param1:String, param2:String, param3:Function) : void
      {
      }
      
      public function doSignup(param1:String, param2:String) : void
      {
      }
      
      public function getBadges() : Object
      {
         return new Object();
      }
   }
}

