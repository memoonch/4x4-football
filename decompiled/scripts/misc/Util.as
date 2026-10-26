package misc
{
   import flash.display.*;
   import flash.events.*;
   import flash.geom.*;
   import flash.ui.*;
   import flash.utils.*;
   
   public class Util
   {
      
      public static const D2R:Number = Math.PI / 180;
      
      public static const R2D:Number = 180 / Math.PI;
      
      public static const PI2:Number = Math.PI * 2;
      
      public function Util()
      {
         super();
      }
      
      public static function remove(param1:DisplayObject) : void
      {
         if(Boolean(param1) && Boolean(param1.parent))
         {
            param1.parent.removeChild(param1);
         }
      }
      
      public static function relocate(param1:DisplayObject, param2:DisplayObjectContainer, param3:int = -1, param4:Function = null) : void
      {
         var _loc5_:Matrix = localizeMatrix(param2,param1);
         param1.transform.matrix = _loc5_;
         remove(param1);
         if(param4 != null)
         {
            param4();
         }
         param2.addChildAt(param1,param3 == -1 ? param2.numChildren : param3);
      }
      
      public static function setPos(param1:DisplayObject, param2:*) : void
      {
         param1.x = param2.x;
         param1.y = param2.y;
      }
      
      public static function addChildAtPos(param1:DisplayObjectContainer, param2:DisplayObject, param3:*, param4:int = -1) : void
      {
         setPos(param2,param3);
         if(param4 == -1)
         {
            param1.addChild(param2);
         }
         else
         {
            param1.addChildAt(param2,param4);
         }
      }
      
      public static function addChildAtPosOf(param1:DisplayObjectContainer, param2:DisplayObject, param3:DisplayObject, param4:int = -1, param5:Point = null) : void
      {
         addChildAtPos(param1,param2,Util.localizePoint(param1,param3,param5),param4);
      }
      
      public static function addChildUnder(param1:DisplayObject, param2:DisplayObject, param3:Boolean = true) : void
      {
         if(param2.parent)
         {
            if(param2.parent == param1.parent)
            {
               remove(param1);
            }
            param2.parent.addChildAt(param1,param2.parent.getChildIndex(param2));
            if(param3)
            {
               setPos(param1,param2);
            }
         }
      }
      
      public static function addChildAbove(param1:DisplayObject, param2:DisplayObject, param3:Boolean = true) : void
      {
         var _loc4_:int = 0;
         if(param2.parent)
         {
            if(param2.parent == param1.parent)
            {
               remove(param1);
            }
            _loc4_ = param2.parent.getChildIndex(param2) + 1;
            param2.parent.addChildAt(param1,_loc4_);
            if(param3)
            {
               setPos(param1,param2);
            }
         }
      }
      
      public static function addChildUnderNested(param1:DisplayObject, param2:DisplayObject, param3:DisplayObject, param4:Boolean = true) : void
      {
         addChildUnder(param2,findChildContaining(param1,param3),param4);
      }
      
      public static function addChildAboveNested(param1:DisplayObject, param2:DisplayObject, param3:DisplayObject, param4:Boolean = true) : void
      {
         addChildAbove(param2,findChildContaining(param1,param3),param4);
      }
      
      public static function removeChildren(param1:DisplayObjectContainer) : void
      {
         while(param1.numChildren > 0)
         {
            param1.removeChildAt(0);
         }
      }
      
      public static function replace(param1:DisplayObject, param2:DisplayObject) : void
      {
         if(param1.parent)
         {
            param1.parent.addChildAt(param2,param1.parent.getChildIndex(param1));
            remove(param1);
         }
      }
      
      public static function findChildContaining(param1:DisplayObject, param2:DisplayObject) : DisplayObject
      {
         while(Boolean(param2) && param2.parent != param1)
         {
            param2 = param2.parent;
         }
         return param2;
      }
      
      public static function dictionaryIsEmpty(param1:Dictionary) : Boolean
      {
         var _loc2_:* = undefined;
         var _loc3_:int = 0;
         var _loc4_:* = param1;
         for(_loc2_ in _loc4_)
         {
            return false;
         }
         return true;
      }
      
      public static function findAncestorOfClass(param1:DisplayObject, param2:Class, param3:Boolean = false) : DisplayObject
      {
         if(param3 && param1 is param2)
         {
            return param1;
         }
         do
         {
            param1 = param1.parent;
         }
         while(Boolean(param1) && !(param1 as param2));
         return param1;
      }
      
      public static function mergeObjects(param1:Object, param2:Object) : void
      {
         var _loc3_:String = null;
         for(_loc3_ in param2)
         {
            param1[_loc3_] = param2[_loc3_];
         }
      }
      
      public static function rotateXY(param1:Array, param2:Number) : void
      {
         var _loc3_:Number = Number(param1[0]);
         param1[0] = Math.cos(param2) * _loc3_ - Math.sin(param2) * param1[1];
         param1[1] = Math.sin(param2) * _loc3_ + Math.cos(param2) * param1[1];
      }
      
      public static function stopInvisibleEnterFrame(param1:DisplayObject) : void
      {
         param1.addEventListener(Event.ENTER_FRAME,checkInvisibleEnterFrame,false,9999999,true);
      }
      
      public static function resumeInvisibleEnterFrame(param1:DisplayObject) : void
      {
         param1.removeEventListener(Event.ENTER_FRAME,checkInvisibleEnterFrame);
      }
      
      public static function checkInvisibleEnterFrame(param1:Event) : void
      {
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(!_loc2_.stage)
         {
            param1.stopImmediatePropagation();
         }
      }
      
      public static function localizeMatrix(param1:DisplayObject, param2:DisplayObject) : Matrix
      {
         var _loc5_:Point = null;
         var _loc3_:Matrix = param2.transform.concatenatedMatrix;
         var _loc4_:Matrix = param1.transform.concatenatedMatrix;
         _loc4_.invert();
         _loc3_.concat(_loc4_);
         if(param2.cacheAsBitmap || param1.cacheAsBitmap)
         {
            _loc5_ = Util.localizePoint(param1,param2);
            _loc3_.tx = _loc5_.x;
            _loc3_.ty = _loc5_.y;
         }
         return _loc3_;
      }
      
      public static function localizePoint(param1:DisplayObject, param2:DisplayObject, param3:Point = null) : Point
      {
         return param1.globalToLocal(param2.localToGlobal(param3 ? param3 : new Point(0,0)));
      }
      
      public static function localizeRotation(param1:DisplayObject, param2:DisplayObject, param3:Number = 0) : Number
      {
         return param3 + globalRotation(param2) - globalRotation(param1);
      }
      
      public static function globalRotation(param1:DisplayObject) : Number
      {
         var _loc2_:Number = param1.rotation;
         while(true)
         {
            param1 = param1.parent;
            if(!param1)
            {
               break;
            }
            _loc2_ += param1.rotation;
         }
         return _loc2_;
      }
      
      public static function getRoot(param1:DisplayObject) : DisplayObject
      {
         while(param1.parent)
         {
            param1 = param1.parent;
         }
         return param1;
      }
      
      public static function bounds(param1:DisplayObject, param2:Boolean = false) : Rectangle
      {
         return param2 ? param1.getBounds(param1) : param1.getRect(param1);
      }
      
      public static function getDisplayObjectByPath(param1:DisplayObject, param2:String, param3:DisplayObjectContainer = null) : DisplayObject
      {
         if(param2.charAt(0) == "/")
         {
            param1 = param3 ? param3 : getRoot(param1);
            param2 = param2.substr(1);
         }
         var _loc4_:Array = param2.split("/");
         var _loc5_:uint = 0;
         while(_loc5_ < _loc4_.length)
         {
            if(_loc4_[_loc5_] == "..")
            {
               param1 = param1.parent;
            }
            else if(_loc4_[_loc5_] != ".")
            {
               param1 = (param1 as DisplayObjectContainer).getChildByName(_loc4_[_loc5_]);
            }
            _loc5_++;
         }
         return param1;
      }
      
      public static function getObjectsUnderPointByClass(param1:DisplayObjectContainer, param2:Point, param3:Class, param4:int = 0, param5:Array = null) : Array
      {
         var _loc9_:DisplayObject = null;
         var _loc6_:Array = param1.stage.getObjectsUnderPoint(param2);
         var _loc7_:Array = [];
         param5 ||= [];
         var _loc8_:* = int(_loc6_.length - 1);
         loop0:
         while(_loc8_ >= 0)
         {
            _loc9_ = _loc6_[_loc8_];
            while(true)
            {
               if(!_loc9_)
               {
                  _loc8_--;
                  continue loop0;
               }
               if(param5.indexOf(_loc9_) == -1)
               {
                  if(_loc9_ is param3)
                  {
                     _loc7_.push(_loc9_);
                     if(param4 > 0 && _loc7_.length == param4)
                     {
                        break;
                     }
                     param5.push(_loc9_);
                  }
               }
               _loc9_ = _loc9_.parent;
            }
            return _loc7_;
         }
         return _loc7_;
      }
      
      public static function sign(param1:Number) : int
      {
         return isNaN(param1) ? 0 : (param1 > 0 ? 1 : (param1 < 0 ? -1 : 0));
      }
      
      public static function incrementAngleToTarget(param1:Number, param2:Number, param3:Number) : Number
      {
         param2 = findBetterAngleTarget(param1,param2);
         if(param2 > param1)
         {
            param1 += param3;
            if(param1 > param2)
            {
               param1 = param2;
            }
         }
         else if(param1 > param2)
         {
            param1 -= param3;
            if(param2 > param1)
            {
               param1 = param2;
            }
         }
         return param1;
      }
      
      public static function findBetterAngleTarget(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = param2 % 360;
         _loc3_ = param1 + _loc3_ - param1 % 360;
         if(_loc3_ - param1 > 180)
         {
            _loc3_ -= 360;
         }
         else if(param1 - _loc3_ > 180)
         {
            _loc3_ += 360;
         }
         return _loc3_;
      }
      
      public static function linearEase(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         return param2 + param3 * param1 / param4;
      }
      
      public static function sinEaseIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         return -param3 * Math.cos(param1 / param4 * (Math.PI / 2)) + param3 + param2;
      }
      
      public static function sinEaseOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         return param3 * Math.sin(param1 / param4 * (Math.PI / 2)) + param2;
      }
      
      public static function sinEaseInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         return -param3 / 2 * (Math.cos(Math.PI * param1 / param4) - 1) + param2;
      }
      
      public static function sleep(param1:int) : void
      {
         var _loc2_:int = getTimer();
         while(getTimer() - _loc2_ < param1)
         {
         }
      }
      
      public static function killEvent(param1:Event) : void
      {
         param1.stopImmediatePropagation();
      }
   }
}

