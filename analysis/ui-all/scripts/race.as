package
{
   import Box2DAS.Common.*;
   import alternativa.engine3d.containers.BSPContainer;
   import alternativa.engine3d.containers.ConflictContainer;
   import alternativa.engine3d.containers.DistanceSortContainer;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.core.Object3DContainer;
   import alternativa.engine3d.core.View;
   import alternativa.engine3d.lights.*;
   import alternativa.engine3d.loaders.Parser3DS;
   import alternativa.engine3d.materials.*;
   import alternativa.engine3d.objects.SkyBox;
   import alternativa.engine3d.primitives.Plane;
   import fl.transitions.Tween;
   import fl.transitions.TweenEvent;
   import fl.transitions.easing.*;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.display.MovieClip;
   import flash.display.StageAlign;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.*;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundMixer;
   import flash.media.SoundTransform;
   import flash.ui.Keyboard;
   import flash.utils.*;
   import fog.as3.FogDevAPI;
   
   [SWF(width="670", height="450", backgroundColor="#000000", frameRate="25")]
   public class race extends MovieClip
   {
      
      public static var FogAPI:FogDevAPI;
      
      protected static const toRAD:Number = Math.PI / 180;
      
      protected static const toDEG:Number = 180 / Math.PI;
      
      public var teams_mc:MovieClip;
      
      public var lostAnim_mc:MovieClip;
      
      public var pause_mc:MovieClip;
      
      public var cars:carsWCK;
      
      public var final_mc:MovieClip;
      
      public var cupchart_mc:MovieClip;
      
      public var preloader:Preloader;
      
      public var start_screen:MovieClip;
      
      public var versus_mc:MovieClip;
      
      public var wonAnim_mc:MovieClip;
      
      public var UI:MovieClip;
      
      public var halftime_mc:MovieClip;
      
      public var goalAnim_mc:MovieClip;
      
      public var preBG:MovieClip;
      
      public var totalLaps:int = 3;
      
      public var UNLOCKED:Number = 1;
      
      public var DEBUG:Boolean = false;
      
      public var show3D:Boolean = true;
      
      public var TYPE:int = 2;
      
      private var SCALEFACTOR:Number = 10;
      
      protected var rootContainer:Object3DContainer;
      
      protected var camera:Camera3D;
      
      protected var CAMERACLIPPING:* = 2000;
      
      protected var CAMERAEXT:* = true;
      
      protected var CAMERAEXTx:*;
      
      protected var CAMERAEXTy:*;
      
      protected var CAMERAEXTz:*;
      
      protected var box:Box;
      
      private var soundfx:SoundChannel = new SoundChannel();
      
      private var crowdfx:SoundChannel = new SoundChannel();
      
      protected var Car1Model:Class = race_Car1Model;
      
      protected var Wheel1Model:Class = race_Wheel1Model;
      
      protected var BlokoviModel:Class = race_BlokoviModel;
      
      protected var Ball:Class = race_Ball;
      
      protected var FieldModel:Class = race_FieldModel;
      
      protected var GoModel:Class = race_GoModel;
      
      protected var StadiumFenceModel:Class = race_StadiumFenceModel;
      
      protected var FENCEHEIGHT:* = 15;
      
      protected var BANNERY:* = 55;
      
      protected var modelContainer:*;
      
      protected var car1:*;
      
      protected var car2:*;
      
      protected var car3:*;
      
      protected var car4:Object3D;
      
      private var cameraOffset:*;
      
      private var cameraHeight:*;
      
      private var cameraDelay:Number;
      
      private var cameraAtX:*;
      
      private var cameraAtY:*;
      
      private var cameraAtZ:Number;
      
      private var muted:Boolean;
      
      private var masterVolume:* = 0;
      
      private var currentCar:*;
      
      private var currentCar2D:*;
      
      public var stage3DWidth:* = 670;
      
      public var stage3DHeight:* = 450;
      
      private var PAUSE:Boolean;
      
      private var tweens:Array = new Array();
      
      public var transitionSpeed:Number = 0.7;
      
      public var scoretable:Array;
      
      private var racing:Boolean;
      
      private var unlockAnimate:Object;
      
      private var unlockAnimateCar:Object;
      
      private var gameover:Boolean = true;
      
      private var tempCount:int;
      
      private var WOCARS:*;
      
      private var TRACK:int;
      
      private var TRACKS:Array = new Array();
      
      private var CARSELECTED:int;
      
      private var CARS:Array = new Array();
      
      private var CITIES:Array = new Array();
      
      private var BALL:*;
      
      private var BALLRADIUS:Number = 1;
      
      private var BALLSHADOW:*;
      
      private var teams:Array = new Array();
      
      private var trackButtons:Array = new Array();
      
      private var carButtons:Array = new Array();
      
      private var players:Array;
      
      private var BESTTIME:Array = new Array();
      
      private var POSITIONS:Array = new Array();
      
      private var LEVELS:Array = new Array(0.3,0.5,0.7,0.9);
      
      private var SPEEDMETER:Array = new Array();
      
      private var HIGHSCORESTRACK:int;
      
      private var HIGHSCORESCAR:int;
      
      private var homeScore:int;
      
      private var guestScore:int;
      
      private var PERIOD_DURATION:* = 120000;
      
      private var EXTENSION_DURATION:* = 60000;
      
      private var halfTime:* = this.PERIOD_DURATION;
      
      private var pauseTime:Number;
      
      private var startTime:Number;
      
      public var currentTime:Number;
      
      public var TIMESPEED:Number = 1;
      
      private var cup16:Array = new Array();
      
      private var cup8:Array = new Array();
      
      private var cup4:Array = new Array();
      
      private var cup2:Array = new Array();
      
      private var pool16:Array = new Array();
      
      private var pool8:Array = new Array();
      
      private var pool4:Array = new Array();
      
      private var pool2:Array = new Array();
      
      private var round:int = 0;
      
      private var currentCup:*;
      
      private var currentPool:*;
      
      private var period:int = 0;
      
      private var beginningOfGame:Boolean;
      
      private var totalHomeScore:int = 0;
      
      private var totalGuestScore:int = 0;
      
      public function race()
      {
         super();
         addFrameScript(0,this.frame1,3,this.frame4);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.LEFT;
         if(stage.loaderInfo.parameters["show3D"] == "true")
         {
            this.show3D = true;
         }
         else if(stage.loaderInfo.parameters["show3D"] == "false")
         {
            this.show3D = false;
         }
         if(stage.loaderInfo.parameters["debug"] == "true")
         {
            this.DEBUG = true;
         }
         else if(stage.loaderInfo.parameters["debug"] == "false")
         {
            this.DEBUG = false;
         }
         if(stage.loaderInfo.parameters["type"] == "1")
         {
            this.TYPE = 1;
         }
         else if(stage.loaderInfo.parameters["type"] == "2")
         {
            this.TYPE = 2;
         }
         else if(stage.loaderInfo.parameters["type"] == "3")
         {
            this.TYPE = 3;
         }
         this.muted = false;
      }
      
      private function Start() : *
      {
         var _loc7_:MovieClip = null;
         this.start_screen.new_game_btn.addEventListener(MouseEvent.CLICK,this.onNewRound);
         this.start_screen.play_more_games_btn.addEventListener(MouseEvent.CLICK,this.onGotoFog);
         this.start_screen.add_this_game_btn.addEventListener(MouseEvent.CLICK,this.onGotoFGFYW);
         this.teams_mc.start_btn.addEventListener(MouseEvent.CLICK,this.onteams_start);
         this.teams_mc.back_menu_btn.addEventListener(MouseEvent.CLICK,this.onBtn1);
         this.cupchart_mc.start_btn.addEventListener(MouseEvent.CLICK,this.oncupchart_start);
         this.cupchart_mc.pmg.addEventListener(MouseEvent.CLICK,this.onGotoFog);
         this.cupchart_mc.back_menu_btn.addEventListener(MouseEvent.CLICK,this.onBtn1);
         this.versus_mc.start_btn.addEventListener(MouseEvent.CLICK,this.onversus_start);
         this.versus_mc.pmg.addEventListener(MouseEvent.CLICK,this.onGotoFog);
         this.versus_mc.back_menu_btn.addEventListener(MouseEvent.CLICK,this.onBtn1);
         this.halftime_mc.start_btn.addEventListener(MouseEvent.CLICK,this.finishHalfTime);
         this.halftime_mc.pmg.addEventListener(MouseEvent.CLICK,this.onGotoFog);
         this.halftime_mc.back_menu_btn.addEventListener(MouseEvent.CLICK,this.finishHalfTime);
         this.halftime_mc.retry_btn.addEventListener(MouseEvent.CLICK,this.onBtn3);
         this.final_mc.back_menu_btn.addEventListener(MouseEvent.CLICK,this.onBtn1);
         this.final_mc.pmg.addEventListener(MouseEvent.CLICK,this.onGotoFog);
         this.UI.mute_btn.addEventListener(MouseEvent.CLICK,this.onMuteSound);
         this.UI.minilogo.addEventListener(MouseEvent.CLICK,this.onMiniLogo);
         this.UI.minilogo.buttonMode = true;
         this.UI.mute_btn.buttonMode = true;
         this.UI.pause_btn.addEventListener(MouseEvent.CLICK,this.onPause);
         this.teams.push({
            "country":"Argentina",
            "teamcolor":65535,
            "altcolor":16777215
         });
         this.teams.push({
            "country":"Brazil",
            "teamcolor":16776960,
            "altcolor":16711680
         });
         this.teams.push({
            "country":"Croatia",
            "teamcolor":16777215,
            "altcolor":16711680
         });
         this.teams.push({
            "country":"England",
            "teamcolor":16777215,
            "altcolor":16711680
         });
         this.teams.push({
            "country":"France",
            "teamcolor":255,
            "altcolor":16777215
         });
         this.teams.push({
            "country":"Germany",
            "teamcolor":0,
            "altcolor":4473924
         });
         this.teams.push({
            "country":"Greece",
            "teamcolor":255,
            "altcolor":16777215
         });
         this.teams.push({
            "country":"Italy",
            "teamcolor":255,
            "altcolor":16777215
         });
         this.teams.push({
            "country":"Ivory Coast",
            "teamcolor":16742144,
            "altcolor":16776960
         });
         this.teams.push({
            "country":"Japan",
            "teamcolor":255,
            "altcolor":16777215
         });
         this.teams.push({
            "country":"Mexico",
            "teamcolor":65280,
            "altcolor":16777215
         });
         this.teams.push({
            "country":"Netherlands",
            "teamcolor":16742144,
            "altcolor":16777215
         });
         this.teams.push({
            "country":"Norway",
            "teamcolor":16711680,
            "altcolor":16777215
         });
         this.teams.push({
            "country":"Portugal",
            "teamcolor":16711680,
            "altcolor":65280
         });
         this.teams.push({
            "country":"Spain",
            "teamcolor":16711680,
            "altcolor":16776960
         });
         this.teams.push({
            "country":"USA",
            "teamcolor":255,
            "altcolor":16777215
         });
         this.CARS.push({
            "texture":new Car1TextureGrey(),
            "model":this.initModel(new this.Car1Model()),
            "wheel":this.initModel(new this.Wheel1Model()),
            "FRONTWHEEL":new Point(1.6,0.92),
            "REARWHEEL":new Point(1.36,0.92),
            "WHEELRADIUS":0.41,
            "MAXSPEED":180,
            "NAME":"Hummer",
            "PREDICTION":0.3,
            "SPEED":3,
            "ACC":2,
            "STEER":3
         });
         this.CARS.push({
            "texture":new Car1TextureGrey(),
            "model":this.initModel(new this.Car1Model()),
            "wheel":this.initModel(new this.Wheel1Model()),
            "FRONTWHEEL":new Point(1.6,0.92),
            "REARWHEEL":new Point(1.36,0.92),
            "WHEELRADIUS":0.41,
            "MAXSPEED":150,
            "NAME":"Hummer",
            "PREDICTION":0.5,
            "SPEED":3,
            "ACC":2,
            "STEER":3
         });
         this.CARS.push({
            "texture":new Car1TextureGrey(),
            "model":this.initModel(new this.Car1Model()),
            "wheel":this.initModel(new this.Wheel1Model()),
            "FRONTWHEEL":new Point(1.6,0.92),
            "REARWHEEL":new Point(1.36,0.92),
            "WHEELRADIUS":0.41,
            "MAXSPEED":180,
            "NAME":"Hummer",
            "PREDICTION":0.3,
            "SPEED":3,
            "ACC":2,
            "STEER":3
         });
         this.CARS.push({
            "texture":new Car1TextureGrey(),
            "model":this.initModel(new this.Car1Model()),
            "wheel":this.initModel(new this.Wheel1Model()),
            "FRONTWHEEL":new Point(1.6,0.92),
            "REARWHEEL":new Point(1.36,0.92),
            "WHEELRADIUS":0.41,
            "MAXSPEED":150,
            "NAME":"Hummer",
            "PREDICTION":0.5,
            "SPEED":3,
            "ACC":2,
            "STEER":3
         });
         this.TRACKS.push({
            "texture":new Blok1Texture(),
            "model":this.initModel(new this.BlokoviModel())
         });
         var _loc1_:Number = 50;
         var _loc2_:* = 80;
         var _loc3_:Number = 90;
         var _loc4_:* = 80;
         var _loc5_:Number = 8;
         var _loc6_:* = 0;
         while(_loc6_ < this.teams.length)
         {
            _loc7_ = new flag_btn();
            _loc7_.x = _loc6_ % _loc5_ * _loc2_ + _loc1_;
            _loc7_.y = int(_loc6_ / _loc5_) * _loc4_ + _loc3_;
            this.teams_mc.addChild(_loc7_);
            _loc7_.name = "team" + _loc6_;
            _loc7_.flags.active.visible = false;
            _loc7_.flags.label.text = "";
            _loc7_.flags.gotoAndStop(_loc6_ + 1 + 1);
            _loc7_.mouseChildren = false;
            _loc7_.buttonMode = true;
            _loc7_.i = _loc6_;
            _loc7_.addEventListener(MouseEvent.CLICK,this.onSelectTeam);
            _loc6_++;
         }
         this.resetAll();
         this.resetGame();
         this.restartGame();
      }
      
      private function onGotoFog(param1:MouseEvent) : void
      {
         FogAPI.Tracking.GotoURL("http://www.freeonlinegames.com/tag/driving-games");
      }
      
      private function onMiniLogo(param1:MouseEvent) : void
      {
         FogAPI.Tracking.GotoURL("http://www.freeonlinegames.com");
      }
      
      private function onGotoFGFYW(param1:MouseEvent) : void
      {
         FogAPI.Tracking.GotoURL("http://www.freegamesforyourwebsite.com");
      }
      
      private function resetAll() : *
      {
         this.cup16 = new Array();
         this.cup8 = new Array();
         this.cup4 = new Array();
         this.cup2 = new Array();
         this.pool16 = new Array();
         this.pool8 = new Array();
         this.pool4 = new Array();
         this.pool2 = new Array();
         this.round = 0;
         var _loc1_:* = 0;
         while(_loc1_ < 16)
         {
            this.pool16.push(_loc1_);
            _loc1_++;
         }
         this.period = 0;
         this.currentCup = this.cup16;
         this.currentPool = this.pool16;
         this.CARSELECTED = 1;
         this.TRACK = 1;
         this.clearCupChart();
      }
      
      private function clearCupChart() : *
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         _loc1_ = 0;
         while(_loc1_ < 4)
         {
            _loc2_ = 0;
            while(_loc2_ < Math.pow(2,4 - _loc1_))
            {
               this.cupchart_mc["team" + _loc1_ + "_" + _loc2_].gotoAndStop(1);
               this.cupchart_mc["team" + _loc1_ + "_" + _loc2_].label.text = "?";
               this.cupchart_mc["team" + _loc1_ + "_" + _loc2_].active.visible = false;
               _loc2_++;
            }
            _loc1_++;
         }
      }
      
      private function restartGame() : *
      {
         this.showPopup(this.start_screen,true);
      }
      
      private function resetGame() : *
      {
         this.masterVolume = 1;
         stage.removeEventListener(Event.ENTER_FRAME,this.onFrame);
         SoundMixer.stopAll();
         var _loc1_:* = this.getChildByName("cameraView");
         if(_loc1_)
         {
            this.removeChild(_loc1_);
         }
         this.hidePopup(this.UI);
         this.hidePopup(this.pause_mc);
         this.hidePopup(this.start_screen);
         this.hidePopup(this.cupchart_mc);
         this.hidePopup(this.versus_mc);
         this.hidePopup(this.final_mc);
         this.hidePopup(this.teams_mc);
         this.hidePopup(this.halftime_mc);
         this.hidePopup(this.cars);
         this.cars.gotoAndStop(1);
      }
      
      private function onNewRound(param1:*) : *
      {
         this.homeScore = 0;
         this.guestScore = 0;
         this.period = 0;
         this.beginningOfGame = true;
         this.initSelectTeam();
         this.hidePopup(this.start_screen,true);
         this.showPopup(this.teams_mc,true);
      }
      
      private function initSelectTeam() : *
      {
         this.currentCup.push({
            "team":0,
            "res":-1
         });
         this.teams_mc.play_more_games_btn.addEventListener(MouseEvent.CLICK,this.onGotoFog);
         this.teams_mc.team_label.text = this.teams[this.currentCup[0].team].country;
         var _loc1_:MovieClip = this.teams_mc.hummer0.boja;
         var _loc2_:ColorTransform = _loc1_.transform.colorTransform;
         _loc2_.color = this.teams[this.currentCup[0].team].teamcolor;
         this.teams_mc.hummer0.boja.transform.colorTransform = _loc2_;
         var _loc3_:MovieClip = this.teams_mc.hummer0.hummer_mask;
         _loc1_.cacheAsBitmap = true;
         _loc3_.cacheAsBitmap = true;
         _loc1_.mask = _loc3_;
         _loc1_.blendMode = BlendMode.OVERLAY;
         if(this.teams_mc.active)
         {
            this.teams_mc.active.flags.active.visible = false;
         }
         this.teams_mc.active = null;
         this.teams_mc.active = this.teams_mc.getChildByName("team0");
         this.teams_mc.active.flags.active.visible = true;
      }
      
      private function onSelectTeam(param1:*) : *
      {
         if(this.teams_mc.active)
         {
            this.teams_mc.active.flags.active.visible = false;
         }
         this.teams_mc.active = param1.target;
         this.teams_mc.active.flags.active.visible = true;
         this.currentCup[0].team = param1.target.i;
         this.teams_mc.team_label.text = this.teams[this.currentCup[0].team].country;
         var _loc2_:MovieClip = this.teams_mc.hummer0.boja;
         var _loc3_:ColorTransform = _loc2_.transform.colorTransform;
         _loc3_.color = this.teams[this.currentCup[0].team].teamcolor;
         _loc2_.blendMode = BlendMode.OVERLAY;
         this.teams_mc.hummer0.boja.transform.colorTransform = _loc3_;
      }
      
      private function onteams_start(param1:*) : *
      {
         this.initRound(this.round,true);
         this.hidePopup(this.teams_mc,true);
         this.showPopup(this.cupchart_mc,true);
      }
      
      private function onNextRound() : *
      {
         this.homeScore = 0;
         this.guestScore = 0;
         this.period = 0;
         this.beginningOfGame = true;
         this.initRound(this.round);
         this.hidePopup(this.start_screen,true);
         this.showPopup(this.cupchart_mc,true);
      }
      
      private function initRound(param1:*, param2:* = false) : *
      {
         this.initTeams(param1,this.currentCup,this.currentPool,param2);
      }
      
      private function initTeams(param1:*, param2:*, param3:*, param4:*) : *
      {
         var _loc5_:int = 0;
         var _loc6_:* = 0;
         while(_loc6_ < param3.length)
         {
            if(!param4)
            {
               _loc5_ = int(param3[_loc6_]);
               param2.push({
                  "team":_loc5_,
                  "res":-1
               });
            }
            else if(_loc6_ > 0)
            {
               _loc5_ = this.selectTeamFrom(param2,param3);
               param2.push({
                  "team":_loc5_,
                  "res":-1
               });
            }
            else
            {
               _loc5_ = int(param2[_loc6_].team);
            }
            this.cupchart_mc["team" + param1 + "_" + _loc6_].gotoAndStop(_loc5_ + 1 + 1);
            if(_loc6_ == 0)
            {
               this.cupchart_mc["team" + param1 + "_" + _loc6_].active.visible = true;
            }
            if(param2[_loc6_].res < 0)
            {
               this.cupchart_mc["team" + param1 + "_" + _loc6_].label.text = "";
            }
            else
            {
               this.cupchart_mc["team" + param1 + "_" + _loc6_].label.text = param2[_loc6_].res;
            }
            _loc6_++;
         }
      }
      
      private function selectTeamFrom(param1:*, param2:*) : int
      {
         var _loc3_:int = int(Math.random() * param2.length);
         while(this.ifExist(param1,param2[_loc3_]))
         {
            _loc3_ = int(Math.random() * param2.length);
         }
         return param2[_loc3_];
      }
      
      private function ifExist(param1:*, param2:*) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:* = 0;
         while(_loc4_ < param1.length)
         {
            if(param2 == param1[_loc4_].team)
            {
               _loc3_ = true;
               break;
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      private function oncupchart_start(param1:*) : *
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         _loc2_ = this.teams[this.currentCup[0].team].teamcolor;
         _loc3_ = this.teams[this.currentCup[1].team].teamcolor;
         if(_loc2_ == _loc3_)
         {
            _loc3_ = this.teams[this.currentCup[1].team].altcolor;
         }
         this.initTeamLook(this.versus_mc,0,_loc2_,true);
         this.initTeamLook(this.versus_mc,1,_loc3_,false);
         this.hidePopup(this.cupchart_mc,true);
         this.showPopup(this.versus_mc,true);
      }
      
      private function initTeamLook(param1:*, param2:*, param3:*, param4:*) : *
      {
         param1["team" + param2].gotoAndStop(this.currentCup[param2].team + 1 + 1);
         this.UI["team" + param2].gotoAndStop(this.currentCup[param2].team + 1 + 1);
         param1["team" + param2].label.text = "";
         this.UI["team" + param2].label.text = "";
         param1["team" + param2].active.visible = param4;
         this.UI["team" + param2].active.visible = param4;
         param1["team" + param2 + "_label"].text = this.teams[this.currentCup[param2].team].country;
         var _loc5_:MovieClip = param1["hummer" + param2].boja;
         var _loc6_:ColorTransform = _loc5_.transform.colorTransform;
         _loc6_.color = param3;
         param1["hummer" + param2].boja.transform.colorTransform = _loc6_;
         var _loc7_:MovieClip = param1["hummer" + param2].hummer_mask;
         _loc5_.cacheAsBitmap = true;
         _loc7_.cacheAsBitmap = true;
         _loc5_.mask = _loc7_;
         _loc5_.blendMode = BlendMode.OVERLAY;
      }
      
      private function onversus_start(param1:*) : *
      {
         this.hidePopup(this.versus_mc,false);
         this.onStartGame(new MouseEvent(MouseEvent.CLICK));
      }
      
      private function onStartGame(param1:*) : *
      {
         this.currentTime = 0;
         this.startTime = getTimer();
         this.onStartGameContinue(param1);
      }
      
      private function onStartGameContinue(param1:*) : *
      {
         this.cars.gotoAndStop(this.TRACK + 1);
         this.WOCARS = this.cars.getChildByName("worldofcars" + this.TRACK);
         this.WOCARS.totalLaps = this.totalLaps;
         this.WOCARS.debugDraw = this.DEBUG;
         this.WOCARS.CARS = this.CARS;
         this.WOCARS.SCALEFACTOR = this.SCALEFACTOR;
         this.WOCARS.DIFFICULTY = this.LEVELS[this.round];
         this.currentCar2D = this.WOCARS.players[0];
         this.racing = false;
         this.gameover = false;
         this.clearUI();
         this.tempCount = 2;
         stage.addEventListener(Event.ENTER_FRAME,this.predFrame);
      }
      
      private function predFrame(param1:*) : *
      {
         --this.tempCount;
         if(this.tempCount < 0)
         {
            stage.removeEventListener(Event.ENTER_FRAME,this.predFrame);
            this.continueGame();
         }
         var _loc2_:SoundTransform = new SoundTransform(0.3);
         var _loc3_:Sound = new jeering();
         _loc3_.play(0,999,_loc2_);
      }
      
      private function continueGame() : *
      {
         var _loc1_:String = null;
         this.scoretable = new Array();
         if(this.show3D)
         {
            this.initScene();
         }
         else
         {
            this.cars.height = this.stage3DHeight;
            this.cars.scaleX = this.cars.scaleY;
            this.cars.x = this.stage3DWidth / 2;
            this.cars.y = this.stage3DHeight / 2;
         }
         stage.addEventListener(KeyboardEvent.KEY_UP,this.onkeyDown);
         if(this.WOCARS.debugDraw)
         {
            if(this.show3D)
            {
               addChild(this.camera.diagram);
            }
         }
         this.UI.lights_mc.gotoAndStop(1);
         this.UI.instructions_mc.gotoAndStop(1);
         switch(this.period)
         {
            case 0:
               _loc1_ = "FIRST HALF";
               this.halfTime = this.PERIOD_DURATION;
               break;
            case 1:
               _loc1_ = "SECOND HALF";
               this.halfTime = this.PERIOD_DURATION;
               break;
            default:
               _loc1_ = "EXTRA TIME";
               this.halfTime = this.EXTENSION_DURATION;
         }
         this.UI.period_label.text = _loc1_;
         this.hidePopup(this.UI.lights_mc);
         this.showPopup(this.UI,true);
         this.showPopup(this.cars,true);
         stage.addEventListener(Event.ENTER_FRAME,this.onFrame);
         this.startRace();
         if(this.beginningOfGame)
         {
            this.UI.instructions_mc.gotoAndPlay(2);
            this.beginningOfGame = false;
         }
      }
      
      private function startRace() : *
      {
         this.racing = true;
         this.WOCARS.startRace();
         var _loc1_:Sound = new ref_whistle();
         this.soundfx = _loc1_.play();
      }
      
      protected function initScene() : void
      {
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc8_:int = 0;
         var _loc9_:* = undefined;
         this.rootContainer = new Object3DContainer();
         this.camera = new Camera3D();
         this.camera.view = new View(this.stage3DWidth,this.stage3DHeight);
         this.camera.view.hideLogo();
         this.camera.farClipping = this.CAMERACLIPPING;
         var _loc1_:* = addChildAt(this.camera.view,0);
         _loc1_.name = "cameraView";
         this.cameraOffset = -60;
         this.cameraHeight = 50;
         this.cameraDelay = 0.2;
         this.rootContainer.addChild(this.camera);
         this.CAMERAEXT = false;
         var _loc2_:Rectangle = this.WOCARS.bckgrnd.getBounds(this.WOCARS);
         var _loc3_:SkyBox = new SkyBox(10000,new TextureMaterial(new skyboxLEFT()),new TextureMaterial(new skyboxRIGHT()),new TextureMaterial(new skyboxBACK()),new TextureMaterial(new skyboxFRONT()),new TextureMaterial(new skyboxBOTTOM()),new TextureMaterial(new skyboxTOP()),0);
         _loc3_.z = 0;
         _loc3_.x = _loc2_.x + _loc2_.width / 2;
         _loc3_.y = -(_loc2_.y + _loc2_.height / 2);
         this.rootContainer.addChild(_loc3_);
         this.CAMERAEXTx = _loc3_.x;
         this.CAMERAEXTy = _loc3_.y;
         this.CAMERAEXTz = 500;
         if(this.TYPE == 1)
         {
            this.modelContainer = new DistanceSortContainer();
         }
         else if(this.TYPE == 2)
         {
            this.modelContainer = new ConflictContainer();
         }
         else if(this.TYPE == 3)
         {
            this.modelContainer = new BSPContainer();
         }
         _loc4_ = this.teams[this.currentCup[0].team].teamcolor;
         _loc5_ = this.teams[this.currentCup[1].team].teamcolor;
         if(_loc4_ == _loc5_)
         {
            _loc5_ = this.teams[this.currentCup[1].team].altcolor;
         }
         var _loc6_:ColorTransform = this.WOCARS.sensor_goLeft.boja.transform.colorTransform;
         _loc6_.color = _loc4_;
         _loc6_.alphaMultiplier = 0.5;
         this.WOCARS.sensor_goLeft.boja.transform.colorTransform = _loc6_;
         _loc6_ = this.WOCARS.sensor_goRight.boja.transform.colorTransform;
         _loc6_.color = _loc5_;
         _loc6_.alphaMultiplier = 0.5;
         this.WOCARS.sensor_goRight.boja.transform.colorTransform = _loc6_;
         this.initCity(this.rootContainer,this.TRACKS[this.TRACK - 1]);
         this.rootContainer.addChild(this.initField(new this.FieldModel(),new soccer_fieldTexture()));
         this.rootContainer.addChild(this.initField(new this.StadiumFenceModel(),new concrete()));
         this.initBushes(this.rootContainer,"tree",tree);
         this.initCrowd(this.rootContainer,"crowd",crowd);
         this.initFlags(this.rootContainer,"flag_green",flag_template,_loc4_);
         this.initFlags(this.rootContainer,"flag_red",flag_template,_loc5_);
         this.initFence(this.modelContainer,"fp",true);
         this.rootContainer.addChild(this.modelContainer);
         this.initGos(this.modelContainer,"go");
         this.BALL = this.initBall(new this.Ball(),new ballTexture());
         this.modelContainer.addChild(this.BALL);
         var _loc7_:* = new TextureMaterial(new senka4Ball());
         this.BALLSHADOW = new Plane(2 * this.SCALEFACTOR,2 * this.SCALEFACTOR);
         this.BALLSHADOW.setMaterialToAllFaces(_loc7_);
         this.BALLSHADOW.z = 1;
         this.BALLSHADOW.name = "shadowBall";
         this.modelContainer.addChild(this.BALLSHADOW);
         this.players = new Array();
         _loc8_ = 0;
         while(_loc8_ < this.WOCARS.players.length)
         {
            _loc9_ = _loc8_ < 2 ? _loc4_ : _loc5_;
            this.CARS[_loc8_].car = this.setupCar(this.WOCARS.players[_loc8_],this.CARS[_loc8_],_loc9_);
            this.players.push(this.CARS[_loc8_].car);
            _loc8_++;
         }
         this.updateBall(this.BALL,this.WOCARS.ball);
         this.currentCar = this.CARS[this.CARSELECTED - 1];
         this.currentCar2D = this.WOCARS.players[this.CARSELECTED - 1];
         this.currentCar2D.Player = "Player2";
         this.cameraAtX = this.currentCar.car.x;
         this.cameraAtY = this.currentCar.car.y;
         this.cameraAtZ = this.currentCar.car.z + this.cameraHeight;
         _loc8_ = 0;
         while(_loc8_ < this.WOCARS.players.length)
         {
            this.updateCar(this.CARS[_loc8_],this.WOCARS.players[_loc8_]);
            _loc8_++;
         }
         this.updateCamera(false);
         this.camera.render();
         this.clearUI();
      }
      
      private function initModel(param1:*) : *
      {
         var _loc2_:ByteArray = param1;
         var _loc3_:Parser3DS = new Parser3DS();
         _loc3_.parse(_loc2_);
         return _loc3_.objects[0];
      }
      
      private function initCity(param1:*, param2:*) : *
      {
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         if(param2.model != null)
         {
            _loc3_ = new TextureMaterial(param2.texture);
            _loc4_ = param2.model;
            _loc4_.setMaterialToAllFaces(_loc3_);
            _loc4_.name = "Blokovi";
            _loc4_.scaleX = _loc4_.scaleY = _loc4_.scaleZ = this.SCALEFACTOR;
            param1.addChild(_loc4_);
         }
      }
      
      private function initBall(param1:*, param2:*) : *
      {
         var _loc3_:* = this.initModel(param1);
         var _loc4_:* = new TextureMaterial(param2);
         _loc3_.setMaterialToAllFaces(_loc4_);
         _loc3_.scaleX = _loc3_.scaleY = _loc3_.scaleZ = this.SCALEFACTOR;
         return _loc3_;
      }
      
      private function initField(param1:*, param2:*) : *
      {
         var _loc3_:* = this.initModel(param1);
         var _loc4_:* = new TextureMaterial(param2);
         _loc3_.setMaterialToAllFaces(_loc4_);
         _loc3_.scaleX = _loc3_.scaleY = _loc3_.scaleZ = this.SCALEFACTOR;
         return _loc3_;
      }
      
      protected function setupCar(param1:*, param2:*, param3:*) : *
      {
         var boja:MovieClip;
         var w:*;
         var h:*;
         var maska:MovieClip;
         var combinedTexture:MovieClip;
         var texture:BitmapData;
         var material:*;
         var carPart1:*;
         var FrontWheelLeft:*;
         var FrontWheelRight:*;
         var RearWheelLeft:*;
         var RearWheelRight:*;
         var carRotation:*;
         var carplane:*;
         var carContainer:* = undefined;
         var car2D:* = param1;
         var CAR:* = param2;
         var clr:* = param3;
         var ct:ColorTransform = car2D.colorOverlay.transform.colorTransform;
         ct.color = clr;
         ct.alphaMultiplier = 0.5;
         car2D.colorOverlay.transform.colorTransform = ct;
         boja = new MovieClip();
         w = 1024;
         h = 1024;
         with(boja.graphics)
         {
            clear();
            lineStyle(1,0,0);
            beginFill(clr,1);
            drawRect(0,0,w,h);
            endFill();
         }
         maska = new cartexturemask();
         boja.cacheAsBitmap = true;
         maska.cacheAsBitmap = true;
         combinedTexture = new MovieClip();
         combinedTexture.addChild(maska);
         combinedTexture.addChild(boja);
         boja.mask = maska;
         texture = new BitmapData(w,h,false,0);
         texture.draw(CAR.texture);
         texture.draw(combinedTexture,null,null,BlendMode.OVERLAY,null,true);
         material = new TextureMaterial(texture);
         if(this.TYPE == 1)
         {
            carContainer = new ConflictContainer();
         }
         else if(this.TYPE == 2)
         {
            carContainer = new ConflictContainer();
         }
         else if(this.TYPE == 3)
         {
            carContainer = new BSPContainer();
         }
         carPart1 = CAR.model;
         carPart1.setMaterialToAllFaces(material);
         carPart1.name = "carBody1";
         carPart1.scaleX = carPart1.scaleY = carPart1.scaleZ = this.SCALEFACTOR;
         carContainer.addChild(carPart1);
         FrontWheelLeft = CAR.wheel;
         FrontWheelLeft.setMaterialToAllFaces(material);
         FrontWheelLeft.x = CAR.FRONTWHEEL.x * this.SCALEFACTOR;
         FrontWheelLeft.y = CAR.FRONTWHEEL.y * this.SCALEFACTOR;
         FrontWheelLeft.z = CAR.WHEELRADIUS * this.SCALEFACTOR;
         FrontWheelLeft.scaleX = FrontWheelLeft.scaleY = FrontWheelLeft.scaleZ = this.SCALEFACTOR;
         FrontWheelLeft.name = "FLWheel";
         carContainer.addChild(FrontWheelLeft);
         FrontWheelRight = FrontWheelLeft.clone();
         FrontWheelRight.y = -CAR.FRONTWHEEL.y * this.SCALEFACTOR;
         FrontWheelRight.name = "FRWheel";
         carContainer.addChild(FrontWheelRight);
         RearWheelLeft = FrontWheelLeft.clone();
         RearWheelLeft.x = -CAR.REARWHEEL.x * this.SCALEFACTOR;
         RearWheelLeft.y = CAR.REARWHEEL.y * this.SCALEFACTOR;
         RearWheelLeft.name = "RLWheel";
         carContainer.addChild(RearWheelLeft);
         RearWheelRight = RearWheelLeft.clone();
         RearWheelRight.y = -CAR.REARWHEEL.y * this.SCALEFACTOR;
         RearWheelRight.name = "RRWheel";
         carContainer.addChild(RearWheelRight);
         this.modelContainer.addChild(carContainer);
         material = new TextureMaterial(new senka());
         carRotation = car2D.rotation;
         car2D.rotation = 0;
         carplane = new Plane(car2D.width * 1.1,car2D.height * 1.1);
         carplane.setMaterialToAllFaces(material);
         carplane.z = -0.1;
         carplane.name = "shadow";
         carContainer.addChild(carplane);
         car2D.rotation = carRotation;
         return carContainer;
      }
      
      protected function onFrame(param1:*) : void
      {
         var _loc2_:* = undefined;
         if(this.UI.lights_mc.currentFrame == this.UI.lights_mc.totalFrames)
         {
            this.hidePopup(this.UI.lights_mc);
            this.UI.lights_mc.gotoAndStop(1);
            this.startRace();
         }
         if(this.show3D)
         {
            this.updateBall(this.BALL,this.WOCARS.ball);
            _loc2_ = 0;
            while(_loc2_ < this.players.length)
            {
               if(this.WOCARS.players[_loc2_])
               {
                  this.updateCar(this.CARS[_loc2_],this.WOCARS.players[_loc2_]);
               }
               _loc2_++;
            }
            this.updateCamera();
            this.camera.render();
         }
         if(this.racing)
         {
            this.currentTime += (getTimer() - this.startTime) * this.TIMESPEED - this.currentTime;
            this.updateUI(this.currentCar2D,this.currentCar);
         }
      }
      
      protected function updateCamera(param1:* = true) : *
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         if(this.CAMERAEXT)
         {
            this.camera.farClipping = this.CAMERACLIPPING * 2;
            this.camera.x = this.CAMERAEXTx;
            this.camera.y = this.CAMERAEXTy;
            this.camera.z = this.CAMERAEXTz;
            this.camera.lookAt(this.currentCar.car.x,this.currentCar.car.y,this.currentCar.car.z);
         }
         else
         {
            this.camera.farClipping = this.CAMERACLIPPING;
            if(param1)
            {
               _loc2_ = (this.currentCar.car.x + this.cameraOffset * Math.cos(this.currentCar.car.rotationZ) - this.camera.x) * this.cameraDelay * 1.1;
               _loc3_ = (this.currentCar.car.y + this.cameraOffset * Math.sin(this.currentCar.car.rotationZ) - this.camera.y) * this.cameraDelay * 1.1;
               _loc4_ = (this.currentCar.car.z + this.cameraHeight - this.camera.z) * this.cameraDelay * 1;
               this.cameraAtX += (this.currentCar.car.x - this.cameraAtX) * this.cameraDelay;
               this.cameraAtY += (this.currentCar.car.y - this.cameraAtY) * this.cameraDelay;
               this.cameraAtZ += (this.currentCar.car.z + this.cameraHeight / 2 - this.cameraAtZ) * this.cameraDelay;
            }
            else
            {
               _loc2_ = this.currentCar.car.x + this.cameraOffset * Math.cos(this.currentCar.car.rotationZ) - this.camera.x;
               _loc3_ = this.currentCar.car.y + this.cameraOffset * Math.sin(this.currentCar.car.rotationZ) - this.camera.y;
               _loc4_ = this.currentCar.car.z + this.cameraHeight - this.camera.z;
               this.cameraAtX += this.currentCar.car.x - this.cameraAtX;
               this.cameraAtY += this.currentCar.car.y - this.cameraAtY;
               this.cameraAtZ += this.currentCar.car.z + this.cameraHeight / 2 - this.cameraAtZ;
            }
            this.camera.x += _loc2_;
            this.camera.y += _loc3_;
            this.camera.z += _loc4_;
            if(this.camera.x < this.WOCARS.border.x)
            {
               this.camera.x = this.WOCARS.border.x;
            }
            if(this.camera.x > this.WOCARS.border.x + this.WOCARS.border.width)
            {
               this.camera.x = this.WOCARS.border.x + this.WOCARS.border.width;
            }
            if(this.camera.y < this.WOCARS.border.y)
            {
               this.camera.y = this.WOCARS.border.y;
            }
            if(this.camera.y > this.WOCARS.border.y + this.WOCARS.border.height)
            {
               this.camera.y = this.WOCARS.border.y + this.WOCARS.border.height;
            }
            this.camera.lookAt(this.cameraAtX,this.cameraAtY,this.cameraAtZ);
         }
      }
      
      private function updateBall(param1:*, param2:*) : *
      {
         param1.x = param2.x;
         param1.y = -param2.y;
         param1.z = this.BALLRADIUS * this.SCALEFACTOR;
         var _loc3_:* = param2.b2body.GetLinearVelocity().angle();
         var _loc4_:* = param2.b2body.GetLinearVelocity().length();
         var _loc5_:Matrix3D = param1.matrix;
         _loc5_.appendRotation(Math.sin(_loc3_) * _loc4_ / 40 * (2 * this.BALLRADIUS * this.SCALEFACTOR * Math.PI / 1),Vector3D.X_AXIS,new Vector3D(param1.x,param1.y,param1.z));
         _loc5_.appendRotation(Math.cos(_loc3_) * _loc4_ / 40 * (2 * this.BALLRADIUS * this.SCALEFACTOR * Math.PI / 1),Vector3D.Y_AXIS,new Vector3D(param1.x,param1.y,param1.z));
         param1.matrix = _loc5_;
         this.BALLSHADOW.x = param1.x;
         this.BALLSHADOW.y = param1.y;
      }
      
      protected function updateCar(param1:*, param2:*) : *
      {
         param1.car.x = param2.x;
         param1.car.y = -param2.y;
         param1.car.rotationZ = -param2.rotation * toRAD;
         var _loc3_:* = -param2.carSpeedSide / 20;
         if(_loc3_ > 0.1)
         {
            _loc3_ = 0.1;
         }
         if(_loc3_ < -0.1)
         {
            _loc3_ = -0.1;
         }
         var _loc4_:* = param1.car.getChildByName("carBody1");
         var _loc5_:* = param2.carSpeed / Math.PI;
         var _loc6_:* = param2.carSteer / 3;
         if(_loc5_ < 0)
         {
            _loc6_ = -_loc6_;
         }
         var _loc7_:* = param1.car.getChildByName("FLWheel");
         _loc7_.rotationY += _loc5_ / 40 * (2 * param1.WHEELRADIUS * this.SCALEFACTOR);
         if(param2.wheels)
         {
            _loc7_.rotationZ = -(param2.frontWheelLeft.rotation - param2.rotation) * toRAD;
         }
         else
         {
            _loc7_.rotationZ = -_loc6_;
         }
         _loc7_ = param1.car.getChildByName("FRWheel");
         _loc7_.rotationY += _loc5_ / 40 * (2 * param1.WHEELRADIUS * this.SCALEFACTOR);
         if(param2.wheels)
         {
            _loc7_.rotationZ = -(param2.frontWheelRight.rotation - param2.rotation) * toRAD;
         }
         else
         {
            _loc7_.rotationZ = -_loc6_;
         }
         _loc7_ = param1.car.getChildByName("RLWheel");
         _loc7_.rotationY += _loc5_ / 40 * (2 * param1.WHEELRADIUS * this.SCALEFACTOR);
         _loc7_.rotationZ = 0;
         _loc7_ = param1.car.getChildByName("RRWheel");
         _loc7_.rotationY += _loc5_ / 40 * (2 * param1.WHEELRADIUS * this.SCALEFACTOR);
         _loc7_.rotationZ = 0;
         var _loc8_:* = Vector3D.distance(param1.car.matrix.position,this.camera.matrix.position);
         var _loc9_:* = Math.atan((param1.car.y - this.camera.y) / (param1.car.x - this.camera.x));
         var _loc10_:* = this.camera.clone();
         _loc10_.lookAt(param1.car.x,param1.car.y,param1.car.z);
         var _loc11_:* = (_loc10_.rotationZ - this.camera.rotationZ) * toDEG;
         param2.masterVolume = this.masterVolume;
         this.applyVolume(param2,_loc8_ / 1000,_loc11_);
      }
      
      private function clearUI() : *
      {
         with(this.UI)
         {
            stopwatchLastLap.min.text = "00";
            stopwatchLastLap.sec.text = "00";
            laps_label.text = 0;
            pos_label.text = 0;
         }
      }
      
      private function updateUI(param1:*, param2:*) : *
      {
         var timestring:String = null;
         var car2D:* = param1;
         var CAR:* = param2;
         if(this.WOCARS.inGoal > 0)
         {
            if(this.WOCARS.inGoal == 2)
            {
               ++this.homeScore;
            }
            else if(this.WOCARS.inGoal == 1)
            {
               ++this.guestScore;
            }
            this.startFromGoal();
         }
         with(this.UI)
         {
            if(formatTime(currentTime) != "")
            {
               stopwatchLastLap.min.text = formatTime(currentTime).substr(0,2);
               stopwatchLastLap.sec.text = formatTime(currentTime).substr(3,2);
               stopwatchLastLap.visible = true;
            }
            else
            {
               stopwatchLastLap.visible = false;
            }
            laps_label.text = homeScore;
            pos_label.text = guestScore;
         }
         if(this.currentTime >= this.halfTime)
         {
            this.currentTime = this.halfTime;
            this.endHalfTime();
         }
      }
      
      private function startFromGoal() : *
      {
         this.racing = false;
         var _loc1_:Sound = new ref_whistle();
         this.soundfx = _loc1_.play();
         this.goalAnim_mc.gotoAndPlay(2);
         this.pauseTime = getTimer();
         var _loc2_:Sound = new goal3a_short();
         _loc2_.play();
         this.goalAnim_mc.addEventListener(Event.ENTER_FRAME,this.onGoalAnim);
      }
      
      private function onGoalAnim(param1:*) : *
      {
         if(this.goalAnim_mc.currentFrame >= this.goalAnim_mc.totalFrames)
         {
            this.onGoal(param1);
         }
      }
      
      private function onTimer(param1:TimerEvent) : *
      {
         this.masterVolume = 1 - param1.currentTarget.currentCount / 10;
      }
      
      private function onGoal(param1:*) : *
      {
         this.goalAnim_mc.removeEventListener(Event.ENTER_FRAME,this.onGoalAnim);
         this.startTime += getTimer() - this.pauseTime;
         this.resetGame();
         this.onStartGameContinue(param1);
      }
      
      private function endHalfTime() : *
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:Sound = null;
         this.racing = false;
         var _loc1_:Sound = new ref_whistle();
         this.soundfx = _loc1_.play();
         _loc2_ = this.teams[this.currentCup[0].team].teamcolor;
         _loc3_ = this.teams[this.currentCup[1].team].teamcolor;
         if(_loc2_ == _loc3_)
         {
            _loc3_ = this.teams[this.currentCup[1].team].altcolor;
         }
         this.initTeamLook(this.halftime_mc,0,_loc2_,true);
         this.initTeamLook(this.halftime_mc,1,_loc3_,false);
         this.halftime_mc.homeScore.text = this.homeScore;
         this.halftime_mc.guestScore.text = this.guestScore;
         this.halftime_mc.retry_btn.visible = false;
         this.halftime_mc.back_menu_btn.visible = false;
         this.halftime_mc.start_btn.visible = true;
         if(this.period < 1)
         {
            this.halftime_mc.title_label.text = "HALF TIME";
            this.onEndHalfTime(new Event(Event.ENTER_FRAME));
         }
         else if(this.homeScore < this.guestScore)
         {
            this.halftime_mc.title_label.text = "YOU LOST";
            _loc4_ = new crowd_sad_miss();
            this.halftime_mc.retry_btn.visible = true;
            this.halftime_mc.back_menu_btn.visible = true;
            this.halftime_mc.start_btn.visible = false;
            _loc4_.play();
            this.lostAnim_mc.gotoAndPlay(2);
            this.lostAnim_mc.addEventListener(Event.ENTER_FRAME,this.onWonLostAnim);
         }
         else if(this.homeScore > this.guestScore)
         {
            this.halftime_mc.title_label.text = "VICTORY";
            _loc4_ = new goal3a();
            this.totalHomeScore += this.homeScore;
            this.totalGuestScore += this.guestScore;
            trace("Total Home Score: " + this.totalHomeScore);
            trace("Total Guest Score: " + this.totalGuestScore);
            _loc4_.play();
            this.wonAnim_mc.gotoAndPlay(2);
            this.wonAnim_mc.addEventListener(Event.ENTER_FRAME,this.onWonLostAnim);
         }
         else
         {
            this.halftime_mc.title_label.text = "EXTRA TIME";
            this.onEndHalfTime(new Event(Event.ENTER_FRAME));
         }
      }
      
      private function onWonLostAnim(param1:*) : *
      {
         var _loc2_:MovieClip = param1.target;
         if(_loc2_.currentFrame >= _loc2_.totalFrames)
         {
            _loc2_.addEventListener(Event.ENTER_FRAME,this.onWonLostAnim);
            this.onEndHalfTime(param1);
         }
      }
      
      private function onEndHalfTime(param1:*) : *
      {
         this.resetGame();
         this.showPopup(this.halftime_mc,true);
      }
      
      private function finishHalfTime(param1:*) : *
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         this.hidePopup(this.halftime_mc,true);
         ++this.period;
         if(this.period > 1 && this.homeScore > this.guestScore)
         {
            _loc2_ = this.currentCup;
            _loc3_ = this.round;
            ++this.round;
            if(this.round < 4)
            {
               switch(this.round)
               {
                  case 1:
                     this.currentCup = this.cup8;
                     this.currentPool = this.pool8;
                     break;
                  case 2:
                     this.currentCup = this.cup4;
                     this.currentPool = this.pool4;
                     break;
                  case 3:
                     this.currentCup = this.cup2;
                     this.currentPool = this.pool2;
               }
               this.finishOthers(_loc2_,this.currentPool,_loc3_);
               this.resetGame();
               this.onNextRound();
               return;
            }
            this.resetGame();
            this.endGame(2);
            return;
         }
         if(this.period > 1 && this.homeScore < this.guestScore)
         {
            this.resetAll();
            this.restartGame();
            return;
         }
         this.resetGame();
         this.onStartGame(new MouseEvent(MouseEvent.CLICK));
      }
      
      private function finishOthers(param1:*, param2:*, param3:*) : *
      {
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = 0;
         while(_loc6_ < param1.length)
         {
            if(_loc6_ > 1)
            {
               _loc4_ = int(Math.random() * 5);
               _loc5_ = int(Math.random() * 5);
               while(_loc4_ == _loc5_)
               {
                  _loc5_ = int(Math.random() * 5);
               }
            }
            else
            {
               _loc4_ = this.homeScore;
               _loc5_ = this.guestScore;
            }
            param1[_loc6_].res = _loc4_;
            param1[_loc6_ + 1].res = _loc5_;
            this.cupchart_mc["team" + param3 + "_" + _loc6_].label.text = param1[_loc6_].res;
            this.cupchart_mc["team" + param3 + "_" + (_loc6_ + 1)].label.text = param1[_loc6_ + 1].res;
            if(_loc5_ > _loc4_)
            {
               param2.push(param1[_loc6_ + 1].team);
            }
            else
            {
               param2.push(param1[_loc6_].team);
            }
            _loc6_ += 2;
         }
      }
      
      private function endGame(param1:*) : *
      {
         var _loc6_:int = 0;
         this.final_mc.gotoAndStop(param1);
         this.final_mc.team0.label.text = "";
         this.final_mc.team0.gotoAndStop(this.currentCup[0].team + 1 + 1);
         this.final_mc.team0_label.text = this.teams[this.currentCup[0].team].country;
         var _loc2_:MovieClip = this.final_mc.hummer0.boja;
         var _loc3_:ColorTransform = _loc2_.transform.colorTransform;
         _loc3_.color = this.teams[this.currentCup[0].team].teamcolor;
         this.final_mc.hummer0.boja.transform.colorTransform = _loc3_;
         var _loc4_:MovieClip = this.final_mc.hummer0.hummer_mask;
         _loc2_.cacheAsBitmap = true;
         _loc4_.cacheAsBitmap = true;
         _loc2_.mask = _loc4_;
         _loc2_.blendMode = BlendMode.OVERLAY;
         if(this.final_mc.currentFrame == 2)
         {
            _loc6_ = this.totalHomeScore - this.totalGuestScore;
            this.final_mc.finalscores.text = "HOME GOALS: " + this.totalHomeScore + "\n" + "GUEST GOALS: " + this.totalGuestScore + "\n" + "TOTAL SCORE:" + _loc6_;
            FogAPI.LibraryCall("ScoresUpdate",{"score":_loc6_});
         }
         var _loc5_:Sound = new goal3a();
         _loc5_.play();
         this.showPopup(this.final_mc,true);
      }
      
      private function initGroundplane(param1:*) : *
      {
         var _loc3_:* = undefined;
         var _loc4_:Plane = null;
         var _loc5_:Class = null;
         var _loc6_:BitmapData = null;
         var _loc7_:* = undefined;
         this.WOCARS.bckgrnd.visible = false;
         var _loc2_:int = 0;
         while(_loc2_ < this.WOCARS.bckgrnd.numChildren)
         {
            _loc3_ = this.WOCARS.bckgrnd.getChildAt(_loc2_);
            _loc4_ = new Plane(_loc3_.width,_loc3_.height);
            _loc4_.z = 0;
            _loc4_.x = this.WOCARS.bckgrnd.x + _loc3_.x;
            _loc4_.y = -this.WOCARS.bckgrnd.y - _loc3_.y;
            _loc4_.scaleX = _loc3_.scaleX;
            _loc4_.scaleY = _loc3_.scaleY;
            _loc4_.rotationZ = -_loc3_.rotation * toRAD;
            _loc5_ = getDefinitionByName(_loc3_.name) as Class;
            _loc6_ = new _loc5_();
            _loc7_ = new TextureMaterial(_loc6_);
            _loc4_.setMaterialToAllFaces(_loc7_);
            param1.addChild(_loc4_);
            _loc2_++;
         }
      }
      
      private function initFence(param1:*, param2:*, param3:*) : *
      {
         var _loc10_:* = undefined;
         var _loc11_:* = undefined;
         var _loc12_:* = undefined;
         var _loc13_:* = undefined;
         var _loc14_:* = undefined;
         var _loc15_:* = undefined;
         var _loc4_:Array = new Array();
         var _loc5_:MovieClip = this.WOCARS;
         var _loc6_:* = 0;
         while(_loc6_ < _loc5_.numChildren)
         {
            _loc10_ = _loc5_.getChildAt(_loc6_);
            if(_loc10_.name == param2)
            {
               _loc4_.push(_loc10_);
            }
            _loc6_++;
         }
         var _loc7_:TextureMaterial = new TextureMaterial(new fence1());
         var _loc8_:* = 4;
         var _loc9_:* = 0;
         while(_loc9_ < _loc4_.length)
         {
            _loc11_ = _loc4_[_loc9_ + 1];
            if(_loc9_ == _loc4_.length - 1)
            {
               _loc11_ = _loc4_[0];
            }
            _loc12_ = this.dist(_loc4_[_loc9_],_loc11_) / _loc8_ * 1;
            _loc13_ = new Plane(_loc12_,this.FENCEHEIGHT);
            _loc13_.setMaterialToAllFaces(_loc7_);
            _loc13_.z = this.FENCEHEIGHT / 2;
            _loc13_.rotationX = 90 * toRAD;
            _loc13_.rotationZ = -Math.atan2(_loc4_[_loc9_].y - _loc11_.y,_loc4_[_loc9_].x - _loc11_.x);
            _loc14_ = 0;
            while(_loc14_ < _loc8_)
            {
               _loc15_ = _loc13_.clone();
               _loc15_.x = _loc4_[_loc9_].x * (_loc14_ * (1 / _loc8_) + 1 / _loc8_ / 2) + _loc11_.x * (1 - (_loc14_ * (1 / _loc8_) + 1 / _loc8_ / 2));
               _loc15_.y = -(_loc4_[_loc9_].y * (_loc14_ * (1 / _loc8_) + 1 / _loc8_ / 2) + _loc11_.y * (1 - (_loc14_ * (1 / _loc8_) + 1 / _loc8_ / 2)));
               param1.addChild(_loc15_);
               _loc14_++;
            }
            _loc9_++;
         }
      }
      
      private function initBushes(param1:*, param2:*, param3:*) : *
      {
         var _loc7_:* = undefined;
         var _loc8_:Plane = null;
         var _loc9_:* = undefined;
         var _loc10_:* = undefined;
         var _loc4_:MovieClip = this.WOCARS;
         var _loc5_:TextureMaterial = new TextureMaterial(new param3());
         var _loc6_:* = 0;
         while(_loc6_ < _loc4_.numChildren)
         {
            _loc7_ = _loc4_.getChildAt(_loc6_);
            if(_loc7_.name == param2)
            {
               _loc7_.visible = false;
               _loc9_ = _loc7_.rotation;
               _loc7_.rotation = 0;
               _loc8_ = new Plane(_loc7_.width,_loc7_.height);
               _loc8_.setMaterialToAllFaces(_loc5_);
               _loc8_.x = _loc7_.x;
               _loc8_.y = -_loc7_.y;
               _loc8_.z = _loc7_.height / 2;
               _loc8_.rotationX = 90 * toRAD;
               _loc7_.rotation = _loc9_;
               param1.addChild(_loc8_);
               _loc10_ = _loc8_.clone();
               _loc10_.rotationZ = 90 * toRAD;
               _loc10_.x += 1;
               param1.addChild(_loc10_);
            }
            _loc6_++;
         }
      }
      
      private function initCrowd(param1:*, param2:*, param3:*) : *
      {
         var _loc7_:* = undefined;
         var _loc8_:Plane = null;
         var _loc9_:* = undefined;
         var _loc4_:MovieClip = this.WOCARS;
         var _loc5_:TextureMaterial = new TextureMaterial(new param3());
         var _loc6_:* = 0;
         while(_loc6_ < _loc4_.numChildren)
         {
            _loc7_ = _loc4_.getChildAt(_loc6_);
            if(_loc7_.name == param2)
            {
               _loc7_.visible = false;
               _loc9_ = _loc7_.rotation;
               _loc7_.rotation = 0;
               _loc8_ = new Plane(_loc7_.width,_loc7_.height);
               _loc8_.setMaterialToAllFaces(_loc5_);
               _loc8_.x = _loc7_.x;
               _loc8_.y = -_loc7_.y;
               _loc8_.z = _loc7_.height / 2;
               _loc8_.rotationX = 60 * toRAD;
               _loc7_.rotation = _loc9_;
               _loc8_.rotationZ = -_loc7_.rotation * toRAD;
               param1.addChild(_loc8_);
            }
            _loc6_++;
         }
      }
      
      private function initFlags(param1:*, param2:*, param3:*, param4:*) : *
      {
         var maska:MovieClip;
         var combinedTexture:MovieClip;
         var texture:BitmapData;
         var material:*;
         var world:MovieClip;
         var ii:*;
         var o:* = undefined;
         var shape:Plane = null;
         var r:* = undefined;
         var obj:* = param1;
         var label:* = param2;
         var tekst:* = param3;
         var clr:* = param4;
         var boja:MovieClip = new MovieClip();
         var w:* = 256;
         var h:* = 512;
         with(boja.graphics)
         {
            clear();
            lineStyle(1,0,0);
            beginFill(clr,0.5);
            drawRect(0,0,w,h);
            endFill();
         }
         maska = new flagtexturemask();
         boja.cacheAsBitmap = true;
         maska.cacheAsBitmap = true;
         combinedTexture = new MovieClip();
         combinedTexture.addChild(maska);
         combinedTexture.addChild(boja);
         boja.mask = maska;
         texture = new BitmapData(w,h,true,0);
         texture.draw(new tekst());
         texture.draw(combinedTexture,null,null,BlendMode.OVERLAY,null,true);
         material = new TextureMaterial(texture);
         world = this.WOCARS;
         ii = 0;
         while(ii < world.numChildren)
         {
            o = world.getChildAt(ii);
            if(o.name == label)
            {
               o.visible = false;
               r = o.rotation;
               o.rotation = 0;
               shape = new Plane(o.width,o.height);
               shape.setMaterialToAllFaces(material);
               shape.x = o.x;
               shape.y = -o.y;
               shape.z = o.height / 2;
               shape.rotationX = 90 * toRAD;
               o.rotation = r;
               shape.rotationZ = -o.rotation * toRAD;
               obj.addChild(shape);
            }
            ii++;
         }
      }
      
      private function initObjects(param1:*, param2:*, param3:*) : *
      {
         var _loc6_:* = undefined;
         var _loc7_:Plane = null;
         var _loc8_:Class = null;
         var _loc9_:BitmapData = null;
         var _loc10_:TextureMaterial = null;
         var _loc11_:* = undefined;
         var _loc4_:MovieClip = this.WOCARS;
         var _loc5_:* = 0;
         while(_loc5_ < _loc4_.numChildren)
         {
            _loc6_ = _loc4_.getChildAt(_loc5_);
            if(_loc6_.name == param2)
            {
               _loc6_.visible = false;
               _loc8_ = getDefinitionByName(_loc6_.name) as Class;
               _loc9_ = new _loc8_();
               _loc10_ = new TextureMaterial(_loc9_);
               _loc11_ = _loc6_.rotation;
               _loc6_.rotation = 0;
               _loc7_ = new Plane(_loc6_.width,_loc6_.height);
               _loc7_.setMaterialToAllFaces(_loc10_);
               _loc7_.x = _loc6_.x;
               _loc7_.y = -_loc6_.y;
               _loc7_.z = _loc6_.height / 2 + param3;
               _loc7_.rotationX = 90 * toRAD;
               _loc6_.rotation = _loc11_;
               _loc7_.rotationZ = -_loc6_.rotation * toRAD;
               param1.addChild(_loc7_);
            }
            _loc5_++;
         }
      }
      
      private function initBanners(param1:*, param2:*) : *
      {
         var _loc5_:* = undefined;
         var _loc6_:Plane = null;
         var _loc7_:Class = null;
         var _loc8_:BitmapData = null;
         var _loc9_:TextureMaterial = null;
         var _loc10_:* = undefined;
         var _loc3_:MovieClip = this.WOCARS;
         var _loc4_:* = 0;
         while(_loc4_ < _loc3_.numChildren)
         {
            _loc5_ = _loc3_.getChildAt(_loc4_);
            if(_loc5_.name.substr(0,param2.length) == param2)
            {
               _loc5_.visible = false;
               _loc7_ = getDefinitionByName(_loc5_.name) as Class;
               _loc8_ = new _loc7_();
               _loc9_ = new TextureMaterial(_loc8_);
               _loc10_ = _loc5_.rotation;
               _loc5_.rotation = 0;
               _loc6_ = new Plane(_loc5_.width,_loc5_.height);
               _loc6_.setMaterialToAllFaces(_loc9_);
               _loc6_.x = _loc5_.x;
               _loc6_.y = -_loc5_.y;
               _loc6_.z = this.BANNERY;
               _loc6_.rotationX = 90 * toRAD;
               _loc5_.rotation = _loc10_;
               _loc6_.rotationZ = -_loc5_.rotation * toRAD;
               param1.addChild(_loc6_);
            }
            _loc4_++;
         }
      }
      
      private function initGos(param1:*, param2:*) : *
      {
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         var _loc3_:MovieClip = this.WOCARS;
         var _loc4_:* = this.initModel(new this.GoModel());
         var _loc5_:* = new TextureMaterial(new netTexture());
         _loc4_.setMaterialToAllFaces(_loc5_);
         _loc4_.scaleX = _loc4_.scaleY = _loc4_.scaleZ = this.SCALEFACTOR;
         var _loc6_:* = 0;
         while(_loc6_ < _loc3_.numChildren)
         {
            _loc7_ = _loc3_.getChildAt(_loc6_);
            if(_loc7_.name.substr(0,param2.length) == param2)
            {
               _loc8_ = _loc7_.rotation;
               _loc7_.rotation = 0;
               _loc9_ = _loc4_.clone();
               _loc9_.x = _loc7_.x;
               _loc9_.y = -_loc7_.y;
               _loc9_.scaleX = _loc7_.scaleX * this.SCALEFACTOR;
               _loc9_.scaleY = _loc7_.scaleY * this.SCALEFACTOR;
               _loc9_.scaleZ = _loc7_.scaleY * this.SCALEFACTOR;
               _loc7_.rotation = _loc8_;
               _loc9_.rotationZ = -_loc7_.rotation * toRAD;
               param1.addChild(_loc9_);
            }
            _loc6_++;
         }
      }
      
      private function dist(param1:*, param2:*) : Number
      {
         return Math.sqrt((param1.x - param2.x) * (param1.x - param2.x) + (param1.y - param2.y) * (param1.y - param2.y));
      }
      
      private function dist3D(param1:*, param2:*) : Number
      {
         return Math.sqrt((param1.x - param2.x) * (param1.x - param2.x) + (param1.y - param2.y) * (param1.y - param2.y) + (param1.z - param2.z) * (param1.z - param2.z));
      }
      
      private function onMuteSound(param1:*) : *
      {
         var _loc2_:SoundTransform = null;
         if(!this.muted)
         {
            _loc2_ = SoundMixer.soundTransform;
            _loc2_.volume = 0;
            SoundMixer.soundTransform = _loc2_;
            this.muted = true;
            this.UI.mute_btn.gotoAndStop(2 - _loc2_.volume);
         }
         else
         {
            _loc2_ = SoundMixer.soundTransform;
            _loc2_.volume = 1;
            SoundMixer.soundTransform = _loc2_;
            this.muted = false;
            this.UI.mute_btn.gotoAndStop(2 - _loc2_.volume);
         }
      }
      
      private function applyVolume(param1:*, param2:*, param3:*) : *
      {
         var transform1:SoundTransform = null;
         var vol:* = undefined;
         var pan:* = undefined;
         var transform2:SoundTransform = null;
         var transform3:SoundTransform = null;
         var obj:* = param1;
         var param:* = param2;
         var angle:* = param3;
         if(param > 1)
         {
            param = 1;
         }
         try
         {
            transform1 = obj.soundfx.soundTransform;
            vol = 1 - Math.sqrt(param);
            pan = -Math.sin(angle * toRAD);
            transform1.volume = vol;
            transform1.pan = pan;
            if(obj.skidfx)
            {
               transform2 = obj.skidfx.soundTransform;
               transform2.volume = vol;
               transform2.pan = pan;
               obj.skidfx.soundTransform = transform2;
            }
            if(obj.crashfx)
            {
               transform3 = obj.crashfx.soundTransform;
               transform3.volume = vol;
               transform3.pan = pan;
               obj.crashfx.soundTransform = transform3;
            }
            obj.setSound(vol,pan);
         }
         catch(e:*)
         {
            trace(e);
         }
      }
      
      private function onkeyDown(param1:*) : *
      {
         var _loc3_:* = undefined;
         var _loc2_:* = param1.keyCode;
         if(this.racing)
         {
            if(this.DEBUG)
            {
               if(_loc2_ >= Keyboard.NUMBER_1 && _loc2_ <= Keyboard.NUMBER_9)
               {
                  _loc3_ = _loc2_ - Keyboard.NUMBER_1;
                  if(this.CARS[_loc3_])
                  {
                     this.currentCar = this.CARS[_loc3_];
                     this.currentCar2D = this.WOCARS.players[_loc3_];
                     if(this.show3D)
                     {
                        this.updateCamera(false);
                     }
                  }
               }
            }
            if(_loc2_ == Keyboard.P || _loc2_ == Keyboard.ESCAPE)
            {
               if(!this.PAUSE)
               {
                  this.pauseGame(true);
               }
               else
               {
                  this.pauseGame(false);
               }
            }
            if(_loc2_ == Keyboard.C)
            {
               this.CAMERAEXT = !this.CAMERAEXT;
            }
            if(_loc2_ == Keyboard.A)
            {
               if(this.currentCar2D.Player == "Player2")
               {
                  this.currentCar2D.Player = "Computer";
                  this.currentCar2D.up = true;
               }
               else
               {
                  this.currentCar2D.Player = "Player2";
               }
            }
         }
         if(_loc2_ == Keyboard.ESCAPE && !this.racing)
         {
            SoundMixer.stopAll();
            this.resetGame();
            this.restartGame();
         }
      }
      
      private function onPause(param1:*) : *
      {
         if(!this.PAUSE)
         {
            this.pauseGame(true);
         }
         else
         {
            this.pauseGame(false);
         }
      }
      
      private function showPopup(param1:*, param2:* = false) : *
      {
         param1.visible = true;
         if(param2)
         {
            this.tweens.push(new Tween(param1,"alpha",Regular.easeInOut,0,1,this.transitionSpeed,true));
         }
         else
         {
            param1.alpha = 1;
         }
      }
      
      private function hidePopup(param1:*, param2:* = false) : *
      {
         var _loc3_:* = undefined;
         if(param2)
         {
            this.tweens.push(_loc3_ = new Tween(param1,"alpha",Regular.easeInOut,param1.alpha,0,this.transitionSpeed,true));
            _loc3_.addEventListener(TweenEvent.MOTION_FINISH,this.onMotionFinish);
         }
         else
         {
            param1.visible = false;
            param1.alpha = 1;
         }
      }
      
      private function onMotionFinish(param1:*) : *
      {
         param1.target.obj.visible = false;
      }
      
      private function pauseGame(param1:*) : *
      {
         if(param1)
         {
            this.pauseTime = getTimer();
            this.showPopup(this.pause_mc);
            this.PAUSE = true;
            this.WOCARS.pauseGame(param1);
            stage.removeEventListener(Event.ENTER_FRAME,this.onFrame);
            this.pause_mc.btn1.addEventListener(MouseEvent.CLICK,this.onBtn1);
            this.pause_mc.btn2.addEventListener(MouseEvent.CLICK,this.onBtn2);
            this.pause_mc.btn3.addEventListener(MouseEvent.CLICK,this.onBtn3);
            this.pause_mc.pmg.addEventListener(MouseEvent.CLICK,this.onGotoFog);
         }
         else
         {
            this.startTime += getTimer() - this.pauseTime;
            this.hidePopup(this.pause_mc);
            this.PAUSE = false;
            this.WOCARS.pauseGame(param1);
            stage.addEventListener(Event.ENTER_FRAME,this.onFrame);
            this.pause_mc.btn1.removeEventListener(MouseEvent.CLICK,this.onBtn1);
            this.pause_mc.btn2.removeEventListener(MouseEvent.CLICK,this.onBtn2);
            this.pause_mc.btn3.removeEventListener(MouseEvent.CLICK,this.onBtn3);
            this.pause_mc.pmg.removeEventListener(MouseEvent.CLICK,this.onGotoFog);
         }
      }
      
      private function onBtn1(param1:*) : *
      {
         this.resetAll();
         this.resetGame();
         this.restartGame();
      }
      
      private function onBtn2(param1:*) : *
      {
         this.pauseGame(false);
      }
      
      private function onBtn3(param1:*) : *
      {
         this.period = 0;
         this.homeScore = this.guestScore = 0;
         this.resetGame();
         this.onStartGame(param1);
      }
      
      private function formatTime(param1:*) : String
      {
         var _loc2_:String = null;
         var _loc3_:Date = null;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         if(param1 > 0)
         {
            _loc3_ = new Date(param1);
            _loc4_ = this.doubleDigitFormat(_loc3_.getMilliseconds()).substr(0,2);
            _loc5_ = this.doubleDigitFormat(_loc3_.getSeconds());
            _loc6_ = this.doubleDigitFormat(_loc3_.getMinutes());
            _loc2_ = _loc6_ + ":" + _loc5_ + ":" + _loc4_;
         }
         else
         {
            _loc4_ = "00";
            _loc5_ = "00";
            _loc6_ = "00";
            _loc2_ = "";
         }
         return _loc2_;
      }
      
      private function doubleDigitFormat(param1:uint) : String
      {
         if(param1 < 10)
         {
            return "0" + param1;
         }
         return String(param1);
      }
      
      internal function frame1() : *
      {
         stop();
         race.FogAPI = new FogDevAPI({
            "id":"4fdb1ec2bc186",
            "root":root
         });
         race.FogAPI.Preloader.SetBackground(this.preBG);
         race.FogAPI.Preloader.Start();
      }
      
      internal function frame4() : *
      {
         stop();
         this.Start();
      }
   }
}

