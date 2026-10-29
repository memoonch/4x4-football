package
{
   import Box2DAS.*;
   import Box2DAS.Collision.*;
   import Box2DAS.Collision.Shapes.*;
   import Box2DAS.Common.*;
   import Box2DAS.Dynamics.*;
   import Box2DAS.Dynamics.Contacts.*;
   import Box2DAS.Dynamics.Joints.*;
   import cmodule.Box2D.*;
   import fl.transitions.Tween;
   import fl.transitions.TweenEvent;
   import fl.transitions.easing.*;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.*;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.media.SoundMixer;
   import alternativa.engine3d.materials.TextureMaterial;
   import flash.text.*;
   import flash.utils.*;
   import misc.*;
   import shapes.*;
   import wck.*;
   
   public class BoxCar extends BodyShape
   {
      
      protected static const toRAD:Number = Math.PI / 180;
      
      protected static const toDEG:Number = 180 / Math.PI;
      
      public var rear:Circle;
      
      public var middle:Box;
      
      public var colorOverlay:MovieClip;
      
      public var front:Circle;
      
      public var difficulty:*;
      
      public var NAME:String;
      
      public var PATH:Array;
      
      public var prediction:* = 1;
      
      public var SPEED:Number = 220;
      
      public var VELMAX:Number = 30;
      
      public var STEER:Number = 0.9599310885968813;
      
      public var STEERSPEED:Number = 0.66;
      
      public var STEERSPEEDMIN:Number = 0.66;
      
      public var STEERSPEEDMAX:Number = 2.16;
      
      public var ANGVEL:Number = 2.3;
      
      public var SKID:Number = 5;
      
      public var SKIDFRICTION:Number = 0.6;
      
      public var ANGVELMAX:* = 10;
      
      public var DRIFTDELAY:* = 50;
      
      public var chaseObject:*;
      
      public var goalObject:*;
      
      public var team:*;
      
      public var border:*;
      
      private var _player:String;
      
      private var ACCEL:Number = 1;
      
      private var speed:Number;
      
      private var steer:Number;
      
      private var skidding:Boolean;
      
      private var drift_transp:Number;
      
      private var pathIndex:Number;
      
      public var racing:Boolean;
      
      public var contacts:ContactList;
      
      private var contactTime:Number = 0;
      
      private var contactTimeLimit:Number = 2;
      
      public var left:*;
      
      public var right:*;
      
      public var up:*;
      
      public var down:*;
      
      public var handbrake:Boolean = false;
      
      private var motorsound:MP3Player;
      
      private var maxspeed_loop:Sound = new EngineLoop();
      
      private var motorFreqMin:* = 0.8;
      
      private var motorFreqMax:* = 2.8;
      
      private var skate_snd:Sound = new sd_skate();
      
      private var hit_snd:Sound = new crash();
      
      private var bump_snd:Sound = new ballBounce();
      
      public var soundfx:SoundChannel = new SoundChannel();
      
      public var skidfx:SoundChannel = new SoundChannel();
      
      public var crashfx:SoundChannel = new SoundChannel();
      
      private var crashfx_DURATION:* = 5;
      
      private var crashfx_sound_duration:* = this.crashfx_DURATION;
      
      private var soundVolume:* = 0;
      
      private var soundPan:* = 0;
      
      public var masterVolume:* = 0;
      
      private var skate_snd_playing:Boolean = false;
      
      public var totalTime:Number;
      
      public var subtotalTime:Number;
      
      public var lapTime:Number;
      
      public var bestLapTime:Number;
      
      public var currentTime:Number;
      
      public var currentLap:int;
      
      public var startTime:Number;
      
      public var pauseTime:Number;
      
      public var TIMESPEED:Number = 1;
      
      public var currentCP:int;
      
      private var lastCP:int;
      
      public var totalCP:int;
      
      public var currentCPwLap:Number;
      
      private var prevCPwLap:Number;
      
      private var stuck:*;
      
      private var stuckAccum:Number;
      
      private var reverse:Boolean;
      
      private var reverseCount:int;
      
      public var totalLaps:int;
      
      public var currentPosition:int;
      
      // AI only needs coordinates; retaining animated display markers leaked per step.
      private var chasePoint:Point = new Point();
      
      public var frontJointLeft:*;
      
      public var frontWheelLeft:*;
      
      public var rearWheelLeft:*;
      
      public var frontJointRight:*;
      
      public var frontWheelRight:*;
      
      public var rearWheelRight:*;
      
      public var wheels:Boolean = false;
      
      private static function menuText(parent:Sprite,text:String,x:Number,y:Number,size:Number,color:uint,width:Number):TextField
      {
         var field:TextField=new TextField();
         var format:TextFormat=new TextFormat("Impact",size,color,true);
         format.letterSpacing=0.5;field.defaultTextFormat=format;field.embedFonts=true;
         field.text=text;field.x=x;field.y=y;field.width=width;field.height=size*1.5+6;
         field.antiAliasType=AntiAliasType.ADVANCED;field.gridFitType=GridFitType.PIXEL;
         field.selectable=false;field.mouseEnabled=false;parent.addChild(field);return field;
      }

      private static function menuButtonState(label:String,width:Number,height:Number,primary:Boolean,hover:Boolean,pressed:Boolean):Sprite
      {
         var state:Sprite=new Sprite();var g:Graphics=state.graphics;
         // Layered vector plates stay sharp at the displayed player resolution.
         g.beginFill(0x070b0d,0.8);
         g.moveTo(15,4);g.lineTo(width+5,4);g.lineTo(width-12,height+5);g.lineTo(-4,height+5);g.lineTo(15,4);g.endFill();
         var matrix:Matrix=new Matrix();matrix.createGradientBox(width,height,Math.PI/2);
         g.lineStyle(2,primary?(hover?0xffe0a0:0xffbc55):(hover?0xc4ed57:0x75817e));
         g.beginGradientFill(GradientType.LINEAR,primary?[pressed?0xd65200:(hover?0xffb129:0xff9714),pressed?0xbc3900:0xef5000]:[pressed?0x17201e:(hover?0x38483f:0x293431),0x11191b],[1,1],[0,255],matrix);
         g.moveTo(17,1);g.lineTo(width-2,1);g.lineTo(width-17,height-1);g.lineTo(1,height-1);g.lineTo(17,1);g.endFill();
         g.lineStyle(1,0xffffff,hover?0.5:0.25);g.moveTo(21,5);g.lineTo(width-9,5);
         g.lineStyle(1,0x000000,0.3);g.moveTo(5,height-5);g.lineTo(width-20,height-5);
         if(!primary){g.lineStyle();g.beginFill(0xa8d934);g.moveTo(width-10,2);g.lineTo(width-3,2);g.lineTo(width-18,height-2);g.lineTo(width-25,height-2);g.endFill();}
         var labelField:TextField=new TextField();
         var format:TextFormat=new TextFormat("Impact",primary?31:19,0xffffff,true);
         format.align="center";format.letterSpacing=primary?0.8:0.5;
         labelField.defaultTextFormat=format;labelField.embedFonts=true;
         labelField.text=primary?label:(label.length>0?"PLAY MORE\nDRIVING GAMES":"");
         labelField.width=(width-64)/1.25;labelField.height=height;
         labelField.transform.matrix=new Matrix(1.25,0,-0.12,1,primary?48:28,primary?7:2);
         if(pressed)labelField.y+=1;
         labelField.selectable=false;labelField.mouseEnabled=false;
         labelField.antiAliasType=AntiAliasType.ADVANCED;
         state.addChild(labelField);
         if(primary){
            g.lineStyle();g.beginFill(0xffffff);
            g.moveTo(27,19);g.lineTo(27,39);g.lineTo(42,29);g.lineTo(27,19);g.endFill();
         }
         return state;
      }

      public static function installMainMenu(menu:MovieClip,truck:DisplayObject):void
      {
         if(menu.getChildByName("premiumMenu")!=null)return;
         for(var i:int=0;i<menu.numChildren;i++)menu.getChildAt(i).visible=false;
         menu.graphics.clear();
         var skin:Sprite=new Sprite();skin.name="premiumMenu";
         skin.mouseEnabled=false;skin.mouseChildren=false;menu.addChildAt(skin,0);
         skin.graphics.beginFill(0x172220);skin.graphics.drawRect(0,0,670,450);skin.graphics.endFill();
         var artwork:Loader=new Loader();skin.addChild(artwork);
         artwork.contentLoaderInfo.addEventListener(Event.COMPLETE,function(event:Event):void{
            var bitmap:Bitmap=artwork.content as Bitmap;if(bitmap!=null)bitmap.smoothing=true;
            artwork.width=670;artwork.height=450;
         });
         artwork.contentLoaderInfo.addEventListener(flash.events.IOErrorEvent.IO_ERROR,function(event:flash.events.IOErrorEvent):void{});
         artwork.load(new flash.net.URLRequest("/webgl/menu-reference.png"));
         var crest:Sprite=new Sprite();skin.addChild(crest);var c:Graphics=crest.graphics;
         c.lineStyle(2,0x101717);c.beginFill(0x111a18,0.97);
         c.moveTo(209,32);c.lineTo(316,21);c.curveTo(335,-2,354,21);c.lineTo(461,32);
         c.lineTo(482,104);c.lineTo(466,137);c.lineTo(335,156);c.lineTo(204,137);c.lineTo(188,104);c.lineTo(209,32);c.endFill();
         c.lineStyle(3,0x9dca28);c.moveTo(216,39);c.lineTo(318,28);c.lineTo(335,15);c.lineTo(352,28);c.lineTo(454,39);c.lineTo(470,100);
         c.moveTo(218,136);c.lineTo(335,149);c.lineTo(451,136);
         c.lineStyle(1,0x68736e);c.beginFill(0x101718);c.moveTo(197,94);c.lineTo(478,94);c.lineTo(465,132);c.lineTo(185,132);c.lineTo(197,94);c.endFill();
         var title:TextField=menuText(crest,"4X4",218,25,67,0xf5f5ec,240);
         var titleFormat:TextFormat=title.defaultTextFormat;titleFormat.align="center";title.setTextFormat(titleFormat);
         var subtitle:TextField=menuText(crest,"FOOTBALL",209,94,30,0xffffff,251);
         var subtitleFormat:TextFormat=subtitle.defaultTextFormat;subtitleFormat.align="center";subtitleFormat.letterSpacing=2;subtitle.setTextFormat(subtitleFormat);
         c.lineStyle(1.5,0x101718);c.beginFill(0xf3f4eb);c.drawCircle(335,21,13);c.endFill();
         c.beginFill(0x17211d);c.moveTo(335,14);c.lineTo(342,19);c.lineTo(339,27);c.lineTo(331,27);c.lineTo(328,19);c.lineTo(335,14);c.endFill();
         c.moveTo(328,19);c.lineTo(323,16);c.moveTo(342,19);c.lineTo(347,16);c.moveTo(339,27);c.lineTo(343,31);c.moveTo(331,27);c.lineTo(327,31);
         // The generated artwork contains the reference-quality metallic badge.
         crest.visible=false;
         var primary:SimpleButton=menu.new_game_btn as SimpleButton;
         var secondary:SimpleButton=menu.play_more_games_btn as SimpleButton;
         if(primary!=null){
            primary.transform.matrix=new Matrix();primary.filters=[];primary.x=19;primary.y=307;
            primary.upState=menuButtonState("NEW GAME",300,58,true,false,false);
            primary.overState=menuButtonState("NEW GAME",300,58,true,true,false);
            primary.downState=menuButtonState("NEW GAME",300,58,true,true,true);
            primary.hitTestState=menuButtonState("",300,58,true,false,false);
            primary.visible=true;primary.tabEnabled=true;
         }
         if(secondary!=null){
            secondary.transform.matrix=new Matrix();secondary.filters=[];secondary.x=19;secondary.y=377;
            secondary.upState=menuButtonState("PLAY MORE DRIVING GAMES",300,54,false,false,false);
            secondary.overState=menuButtonState("PLAY MORE DRIVING GAMES",300,54,false,true,false);
            secondary.downState=menuButtonState("PLAY MORE DRIVING GAMES",300,54,false,true,true);
            secondary.hitTestState=menuButtonState("",300,54,false,false,false);
            secondary.visible=true;secondary.tabEnabled=true;
         }
         menu.add_this_game_btn.visible=false;menu.add_this_game_btn.mouseEnabled=false;menu.add_this_game_btn.tabEnabled=false;
      }

      public static function mainMenuVisibility(visible:Boolean):void
      {
         if(flash.external.ExternalInterface.available)
         {
            try{flash.external.ExternalInterface.call("soccerBridge.menu",visible);}catch(error:Error){}
         }
      }



      private static var hdTruckColors:Object={};
      // UI-only replacement: keep the original timeline and its team-color source.
      private static function installHDTruck(truck:MovieClip):void {
         if(truck.getChildByName("hdVehicle")!=null)return;
         var area:Rectangle=truck.getBounds(truck);
         var art:Loader=new Loader();art.name="hdVehicle";
         truck.addChild(art);
         for(var hiddenIndex:int=0;hiddenIndex<truck.numChildren;hiddenIndex++)if(truck.getChildAt(hiddenIndex)!=art)truck.getChildAt(hiddenIndex).alpha=0;
         art.contentLoaderInfo.addEventListener(Event.COMPLETE,function(e:Event):void {
            var bitmap:Bitmap=art.content as Bitmap;
            if(bitmap==null)return;
            bitmap.smoothing=true;
            // Fit the opaque vehicle, excluding the generated image's transparent margins.
            var opaque:Rectangle=bitmap.bitmapData.getColorBoundsRect(0xFF000000,0,false);
            var factor:Number=Math.min(area.width/opaque.width,area.height/opaque.height)*.8;
            art.scaleX=art.scaleY=factor;
            art.x=area.x+(area.width-opaque.width*factor)/2-opaque.x*factor;
            art.y=area.bottom-opaque.bottom*factor;
            for(var i:int=0;i<truck.numChildren;i++)if(truck.getChildAt(i)!=art)truck.getChildAt(i).visible=false;
            var lastColor:uint=0xFFFFFFFF;
            var source:BitmapData=bitmap.bitmapData;
            var pixels:Vector.<uint> =source.getVector(source.rect);
            var painted:BitmapData;
            var tint:Function=function(event:Event):void {
               var color:uint=truck.boja.transform.colorTransform.color;
               if(color==lastColor)return;
               lastColor=color;
               if(hdTruckColors[color]!=null){bitmap.bitmapData=hdTruckColors[color];return;}
               var output:Vector.<uint> =pixels.concat();
               var cr:Number=((color>>16)&255)/255;var cg:Number=((color>>8)&255)/255;var cb:Number=(color&255)/255;
               for(var k:int=0;k<pixels.length;k++){
                  var pixel:uint=pixels[k];if((pixel>>>24)==0)continue;
                  var px:Number=(k%source.width)/source.width;var py:Number=int(k/source.width)/source.height;
                  // Paint roof, hood and outer fenders; keep grille, lamps, glass and tires neutral.
                  if(py>.57 || (py>.46 && px>.16 && px<.84))continue;
                  var red:int=(pixel>>16)&255;var green:int=(pixel>>8)&255;var blue:int=pixel&255;
                  if(Math.max(red,green,blue)-Math.min(red,green,blue)>35)continue;
                  var weight:Number=Math.min(1,Math.max(0,(Math.min(red,green,blue)-65)/100));
                  output[k]=(pixel&0xFF000000)|(int(red*(1-weight*.8*(1-cr)))<<16)|(int(green*(1-weight*.8*(1-cg)))<<8)|int(blue*(1-weight*.8*(1-cb)));
               }
               painted=new BitmapData(source.width,source.height,true,0);
               painted.setVector(painted.rect,output);hdTruckColors[color]=painted;bitmap.bitmapData=painted;
            };
            truck.addEventListener(Event.ENTER_FRAME,tint);tint(null);
         });
         // Leave the original artwork visible if the replacement cannot load.
         art.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,function(e:IOErrorEvent):void{for(var j:int=0;j<truck.numChildren;j++)if(truck.getChildAt(j)!=art)truck.getChildAt(j).alpha=1;});
         art.load(new flash.net.URLRequest("/webgl/ui/vehicle-hd.png"));
      }

      public static function installTeamMenu(menu:MovieClip):void
      {
         if(!flash.external.ExternalInterface.available)return;
         try {
            flash.external.ExternalInterface.addCallback("soccerTeamAction",function(action:String,index:int=0):Boolean{
               if(action=="select"){
                  if(index<0||index>15)return false;
                  var card:MovieClip=menu.getChildByName("team"+index) as MovieClip;
                  if(card==null)return false;
                  card.dispatchEvent(new MouseEvent(MouseEvent.CLICK,true));
               }else if(action=="confirm"){
                  menu.start_btn.dispatchEvent(new MouseEvent(MouseEvent.CLICK,true));
               }else if(action=="back"){
                  menu.back_menu_btn.dispatchEvent(new MouseEvent(MouseEvent.CLICK,true));
               }else if(action=="more"){
                  menu.play_more_games_btn.dispatchEvent(new MouseEvent(MouseEvent.CLICK,true));
               }else return false;
               return true;
            });
            if(!flash.external.ExternalInterface.call("soccerTeams.show",0))return;
         }catch(error:Error){return;}
         if(menu.getChildByName("premiumTeams")!=null)return;
         for(var i:int=0;i<menu.numChildren;i++)menu.getChildAt(i).visible=false;
         menu.graphics.clear();
         var backdrop:Sprite=new Sprite();backdrop.name="premiumTeams";backdrop.mouseEnabled=false;
         backdrop.graphics.beginFill(0x141414);backdrop.graphics.drawRect(0,0,670,450);backdrop.graphics.endFill();
         menu.addChildAt(backdrop,0);
         var artwork:Loader=new Loader();backdrop.addChild(artwork);
         artwork.contentLoaderInfo.addEventListener(Event.COMPLETE,function(event:Event):void{
            var bitmap:Bitmap=artwork.content as Bitmap;if(bitmap!=null)bitmap.smoothing=true;
            artwork.width=670;artwork.height=450;
         });
         artwork.contentLoaderInfo.addEventListener(flash.events.IOErrorEvent.IO_ERROR,function(event:flash.events.IOErrorEvent):void{});
         artwork.load(new flash.net.URLRequest("/webgl/ui/team-tunnel.png"));
         var truck:MovieClip=menu.hummer0;
         truck.visible=true;truck.filters=[];
         var bounds:Rectangle=truck.getBounds(menu);
         var scale:Number=280/bounds.width;
         truck.scaleX*=scale;truck.scaleY*=scale;
         bounds=truck.getBounds(menu);truck.x+=482-(bounds.x+bounds.width/2);truck.y+=340-(bounds.y+bounds.height);
         installHDTruck(truck);
      }





      private static var tournamentPopup:MovieClip;

      public static function showTournamentMenu(popup:MovieClip,chart:MovieClip,versus:MovieClip,round:int,cup16:Array,cup8:Array,cup4:Array,cup2:Array):void
      {
         if(popup!=chart && popup!=versus)return;
         if(!flash.external.ExternalInterface.available)return;
         var kind:String=popup==chart?"cup":"match";
         var rounds:Array=[cup16,cup8,cup4,cup2];
         var packet:Object={kind:kind,round:round,rounds:[],player:-1};
         if(cup16!=null && cup16.length>0)packet.player=int(cup16[0].team);
         for(var r:int=0;r<4;r++){
            var entries:Array=[];
            if(rounds[r]!=null){
               for(var j:int=0;j<rounds[r].length;j++)entries.push({team:int(rounds[r][j].team),score:int(rounds[r][j].res)});
            }
            packet.rounds.push(entries);
         }
         try {
            flash.external.ExternalInterface.addCallback("soccerTournamentAction",function(action:String):Boolean{
               if(tournamentPopup!=popup)return false;
               if(action=="next")popup.start_btn.dispatchEvent(new MouseEvent(MouseEvent.CLICK,true));
               else if(action=="back")popup.back_menu_btn.dispatchEvent(new MouseEvent(MouseEvent.CLICK,true));
               else if(action=="more")popup.pmg.dispatchEvent(new MouseEvent(MouseEvent.CLICK,true));
               else return false;
               return true;
            });
            if(!flash.external.ExternalInterface.call("soccerTournament.show",packet))return;
         }catch(error:Error){return;}
         tournamentPopup=popup;
         if(popup.getChildByName("premiumTournament")!=null)return;
         for(var i:int=0;i<popup.numChildren;i++)popup.getChildAt(i).visible=false;
         popup.graphics.clear();
         var backdrop:Sprite=new Sprite();backdrop.name="premiumTournament";backdrop.mouseEnabled=false;
         backdrop.graphics.beginFill(0x141414);backdrop.graphics.drawRect(0,0,670,450);backdrop.graphics.endFill();
         popup.addChildAt(backdrop,0);
         if(kind=="match"){
            var artwork:Loader=new Loader();backdrop.addChild(artwork);
            artwork.contentLoaderInfo.addEventListener(Event.COMPLETE,function(event:Event):void{
               var bitmap:Bitmap=artwork.content as Bitmap;if(bitmap!=null)bitmap.smoothing=true;
               artwork.width=670;artwork.height=450;
            });
            artwork.contentLoaderInfo.addEventListener(flash.events.IOErrorEvent.IO_ERROR,function(event:flash.events.IOErrorEvent):void{});
            artwork.load(new flash.net.URLRequest("/webgl/ui/match-tunnel.png"));
            for(var car:int=0;car<2;car++){
               var truck:MovieClip=popup["hummer"+car];truck.visible=true;truck.filters=[];
               var bounds:Rectangle=truck.getBounds(popup);var scale:Number=280/bounds.width;
               truck.scaleX*=scale;truck.scaleY*=scale;
               bounds=truck.getBounds(popup);
               truck.x+=(car==0?162:508)-(bounds.x+bounds.width/2);
               truck.y+=315-(bounds.y+bounds.height);
               installHDTruck(truck);
            }
         }
      }

      public static function hideTournamentMenu(popup:MovieClip):void
      {
         if(popup!=tournamentPopup)return;
         tournamentPopup=null;
         if(flash.external.ExternalInterface.available){
            try{flash.external.ExternalInterface.call("soccerTournament.hide");}catch(error:Error){}
         }
      }
      private static var premiumRace:MovieClip;
      private static var premiumLast:int=0;
      private static var premiumWorld:*;
      private static var premiumDriver:*;
      public static function publishMatchWorld(world:*,driver:*):void {premiumWorld=world;premiumDriver=driver;}
      private static function skinMatchResult(p:MovieClip,champion:Boolean):void {
         p.mouseEnabled=false;p.mouseChildren=false;
         if(p.getChildByName("premiumResult")==null){
            var backdrop:Sprite=new Sprite();backdrop.name="premiumResult";
            backdrop.graphics.beginFill(0x101614);backdrop.graphics.drawRect(0,0,670,450);backdrop.graphics.endFill();
            p.addChildAt(backdrop,0);
            var artwork:Loader=new Loader();backdrop.addChild(artwork);
            artwork.contentLoaderInfo.addEventListener(Event.COMPLETE,function(e:Event):void {
               var bitmap:Bitmap=artwork.content as Bitmap;if(bitmap!=null)bitmap.smoothing=true;
               artwork.width=670;artwork.height=450;
            });
            artwork.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,function(e:IOErrorEvent):void{});
            artwork.load(new flash.net.URLRequest(champion?"/webgl/ui/team-tunnel.png":"/webgl/ui/match-tunnel.png"));
            for(var c:int=0;c<(champion?1:2);c++){
               var truck:MovieClip=p["hummer"+c];truck.filters=[];
               var b:Rectangle=truck.getBounds(p);var scale:Number=(champion?280:230)/b.width;
               truck.scaleX*=scale;truck.scaleY*=scale;b=truck.getBounds(p);
               truck.x+=(champion?482:c==0?160:510)-(b.x+b.width/2);
               truck.y+=(champion?340:300)-(b.y+b.height);
               installHDTruck(truck);
            }
         }
         for(var i:int=0;i<p.numChildren;i++){
            var child:DisplayObject=p.getChildAt(i);
            child.alpha=child.name=="premiumResult" || child==p.hummer0 || (!champion && child==p.hummer1)?1:0;
         }
         p.hummer0.visible=true;if(!champion)p.hummer1.visible=true;
      }
      public static function installMatchUI(game:MovieClip):void {
         if(premiumRace!=null || !flash.external.ExternalInterface.available)return;
         try{if(!flash.external.ExternalInterface.call("soccerMatch.ready"))return;}catch(error:Error){return;}
         premiumRace=game;
         flash.external.ExternalInterface.addCallback("soccerMatchAction",function(action:String):Boolean {
            var p:MovieClip=null;var key:String="";
            if(game.pause_mc.visible){p=game.pause_mc;key=action=="resume"?"btn2":action=="retry"?"btn3":action=="back"?"btn1":action=="more"?"pmg":"";}
            else if(game.halftime_mc.visible){p=game.halftime_mc;key=action=="next"?"start_btn":action=="retry"?"retry_btn":action=="back"?"back_menu_btn":action=="more"?"pmg":"";}
            else if(game.final_mc.visible){p=game.final_mc;key=action=="back"?"back_menu_btn":action=="more"?"pmg":"";}
            else if(game.UI.visible){p=game.UI;key=action=="pause"?"pause_btn":action=="mute"?"mute_btn":"";}
            if(p==null || key=="" || !p[key].visible)return false;
            p[key].dispatchEvent(new MouseEvent(MouseEvent.CLICK,true));return true;
         });
         game.addEventListener(Event.ENTER_FRAME,function(event:Event):void {
            var now:int=getTimer();if(now-premiumLast<100)return;premiumLast=now;
            var ui:MovieClip=game.UI;var p:MovieClip=null;var kind:String="";
            if(game.pause_mc.visible){p=game.pause_mc;kind="pause";}
            else if(game.halftime_mc.visible){p=game.halftime_mc;kind="result";}
            else if(game.final_mc.visible){p=game.final_mc;kind="final";}
            var packet:Object={kind:kind,hud:ui.visible,home:int(ui.team0.currentFrame)-2,away:int(ui.team1.currentFrame)-2,score0:String(ui.laps_label.text),score1:String(ui.pos_label.text),period:String(ui.period_label.text),time:String(ui.stopwatchLastLap.min.text)+":"+String(ui.stopwatchLastLap.sec.text),muted:SoundMixer.soundTransform.volume==0,title:"",totals:"",next:false,retry:false,back:false,banner:"",map:[],countdown:"",countdownProgress:0};
            if(p!=null){
               if(kind=="result"){packet.title=String(p.title_label.text);packet.score0=String(p.homeScore.text);packet.score1=String(p.guestScore.text);packet.next=p.start_btn.visible;packet.retry=p.retry_btn.visible;packet.back=p.back_menu_btn.visible;}
               else if(kind=="final"){packet.title="CUP CHAMPIONS";packet.totals=p.currentFrame==2?String(p.finalscores.text):"";packet.back=true;}
               else {packet.title="PAUSED";packet.retry=true;packet.back=true;}
            }
            if(ui.visible && ui.lights_mc.visible && ui.lights_mc.currentFrame>1){
               packet.countdown="GET READY";
               packet.countdownProgress=ui.lights_mc.currentFrame/ui.lights_mc.totalFrames;
            }
            if(game.goalAnim_mc.visible && game.goalAnim_mc.currentFrame>1 && game.goalAnim_mc.currentFrame<game.goalAnim_mc.totalFrames)packet.banner="GOAL!";
            else if(game.wonAnim_mc.visible && game.wonAnim_mc.currentFrame>1 && game.wonAnim_mc.currentFrame<game.wonAnim_mc.totalFrames)packet.banner="VICTORY";
            else if(game.lostAnim_mc.visible && game.lostAnim_mc.currentFrame>1 && game.lostAnim_mc.currentFrame<game.lostAnim_mc.totalFrames)packet.banner="FULL TIME";
            if(ui.visible && kind=="" && premiumWorld!=null && premiumWorld.players!=null){
               var bounds:Rectangle=premiumWorld.bckgrnd.getBounds(premiumWorld);
               if(bounds.width>0 && bounds.height>0){
                  for(var j:int=0;j<premiumWorld.players.length;j++){
                     var car:* =premiumWorld.players[j];
                     packet.map.push({x:Math.round(1000*(car.x-bounds.x)/bounds.width)/10,y:Math.round(1000*(car.y-bounds.y)/bounds.height)/10,side:car.team==premiumWorld.players[0].team?0:1,driver:car==premiumDriver});
                  }
                  packet.map.push({x:Math.round(1000*(premiumWorld.ball.x-bounds.x)/bounds.width)/10,y:Math.round(1000*(premiumWorld.ball.y-bounds.y)/bounds.height)/10,side:2,driver:false});
               }
            }
            var accepted:Boolean=false;
            try{accepted=flash.external.ExternalInterface.call("soccerMatch.update",packet);}catch(error:Error){}
            if(!accepted)return;
            ui.graphics.clear();
            for(var h:int=0;h<ui.numChildren;h++){
               var hudChild:DisplayObject=ui.getChildAt(h);
               if(hudChild!=ui.minilogo){hudChild.alpha=0;if(hudChild is InteractiveObject)InteractiveObject(hudChild).mouseEnabled=false;}
            }
            TextureMaterial.setDiagnosticsVisible(ui.visible && kind=="");
            ui.pause_btn.mouseEnabled=false;ui.mute_btn.mouseEnabled=false;
            if(packet.map.length>0)game.cars.alpha=0;
            game.pause_mc.alpha=0;game.pause_mc.mouseChildren=false;
            if(kind=="result")skinMatchResult(p,false);
            if(kind=="final")skinMatchResult(p,true);
            game.goalAnim_mc.alpha=0;game.wonAnim_mc.alpha=0;game.lostAnim_mc.alpha=0;
         });
      }




      public function BoxCar()
      {
         super();
      }

      public static function cleanFinishedTweens(list:Array):void
      {
         for(var i:int = list.length - 1; i >= 0; i--)
         {
            if(!list[i].isPlaying) list.splice(i,1);
         }
      }
      
      internal static function getClass(param1:Object) : Class
      {
         return Class(getDefinitionByName(getQualifiedClassName(param1)));
      }
      
      public function set Player(param1:String) : void
      {
         this._player = param1;
      }
      
      public function get Player() : String
      {
         return this._player;
      }
      
      public function get carSpeed() : Number
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:V2 = null;
         var _loc5_:Number = NaN;
         if(this.wheels)
         {
            _loc1_ = this.frontWheelLeft;
            _loc2_ = this.frontWheelRight;
         }
         else
         {
            _loc1_ = this;
         }
         if(_loc1_.b2body)
         {
            _loc3_ = _loc1_.b2body.GetLinearVelocity();
            _loc4_ = _loc1_.b2body.GetTransform().r.c1.clone();
            _loc5_ = Number(_loc3_.dot(_loc4_));
            _loc4_.multiplyN(this.SPEED);
            return _loc5_;
         }
         return 0;
      }
      
      public function get carSpeedSide() : Number
      {
         var _loc1_:* = undefined;
         var _loc2_:V2 = null;
         var _loc3_:Number = NaN;
         if(this.b2body)
         {
            _loc1_ = this.b2body.GetLinearVelocity();
            _loc2_ = this.b2body.GetTransform().r.c2.clone();
            _loc3_ = Number(_loc1_.dot(_loc2_));
            _loc2_.multiplyN(this.SPEED);
            return _loc3_;
         }
         return 0;
      }
      
      public function get carSteer() : Number
      {
         if(b2body)
         {
            return b2body.GetAngularVelocity();
         }
         return 0;
      }
      
      override public function create() : void
      {
         super.create();
      }

      override public function destroy() : void
      {
         // Removed match worlds must release their procedural engine audio callbacks.
         if(this.motorsound != null)
         {
            this.motorsound.stop();
            this.motorsound = null;
         }
         if(this.skidfx != null)
         {
            this.skidfx.removeEventListener(Event.SOUND_COMPLETE,this.completeSoundfx);
            this.skidfx.stop();
            this.skidfx = null;
         }
         if(this.soundfx != null) this.soundfx.stop();
         super.destroy();
      }
      
      public function initCar() : *
      {
         this.speed = 0;
         this.steer = 0;
         this.skidding = false;
         this.drift_transp = 0.3;
         this.pathIndex = 0;
         this.motorsound = new MP3Player(this.maxspeed_loop,false);
         this.motorsound.setVolumeAndPan(this.masterVolume,0);
         this.motorsound.playbackSpeed = this.motorFreqMin;
         this.motorsound.playLoadedSound();
         this.totalTime = 0;
         this.subtotalTime = 0;
         this.lapTime = 0;
         this.bestLapTime = 0;
         this.currentTime = 0;
         this.currentLap = 0;
         this.currentCP = 0;
         this.lastCP = this.currentCP;
         this.totalCP = this.PATH.length;
         if(this.wheels)
         {
            this.frontJointLeft.enableLimit = true;
            this.frontJointLeft.upperLimit = this.STEER;
            this.frontJointLeft.lowerLimit = -this.STEER;
            this.frontJointRight.enableLimit = true;
            this.frontJointRight.upperLimit = this.STEER;
            this.frontJointRight.lowerLimit = -this.STEER;
         }
         listenWhileVisible(world,StepEvent.STEP,this.parseInput,false,10);
         listenWhileVisible(this,ContactEvent.BEGIN_CONTACT,this.handleBeginContact);
         this.contacts = new ContactList();
         this.contacts.listenTo(this);
         this.startTime = getTimer();
      }
      
      public function parseInput(param1:Event) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc8_:* = undefined;
         var _loc9_:Number = NaN;
         if(this.racing)
         {
            this.currentTime += (getTimer() - this.startTime) * this.TIMESPEED - this.currentTime;
            this.lapTime = this.currentTime;
            this.subtotalTime = this.totalTime + this.currentTime;
            switch(this._player)
            {
               case "Computer":
                  this.computePath();
                  break;
               case "Player1":
                  this.left = Input.kd("A");
                  this.right = Input.kd("D");
                  this.up = Input.kd("W");
                  this.down = Input.kd("S");
                  this.handbrake = Input.kd("CTRL");
                  break;
               case "Player2":
                  this.left = Input.kd("LEFT");
                  this.right = Input.kd("RIGHT");
                  this.up = Input.kd("UP");
                  this.down = Input.kd("DOWN");
                  this.handbrake = Input.kd("CTRL");
            }
            // Preserve computer steering; smooth keyboard input at the original 25 Hz.
            if(this._player == "Computer")
            {
               this.STEERSPEED = this.STEERSPEEDMIN;
               if(this.left)
               {
                  if(this._player == "Computer")
                  {
                     this.steer = this.STEER / 1;
                  }
                  else
                  {
                     this.steer += this.STEER / 4;
                  }
                  if(this.steer > this.STEER)
                  {
                     this.steer = this.STEER;
                  }
               }
               else if(this.right)
               {
                  if(this._player == "Computer")
                  {
                     this.steer = -this.STEER / 1;
                  }
                  else
                  {
                     this.steer += -this.STEER / 4;
                  }
                  if(this.steer < -this.STEER)
                  {
                     this.steer = -this.STEER;
                  }
               }
               else
               {
                  this.steer = 0;
                  this.STEERSPEED = this.STEERSPEEDMAX;
               }
            }
            else
            {
               var steeringTarget:Number = this.left ? this.STEER : (this.right ? -this.STEER : 0);
               // About 120 ms to 90% response; quicker centering and direction changes.
               var steeringResponse:Number = steeringTarget == 0 ? 0.65 : 0.55;
               this.steer += (steeringTarget - this.steer) * steeringResponse;
               if(Math.abs(steeringTarget - this.steer) < this.STEER * 0.005)
               {
                  this.steer = steeringTarget;
               }
               this.STEERSPEED = steeringTarget == 0 ? this.STEERSPEEDMAX : this.STEERSPEEDMIN;
            }
            if(this.up)
            {
               this.speed += this.SPEED / 4;
               if(this.speed > this.SPEED)
               {
                  this.speed = this.SPEED;
               }
            }
            else if(this.down)
            {
               this.speed += -this.SPEED / 4;
               if(this.speed < -this.SPEED)
               {
                  this.speed = -this.SPEED;
               }
            }
            else
            {
               this.speed *= 0.95;
            }
            if(this.handbrake)
            {
               this.speed *= 0.78;
            }
            if(this._player == "Computer")
            {
               this.speed *= Math.random() * (1 - this.difficulty) + this.difficulty;
            }
         }
         this.graphics.clear();
         if(this.wheels)
         {
            _loc2_ = this.frontWheelLeft;
            _loc3_ = this.frontWheelRight;
         }
         else
         {
            _loc2_ = this;
         }
         this.applySideFriction(_loc2_.b2body,false);
         if(this.wheels)
         {
            this.applySideFriction(_loc3_.b2body,false);
            this.applySideFriction(this.rearWheelLeft.b2body,true);
            this.applySideFriction(this.rearWheelRight.b2body,true);
         }
         var _loc4_:V2 = this.b2body.GetLinearVelocity();
         this.drawForce(_loc4_,255,3);
         var _loc5_:V2 = _loc2_.b2body.GetTransform().r.c1.clone();
         var _loc6_:Number = _loc4_.dot(_loc5_);
         _loc5_.multiplyN(this.speed);
         _loc2_.b2body.ApplyForce(_loc5_,_loc2_.b2body.GetWorldCenter());
         if(this.wheels)
         {
            _loc4_ = _loc3_.b2body.GetLinearVelocity();
            _loc5_ = _loc3_.b2body.GetTransform().r.c1.clone();
            _loc6_ = _loc4_.dot(_loc5_);
            _loc5_.multiplyN(this.speed);
            _loc3_.b2body.ApplyForce(_loc5_,_loc3_.b2body.GetWorldCenter());
         }
         if(this.wheels)
         {
            _loc8_ = this.steer - this.frontJointLeft.b2joint.GetJointAngle();
            this.frontJointLeft.motorSpeed = _loc8_ * this.STEERSPEED;
            _loc8_ = this.steer - this.frontJointRight.b2joint.GetJointAngle();
            this.frontJointRight.motorSpeed = _loc8_ * this.STEERSPEED;
         }
         else
         {
            _loc9_ = b2body.GetAngularVelocity();
            _loc2_.b2body.ApplyTorque(-this.steer * _loc6_ * b2body.GetMass());
         }
         var _loc7_:* = (_loc4_.length() / this.VELMAX + this.motorFreqMin) * 1;
         if(_loc7_ < this.motorFreqMin)
         {
            _loc7_ = this.motorFreqMin;
         }
         if(_loc7_ > this.motorFreqMax)
         {
            _loc7_ = this.motorFreqMax;
         }
         this.motorsound.playbackSpeed = _loc7_ * (1 + Math.random() * 0.03);
      }
      
      private function calculatePosition() : *
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:Number = NaN;
         var _loc4_:* = undefined;
         var _loc5_:MovieClip = null;
         _loc4_ = this.PATH[this.currentCP];
         if(this.currentCP < this.PATH.length - 1)
         {
            _loc5_ = this.PATH[this.currentCP + 1];
         }
         else
         {
            _loc5_ = this.PATH[0];
         }
         _loc1_ = this.dist(this,_loc4_);
         _loc2_ = this.dist(this,_loc5_);
         _loc3_ = this.dist(_loc4_,_loc5_);
         this.prevCPwLap = this.currentCPwLap;
         this.currentCPwLap = this.currentLap * this.totalCP + this.currentCP + (_loc3_ - _loc2_) / _loc3_;
      }
      
      private function computePath() : *
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         var _loc10_:Number = NaN;
         var _loc11_:* = undefined;
         var _loc12_:MovieClip = null;
         var _loc14_:* = undefined;
         var _loc15_:* = undefined;
         var _loc16_:* = undefined;
         var _loc17_:* = undefined;
         var _loc13_:Point = this.chasePoint;
         if(!this.reverse)
         {
            _loc16_ = Math.abs(this.carSpeed);
            if(_loc16_ < 2)
            {
               ++this.stuck;
               this.stuckAccum += _loc16_;
               _loc17_ = this.stuckAccum / this.stuck;
               if(this.stuck > 5 && _loc17_ < 0.7 || this.stuck > 30 && _loc17_ < 1.5)
               {
                  this.reverse = true;
                  this.reverseCount = 0;
               }
            }
            else
            {
               this.stuck = 0;
               this.stuckAccum = 0;
            }
         }
         else if(this.reverse)
         {
            this.stuck = 0;
            this.stuckAccum = 0;
            ++this.reverseCount;
            if(this.reverseCount < Math.random() * 20 + 20)
            {
               this.up = false;
               this.down = true;
               this.left = this.right = false;
               return;
            }
            this.up = true;
            this.down = false;
            this.reverse = false;
            this.reverseCount = 0;
         }
         _loc11_ = this.chaseObject;
         _loc12_ = this.goalObject;
         _loc3_ = this.dist(this,_loc11_);
         _loc4_ = this.dist(this,_loc12_);
         _loc5_ = this.dist(_loc11_,_loc12_);
         _loc10_ = -_loc3_ / _loc5_ * this.prediction;
         _loc13_.x = _loc11_.x + (_loc12_.x - _loc11_.x) * _loc10_;
         _loc13_.y = _loc11_.y + (_loc12_.y - _loc11_.y) * _loc10_;
         if(_loc13_.x < this.border.x)
         {
            _loc13_.x = this.border.x;
         }
         if(_loc13_.x > this.border.x + this.border.width)
         {
            _loc13_.x = this.border.x + this.border.width;
         }
         if(_loc13_.y < this.border.y)
         {
            _loc13_.y = this.border.y;
         }
         if(_loc13_.y > this.border.y + this.border.height)
         {
            _loc13_.y = this.border.y + this.border.height;
         }
         _loc1_ = this.rad2deg(this.angle(_loc13_,this));
         if(this.wheels)
         {
            _loc15_ = this.frontWheelLeft;
         }
         else
         {
            _loc15_ = this;
         }
         _loc2_ = _loc15_.rotation;
         _loc6_ = this.diffangle(_loc1_,_loc2_);
         _loc7_ = 10;
         _loc8_ = 180;
         this.left = false;
         this.right = false;
         this.down = false;
         if(_loc6_ > -_loc8_ && _loc6_ < -_loc7_)
         {
            if(!this.reverse)
            {
               this.left = true;
            }
         }
         else if(_loc6_ > _loc7_ && _loc6_ < _loc8_)
         {
            if(!this.reverse)
            {
               this.right = true;
            }
         }
         else if(_loc6_ > -_loc7_ && _loc6_ < _loc7_)
         {
            if(!this.reverse)
            {
               this.up = true;
            }
         }
         if(_loc10_ > 0.6 || _loc3_ > _loc4_)
         {
            this.down = false;
            ++this.pathIndex;
            if(this.pathIndex >= this.PATH.length)
            {
               this.pathIndex = 0;
            }
         }
         _loc13_ = null;
      }
      
      private function angle(param1:*, param2:*) : Number
      {
         var _loc3_:* = param1.x - param2.x;
         var _loc4_:* = param1.y - param2.y;
         return Math.atan2(_loc4_,_loc3_);
      }
      
      private function diffangle(param1:*, param2:*) : Number
      {
         var _loc3_:* = (param1 - param2) % 360;
         if(_loc3_ > 180)
         {
            _loc3_ -= 360;
         }
         if(_loc3_ < -180)
         {
            _loc3_ += 360;
         }
         return _loc3_;
      }
      
      private function dist(param1:*, param2:*) : Number
      {
         return Math.sqrt((param1.x - param2.x) * (param1.x - param2.x) + (param1.y - param2.y) * (param1.y - param2.y));
      }
      
      private function deg2rad(param1:*) : Number
      {
         return param1 / 360 * (2 * Math.PI);
      }
      
      private function rad2deg(param1:*) : Number
      {
         return param1 / (2 * Math.PI) * 360;
      }
      
      private function applySideFriction(param1:b2Body, param2:Boolean) : *
      {
         var _loc10_:SoundTransform = null;
         var _loc3_:* = 1;
         var _loc4_:V2 = param1.GetLinearVelocity();
         var _loc5_:V2 = param1.GetTransform().r.c1.clone();
         var _loc6_:Number = _loc4_.dot(_loc5_);
         _loc5_.multiplyN(_loc6_);
         var _loc7_:V2 = param1.GetTransform().r.c2.clone();
         var _loc8_:Number = _loc4_.dot(_loc7_);
         if(Math.abs(_loc8_) > this.SKID || this.handbrake)
         {
            if(param2)
            {
               this.skidding = true;
               _loc3_ = 0;
               if(!this.skate_snd_playing && false)
               {
                  _loc10_ = this.skidfx.soundTransform;
                  _loc10_.volume = this.soundVolume * this.masterVolume;
                  _loc10_.pan = this.soundPan;
                  this.skidfx.soundTransform = _loc10_;
                  this.skidfx = this.skate_snd.play();
                  this.skate_snd_playing = true;
                  this.skidfx.addEventListener(Event.SOUND_COMPLETE,this.completeSoundfx);
               }
            }
         }
         else
         {
            this.skidding = false;
         }
         _loc7_.multiplyN(_loc8_ * _loc3_);
         var _loc9_:* = _loc4_.subtract(_loc7_);
         param1.SetLinearVelocity(_loc9_);
      }
      
      private function killOrthogonalVelocity(param1:b2Body) : *
      {
         var _loc2_:* = new V2(0,0);
         var _loc3_:V2 = param1.GetLinearVelocityFromLocalPoint(_loc2_);
         var _loc4_:* = param1.GetTransform().r.c1.clone();
         _loc4_.multiplyN(_loc3_.dot(_loc4_));
         param1.SetLinearVelocity(_loc4_);
      }
      
      private function driftHandler(param1:Event) : *
      {
         var e:Event = param1;
         with(e.target)
         {
            --timecount;
            if(timecount == 0)
            {
               e.target.removeEventListener(Event.ENTER_FRAME,driftHandler);
               e.target.parent.removeChild(e.target);
            }
         }
      }
      
      public function handleBeginContact(param1:ContactEvent) : void
      {
         var _loc4_:Point = null;
         var _loc5_:V2 = null;
         var _loc6_:V2 = null;
         var _loc7_:SoundTransform = null;
         var _loc8_:Sound = null;
         var _loc2_:* = param1.target;
         var _loc3_:* = param1.relatedObject;
         if(!_loc3_.isSensor)
         {
            _loc4_ = this.globalToLocal(param1.point.toP());
            if(this.racing)
            {
               if(this.crashfx_sound_duration > 0)
               {
                  --this.crashfx_sound_duration;
               }
               else
               {
                  this.crashfx_sound_duration = this.crashfx_DURATION;
                  _loc7_ = new SoundTransform(this.soundVolume * this.masterVolume,this.soundPan);
                  if(_loc2_.parent is getClass(cars) || _loc3_.parent is getClass(cars))
                  {
                     _loc8_ = new sd_hit();
                     this.crashfx = _loc8_.play(0,1,_loc7_);
                     this.crashfx.soundTransform = _loc7_;
                  }
                  else
                  {
                     _loc8_ = new crash();
                     this.crashfx = _loc8_.play(0,1,_loc7_);
                     this.crashfx.soundTransform = _loc7_;
                  }
               }
            }
            _loc5_ = b2body.GetTransform().r.c1.clone();
            _loc5_.multiplyN(1 * b2body.GetMass());
            _loc6_ = b2body.GetTransform().r.c2.clone();
            _loc6_.multiplyN(10 * b2body.GetMass());
         }
         else
         {
            this.currentCP = Number(_loc3_.name.substr(2,_loc3_.name.length));
            if(this.currentCP == 0 && this.lastCP == this.totalCP - 1)
            {
               this.totalTime += this.lapTime;
               if(this.bestLapTime == 0 || this.bestLapTime > this.lapTime)
               {
                  this.bestLapTime = this.lapTime;
               }
               if(this.currentLap < this.totalLaps)
               {
                  this.startTime = getTimer();
               }
               ++this.currentLap;
               this.lastCP = this.currentCP;
               this.calculatePosition();
               if(this.currentLap == this.totalLaps)
               {
                  this.speed = 0;
                  this.racing = false;
                  --this.currentLap;
               }
            }
            else if(this.currentCP == this.lastCP + 1)
            {
               this.lastCP = this.currentCP;
            }
         }
         ++this.contactTime;
      }
      
      public function handlePostSolve(param1:ContactEvent) : *
      {
         trace(param1.impulses.normalImpulse1);
      }
      
      private function completeSoundfx(param1:Event) : *
      {
         this.skate_snd_playing = false;
      }
      
      public function handleEndContact(param1:ContactEvent) : void
      {
         this.contactTime = 0;
      }
      
      private function applyVolume(param1:*) : *
      {
         var _loc2_:SoundTransform = param1.soundTransform;
         if(this._player == "Player1" || this._player == "Player2")
         {
            _loc2_.volume = 1;
         }
         else
         {
            _loc2_.volume = 0.1;
         }
         param1.soundTransform = _loc2_;
      }
      
      private function drawForce(param1:*, param2:*, param3:*) : *
      {
         var g:Point = null;
         var l:V2 = null;
         var velocity:* = param1;
         var clr:* = param2;
         var factor:* = param3;
         if((this.parent as cars).debugDraw)
         {
            g = new Point(velocity.x,velocity.y);
            l = new V2(g.x,g.y);
            l.rotate(-b2body.GetAngle());
            with(this.graphics)
            {
               
               lineStyle(5,clr,0.5);
               moveTo(0,0);
               lineTo(l.x * factor,l.y * factor);
               lineTo(l.x * factor,0);
            }
         }
      }
      
      private function onMotionFinish(param1:*) : *
      {
         param1.target.obj.parent.removeChild(param1.target.obj);
      }
      
      public function setSound(param1:*, param2:*) : *
      {
         this.soundVolume = param1;
         this.soundPan = param2;
         var _loc3_:Number = (this.motorsound.playbackSpeed - this.motorFreqMin) / (this.motorFreqMax - this.motorFreqMin);
         this.motorsound.setVolumeAndPan(param1 * 1 * (0.3 + _loc3_) * this.masterVolume,param2);
      }
      
      public function pauseSound(param1:*) : *
      {
         if(param1)
         {
            this.motorsound.stop();
         }
         else
         {
            this.motorsound.playLoadedSound();
         }
      }
   }
}






