package fog.as3
{
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.system.Security;
   import fog.as3.utils.Debug;
   
   public class FogDevTracking
   {
      
      private var Core:FogDevAPI;
      
      public var HomeURL:String = "http://www.freeonlinegames.com/";
      
      public var GameURL:String = "http://www.freeonlinegames.com/game/{game.url}.html";
      
      public var TagURL:String = "http://www.freeonlinegames.com/tag/{game.tag}/";
      
      public var DevURL:String = "http://www.fogdev.com/";
      
      public var FGFYWURL:String = "http://www.freegamesforyourwebsite.com/game/{game.url}/";
      
      public var WalkthroughURL:String = "http://www.freeonlinegames.com/walkthrough/{game.url}.html";
      
      public var Info:Object = new Object();
      
      public var LocalMode:Boolean = false;
      
      public var Server:String = "x.fogdev.com";
      
      private var LibFile:String = "api/library-v2.swf";
      
      private var LibPath:String = "";
      
      public var Library:MovieClip;
      
      public var LibraryLoaded:Boolean = false;
      
      public var LibraryFailed:Boolean = false;
      
      private var rLoader:Loader;
      
      private var rRequest:URLRequest;
      
      public function FogDevTracking(param1:FogDevAPI)
      {
         super();
         this.Core = param1;
         this.Info = this.GetUrlInfo(this.Core.root.loaderInfo.url);
      }
      
      public function Click(param1:MouseEvent) : void
      {
         var _loc2_:String = param1.currentTarget.GotoURL;
         this.GotoURL(_loc2_);
      }
      
      public function GotoURL(param1:String = "") : void
      {
         var _loc2_:String = param1 ? param1 : this.HomeURL;
         if(_loc2_.indexOf("{game.url}") > -1)
         {
            if(this.Core.Game.URL.length > 0)
            {
               _loc2_ = _loc2_.replace("{game.url}",this.Core.Game.URL);
               _loc2_ = _loc2_.replace("{game.tag}",this.Core.Game.Tag);
            }
            else
            {
               trace("> Tracking Error: FogAPI.Game.URL is not defined");
               _loc2_ = _loc2_.replace("{game.url}",this.Core.ID);
            }
         }
         if(_loc2_.indexOf("{game.tag}") > -1)
         {
            if(this.Core.Game.Tag.length > 0)
            {
               trace("Tag: " + this.Core.Game.Tag);
               _loc2_ = _loc2_.replace("{game.tag}",this.Core.Game.Tag);
            }
            else
            {
               trace("> Tracking Error: FogAPI.Game.Tag is not defined");
               _loc2_ = _loc2_.replace("{game.tag}","misc-games");
            }
         }
         var _loc3_:String = "?utm_source=" + this.Info.domain + "&utm_medium=api-game&utm_campaign=" + this.Core.ID;
         if(this.isFogDomain())
         {
            _loc3_ = "";
         }
         var _loc4_:String = _loc2_ + _loc3_;
         trace(" ");
         trace("Tracking: ",_loc4_);
         var _loc5_:Boolean = this.Core.ID ? Boolean(this.Core.LibraryCall("GotoURL",{"url":_loc4_})) : false;
         if(!_loc5_)
         {
            trace("GotoURL (Local): " + _loc4_);
            if(this.Core.Sandbox)
            {
               return;
            }
            navigateToURL(new URLRequest(_loc4_),"_blank");
         }
      }
      
      public function Ping(param1:String = "") : void
      {
         var t:String = param1;
         Debug.log(" ");
         Debug.log("Remote Tracking");
         if(this.Core.Sandbox)
         {
            Debug.log("> Disabled due Sandbox. Try correcting your ID?");
            return;
         }
         Security.allowDomain(this.Server);
         Security.loadPolicyFile("http://" + this.Server + "/crossdomain.xml");
         Security.allowDomain("fogcdn.com");
         Security.loadPolicyFile("http://fogcdn.com/crossdomain.xml");
         this.LibPath = "http://" + this.Server + "/" + this.LibFile + "?v=" + this.Core.Version + "&c=" + Math.random();
         Debug.log("> SWF: " + this.LibPath);
         this.rLoader = new Loader();
         this.rRequest = new URLRequest(this.LibPath);
         this.rLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,function(param1:Event):void
         {
            var e:Event = param1;
            LibraryLoaded = true;
            try
            {
               Library = MovieClip(e.target.content);
               Library.Connect(Core);
            }
            catch(e:Error)
            {
               Library = null;
               LibraryFailed = true;
               Debug.log("> Corrupt Library: ",e.message);
            }
         });
         this.rLoader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,function(param1:IOErrorEvent):void
         {
            Debug.log("> IO Error (SWF): " + param1.text);
         });
         this.rLoader.contentLoaderInfo.addEventListener(HTTPStatusEvent.HTTP_STATUS,function(param1:HTTPStatusEvent):void
         {
         });
         this.rLoader.load(this.rRequest);
      }
      
      public function LibraryCall(param1:String, param2:Object) : *
      {
         return this.Core.LibraryCall(param1,param2);
      }
      
      private function GetUrlInfo(param1:String) : Object
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         this.LocalMode = param1.indexOf("file:///") > -1 || param1.indexOf("local.freeonlinegames.com") > -1 ? true : false;
         var _loc2_:String = "";
         var _loc3_:String = "";
         if(this.LocalMode)
         {
            _loc2_ = "local";
            _loc3_ = "";
         }
         else
         {
            _loc4_ = param1.indexOf("://") + 3;
            _loc5_ = param1.indexOf("/",_loc4_);
            _loc2_ = param1.substring(_loc4_,_loc5_);
            _loc6_ = _loc2_.lastIndexOf(".") - 1;
            _loc7_ = _loc2_.lastIndexOf(".",_loc6_) + 1;
            _loc3_ = param1.substr(_loc5_);
         }
         return {
            "domain":_loc2_,
            "uri":_loc3_
         };
      }
      
      public function isFogDomain() : Boolean
      {
         return this.Info.domain.indexOf("freeonlinegames.com") > -1 || this.Info.domain.indexOf("fog.com") > -1 || this.Info.domain.indexOf("fogdev.com") > -1 || this.Info.domain.indexOf("freegamesforyourwebsite.com") > -1 ? true : false;
      }
   }
}

