package alternativa.engine3d.core
{
   import alternativa.engine3d.alternativa3d;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.display.StageAlign;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   import flash.system.System;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedClassName;
   import flash.utils.getQualifiedSuperclassName;
   import flash.utils.getTimer;
   
   use namespace alternativa3d;
   
   public class Camera3D extends Object3D
   {
      
      public var farClipping:Number = 1.7976931348623157e+308;
      
      private var timerTextField:TextField;
      
      public var nearClipping:Number = 0;
      
      private var debugSet:Object = new Object();
      
      alternativa3d var lastFace:Face;
      
      alternativa3d var lights:Vector.<Light3D> = new Vector.<Light3D>();
      
      alternativa3d var numPolygons:int;
      
      alternativa3d var lastWrapper:Wrapper;
      
      private var firstFace:Face = new Face();
      
      private var timeCount:int;
      
      private var timeSum:int;
      
      private var graph:Bitmap;
      
      public var debug:Boolean = false;
      
      private var polygonsTextField:TextField;
      
      alternativa3d var occluders:Vector.<Vertex> = new Vector.<Vertex>();
      
      alternativa3d var lightsLength:int = 0;
      
      private var timer:int;
      
      public var fpsUpdatePeriod:int = 10;
      
      alternativa3d var numOccluders:int;
      
      alternativa3d var occludedAll:Boolean;
      
      private var _diagramVerticalMargin:Number = 2;
      
      private var firstVertex:Vertex = new Vertex();
      
      alternativa3d var numTriangles:int;
      
      private var fpsUpdateCounter:int;
      
      private var previousPeriodTime:int;
      
      private var _diagram:Sprite = this.createDiagram();
      
      private var maxMemory:int;
      
      private var trianglesTextField:TextField;
      
      private var previousFrameTime:int;
      
      public var view:View;
      
      alternativa3d var focalLength:Number;
      
      private var timerUpdateCounter:int;
      
      private var _diagramHorizontalMargin:Number = 2;
      
      private var firstWrapper:Wrapper = new Wrapper();
      
      alternativa3d var numDraws:int;
      
      private var memoryTextField:TextField;
      
      public var fov:Number = 1.5707963267948966;
      
      public var timerUpdatePeriod:int = 10;
      
      private var _diagramAlign:String = "TR";
      
      alternativa3d var viewSizeX:Number;
      
      alternativa3d var viewSizeY:Number;
      
      private var drawsTextField:TextField;
      
      alternativa3d var lastVertex:Vertex = this.firstVertex;
      
      private var fpsTextField:TextField;
      
      private var rect:Rectangle;
      
      public function Camera3D()
      {
         this.lastWrapper = this.firstWrapper;
         this.lastFace = this.firstFace;
         super();
      }
      
      public function startTimer() : void
      {
         this.timer = getTimer();
      }
      
      alternativa3d function checkInDebug(param1:Object3D) : int
      {
         var _loc4_:Class = null;
         var _loc2_:int = 0;
         var _loc3_:int = 1;
         while(_loc3_ <= 512)
         {
            if(this.debugSet[_loc3_])
            {
               if(Boolean(this.debugSet[_loc3_][Object3D]) || Boolean(this.debugSet[_loc3_][param1]))
               {
                  _loc2_ |= _loc3_;
               }
               else
               {
                  _loc4_ = getDefinitionByName(getQualifiedClassName(param1)) as Class;
                  while(_loc4_ != Object3D)
                  {
                     if(this.debugSet[_loc3_][_loc4_])
                     {
                        _loc2_ |= _loc3_;
                        break;
                     }
                     _loc4_ = Class(getDefinitionByName(getQualifiedSuperclassName(_loc4_)));
                  }
               }
            }
            _loc3_ <<= 1;
         }
         return _loc2_;
      }
      
      public function projectGlobal(param1:Vector3D) : Vector3D
      {
         if(this.view == null)
         {
            throw new Error("It is necessary to have view set.");
         }
         this.viewSizeX = this.view._width * 0.5;
         this.viewSizeY = this.view._height * 0.5;
         this.focalLength = Math.sqrt(this.viewSizeX * this.viewSizeX + this.viewSizeY * this.viewSizeY) / Math.tan(this.fov * 0.5);
         this.composeCameraMatrix();
         var _loc2_:Object3D = this;
         while(_loc2_._parent != null)
         {
            _loc2_ = _loc2_._parent;
            tA.composeMatrixFromSource(_loc2_);
            appendMatrix(tA);
         }
         invertMatrix();
         var _loc3_:Vector3D = new Vector3D();
         _loc3_.x = ma * param1.x + mb * param1.y + mc * param1.z + md;
         _loc3_.y = me * param1.x + mf * param1.y + mg * param1.z + mh;
         _loc3_.z = mi * param1.x + mj * param1.y + mk * param1.z + ml;
         _loc3_.x = _loc3_.x * this.viewSizeX / _loc3_.z + this.viewSizeX;
         _loc3_.y = _loc3_.y * this.viewSizeY / _loc3_.z + this.viewSizeY;
         return _loc3_;
      }
      
      alternativa3d function deferredDestroy() : void
      {
         var _loc2_:Wrapper = null;
         var _loc3_:Wrapper = null;
         var _loc1_:Face = this.firstFace.next;
         while(_loc1_ != null)
         {
            _loc2_ = _loc1_.wrapper;
            if(_loc2_ != null)
            {
               _loc3_ = null;
               while(_loc2_ != null)
               {
                  _loc2_.vertex = null;
                  _loc3_ = _loc2_;
                  _loc2_ = _loc2_.next;
               }
               this.lastWrapper.next = _loc1_.wrapper;
               this.lastWrapper = _loc3_;
            }
            _loc1_.material = null;
            _loc1_.wrapper = null;
            _loc1_ = _loc1_.next;
         }
         if(this.firstFace != this.lastFace)
         {
            this.lastFace.next = Face.collector;
            Face.collector = this.firstFace.next;
            this.firstFace.next = null;
            this.lastFace = this.firstFace;
         }
         if(this.firstWrapper != this.lastWrapper)
         {
            this.lastWrapper.next = Wrapper.collector;
            Wrapper.collector = this.firstWrapper.next;
            this.firstWrapper.next = null;
            this.lastWrapper = this.firstWrapper;
         }
         if(this.firstVertex != this.lastVertex)
         {
            this.lastVertex.next = Vertex.collector;
            Vertex.collector = this.firstVertex.next;
            this.firstVertex.next = null;
            this.lastVertex = this.firstVertex;
         }
      }
      
      public function lookAt(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         _loc4_ = param1 - this.x;
         _loc5_ = param2 - this.y;
         var _loc6_:Number = param3 - this.z;
         rotationX = Math.atan2(_loc6_,Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) - Math.PI / 2;
         rotationY = 0;
         rotationZ = -Math.atan2(_loc4_,_loc5_);
      }
      
      private function createDiagram() : Sprite
      {
         var diagram:Sprite = null;
         diagram = new Sprite();
         diagram.mouseEnabled = false;
         diagram.mouseChildren = false;
         diagram.addEventListener(Event.ADDED_TO_STAGE,function():void
         {
            fpsTextField = new TextField();
            fpsTextField.defaultTextFormat = new TextFormat("Tahoma",10,13421772);
            fpsTextField.autoSize = TextFieldAutoSize.LEFT;
            fpsTextField.text = "FPS:";
            fpsTextField.selectable = false;
            fpsTextField.x = -3;
            fpsTextField.y = -5;
            diagram.addChild(fpsTextField);
            fpsTextField = new TextField();
            fpsTextField.defaultTextFormat = new TextFormat("Tahoma",10,13421772);
            fpsTextField.autoSize = TextFieldAutoSize.RIGHT;
            fpsTextField.text = Number(diagram.stage.frameRate).toFixed(2);
            fpsTextField.selectable = false;
            fpsTextField.x = -3;
            fpsTextField.y = -5;
            fpsTextField.width = 65;
            diagram.addChild(fpsTextField);
            timerTextField = new TextField();
            timerTextField.defaultTextFormat = new TextFormat("Tahoma",10,26367);
            timerTextField.autoSize = TextFieldAutoSize.LEFT;
            timerTextField.text = "MS:";
            timerTextField.selectable = false;
            timerTextField.x = -3;
            timerTextField.y = 4;
            diagram.addChild(timerTextField);
            timerTextField = new TextField();
            timerTextField.defaultTextFormat = new TextFormat("Tahoma",10,26367);
            timerTextField.autoSize = TextFieldAutoSize.RIGHT;
            timerTextField.text = "";
            timerTextField.selectable = false;
            timerTextField.x = -3;
            timerTextField.y = 4;
            timerTextField.width = 65;
            diagram.addChild(timerTextField);
            memoryTextField = new TextField();
            memoryTextField.defaultTextFormat = new TextFormat("Tahoma",10,13421568);
            memoryTextField.autoSize = TextFieldAutoSize.LEFT;
            memoryTextField.text = "MEM:";
            memoryTextField.selectable = false;
            memoryTextField.x = -3;
            memoryTextField.y = 13;
            diagram.addChild(memoryTextField);
            memoryTextField = new TextField();
            memoryTextField.defaultTextFormat = new TextFormat("Tahoma",10,13421568);
            memoryTextField.autoSize = TextFieldAutoSize.RIGHT;
            memoryTextField.text = bytesToString(System.totalMemory);
            memoryTextField.selectable = false;
            memoryTextField.x = -3;
            memoryTextField.y = 13;
            memoryTextField.width = 65;
            diagram.addChild(memoryTextField);
            drawsTextField = new TextField();
            drawsTextField.defaultTextFormat = new TextFormat("Tahoma",10,52224);
            drawsTextField.autoSize = TextFieldAutoSize.LEFT;
            drawsTextField.text = "DRW:";
            drawsTextField.selectable = false;
            drawsTextField.x = -3;
            drawsTextField.y = 22;
            diagram.addChild(drawsTextField);
            drawsTextField = new TextField();
            drawsTextField.defaultTextFormat = new TextFormat("Tahoma",10,52224);
            drawsTextField.autoSize = TextFieldAutoSize.RIGHT;
            drawsTextField.text = "0";
            drawsTextField.selectable = false;
            drawsTextField.x = -3;
            drawsTextField.y = 22;
            drawsTextField.width = 52;
            diagram.addChild(drawsTextField);
            polygonsTextField = new TextField();
            polygonsTextField.defaultTextFormat = new TextFormat("Tahoma",10,16711731);
            polygonsTextField.autoSize = TextFieldAutoSize.LEFT;
            polygonsTextField.text = "PLG:";
            polygonsTextField.selectable = false;
            polygonsTextField.x = -3;
            polygonsTextField.y = 31;
            diagram.addChild(polygonsTextField);
            polygonsTextField = new TextField();
            polygonsTextField.defaultTextFormat = new TextFormat("Tahoma",10,16711731);
            polygonsTextField.autoSize = TextFieldAutoSize.RIGHT;
            polygonsTextField.text = "0";
            polygonsTextField.selectable = false;
            polygonsTextField.x = -3;
            polygonsTextField.y = 31;
            polygonsTextField.width = 52;
            diagram.addChild(polygonsTextField);
            trianglesTextField = new TextField();
            trianglesTextField.defaultTextFormat = new TextFormat("Tahoma",10,16737792);
            trianglesTextField.autoSize = TextFieldAutoSize.LEFT;
            trianglesTextField.text = "TRI:";
            trianglesTextField.selectable = false;
            trianglesTextField.x = -3;
            trianglesTextField.y = 40;
            diagram.addChild(trianglesTextField);
            trianglesTextField = new TextField();
            trianglesTextField.defaultTextFormat = new TextFormat("Tahoma",10,16737792);
            trianglesTextField.autoSize = TextFieldAutoSize.RIGHT;
            trianglesTextField.text = "0";
            trianglesTextField.selectable = false;
            trianglesTextField.x = -3;
            trianglesTextField.y = 40;
            trianglesTextField.width = 52;
            diagram.addChild(trianglesTextField);
            graph = new Bitmap(new BitmapData(60,40,true,553648127));
            rect = new Rectangle(0,0,1,40);
            graph.x = 0;
            graph.y = 54;
            diagram.addChild(graph);
            previousPeriodTime = getTimer();
            previousFrameTime = previousPeriodTime;
            fpsUpdateCounter = 0;
            maxMemory = 0;
            timerUpdateCounter = 0;
            timeSum = 0;
            timeCount = 0;
            diagram.stage.addEventListener(Event.ENTER_FRAME,updateDiagram,false,-1000);
            diagram.stage.addEventListener(Event.RESIZE,resizeDiagram,false,-1000);
            resizeDiagram();
         });
         diagram.addEventListener(Event.REMOVED_FROM_STAGE,function():void
         {
            diagram.removeChild(fpsTextField);
            diagram.removeChild(memoryTextField);
            diagram.removeChild(drawsTextField);
            diagram.removeChild(polygonsTextField);
            diagram.removeChild(trianglesTextField);
            diagram.removeChild(timerTextField);
            diagram.removeChild(graph);
            fpsTextField = null;
            memoryTextField = null;
            drawsTextField = null;
            polygonsTextField = null;
            trianglesTextField = null;
            timerTextField = null;
            graph.bitmapData.dispose();
            graph = null;
            rect = null;
            diagram.stage.removeEventListener(Event.ENTER_FRAME,updateDiagram);
            diagram.stage.removeEventListener(Event.RESIZE,resizeDiagram);
         });
         return diagram;
      }
      
      override protected function clonePropertiesFrom(param1:Object3D) : void
      {
         super.clonePropertiesFrom(param1);
         var _loc2_:Camera3D = param1 as Camera3D;
         this.fov = _loc2_.fov;
         this.nearClipping = _loc2_.nearClipping;
         this.farClipping = _loc2_.farClipping;
         this.debug = _loc2_.debug;
      }
      
      alternativa3d function clip(param1:Face, param2:int) : Face
      {
         var _loc3_:Face = null;
         var _loc4_:Face = null;
         var _loc5_:Face = null;
         var _loc6_:Vertex = null;
         var _loc7_:Vertex = null;
         var _loc8_:Vertex = null;
         var _loc9_:Wrapper = null;
         var _loc10_:Vertex = null;
         var _loc11_:Wrapper = null;
         var _loc12_:Wrapper = null;
         var _loc13_:Wrapper = null;
         var _loc14_:Wrapper = null;
         var _loc15_:Wrapper = null;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc35_:int = 0;
         var _loc36_:Number = NaN;
         var _loc38_:Boolean = false;
         var _loc39_:Face = null;
         var _loc25_:Boolean = (param2 & 1) > 0;
         var _loc26_:Boolean = (param2 & 2) > 0;
         var _loc27_:Boolean = (param2 & 4) > 0;
         var _loc28_:Boolean = (param2 & 8) > 0;
         var _loc29_:Boolean = (param2 & 0x10) > 0;
         var _loc30_:Boolean = (param2 & 0x20) > 0;
         var _loc31_:Number = this.nearClipping;
         var _loc32_:Number = this.farClipping;
         var _loc33_:Boolean = _loc27_ || _loc28_;
         var _loc34_:Boolean = _loc29_ || _loc30_;
         var _loc37_:Face = param1;
         for(; _loc37_ != null; _loc37_ = _loc5_)
         {
            _loc5_ = _loc37_.processNext;
            _loc9_ = _loc37_.wrapper;
            _loc6_ = _loc9_.vertex;
            _loc9_ = _loc9_.next;
            _loc7_ = _loc9_.vertex;
            _loc9_ = _loc9_.next;
            _loc8_ = _loc9_.vertex;
            _loc9_ = _loc9_.next;
            if(_loc33_)
            {
               _loc16_ = _loc6_.cameraX;
               _loc19_ = _loc7_.cameraX;
               _loc22_ = _loc8_.cameraX;
            }
            if(_loc34_)
            {
               _loc17_ = _loc6_.cameraY;
               _loc20_ = _loc7_.cameraY;
               _loc23_ = _loc8_.cameraY;
            }
            _loc18_ = _loc6_.cameraZ;
            _loc21_ = _loc7_.cameraZ;
            _loc24_ = _loc8_.cameraZ;
            _loc35_ = 0;
            if(_loc25_)
            {
               if(_loc18_ <= _loc31_ && _loc21_ <= _loc31_ && _loc24_ <= _loc31_)
               {
                  _loc11_ = _loc9_;
                  while(_loc11_ != null)
                  {
                     if(_loc11_.vertex.cameraZ > _loc31_)
                     {
                        _loc35_ |= 1;
                        break;
                     }
                     _loc11_ = _loc11_.next;
                  }
                  if(_loc11_ == null)
                  {
                     _loc37_.processNext = null;
                     continue;
                  }
               }
               else if(_loc18_ > _loc31_ && _loc21_ > _loc31_ && _loc24_ > _loc31_)
               {
                  _loc11_ = _loc9_;
                  while(_loc11_ != null)
                  {
                     if(_loc11_.vertex.cameraZ <= _loc31_)
                     {
                        _loc35_ |= 1;
                        break;
                     }
                     _loc11_ = _loc11_.next;
                  }
               }
               else
               {
                  _loc35_ |= 1;
               }
            }
            if(_loc26_)
            {
               if(_loc18_ >= _loc32_ && _loc21_ >= _loc32_ && _loc24_ >= _loc32_)
               {
                  _loc11_ = _loc9_;
                  while(_loc11_ != null)
                  {
                     if(_loc11_.vertex.cameraZ < _loc32_)
                     {
                        _loc35_ |= 2;
                        break;
                     }
                     _loc11_ = _loc11_.next;
                  }
                  if(_loc11_ == null)
                  {
                     _loc37_.processNext = null;
                     continue;
                  }
               }
               else if(_loc18_ < _loc32_ && _loc21_ < _loc32_ && _loc24_ < _loc32_)
               {
                  _loc11_ = _loc9_;
                  while(_loc11_ != null)
                  {
                     if(_loc11_.vertex.cameraZ >= _loc32_)
                     {
                        _loc35_ |= 2;
                        break;
                     }
                     _loc11_ = _loc11_.next;
                  }
               }
               else
               {
                  _loc35_ |= 2;
               }
            }
            if(_loc27_)
            {
               if(_loc18_ <= -_loc16_ && _loc21_ <= -_loc19_ && _loc24_ <= -_loc22_)
               {
                  _loc11_ = _loc9_;
                  while(_loc11_ != null)
                  {
                     _loc10_ = _loc11_.vertex;
                     if(-_loc10_.cameraX < _loc10_.cameraZ)
                     {
                        _loc35_ |= 4;
                        break;
                     }
                     _loc11_ = _loc11_.next;
                  }
                  if(_loc11_ == null)
                  {
                     _loc37_.processNext = null;
                     continue;
                  }
               }
               else if(_loc18_ > -_loc16_ && _loc21_ > -_loc19_ && _loc24_ > -_loc22_)
               {
                  _loc11_ = _loc9_;
                  while(_loc11_ != null)
                  {
                     _loc10_ = _loc11_.vertex;
                     if(-_loc10_.cameraX >= _loc10_.cameraZ)
                     {
                        _loc35_ |= 4;
                        break;
                     }
                     _loc11_ = _loc11_.next;
                  }
               }
               else
               {
                  _loc35_ |= 4;
               }
            }
            if(_loc28_)
            {
               if(_loc18_ <= _loc16_ && _loc21_ <= _loc19_ && _loc24_ <= _loc22_)
               {
                  _loc11_ = _loc9_;
                  while(_loc11_ != null)
                  {
                     _loc10_ = _loc11_.vertex;
                     if(_loc10_.cameraX < _loc10_.cameraZ)
                     {
                        _loc35_ |= 8;
                        break;
                     }
                     _loc11_ = _loc11_.next;
                  }
                  if(_loc11_ == null)
                  {
                     _loc37_.processNext = null;
                     continue;
                  }
               }
               else if(_loc18_ > _loc16_ && _loc21_ > _loc19_ && _loc24_ > _loc22_)
               {
                  _loc11_ = _loc9_;
                  while(_loc11_ != null)
                  {
                     _loc10_ = _loc11_.vertex;
                     if(_loc10_.cameraX >= _loc10_.cameraZ)
                     {
                        _loc35_ |= 8;
                        break;
                     }
                     _loc11_ = _loc11_.next;
                  }
               }
               else
               {
                  _loc35_ |= 8;
               }
            }
            if(_loc29_)
            {
               if(_loc18_ <= -_loc17_ && _loc21_ <= -_loc20_ && _loc24_ <= -_loc23_)
               {
                  _loc11_ = _loc9_;
                  while(_loc11_ != null)
                  {
                     _loc10_ = _loc11_.vertex;
                     if(-_loc10_.cameraY < _loc10_.cameraZ)
                     {
                        _loc35_ |= 16;
                        break;
                     }
                     _loc11_ = _loc11_.next;
                  }
                  if(_loc11_ == null)
                  {
                     _loc37_.processNext = null;
                     continue;
                  }
               }
               else if(_loc18_ > -_loc17_ && _loc21_ > -_loc20_ && _loc24_ > -_loc23_)
               {
                  _loc11_ = _loc9_;
                  while(_loc11_ != null)
                  {
                     _loc10_ = _loc11_.vertex;
                     if(-_loc10_.cameraY >= _loc10_.cameraZ)
                     {
                        _loc35_ |= 16;
                        break;
                     }
                     _loc11_ = _loc11_.next;
                  }
               }
               else
               {
                  _loc35_ |= 16;
               }
            }
            if(_loc30_)
            {
               if(_loc18_ <= _loc17_ && _loc21_ <= _loc20_ && _loc24_ <= _loc23_)
               {
                  _loc11_ = _loc9_;
                  while(_loc11_ != null)
                  {
                     _loc10_ = _loc11_.vertex;
                     if(_loc10_.cameraY < _loc10_.cameraZ)
                     {
                        _loc35_ |= 32;
                        break;
                     }
                     _loc11_ = _loc11_.next;
                  }
                  if(_loc11_ == null)
                  {
                     _loc37_.processNext = null;
                     continue;
                  }
               }
               else if(_loc18_ > _loc17_ && _loc21_ > _loc20_ && _loc24_ > _loc23_)
               {
                  _loc11_ = _loc9_;
                  while(_loc11_ != null)
                  {
                     _loc10_ = _loc11_.vertex;
                     if(_loc10_.cameraY >= _loc10_.cameraZ)
                     {
                        _loc35_ |= 32;
                        break;
                     }
                     _loc11_ = _loc11_.next;
                  }
               }
               else
               {
                  _loc35_ |= 32;
               }
            }
            if(_loc35_ > 0)
            {
               _loc38_ = _loc37_.material != null && _loc37_.material.useVerticesNormals;
               _loc12_ = null;
               _loc13_ = null;
               _loc11_ = _loc37_.wrapper;
               while(_loc11_ != null)
               {
                  _loc15_ = _loc11_.create();
                  _loc15_.vertex = _loc11_.vertex;
                  if(_loc12_ != null)
                  {
                     _loc13_.next = _loc15_;
                  }
                  else
                  {
                     _loc12_ = _loc15_;
                  }
                  _loc13_ = _loc15_;
                  _loc11_ = _loc11_.next;
               }
               if(_loc35_ & 1)
               {
                  _loc6_ = _loc13_.vertex;
                  _loc18_ = _loc6_.cameraZ;
                  _loc11_ = _loc12_;
                  _loc12_ = null;
                  _loc13_ = null;
                  while(_loc11_ != null)
                  {
                     _loc14_ = _loc11_.next;
                     _loc7_ = _loc11_.vertex;
                     _loc21_ = _loc7_.cameraZ;
                     if(_loc21_ > _loc31_ && _loc18_ <= _loc31_ || _loc21_ <= _loc31_ && _loc18_ > _loc31_)
                     {
                        _loc36_ = (_loc31_ - _loc18_) / (_loc21_ - _loc18_);
                        _loc10_ = _loc7_.create();
                        this.lastVertex.next = _loc10_;
                        this.lastVertex = _loc10_;
                        _loc10_.cameraX = _loc6_.cameraX + (_loc7_.cameraX - _loc6_.cameraX) * _loc36_;
                        _loc10_.cameraY = _loc6_.cameraY + (_loc7_.cameraY - _loc6_.cameraY) * _loc36_;
                        _loc10_.cameraZ = _loc18_ + (_loc21_ - _loc18_) * _loc36_;
                        _loc10_.x = _loc6_.x + (_loc7_.x - _loc6_.x) * _loc36_;
                        _loc10_.y = _loc6_.y + (_loc7_.y - _loc6_.y) * _loc36_;
                        _loc10_.z = _loc6_.z + (_loc7_.z - _loc6_.z) * _loc36_;
                        _loc10_.u = _loc6_.u + (_loc7_.u - _loc6_.u) * _loc36_;
                        _loc10_.v = _loc6_.v + (_loc7_.v - _loc6_.v) * _loc36_;
                        if(_loc38_)
                        {
                           _loc10_.normalX = _loc6_.normalX + (_loc7_.normalX - _loc6_.normalX) * _loc36_;
                           _loc10_.normalY = _loc6_.normalY + (_loc7_.normalY - _loc6_.normalY) * _loc36_;
                           _loc10_.normalZ = _loc6_.normalZ + (_loc7_.normalZ - _loc6_.normalZ) * _loc36_;
                        }
                        _loc15_ = _loc11_.create();
                        _loc15_.vertex = _loc10_;
                        if(_loc12_ != null)
                        {
                           _loc13_.next = _loc15_;
                        }
                        else
                        {
                           _loc12_ = _loc15_;
                        }
                        _loc13_ = _loc15_;
                     }
                     if(_loc21_ > _loc31_)
                     {
                        if(_loc12_ != null)
                        {
                           _loc13_.next = _loc11_;
                        }
                        else
                        {
                           _loc12_ = _loc11_;
                        }
                        _loc13_ = _loc11_;
                        _loc11_.next = null;
                     }
                     else
                     {
                        _loc11_.vertex = null;
                        _loc11_.next = Wrapper.collector;
                        Wrapper.collector = _loc11_;
                     }
                     _loc6_ = _loc7_;
                     _loc18_ = _loc21_;
                     _loc11_ = _loc14_;
                  }
                  if(_loc12_ == null)
                  {
                     _loc37_.processNext = null;
                     continue;
                  }
               }
               if(_loc35_ & 2)
               {
                  _loc6_ = _loc13_.vertex;
                  _loc18_ = _loc6_.cameraZ;
                  _loc11_ = _loc12_;
                  _loc12_ = null;
                  _loc13_ = null;
                  while(_loc11_ != null)
                  {
                     _loc14_ = _loc11_.next;
                     _loc7_ = _loc11_.vertex;
                     _loc21_ = _loc7_.cameraZ;
                     if(_loc21_ < _loc32_ && _loc18_ >= _loc32_ || _loc21_ >= _loc32_ && _loc18_ < _loc32_)
                     {
                        _loc36_ = (_loc32_ - _loc18_) / (_loc21_ - _loc18_);
                        _loc10_ = _loc7_.create();
                        this.lastVertex.next = _loc10_;
                        this.lastVertex = _loc10_;
                        _loc10_.cameraX = _loc6_.cameraX + (_loc7_.cameraX - _loc6_.cameraX) * _loc36_;
                        _loc10_.cameraY = _loc6_.cameraY + (_loc7_.cameraY - _loc6_.cameraY) * _loc36_;
                        _loc10_.cameraZ = _loc18_ + (_loc21_ - _loc18_) * _loc36_;
                        _loc10_.x = _loc6_.x + (_loc7_.x - _loc6_.x) * _loc36_;
                        _loc10_.y = _loc6_.y + (_loc7_.y - _loc6_.y) * _loc36_;
                        _loc10_.z = _loc6_.z + (_loc7_.z - _loc6_.z) * _loc36_;
                        _loc10_.u = _loc6_.u + (_loc7_.u - _loc6_.u) * _loc36_;
                        _loc10_.v = _loc6_.v + (_loc7_.v - _loc6_.v) * _loc36_;
                        if(_loc38_)
                        {
                           _loc10_.normalX = _loc6_.normalX + (_loc7_.normalX - _loc6_.normalX) * _loc36_;
                           _loc10_.normalY = _loc6_.normalY + (_loc7_.normalY - _loc6_.normalY) * _loc36_;
                           _loc10_.normalZ = _loc6_.normalZ + (_loc7_.normalZ - _loc6_.normalZ) * _loc36_;
                        }
                        _loc15_ = _loc11_.create();
                        _loc15_.vertex = _loc10_;
                        if(_loc12_ != null)
                        {
                           _loc13_.next = _loc15_;
                        }
                        else
                        {
                           _loc12_ = _loc15_;
                        }
                        _loc13_ = _loc15_;
                     }
                     if(_loc21_ < _loc32_)
                     {
                        if(_loc12_ != null)
                        {
                           _loc13_.next = _loc11_;
                        }
                        else
                        {
                           _loc12_ = _loc11_;
                        }
                        _loc13_ = _loc11_;
                        _loc11_.next = null;
                     }
                     else
                     {
                        _loc11_.vertex = null;
                        _loc11_.next = Wrapper.collector;
                        Wrapper.collector = _loc11_;
                     }
                     _loc6_ = _loc7_;
                     _loc18_ = _loc21_;
                     _loc11_ = _loc14_;
                  }
                  if(_loc12_ == null)
                  {
                     _loc37_.processNext = null;
                     continue;
                  }
               }
               if(_loc35_ & 4)
               {
                  _loc6_ = _loc13_.vertex;
                  _loc16_ = _loc6_.cameraX;
                  _loc18_ = _loc6_.cameraZ;
                  _loc11_ = _loc12_;
                  _loc12_ = null;
                  _loc13_ = null;
                  while(_loc11_ != null)
                  {
                     _loc14_ = _loc11_.next;
                     _loc7_ = _loc11_.vertex;
                     _loc19_ = _loc7_.cameraX;
                     _loc21_ = _loc7_.cameraZ;
                     if(_loc21_ > -_loc19_ && _loc18_ <= -_loc16_ || _loc21_ <= -_loc19_ && _loc18_ > -_loc16_)
                     {
                        _loc36_ = (_loc16_ + _loc18_) / (_loc16_ + _loc18_ - _loc19_ - _loc21_);
                        _loc10_ = _loc7_.create();
                        this.lastVertex.next = _loc10_;
                        this.lastVertex = _loc10_;
                        _loc10_.cameraX = _loc16_ + (_loc19_ - _loc16_) * _loc36_;
                        _loc10_.cameraY = _loc6_.cameraY + (_loc7_.cameraY - _loc6_.cameraY) * _loc36_;
                        _loc10_.cameraZ = _loc18_ + (_loc21_ - _loc18_) * _loc36_;
                        _loc10_.x = _loc6_.x + (_loc7_.x - _loc6_.x) * _loc36_;
                        _loc10_.y = _loc6_.y + (_loc7_.y - _loc6_.y) * _loc36_;
                        _loc10_.z = _loc6_.z + (_loc7_.z - _loc6_.z) * _loc36_;
                        _loc10_.u = _loc6_.u + (_loc7_.u - _loc6_.u) * _loc36_;
                        _loc10_.v = _loc6_.v + (_loc7_.v - _loc6_.v) * _loc36_;
                        if(_loc38_)
                        {
                           _loc10_.normalX = _loc6_.normalX + (_loc7_.normalX - _loc6_.normalX) * _loc36_;
                           _loc10_.normalY = _loc6_.normalY + (_loc7_.normalY - _loc6_.normalY) * _loc36_;
                           _loc10_.normalZ = _loc6_.normalZ + (_loc7_.normalZ - _loc6_.normalZ) * _loc36_;
                        }
                        _loc15_ = _loc11_.create();
                        _loc15_.vertex = _loc10_;
                        if(_loc12_ != null)
                        {
                           _loc13_.next = _loc15_;
                        }
                        else
                        {
                           _loc12_ = _loc15_;
                        }
                        _loc13_ = _loc15_;
                     }
                     if(_loc21_ > -_loc19_)
                     {
                        if(_loc12_ != null)
                        {
                           _loc13_.next = _loc11_;
                        }
                        else
                        {
                           _loc12_ = _loc11_;
                        }
                        _loc13_ = _loc11_;
                        _loc11_.next = null;
                     }
                     else
                     {
                        _loc11_.vertex = null;
                        _loc11_.next = Wrapper.collector;
                        Wrapper.collector = _loc11_;
                     }
                     _loc6_ = _loc7_;
                     _loc16_ = _loc19_;
                     _loc18_ = _loc21_;
                     _loc11_ = _loc14_;
                  }
                  if(_loc12_ == null)
                  {
                     _loc37_.processNext = null;
                     continue;
                  }
               }
               if(_loc35_ & 8)
               {
                  _loc6_ = _loc13_.vertex;
                  _loc16_ = _loc6_.cameraX;
                  _loc18_ = _loc6_.cameraZ;
                  _loc11_ = _loc12_;
                  _loc12_ = null;
                  _loc13_ = null;
                  while(_loc11_ != null)
                  {
                     _loc14_ = _loc11_.next;
                     _loc7_ = _loc11_.vertex;
                     _loc19_ = _loc7_.cameraX;
                     _loc21_ = _loc7_.cameraZ;
                     if(_loc21_ > _loc19_ && _loc18_ <= _loc16_ || _loc21_ <= _loc19_ && _loc18_ > _loc16_)
                     {
                        _loc36_ = (_loc18_ - _loc16_) / (_loc18_ - _loc16_ + _loc19_ - _loc21_);
                        _loc10_ = _loc7_.create();
                        this.lastVertex.next = _loc10_;
                        this.lastVertex = _loc10_;
                        _loc10_.cameraX = _loc16_ + (_loc19_ - _loc16_) * _loc36_;
                        _loc10_.cameraY = _loc6_.cameraY + (_loc7_.cameraY - _loc6_.cameraY) * _loc36_;
                        _loc10_.cameraZ = _loc18_ + (_loc21_ - _loc18_) * _loc36_;
                        _loc10_.x = _loc6_.x + (_loc7_.x - _loc6_.x) * _loc36_;
                        _loc10_.y = _loc6_.y + (_loc7_.y - _loc6_.y) * _loc36_;
                        _loc10_.z = _loc6_.z + (_loc7_.z - _loc6_.z) * _loc36_;
                        _loc10_.u = _loc6_.u + (_loc7_.u - _loc6_.u) * _loc36_;
                        _loc10_.v = _loc6_.v + (_loc7_.v - _loc6_.v) * _loc36_;
                        if(_loc38_)
                        {
                           _loc10_.normalX = _loc6_.normalX + (_loc7_.normalX - _loc6_.normalX) * _loc36_;
                           _loc10_.normalY = _loc6_.normalY + (_loc7_.normalY - _loc6_.normalY) * _loc36_;
                           _loc10_.normalZ = _loc6_.normalZ + (_loc7_.normalZ - _loc6_.normalZ) * _loc36_;
                        }
                        _loc15_ = _loc11_.create();
                        _loc15_.vertex = _loc10_;
                        if(_loc12_ != null)
                        {
                           _loc13_.next = _loc15_;
                        }
                        else
                        {
                           _loc12_ = _loc15_;
                        }
                        _loc13_ = _loc15_;
                     }
                     if(_loc21_ > _loc19_)
                     {
                        if(_loc12_ != null)
                        {
                           _loc13_.next = _loc11_;
                        }
                        else
                        {
                           _loc12_ = _loc11_;
                        }
                        _loc13_ = _loc11_;
                        _loc11_.next = null;
                     }
                     else
                     {
                        _loc11_.vertex = null;
                        _loc11_.next = Wrapper.collector;
                        Wrapper.collector = _loc11_;
                     }
                     _loc6_ = _loc7_;
                     _loc16_ = _loc19_;
                     _loc18_ = _loc21_;
                     _loc11_ = _loc14_;
                  }
                  if(_loc12_ == null)
                  {
                     _loc37_.processNext = null;
                     continue;
                  }
               }
               if(_loc35_ & 0x10)
               {
                  _loc6_ = _loc13_.vertex;
                  _loc17_ = _loc6_.cameraY;
                  _loc18_ = _loc6_.cameraZ;
                  _loc11_ = _loc12_;
                  _loc12_ = null;
                  _loc13_ = null;
                  while(_loc11_ != null)
                  {
                     _loc14_ = _loc11_.next;
                     _loc7_ = _loc11_.vertex;
                     _loc20_ = _loc7_.cameraY;
                     _loc21_ = _loc7_.cameraZ;
                     if(_loc21_ > -_loc20_ && _loc18_ <= -_loc17_ || _loc21_ <= -_loc20_ && _loc18_ > -_loc17_)
                     {
                        _loc36_ = (_loc17_ + _loc18_) / (_loc17_ + _loc18_ - _loc20_ - _loc21_);
                        _loc10_ = _loc7_.create();
                        this.lastVertex.next = _loc10_;
                        this.lastVertex = _loc10_;
                        _loc10_.cameraX = _loc6_.cameraX + (_loc7_.cameraX - _loc6_.cameraX) * _loc36_;
                        _loc10_.cameraY = _loc17_ + (_loc20_ - _loc17_) * _loc36_;
                        _loc10_.cameraZ = _loc18_ + (_loc21_ - _loc18_) * _loc36_;
                        _loc10_.x = _loc6_.x + (_loc7_.x - _loc6_.x) * _loc36_;
                        _loc10_.y = _loc6_.y + (_loc7_.y - _loc6_.y) * _loc36_;
                        _loc10_.z = _loc6_.z + (_loc7_.z - _loc6_.z) * _loc36_;
                        _loc10_.u = _loc6_.u + (_loc7_.u - _loc6_.u) * _loc36_;
                        _loc10_.v = _loc6_.v + (_loc7_.v - _loc6_.v) * _loc36_;
                        if(_loc38_)
                        {
                           _loc10_.normalX = _loc6_.normalX + (_loc7_.normalX - _loc6_.normalX) * _loc36_;
                           _loc10_.normalY = _loc6_.normalY + (_loc7_.normalY - _loc6_.normalY) * _loc36_;
                           _loc10_.normalZ = _loc6_.normalZ + (_loc7_.normalZ - _loc6_.normalZ) * _loc36_;
                        }
                        _loc15_ = _loc11_.create();
                        _loc15_.vertex = _loc10_;
                        if(_loc12_ != null)
                        {
                           _loc13_.next = _loc15_;
                        }
                        else
                        {
                           _loc12_ = _loc15_;
                        }
                        _loc13_ = _loc15_;
                     }
                     if(_loc21_ > -_loc20_)
                     {
                        if(_loc12_ != null)
                        {
                           _loc13_.next = _loc11_;
                        }
                        else
                        {
                           _loc12_ = _loc11_;
                        }
                        _loc13_ = _loc11_;
                        _loc11_.next = null;
                     }
                     else
                     {
                        _loc11_.vertex = null;
                        _loc11_.next = Wrapper.collector;
                        Wrapper.collector = _loc11_;
                     }
                     _loc6_ = _loc7_;
                     _loc17_ = _loc20_;
                     _loc18_ = _loc21_;
                     _loc11_ = _loc14_;
                  }
                  if(_loc12_ == null)
                  {
                     _loc37_.processNext = null;
                     continue;
                  }
               }
               if(_loc35_ & 0x20)
               {
                  _loc6_ = _loc13_.vertex;
                  _loc17_ = _loc6_.cameraY;
                  _loc18_ = _loc6_.cameraZ;
                  _loc11_ = _loc12_;
                  _loc12_ = null;
                  _loc13_ = null;
                  while(_loc11_ != null)
                  {
                     _loc14_ = _loc11_.next;
                     _loc7_ = _loc11_.vertex;
                     _loc20_ = _loc7_.cameraY;
                     _loc21_ = _loc7_.cameraZ;
                     if(_loc21_ > _loc20_ && _loc18_ <= _loc17_ || _loc21_ <= _loc20_ && _loc18_ > _loc17_)
                     {
                        _loc36_ = (_loc18_ - _loc17_) / (_loc18_ - _loc17_ + _loc20_ - _loc21_);
                        _loc10_ = _loc7_.create();
                        this.lastVertex.next = _loc10_;
                        this.lastVertex = _loc10_;
                        _loc10_.cameraX = _loc6_.cameraX + (_loc7_.cameraX - _loc6_.cameraX) * _loc36_;
                        _loc10_.cameraY = _loc17_ + (_loc20_ - _loc17_) * _loc36_;
                        _loc10_.cameraZ = _loc18_ + (_loc21_ - _loc18_) * _loc36_;
                        _loc10_.x = _loc6_.x + (_loc7_.x - _loc6_.x) * _loc36_;
                        _loc10_.y = _loc6_.y + (_loc7_.y - _loc6_.y) * _loc36_;
                        _loc10_.z = _loc6_.z + (_loc7_.z - _loc6_.z) * _loc36_;
                        _loc10_.u = _loc6_.u + (_loc7_.u - _loc6_.u) * _loc36_;
                        _loc10_.v = _loc6_.v + (_loc7_.v - _loc6_.v) * _loc36_;
                        if(_loc38_)
                        {
                           _loc10_.normalX = _loc6_.normalX + (_loc7_.normalX - _loc6_.normalX) * _loc36_;
                           _loc10_.normalY = _loc6_.normalY + (_loc7_.normalY - _loc6_.normalY) * _loc36_;
                           _loc10_.normalZ = _loc6_.normalZ + (_loc7_.normalZ - _loc6_.normalZ) * _loc36_;
                        }
                        _loc15_ = _loc11_.create();
                        _loc15_.vertex = _loc10_;
                        if(_loc12_ != null)
                        {
                           _loc13_.next = _loc15_;
                        }
                        else
                        {
                           _loc12_ = _loc15_;
                        }
                        _loc13_ = _loc15_;
                     }
                     if(_loc21_ > _loc20_)
                     {
                        if(_loc12_ != null)
                        {
                           _loc13_.next = _loc11_;
                        }
                        else
                        {
                           _loc12_ = _loc11_;
                        }
                        _loc13_ = _loc11_;
                        _loc11_.next = null;
                     }
                     else
                     {
                        _loc11_.vertex = null;
                        _loc11_.next = Wrapper.collector;
                        Wrapper.collector = _loc11_;
                     }
                     _loc6_ = _loc7_;
                     _loc17_ = _loc20_;
                     _loc18_ = _loc21_;
                     _loc11_ = _loc14_;
                  }
                  if(_loc12_ == null)
                  {
                     _loc37_.processNext = null;
                     continue;
                  }
               }
               _loc37_.processNext = null;
               _loc39_ = _loc37_.create();
               _loc39_.material = _loc37_.material;
               this.lastFace.next = _loc39_;
               this.lastFace = _loc39_;
               _loc39_.wrapper = _loc12_;
               _loc37_ = _loc39_;
            }
            if(_loc3_ != null)
            {
               _loc4_.processNext = _loc37_;
            }
            else
            {
               _loc3_ = _loc37_;
            }
            _loc4_ = _loc37_;
         }
         if(_loc4_ != null)
         {
            _loc4_.processNext = null;
         }
         return _loc3_;
      }
      
      override public function clone() : Object3D
      {
         var _loc1_:Camera3D = new Camera3D();
         _loc1_.clonePropertiesFrom(this);
         return _loc1_;
      }
      
      public function stopTimer() : void
      {
         this.timeSum += getTimer() - this.timer;
         ++this.timeCount;
      }
      
      alternativa3d function cull(param1:Face, param2:int) : Face
      {
         var _loc3_:Face = null;
         var _loc4_:Face = null;
         var _loc5_:Face = null;
         var _loc6_:Vertex = null;
         var _loc7_:Vertex = null;
         var _loc8_:Vertex = null;
         var _loc9_:Wrapper = null;
         var _loc10_:Vertex = null;
         var _loc11_:Wrapper = null;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Boolean = (param2 & 1) > 0;
         var _loc22_:Boolean = (param2 & 2) > 0;
         var _loc23_:Boolean = (param2 & 4) > 0;
         var _loc24_:Boolean = (param2 & 8) > 0;
         var _loc25_:Boolean = (param2 & 0x10) > 0;
         var _loc26_:Boolean = (param2 & 0x20) > 0;
         var _loc27_:Number = this.nearClipping;
         var _loc28_:Number = this.farClipping;
         var _loc29_:Boolean = _loc23_ || _loc24_;
         var _loc30_:Boolean = _loc25_ || _loc26_;
         var _loc31_:Face = param1;
         for(; _loc31_ != null; _loc31_ = _loc5_)
         {
            _loc5_ = _loc31_.processNext;
            _loc9_ = _loc31_.wrapper;
            _loc6_ = _loc9_.vertex;
            _loc9_ = _loc9_.next;
            _loc7_ = _loc9_.vertex;
            _loc9_ = _loc9_.next;
            _loc8_ = _loc9_.vertex;
            _loc9_ = _loc9_.next;
            if(_loc29_)
            {
               _loc12_ = _loc6_.cameraX;
               _loc15_ = _loc7_.cameraX;
               _loc18_ = _loc8_.cameraX;
            }
            if(_loc30_)
            {
               _loc13_ = _loc6_.cameraY;
               _loc16_ = _loc7_.cameraY;
               _loc19_ = _loc8_.cameraY;
            }
            _loc14_ = _loc6_.cameraZ;
            _loc17_ = _loc7_.cameraZ;
            _loc20_ = _loc8_.cameraZ;
            if(_loc21_)
            {
               if(_loc14_ <= _loc27_ || _loc17_ <= _loc27_ || _loc20_ <= _loc27_)
               {
                  _loc31_.processNext = null;
                  continue;
               }
               _loc11_ = _loc9_;
               while(_loc11_ != null)
               {
                  if(_loc11_.vertex.cameraZ <= _loc27_)
                  {
                     break;
                  }
                  _loc11_ = _loc11_.next;
               }
               if(_loc11_ != null)
               {
                  _loc31_.processNext = null;
                  continue;
               }
            }
            if(_loc22_ && _loc14_ >= _loc28_ && _loc17_ >= _loc28_ && _loc20_ >= _loc28_)
            {
               _loc11_ = _loc9_;
               while(_loc11_ != null)
               {
                  if(_loc11_.vertex.cameraZ < _loc28_)
                  {
                     break;
                  }
                  _loc11_ = _loc11_.next;
               }
               if(_loc11_ == null)
               {
                  _loc31_.processNext = null;
                  continue;
               }
            }
            if(_loc23_ && _loc14_ <= -_loc12_ && _loc17_ <= -_loc15_ && _loc20_ <= -_loc18_)
            {
               _loc11_ = _loc9_;
               while(_loc11_ != null)
               {
                  _loc10_ = _loc11_.vertex;
                  if(-_loc10_.cameraX < _loc10_.cameraZ)
                  {
                     break;
                  }
                  _loc11_ = _loc11_.next;
               }
               if(_loc11_ == null)
               {
                  _loc31_.processNext = null;
                  continue;
               }
            }
            if(_loc24_ && _loc14_ <= _loc12_ && _loc17_ <= _loc15_ && _loc20_ <= _loc18_)
            {
               _loc11_ = _loc9_;
               while(_loc11_ != null)
               {
                  _loc10_ = _loc11_.vertex;
                  if(_loc10_.cameraX < _loc10_.cameraZ)
                  {
                     break;
                  }
                  _loc11_ = _loc11_.next;
               }
               if(_loc11_ == null)
               {
                  _loc31_.processNext = null;
                  continue;
               }
            }
            if(_loc25_ && _loc14_ <= -_loc13_ && _loc17_ <= -_loc16_ && _loc20_ <= -_loc19_)
            {
               _loc11_ = _loc9_;
               while(_loc11_ != null)
               {
                  _loc10_ = _loc11_.vertex;
                  if(-_loc10_.cameraY < _loc10_.cameraZ)
                  {
                     break;
                  }
                  _loc11_ = _loc11_.next;
               }
               if(_loc11_ == null)
               {
                  _loc31_.processNext = null;
                  continue;
               }
            }
            if(_loc26_ && _loc14_ <= _loc13_ && _loc17_ <= _loc16_ && _loc20_ <= _loc19_)
            {
               _loc11_ = _loc9_;
               while(_loc11_ != null)
               {
                  _loc10_ = _loc11_.vertex;
                  if(_loc10_.cameraY < _loc10_.cameraZ)
                  {
                     break;
                  }
                  _loc11_ = _loc11_.next;
               }
               if(_loc11_ == null)
               {
                  _loc31_.processNext = null;
                  continue;
               }
            }
            if(_loc3_ != null)
            {
               _loc4_.processNext = _loc31_;
            }
            else
            {
               _loc3_ = _loc31_;
            }
            _loc4_ = _loc31_;
         }
         if(_loc4_ != null)
         {
            _loc4_.processNext = null;
         }
         return _loc3_;
      }
      
      public function get diagramVerticalMargin() : Number
      {
         return this._diagramVerticalMargin;
      }
      
      private function resizeDiagram(param1:Event = null) : void
      {
         var _loc2_:Point = null;
         if(this._diagram.stage != null)
         {
            _loc2_ = this._diagram.parent.globalToLocal(new Point());
            if(this._diagramAlign == StageAlign.TOP_LEFT || this._diagramAlign == StageAlign.LEFT || this._diagramAlign == StageAlign.BOTTOM_LEFT)
            {
               this._diagram.x = Math.round(_loc2_.x + this._diagramHorizontalMargin);
            }
            if(this._diagramAlign == StageAlign.TOP || this._diagramAlign == StageAlign.BOTTOM)
            {
               this._diagram.x = Math.round(_loc2_.x + this._diagram.stage.stageWidth / 2 - this.graph.width / 2);
            }
            if(this._diagramAlign == StageAlign.TOP_RIGHT || this._diagramAlign == StageAlign.RIGHT || this._diagramAlign == StageAlign.BOTTOM_RIGHT)
            {
               this._diagram.x = Math.round(_loc2_.x + this._diagram.stage.stageWidth - this._diagramHorizontalMargin - this.graph.width);
            }
            if(this._diagramAlign == StageAlign.TOP_LEFT || this._diagramAlign == StageAlign.TOP || this._diagramAlign == StageAlign.TOP_RIGHT)
            {
               this._diagram.y = Math.round(_loc2_.y + this._diagramVerticalMargin);
            }
            if(this._diagramAlign == StageAlign.LEFT || this._diagramAlign == StageAlign.RIGHT)
            {
               this._diagram.y = Math.round(_loc2_.y + this._diagram.stage.stageHeight / 2 - (this.graph.y + this.graph.height) / 2);
            }
            if(this._diagramAlign == StageAlign.BOTTOM_LEFT || this._diagramAlign == StageAlign.BOTTOM || this._diagramAlign == StageAlign.BOTTOM_RIGHT)
            {
               this._diagram.y = Math.round(_loc2_.y + this._diagram.stage.stageHeight - this._diagramVerticalMargin - this.graph.y - this.graph.height);
            }
         }
      }
      
      alternativa3d function clearOccluders() : void
      {
         var _loc2_:Vertex = null;
         var _loc3_:Vertex = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.numOccluders)
         {
            _loc2_ = this.occluders[_loc1_];
            _loc3_ = _loc2_;
            while(_loc3_.next != null)
            {
               _loc3_ = _loc3_.next;
            }
            _loc3_.next = Vertex.collector;
            Vertex.collector = _loc2_;
            this.occluders[_loc1_] = null;
            _loc1_++;
         }
         this.numOccluders = 0;
      }
      
      public function render() : void
      {
         var _loc1_:Object3D = null;
         var _loc2_:Light3D = null;
         var _loc3_:int = 0;
         this.numDraws = 0;
         this.numPolygons = 0;
         this.numTriangles = 0;
         if(this.view != null)
         {
            this.viewSizeX = this.view._width * 0.5;
            this.viewSizeY = this.view._height * 0.5;
            this.focalLength = Math.sqrt(this.viewSizeX * this.viewSizeX + this.viewSizeY * this.viewSizeY) / Math.tan(this.fov * 0.5);
            this.composeCameraMatrix();
            _loc1_ = this;
            while(_loc1_._parent != null)
            {
               _loc1_ = _loc1_._parent;
               _loc1_.composeMatrix();
               appendMatrix(_loc1_);
            }
            invertMatrix();
            this.numOccluders = 0;
            this.occludedAll = false;
            this.view.numDraws = 0;
            if(_loc1_ != this && _loc1_.visible)
            {
               this.lightsLength = 0;
               _loc2_ = (_loc1_ as Object3DContainer).lightList;
               while(_loc2_ != null)
               {
                  if(_loc2_.visible)
                  {
                     _loc2_.calculateCameraMatrix(this);
                     if(_loc2_.checkFrustumCulling(this))
                     {
                        this.lights[this.lightsLength] = _loc2_;
                        ++this.lightsLength;
                     }
                  }
                  _loc2_ = _loc2_.nextLight;
               }
               _loc1_.appendMatrix(this);
               if(_loc1_.cullingInCamera(this,63) >= 0)
               {
                  if(this.debug)
                  {
                     _loc3_ = 0;
                     while(_loc3_ < this.lightsLength)
                     {
                        (this.lights[_loc3_] as Light3D).drawDebug(this,this.view);
                        _loc3_++;
                     }
                  }
                  _loc1_.draw(this,this.view);
                  this.deferredDestroy();
                  this.clearOccluders();
               }
            }
            this.view.removeChildren(this.view.numDraws);
            this.view.onRender(this);
         }
      }
      
      alternativa3d function sortByAverageZ(param1:Face) : Face
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:Wrapper = null;
         var _loc5_:Face = param1;
         var _loc6_:Face = param1.processNext;
         while(_loc6_ != null && _loc6_.processNext != null)
         {
            param1 = param1.processNext;
            _loc6_ = _loc6_.processNext.processNext;
         }
         _loc6_ = param1.processNext;
         param1.processNext = null;
         if(_loc5_.processNext != null)
         {
            _loc5_ = this.sortByAverageZ(_loc5_);
         }
         else
         {
            _loc2_ = 0;
            _loc3_ = 0;
            _loc4_ = _loc5_.wrapper;
            while(_loc4_ != null)
            {
               _loc2_++;
               _loc3_ += _loc4_.vertex.cameraZ;
               _loc4_ = _loc4_.next;
            }
            _loc5_.distance = _loc3_ / _loc2_;
         }
         if(_loc6_.processNext != null)
         {
            _loc6_ = this.sortByAverageZ(_loc6_);
         }
         else
         {
            _loc2_ = 0;
            _loc3_ = 0;
            _loc4_ = _loc6_.wrapper;
            while(_loc4_ != null)
            {
               _loc2_++;
               _loc3_ += _loc4_.vertex.cameraZ;
               _loc4_ = _loc4_.next;
            }
            _loc6_.distance = _loc3_ / _loc2_;
         }
         var _loc7_:Boolean = _loc5_.distance > _loc6_.distance;
         if(_loc7_)
         {
            param1 = _loc5_;
            _loc5_ = _loc5_.processNext;
         }
         else
         {
            param1 = _loc6_;
            _loc6_ = _loc6_.processNext;
         }
         var _loc8_:Face = param1;
         while(_loc5_ != null)
         {
            if(_loc6_ == null)
            {
               _loc8_.processNext = _loc5_;
               return param1;
            }
            if(_loc7_)
            {
               if(_loc5_.distance > _loc6_.distance)
               {
                  _loc8_ = _loc5_;
                  _loc5_ = _loc5_.processNext;
               }
               else
               {
                  _loc8_.processNext = _loc6_;
                  _loc8_ = _loc6_;
                  _loc6_ = _loc6_.processNext;
                  _loc7_ = false;
               }
            }
            else if(_loc6_.distance > _loc5_.distance)
            {
               _loc8_ = _loc6_;
               _loc6_ = _loc6_.processNext;
            }
            else
            {
               _loc8_.processNext = _loc5_;
               _loc8_ = _loc5_;
               _loc5_ = _loc5_.processNext;
               _loc7_ = true;
            }
         }
         _loc8_.processNext = _loc6_;
         return param1;
      }
      
      public function removeFromDebug(param1:int, param2:*) : void
      {
         var _loc3_:* = undefined;
         if(this.debugSet[param1])
         {
            delete this.debugSet[param1][param2];
            var _loc4_:int = 0;
            var _loc5_:* = this.debugSet[param1];
            for(_loc3_ in _loc5_)
            {
            }
            if(!_loc3_)
            {
               delete this.debugSet[param1];
            }
         }
      }
      
      public function addToDebug(param1:int, param2:*) : void
      {
         if(!this.debugSet[param1])
         {
            this.debugSet[param1] = new Dictionary();
         }
         this.debugSet[param1][param2] = true;
      }
      
      public function set diagramHorizontalMargin(param1:Number) : void
      {
         this._diagramHorizontalMargin = param1;
         this.resizeDiagram();
      }
      
      private function updateDiagram(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc5_:int = getTimer();
         var _loc6_:int = this._diagram.stage.frameRate;
         if(++this.fpsUpdateCounter == this.fpsUpdatePeriod)
         {
            _loc2_ = 1000 * this.fpsUpdatePeriod / (_loc5_ - this.previousPeriodTime);
            if(_loc2_ > _loc6_)
            {
               _loc2_ = _loc6_;
            }
            _loc3_ = _loc2_ * 100 % 100;
            _loc4_ = _loc3_ >= 10 ? String(_loc3_) : (_loc3_ > 0 ? "0" + String(_loc3_) : "00");
            this.fpsTextField.text = int(_loc2_) + "." + _loc4_;
            this.previousPeriodTime = _loc5_;
            this.fpsUpdateCounter = 0;
         }
         _loc2_ = 1000 / (_loc5_ - this.previousFrameTime);
         if(_loc2_ > _loc6_)
         {
            _loc2_ = _loc6_;
         }
         this.graph.bitmapData.scroll(1,0);
         this.graph.bitmapData.fillRect(this.rect,553648127);
         this.graph.bitmapData.setPixel32(0,40 * (1 - _loc2_ / _loc6_),4291611852);
         this.previousFrameTime = _loc5_;
         if(++this.timerUpdateCounter == this.timerUpdatePeriod)
         {
            if(this.timeCount > 0)
            {
               _loc2_ = this.timeSum / this.timeCount;
               _loc3_ = _loc2_ * 100 % 100;
               _loc4_ = _loc3_ >= 10 ? String(_loc3_) : (_loc3_ > 0 ? "0" + String(_loc3_) : "00");
               this.timerTextField.text = int(_loc2_) + "." + _loc4_;
            }
            else
            {
               this.timerTextField.text = "";
            }
            this.timerUpdateCounter = 0;
            this.timeSum = 0;
            this.timeCount = 0;
         }
         var _loc7_:int = int(System.totalMemory);
         _loc2_ = _loc7_ / 1048576;
         _loc3_ = _loc2_ * 100 % 100;
         _loc4_ = _loc3_ >= 10 ? String(_loc3_) : (_loc3_ > 0 ? "0" + String(_loc3_) : "00");
         this.memoryTextField.text = int(_loc2_) + "." + _loc4_;
         if(_loc7_ > this.maxMemory)
         {
            this.maxMemory = _loc7_;
         }
         this.graph.bitmapData.setPixel32(0,40 * (1 - _loc7_ / this.maxMemory),4291611648);
         this.drawsTextField.text = String(this.numDraws);
         this.polygonsTextField.text = String(this.numPolygons);
         this.trianglesTextField.text = String(this.numTriangles);
      }
      
      public function get diagram() : DisplayObject
      {
         return this._diagram;
      }
      
      public function set diagramAlign(param1:String) : void
      {
         this._diagramAlign = param1;
         this.resizeDiagram();
      }
      
      public function get diagramHorizontalMargin() : Number
      {
         return this._diagramHorizontalMargin;
      }
      
      public function calculateRay(param1:Vector3D, param2:Vector3D, param3:Number, param4:Number) : void
      {
         if(this.view == null)
         {
            throw new Error("It is necessary to have view set.");
         }
         this.viewSizeX = this.view._width * 0.5;
         this.viewSizeY = this.view._height * 0.5;
         this.focalLength = Math.sqrt(this.viewSizeX * this.viewSizeX + this.viewSizeY * this.viewSizeY) / Math.tan(this.fov * 0.5);
         param3 -= this.viewSizeX;
         param4 -= this.viewSizeY;
         var _loc5_:Number = param3 * this.focalLength / this.viewSizeX;
         var _loc6_:Number = param4 * this.focalLength / this.viewSizeY;
         var _loc7_:Number = this.focalLength;
         var _loc8_:Number = _loc5_ * this.nearClipping / this.focalLength;
         var _loc9_:Number = _loc6_ * this.nearClipping / this.focalLength;
         var _loc10_:Number = this.nearClipping;
         this.composeCameraMatrix();
         var _loc11_:Object3D = this;
         while(_loc11_._parent != null)
         {
            _loc11_ = _loc11_._parent;
            tA.composeMatrixFromSource(_loc11_);
            appendMatrix(tA);
         }
         param1.x = ma * _loc8_ + mb * _loc9_ + mc * _loc10_ + md;
         param1.y = me * _loc8_ + mf * _loc9_ + mg * _loc10_ + mh;
         param1.z = mi * _loc8_ + mj * _loc9_ + mk * _loc10_ + ml;
         param2.x = ma * _loc5_ + mb * _loc6_ + mc * _loc7_;
         param2.y = me * _loc5_ + mf * _loc6_ + mg * _loc7_;
         param2.z = mi * _loc5_ + mj * _loc6_ + mk * _loc7_;
         var _loc12_:Number = 1 / Math.sqrt(param2.x * param2.x + param2.y * param2.y + param2.z * param2.z);
         param2.x *= _loc12_;
         param2.y *= _loc12_;
         param2.z *= _loc12_;
      }
      
      public function set diagramVerticalMargin(param1:Number) : void
      {
         this._diagramVerticalMargin = param1;
         this.resizeDiagram();
      }
      
      public function get diagramAlign() : String
      {
         return this._diagramAlign;
      }
      
      alternativa3d function sortByDynamicBSP(param1:Face, param2:Number, param3:Face = null) : Face
      {
         var _loc4_:Wrapper = null;
         var _loc5_:Vertex = null;
         var _loc6_:Vertex = null;
         var _loc7_:Vertex = null;
         var _loc8_:Vertex = null;
         var _loc23_:Face = null;
         var _loc24_:Face = null;
         var _loc26_:Face = null;
         var _loc27_:Face = null;
         var _loc28_:Face = null;
         var _loc30_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc32_:Number = NaN;
         var _loc33_:Number = NaN;
         var _loc34_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc37_:Number = NaN;
         var _loc38_:Number = NaN;
         var _loc39_:Number = NaN;
         var _loc40_:Boolean = false;
         var _loc41_:Boolean = false;
         var _loc42_:Number = NaN;
         var _loc43_:Face = null;
         var _loc44_:Face = null;
         var _loc45_:Wrapper = null;
         var _loc46_:Wrapper = null;
         var _loc47_:Wrapper = null;
         var _loc48_:Boolean = false;
         var _loc49_:Number = NaN;
         var _loc9_:Face = param1;
         param1 = _loc9_.processNext;
         _loc4_ = _loc9_.wrapper;
         _loc5_ = _loc4_.vertex;
         _loc4_ = _loc4_.next;
         _loc6_ = _loc4_.vertex;
         var _loc10_:Number = _loc5_.cameraX;
         var _loc11_:Number = _loc5_.cameraY;
         var _loc12_:Number = _loc5_.cameraZ;
         var _loc13_:Number = _loc6_.cameraX - _loc10_;
         var _loc14_:Number = _loc6_.cameraY - _loc11_;
         var _loc15_:Number = _loc6_.cameraZ - _loc12_;
         var _loc16_:Number = 0;
         var _loc17_:Number = 0;
         var _loc18_:Number = 1;
         var _loc19_:Number = _loc12_;
         var _loc20_:Number = 0;
         _loc4_ = _loc4_.next;
         while(_loc4_ != null)
         {
            _loc8_ = _loc4_.vertex;
            _loc30_ = _loc8_.cameraX - _loc10_;
            _loc31_ = _loc8_.cameraY - _loc11_;
            _loc32_ = _loc8_.cameraZ - _loc12_;
            _loc33_ = _loc32_ * _loc14_ - _loc31_ * _loc15_;
            _loc34_ = _loc30_ * _loc15_ - _loc32_ * _loc13_;
            _loc35_ = _loc31_ * _loc13_ - _loc30_ * _loc14_;
            _loc36_ = _loc33_ * _loc33_ + _loc34_ * _loc34_ + _loc35_ * _loc35_;
            if(_loc36_ > param2)
            {
               _loc36_ = 1 / Math.sqrt(_loc36_);
               _loc16_ = _loc33_ * _loc36_;
               _loc17_ = _loc34_ * _loc36_;
               _loc18_ = _loc35_ * _loc36_;
               _loc19_ = _loc10_ * _loc16_ + _loc11_ * _loc17_ + _loc12_ * _loc18_;
               break;
            }
            if(_loc36_ > _loc20_)
            {
               _loc36_ = 1 / Math.sqrt(_loc36_);
               _loc16_ = _loc33_ * _loc36_;
               _loc17_ = _loc34_ * _loc36_;
               _loc18_ = _loc35_ * _loc36_;
               _loc19_ = _loc10_ * _loc16_ + _loc11_ * _loc17_ + _loc12_ * _loc18_;
               _loc20_ = _loc36_;
            }
            _loc4_ = _loc4_.next;
         }
         var _loc21_:Number = _loc19_ - param2;
         var _loc22_:Number = _loc19_ + param2;
         var _loc25_:Face = _loc9_;
         var _loc29_:Face = param1;
         while(_loc29_ != null)
         {
            _loc28_ = _loc29_.processNext;
            _loc4_ = _loc29_.wrapper;
            _loc5_ = _loc4_.vertex;
            _loc4_ = _loc4_.next;
            _loc6_ = _loc4_.vertex;
            _loc4_ = _loc4_.next;
            _loc7_ = _loc4_.vertex;
            _loc4_ = _loc4_.next;
            _loc37_ = _loc5_.cameraX * _loc16_ + _loc5_.cameraY * _loc17_ + _loc5_.cameraZ * _loc18_;
            _loc38_ = _loc6_.cameraX * _loc16_ + _loc6_.cameraY * _loc17_ + _loc6_.cameraZ * _loc18_;
            _loc39_ = _loc7_.cameraX * _loc16_ + _loc7_.cameraY * _loc17_ + _loc7_.cameraZ * _loc18_;
            _loc40_ = _loc37_ < _loc21_ || _loc38_ < _loc21_ || _loc39_ < _loc21_;
            _loc41_ = _loc37_ > _loc22_ || _loc38_ > _loc22_ || _loc39_ > _loc22_;
            while(_loc4_ != null)
            {
               _loc8_ = _loc4_.vertex;
               _loc42_ = _loc8_.cameraX * _loc16_ + _loc8_.cameraY * _loc17_ + _loc8_.cameraZ * _loc18_;
               if(_loc42_ < _loc21_)
               {
                  _loc40_ = true;
               }
               else if(_loc42_ > _loc22_)
               {
                  _loc41_ = true;
               }
               _loc8_.offset = _loc42_;
               _loc4_ = _loc4_.next;
            }
            if(!_loc40_)
            {
               if(!_loc41_)
               {
                  _loc25_.processNext = _loc29_;
                  _loc25_ = _loc29_;
               }
               else
               {
                  if(_loc26_ != null)
                  {
                     _loc27_.processNext = _loc29_;
                  }
                  else
                  {
                     _loc26_ = _loc29_;
                  }
                  _loc27_ = _loc29_;
               }
            }
            else if(!_loc41_)
            {
               if(_loc23_ != null)
               {
                  _loc24_.processNext = _loc29_;
               }
               else
               {
                  _loc23_ = _loc29_;
               }
               _loc24_ = _loc29_;
            }
            else
            {
               _loc5_.offset = _loc37_;
               _loc6_.offset = _loc38_;
               _loc7_.offset = _loc39_;
               _loc43_ = _loc29_.create();
               _loc43_.material = _loc29_.material;
               this.lastFace.next = _loc43_;
               this.lastFace = _loc43_;
               _loc44_ = _loc29_.create();
               _loc44_.material = _loc29_.material;
               this.lastFace.next = _loc44_;
               this.lastFace = _loc44_;
               _loc45_ = null;
               _loc46_ = null;
               _loc4_ = _loc29_.wrapper.next.next;
               while(_loc4_.next != null)
               {
                  _loc4_ = _loc4_.next;
               }
               _loc5_ = _loc4_.vertex;
               _loc37_ = _loc5_.offset;
               _loc48_ = _loc29_.material != null && _loc29_.material.useVerticesNormals;
               _loc4_ = _loc29_.wrapper;
               while(_loc4_ != null)
               {
                  _loc6_ = _loc4_.vertex;
                  _loc38_ = _loc6_.offset;
                  if(_loc37_ < _loc21_ && _loc38_ > _loc22_ || _loc37_ > _loc22_ && _loc38_ < _loc21_)
                  {
                     _loc49_ = (_loc19_ - _loc37_) / (_loc38_ - _loc37_);
                     _loc8_ = _loc6_.create();
                     this.lastVertex.next = _loc8_;
                     this.lastVertex = _loc8_;
                     _loc8_.cameraX = _loc5_.cameraX + (_loc6_.cameraX - _loc5_.cameraX) * _loc49_;
                     _loc8_.cameraY = _loc5_.cameraY + (_loc6_.cameraY - _loc5_.cameraY) * _loc49_;
                     _loc8_.cameraZ = _loc5_.cameraZ + (_loc6_.cameraZ - _loc5_.cameraZ) * _loc49_;
                     _loc8_.u = _loc5_.u + (_loc6_.u - _loc5_.u) * _loc49_;
                     _loc8_.v = _loc5_.v + (_loc6_.v - _loc5_.v) * _loc49_;
                     if(_loc48_)
                     {
                        _loc8_.x = _loc5_.x + (_loc6_.x - _loc5_.x) * _loc49_;
                        _loc8_.y = _loc5_.y + (_loc6_.y - _loc5_.y) * _loc49_;
                        _loc8_.z = _loc5_.z + (_loc6_.z - _loc5_.z) * _loc49_;
                        _loc8_.normalX = _loc5_.normalX + (_loc6_.normalX - _loc5_.normalX) * _loc49_;
                        _loc8_.normalY = _loc5_.normalY + (_loc6_.normalY - _loc5_.normalY) * _loc49_;
                        _loc8_.normalZ = _loc5_.normalZ + (_loc6_.normalZ - _loc5_.normalZ) * _loc49_;
                     }
                     _loc47_ = _loc4_.create();
                     _loc47_.vertex = _loc8_;
                     if(_loc45_ != null)
                     {
                        _loc45_.next = _loc47_;
                     }
                     else
                     {
                        _loc43_.wrapper = _loc47_;
                     }
                     _loc45_ = _loc47_;
                     _loc47_ = _loc4_.create();
                     _loc47_.vertex = _loc8_;
                     if(_loc46_ != null)
                     {
                        _loc46_.next = _loc47_;
                     }
                     else
                     {
                        _loc44_.wrapper = _loc47_;
                     }
                     _loc46_ = _loc47_;
                  }
                  if(_loc38_ <= _loc22_)
                  {
                     _loc47_ = _loc4_.create();
                     _loc47_.vertex = _loc6_;
                     if(_loc45_ != null)
                     {
                        _loc45_.next = _loc47_;
                     }
                     else
                     {
                        _loc43_.wrapper = _loc47_;
                     }
                     _loc45_ = _loc47_;
                  }
                  if(_loc38_ >= _loc21_)
                  {
                     _loc47_ = _loc4_.create();
                     _loc47_.vertex = _loc6_;
                     if(_loc46_ != null)
                     {
                        _loc46_.next = _loc47_;
                     }
                     else
                     {
                        _loc44_.wrapper = _loc47_;
                     }
                     _loc46_ = _loc47_;
                  }
                  _loc5_ = _loc6_;
                  _loc37_ = _loc38_;
                  _loc4_ = _loc4_.next;
               }
               if(_loc23_ != null)
               {
                  _loc24_.processNext = _loc43_;
               }
               else
               {
                  _loc23_ = _loc43_;
               }
               _loc24_ = _loc43_;
               if(_loc26_ != null)
               {
                  _loc27_.processNext = _loc44_;
               }
               else
               {
                  _loc26_ = _loc44_;
               }
               _loc27_ = _loc44_;
               _loc29_.processNext = null;
            }
            _loc29_ = _loc28_;
         }
         if(_loc26_ != null)
         {
            _loc27_.processNext = null;
            if(_loc26_.processNext != null)
            {
               param3 = this.sortByDynamicBSP(_loc26_,param2,param3);
            }
            else
            {
               _loc26_.processNext = param3;
               param3 = _loc26_;
            }
         }
         _loc25_.processNext = param3;
         param3 = _loc9_;
         if(_loc23_ != null)
         {
            _loc24_.processNext = null;
            if(_loc23_.processNext != null)
            {
               param3 = this.sortByDynamicBSP(_loc23_,param2,param3);
            }
            else
            {
               _loc23_.processNext = param3;
               param3 = _loc23_;
            }
         }
         return param3;
      }
      
      private function bytesToString(param1:int) : String
      {
         if(param1 < 1024)
         {
            return param1 + "b";
         }
         if(param1 < 10240)
         {
            return (param1 / 1024).toFixed(2) + "kb";
         }
         if(param1 < 102400)
         {
            return (param1 / 1024).toFixed(1) + "kb";
         }
         if(param1 < 1048576)
         {
            return (param1 >> 10) + "kb";
         }
         if(param1 < 10485760)
         {
            return (param1 / 1048576).toFixed(2);
         }
         if(param1 < 104857600)
         {
            return (param1 / 1048576).toFixed(1);
         }
         return String(param1 >> 20);
      }
      
      alternativa3d function composeCameraMatrix() : void
      {
         var _loc1_:Number = this.viewSizeX / this.focalLength;
         var _loc2_:Number = this.viewSizeY / this.focalLength;
         var _loc3_:Number = Math.cos(rotationX);
         var _loc4_:Number = Math.sin(rotationX);
         var _loc5_:Number = Math.cos(rotationY);
         var _loc6_:Number = Math.sin(rotationY);
         var _loc7_:Number = Math.cos(rotationZ);
         var _loc8_:Number = Math.sin(rotationZ);
         var _loc9_:Number = _loc7_ * _loc6_;
         var _loc10_:Number = _loc8_ * _loc6_;
         var _loc11_:Number = _loc5_ * scaleX;
         var _loc12_:Number = _loc4_ * scaleY;
         var _loc13_:Number = _loc3_ * scaleY;
         var _loc14_:Number = _loc3_ * scaleZ;
         var _loc15_:Number = _loc4_ * scaleZ;
         ma = _loc7_ * _loc11_ * _loc1_;
         mb = (_loc9_ * _loc12_ - _loc8_ * _loc13_) * _loc2_;
         mc = _loc9_ * _loc14_ + _loc8_ * _loc15_;
         md = x;
         me = _loc8_ * _loc11_ * _loc1_;
         mf = (_loc10_ * _loc12_ + _loc7_ * _loc13_) * _loc2_;
         mg = _loc10_ * _loc14_ - _loc7_ * _loc15_;
         mh = y;
         mi = -_loc6_ * scaleX * _loc1_;
         mj = _loc5_ * _loc12_ * _loc2_;
         mk = _loc5_ * _loc14_;
         ml = z;
      }
   }
}

