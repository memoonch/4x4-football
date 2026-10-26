package
{
   import adobe.utils.*;
   import flash.accessibility.*;
   import flash.desktop.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.filters.*;
   import flash.geom.*;
   import flash.globalization.*;
   import flash.media.*;
   import flash.net.*;
   import flash.net.drm.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.sampler.*;
   import flash.sensors.*;
   import flash.system.*;
   import flash.text.*;
   import flash.text.engine.*;
   import flash.text.ime.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import wck.WCK;
   
   public dynamic class carsWCK extends WCK
   {
      
      public var __setPropDict:Dictionary = new Dictionary(true);
      
      public function carsWCK()
      {
         super();
      }
      
      internal function __setProp_worldofcars1_carsWCK_wocars_1() : *
      {
         if(this.__setPropDict[worldofcars1] == undefined || int(this.__setPropDict[worldofcars1]) != 2)
         {
            this.__setPropDict[worldofcars1] = 2;
            try
            {
               worldofcars1["componentInspectorSetting"] = true;
            }
            catch(e:Error)
            {
            }
            worldofcars1.allowDragging = false;
            worldofcars1.allowSleep = true;
            worldofcars1.debugDraw = false;
            worldofcars1.disabled = false;
            worldofcars1.focusOn = "";
            worldofcars1.gravityX = 0;
            worldofcars1.gravityY = 0;
            worldofcars1.mouseNudgeX = 0;
            worldofcars1.mouseNudgeY = 0;
            worldofcars1.orientToGravity = false;
            worldofcars1.paused = false;
            worldofcars1.positionIterations = 7;
            worldofcars1.scale = 10;
            worldofcars1.scrolling = false;
            worldofcars1.timeStep = 0.05;
            worldofcars1.velocityIterations = 7;
            try
            {
               worldofcars1["componentInspectorSetting"] = false;
            }
            catch(e:Error)
            {
            }
         }
      }
   }
}

