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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol315")]
   public dynamic class Car1 extends BoxCar
   {
      
      public function Car1()
      {
         super();
         this.__setProp_rear_car1_bodycircles_0();
         this.__setProp_front_car1_bodycircles_0();
         this.__setProp_middle_car1_bodyrect_0();
      }
      
      internal function __setProp_rear_car1_bodycircles_0() : *
      {
         try
         {
            rear["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         rear.active = true;
         rear.allowDragging = false;
         rear.angularDamping = 0;
         rear.angularVelocity = 0;
         rear.applyGravity = false;
         rear.autoSleep = true;
         rear.awake = true;
         rear.bubbleContacts = true;
         rear.bullet = true;
         rear.categoryBits = "0x0001";
         rear.conveyorBeltSpeed = 0;
         rear.customGravityName = "";
         rear.density = 1;
         rear.disabled = false;
         rear.fixedRotation = false;
         rear.focusOn = false;
         rear.friction = 0.2;
         rear.gravityAngle = 0;
         rear.gravityMod = false;
         rear.gravityScale = 1;
         rear.groupIndex = 0;
         rear.inertiaScale = 1;
         rear.isGround = false;
         rear.isGuideShape = false;
         rear.isSensor = false;
         rear.linearDamping = 0;
         rear.linearVelocityX = 0;
         rear.linearVelocityY = 0;
         rear.maskBits = "0xFFFF";
         rear.reportBeginContact = true;
         rear.reportEndContact = false;
         rear.reportPostSolve = false;
         rear.reportPreSolve = false;
         rear.restitution = 0;
         rear.tweened = false;
         rear.type = "Dynamic";
         try
         {
            rear["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      internal function __setProp_front_car1_bodycircles_0() : *
      {
         try
         {
            front["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         front.active = true;
         front.allowDragging = false;
         front.angularDamping = 0;
         front.angularVelocity = 0;
         front.applyGravity = false;
         front.autoSleep = true;
         front.awake = true;
         front.bubbleContacts = true;
         front.bullet = false;
         front.categoryBits = "0x0001";
         front.conveyorBeltSpeed = 0;
         front.customGravityName = "";
         front.density = 1;
         front.disabled = false;
         front.fixedRotation = false;
         front.focusOn = false;
         front.friction = 0.2;
         front.gravityAngle = 0;
         front.gravityMod = false;
         front.gravityScale = 1;
         front.groupIndex = 0;
         front.inertiaScale = 1;
         front.isGround = false;
         front.isGuideShape = false;
         front.isSensor = false;
         front.linearDamping = 0;
         front.linearVelocityX = 0;
         front.linearVelocityY = 0;
         front.maskBits = "0xFFFF";
         front.reportBeginContact = true;
         front.reportEndContact = false;
         front.reportPostSolve = false;
         front.reportPreSolve = false;
         front.restitution = 0;
         front.tweened = false;
         front.type = "Dynamic";
         try
         {
            front["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
      
      internal function __setProp_middle_car1_bodyrect_0() : *
      {
         try
         {
            middle["componentInspectorSetting"] = true;
         }
         catch(e:Error)
         {
         }
         middle.active = true;
         middle.allowDragging = false;
         middle.angularDamping = 0;
         middle.angularVelocity = 0;
         middle.applyGravity = false;
         middle.autoSleep = true;
         middle.awake = true;
         middle.bubbleContacts = true;
         middle.bullet = true;
         middle.categoryBits = "0x0001";
         middle.conveyorBeltSpeed = 0;
         middle.customGravityName = "";
         middle.density = 1;
         middle.disabled = false;
         middle.fixedRotation = false;
         middle.focusOn = false;
         middle.friction = 0.2;
         middle.gravityAngle = 0;
         middle.gravityMod = false;
         middle.gravityScale = 1;
         middle.groupIndex = 0;
         middle.inertiaScale = 1;
         middle.isGround = false;
         middle.isGuideShape = false;
         middle.isSensor = false;
         middle.linearDamping = 0;
         middle.linearVelocityX = 0;
         middle.linearVelocityY = 0;
         middle.maskBits = "0xFFFF";
         middle.reportBeginContact = true;
         middle.reportEndContact = false;
         middle.reportPostSolve = false;
         middle.reportPreSolve = false;
         middle.restitution = 0;
         middle.tweened = false;
         middle.type = "Dynamic";
         try
         {
            middle["componentInspectorSetting"] = false;
         }
         catch(e:Error)
         {
         }
      }
   }
}

