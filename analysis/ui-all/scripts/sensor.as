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
   import wck.BodyShape;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol318")]
   public dynamic class sensor extends BodyShape
   {
      
      public var __id3_:Box;
      
      public function sensor()
      {
         super();
         this.__setProp___id3__sensor_Layer1_0();
      }
      
      internal function __setProp___id3__sensor_Layer1_0() : *
      {
         try
         {
            this.__id3_["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         this.__id3_.active = true;
         this.__id3_.allowDragging = true;
         this.__id3_.angularDamping = 0;
         this.__id3_.angularVelocity = 0;
         this.__id3_.applyGravity = true;
         this.__id3_.autoSleep = true;
         this.__id3_.awake = true;
         this.__id3_.bubbleContacts = true;
         this.__id3_.bullet = false;
         this.__id3_.categoryBits = "0x0001";
         this.__id3_.conveyorBeltSpeed = 0;
         this.__id3_.customGravityName = "";
         this.__id3_.density = 1;
         this.__id3_.disabled = false;
         this.__id3_.fixedRotation = false;
         this.__id3_.focusOn = false;
         this.__id3_.friction = 0.2;
         this.__id3_.gravityAngle = 0;
         this.__id3_.gravityMod = false;
         this.__id3_.gravityScale = 1;
         this.__id3_.groupIndex = 0;
         this.__id3_.inertiaScale = 1;
         this.__id3_.isGround = false;
         this.__id3_.isGuideShape = true;
         this.__id3_.isSensor = false;
         this.__id3_.linearDamping = 0;
         this.__id3_.linearVelocityX = 0;
         this.__id3_.linearVelocityY = 0;
         this.__id3_.maskBits = "0xFFFF";
         this.__id3_.reportBeginContact = false;
         this.__id3_.reportEndContact = false;
         this.__id3_.reportPostSolve = false;
         this.__id3_.reportPreSolve = false;
         this.__id3_.restitution = 0;
         this.__id3_.tweened = false;
         this.__id3_.type = "Dynamic";
         try
         {
            this.__id3_["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
   }
}

