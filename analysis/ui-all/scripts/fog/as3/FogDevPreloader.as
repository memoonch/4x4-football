package fog.as3
{
   import flash.display.DisplayObject;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   import flash.utils.setTimeout;
   
   public class FogDevPreloader extends MovieClip
   {
      
      public const LogoSpin:Class = FogDevPreloader_LogoSpin;
      
      public const LogoStill:Class = FogDevPreloader_LogoStill;
      
      public const PreloaderHolder:Class = FogDevPreloader_PreloaderHolder;
      
      public const ProgressBar:Class = FogDevPreloader_ProgressBar;
      
      public const ProgressText:Class = FogDevPreloader_ProgressText;
      
      public const VoiceOver:Class = FogDevPreloader_VoiceOver;
      
      public var Core:FogDevAPI;
      
      public var IDE:String;
      
      public var Background:Sprite = new Sprite();
      
      public var Logo:MovieClip;
      
      public var Logo2:MovieClip;
      
      public var PreloaderClip:MovieClip;
      
      public var ProgBar:MovieClip;
      
      public var ProgText:MovieClip;
      
      public var Button:MovieClip;
      
      public var TimerStart:int;
      
      public var PreloaderSize:int = 0;
      
      public var Density:int = 10;
      
      public var Duration:int = 5000;
      
      public var DurationFade:int = 1000;
      
      public var DurationWait:int = 2000;
      
      public var FadeSteps:int = 50;
      
      public var Percent:int;
      
      public var PercentGame:Number;
      
      public var PercentDura:Number;
      
      public var FlyingFogDisabled:Boolean = false;
      
      private var g:Graphics;
      
      public function FogDevPreloader(param1:FogDevAPI)
      {
         super();
         this.Core = param1;
         this.SetBackgroundColor(0);
      }
      
      public function SetBackground(param1:MovieClip) : void
      {
         this.Background.addChild(param1);
      }
      
      public function SetBackgroundColor(param1:int) : void
      {
         this.g = this.Background.graphics;
         this.g.clear();
         this.g.beginFill(param1);
         this.g.drawRect(0,0,this.Core.Width,this.Core.Height);
         this.g.endFill();
      }
      
      public function Start(param1:* = null) : void
      {
         var F:* = param1;
         if(typeof F == "function")
         {
            this.Core.addEventListener("loaded",F);
         }
         else
         {
            this.Core.addEventListener("loaded",function(param1:Event):void
            {
               Core.Clip.play();
            });
         }
         this.TimerStart = getTimer();
         this.Core.Tracking.Ping();
         this.Core.addChild(this);
         this.PreloaderSize = root.loaderInfo.bytesLoaded;
         if(this.PreloaderSize == root.loaderInfo.bytesTotal)
         {
            this.PreloaderSize = 0;
         }
         addChild(this.Background);
         this.Logo = new this.LogoStill() as MovieClip;
         this.Logo.x = this.Core.Width / 2;
         this.Logo.y = this.Core.Height / 2 - this.Logo.height / 4;
         addChild(this.Logo);
         this.PreloaderClip = new this.PreloaderHolder() as MovieClip;
         this.PreloaderClip.x = this.Logo.x;
         this.PreloaderClip.y = this.Logo.y + this.Logo.height / 2 + this.PreloaderClip.height / 2;
         addChild(this.PreloaderClip);
         this.ProgBar = new this.ProgressBar() as MovieClip;
         this.ProgBar.x = -39;
         this.ProgBar.y = -8.1;
         this.PreloaderClip.addChild(this.ProgBar);
         this.ProgText = new this.ProgressText() as MovieClip;
         this.ProgText.stop();
         this.ProgText.x = -62.8;
         this.ProgText.y = -14.1;
         this.ProgText.width = 17.6;
         this.ProgText.height = 21.1;
         this.PreloaderClip.addChild(this.ProgText);
         this.Button = new MovieClip();
         this.Button.buttonMode = true;
         this.g = this.Button.graphics;
         this.g.beginFill(0);
         this.g.drawRect(0,0,this.Core.Width,this.Core.Height);
         this.g.endFill();
         this.Button.alpha = 0;
         this.Button.GotoURL = this.Core.Tracking.HomeURL;
         this.Button.addEventListener(MouseEvent.CLICK,this.Core.Tracking.Click);
         addChild(this.Button);
         if(this.DurationFade > this.Duration)
         {
            this.Duration = this.DurationFade;
         }
         this.Core.Clip.stop();
         this.FadeIn();
         stage.addEventListener(Event.ENTER_FRAME,this.showProgress);
         this.Core.dispatchEvent(new Event(this.Core.Events.PreloaderStarted));
      }
      
      private function showProgress(param1:Event) : void
      {
         this.PercentGame = Math.floor((root.loaderInfo.bytesLoaded - this.PreloaderSize) / (root.loaderInfo.bytesTotal - this.PreloaderSize) * 100);
         this.PercentDura = Math.floor((getTimer() - this.TimerStart) / this.Duration * 100);
         this.Percent = Math.round(Math.min(Math.min(this.PercentGame,this.PercentDura),100));
         this.ProgText.gotoAndStop(this.Percent + 1);
         this.ProgBar.width = this.Percent * 0.98;
         if(this.Percent > 99)
         {
            stage.removeEventListener(Event.ENTER_FRAME,this.showProgress);
            this.SpinLogo();
            this.Wait();
         }
         this.loadingBar(param1);
      }
      
      public function SpinLogo() : void
      {
         this.Logo2 = new this.LogoSpin() as MovieClip;
         this.Logo2.x = this.Logo.x;
         this.Logo2.y = this.Logo.y;
         addChild(this.Logo2);
         this.Logo2.play();
         removeChild(this.Logo);
         swapChildren(this.Button,this.Logo2);
      }
      
      private function loadingBar(param1:Event) : void
      {
         if(this.FlyingFogDisabled)
         {
            return;
         }
         if(getTimer() % Math.round(root.stage.frameRate / this.Density) === 0)
         {
         }
      }
      
      public function addObject(param1:*) : void
      {
         addChild(param1);
      }
      
      private function Wait() : void
      {
         setTimeout(this.Unload,this.DurationWait);
      }
      
      private function Unload() : void
      {
         if(!this.Core.Game.Disabled && getTimer() - this.TimerStart > 15000)
         {
            this.FadeOut();
            return;
         }
         if(this.Core.Game.Disabled)
         {
            trace("> Game will never start! :)");
         }
         else if(this.Core.Tracking.LibraryLoaded && !this.Core.Tracking.LibraryFailed)
         {
            this.Core.LibraryCall("LoadHandle",{});
         }
         else if(this.Core.Tracking.LibraryFailed)
         {
            trace("[Fatal FogaPI Preloader Error] Skipping Continue Button");
            this.FadeOut();
         }
         else
         {
            trace("> Retrying to finish preloader..");
            setTimeout(this.Unload,100);
         }
      }
      
      private function FadeIn() : void
      {
         var l:int;
         var i:int = 0;
         if(this.DurationFade < 1)
         {
            return;
         }
         alpha = 0;
         l = this.FadeSteps;
         while(i < l)
         {
            setTimeout(function(param1:DisplayObject):void
            {
               if(param1)
               {
                  param1.alpha += 1 / FadeSteps;
               }
            },this.DurationFade / this.FadeSteps * i,this);
            i++;
         }
      }
      
      public function FadeOut() : void
      {
         var l:int;
         var i:int = 0;
         setTimeout(this.Clean,1000);
         this.Core.dispatchEvent(new Event("loaded"));
         if(this.DurationWait < 1)
         {
            return;
         }
         alpha = 1;
         l = this.FadeSteps;
         while(i < l)
         {
            setTimeout(function(param1:DisplayObject):void
            {
               if(param1)
               {
                  param1.alpha -= 1 / FadeSteps;
               }
            },this.DurationFade / this.FadeSteps * i,this);
            i++;
         }
      }
      
      public function Clean(param1:Boolean = false) : void
      {
         this.Button.removeEventListener(MouseEvent.CLICK,this.Core.Tracking.Click);
         var _loc2_:int = 0;
         while(_loc2_ < numChildren)
         {
            removeChildAt(0);
            _loc2_++;
         }
         this.Core.removeChild(this);
         this.Core.dispatchEvent(new Event("cleaned"));
      }
      
      public function DisableFlyingFog() : void
      {
         this.FlyingFogDisabled = true;
      }
   }
}

