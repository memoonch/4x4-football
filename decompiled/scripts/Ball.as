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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol311")]
   public dynamic class Ball extends BodyShape
   {
      
      public var __id4_:Circle;
      
      public function Ball()
      {
         super();
         this.__setProp___id4__Ball_Layer1_0();
      }
      
      internal function __setProp___id4__Ball_Layer1_0() : *
      {
         try
         {
            this.__id4_["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         this.__id4_.active = true;
         this.__id4_.allowDragging = false;
         this.__id4_.angularDamping = 0;
         this.__id4_.angularVelocity = 0;
         this.__id4_.applyGravity = false;
         this.__id4_.autoSleep = true;
         this.__id4_.awake = true;
         this.__id4_.bubbleContacts = true;
         this.__id4_.bullet = true;
         this.__id4_.categoryBits = "0x0002";
         this.__id4_.conveyorBeltSpeed = 0;
         this.__id4_.customGravityName = "";
         this.__id4_.density = 0.1;
         this.__id4_.disabled = false;
         this.__id4_.fixedRotation = false;
         this.__id4_.focusOn = false;
         this.__id4_.friction = 0.2;
         this.__id4_.gravityAngle = 0;
         this.__id4_.gravityMod = false;
         this.__id4_.gravityScale = 1;
         this.__id4_.groupIndex = 0;
         this.__id4_.inertiaScale = 1;
         this.__id4_.isGround = false;
         this.__id4_.isGuideShape = true;
         this.__id4_.isSensor = false;
         this.__id4_.linearDamping = 0.2;
         this.__id4_.linearVelocityX = 0;
         this.__id4_.linearVelocityY = 0;
         this.__id4_.maskBits = "0xFFFF";
         this.__id4_.reportBeginContact = true;
         this.__id4_.reportEndContact = false;
         this.__id4_.reportPostSolve = false;
         this.__id4_.reportPreSolve = false;
         this.__id4_.restitution = 0.7;
         this.__id4_.tweened = false;
         this.__id4_.type = "Dynamic";
         try
         {
            this.__id4_["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
   }
}

