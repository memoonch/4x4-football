package alternativa.engine3d.materials
{
   import alternativa.engine3d.alternativa3d;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Canvas;
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.core.Wrapper;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.getTimer;
   import flash.utils.getQualifiedClassName;
   import flash.filters.ConvolutionFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   use namespace alternativa3d;
   
   public class TextureMaterial extends Material
   {
      
      private static const filter:ConvolutionFilter = new ConvolutionFilter(2,2,[1,1,1,1],4,0,false,true);
      
      private static const matrix:Matrix = new Matrix(0.5,0,0,0.5);
      
      private static const rect:Rectangle = new Rectangle();
      
      private static const point:Point = new Point();
      
      alternativa3d static var drawVertices:Vector.<Number> = new Vector.<Number>();
      
      alternativa3d static var drawUVTs:Vector.<Number> = new Vector.<Number>();
      
      alternativa3d static var drawIndices:Vector.<int> = new Vector.<int>();
      
      alternativa3d static var drawMatrix:Matrix = new Matrix();
      
      public var correctUV:Boolean = false;
      
      alternativa3d var _texture:BitmapData;
      
      public var opacityMapURL:String;
      
      public var repeat:Boolean = false;
      
      alternativa3d var mipMap:Vector.<BitmapData>;
      
      public var threshold:Number = 0.01;
      
      public var resolution:Number = 1;
      
      public var smooth:Boolean = true;
      
      public var diffuseMapURL:String;
      
      alternativa3d var _mipMapping:int = 0;
      
      alternativa3d var numMaps:int = 0;
      
      public function TextureMaterial(param1:BitmapData = null, param2:Boolean = false, param3:Boolean = true, param4:int = 0, param5:Number = 1)
      {
         super();
         this._texture = param1;
         this.repeat = param2;
         this.smooth = param3;
         this._mipMapping = param4;
         if(this._texture != null && this._mipMapping > 0)
         {
            this.calculateMipMaps();
         }
         this.resolution = param5;
      }
      
      override protected function clonePropertiesFrom(param1:Material) : void
      {
         super.clonePropertiesFrom(param1);
         var _loc2_:TextureMaterial = param1 as TextureMaterial;
         this.diffuseMapURL = _loc2_.diffuseMapURL;
         this.opacityMapURL = _loc2_.opacityMapURL;
         this.threshold = _loc2_.threshold;
         this.correctUV = _loc2_.correctUV;
      }
      
      override alternativa3d function draw(param1:Camera3D, param2:Canvas, param3:Face, param4:Number) : void
      {
         startMeter(param1.view);
         var _loc5_:Face = null;
         var _loc6_:Face = null;
         var _loc7_:Face = null;
         var _loc8_:Wrapper = null;
         var _loc9_:Vertex = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:int = 0;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:BitmapData = null;
         var _loc26_:* = 0;
         var _loc27_:int = 0;
         var _loc28_:int = 0;
         var _loc29_:int = 0;
         var _loc33_:int = 0;
         var _loc34_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc37_:int = 0;
         var _loc38_:int = 0;
         var _loc39_:Wrapper = null;
         var _loc40_:* = 0;
         var _loc41_:Number = NaN;
         var _loc42_:Number = NaN;
         var _loc43_:Wrapper = null;
         var _loc44_:Number = NaN;
         var _loc45_:Number = NaN;
         var _loc46_:Number = NaN;
         var _loc47_:Boolean = false;
         var _loc48_:Boolean = false;
         var _loc49_:Number = NaN;
         var _loc50_:Face = null;
         var _loc51_:Wrapper = null;
         var _loc52_:Wrapper = null;
         var _loc53_:Wrapper = null;
         var _loc54_:Vertex = null;
         var _loc55_:Vertex = null;
         var _loc56_:Vertex = null;
         var _loc21_:Number = param1.viewSizeX;
         var _loc22_:Number = param1.viewSizeY;
         var _loc23_:Vector.<Number> = drawVertices;
         var _loc24_:Vector.<Number> = drawUVTs;
         var _loc25_:Vector.<int> = drawIndices;
         var _loc30_:int = param1.numDraws;
         var _loc31_:int = 0;
         var _loc32_:int = 0;
         if(this._texture == null)
         {
            clearLinks(param3);
            return;
         }
         if(this._mipMapping < 2)
         {
            _loc30_++;
            _loc26_ = 0;
            _loc27_ = 0;
            _loc28_ = 0;
            _loc29_ = 0;
            _loc5_ = param3;
            while(_loc5_ != null)
            {
               _loc6_ = _loc5_.processNext;
               _loc5_.processNext = null;
               _loc8_ = _loc5_.wrapper;
               _loc9_ = _loc8_.vertex;
               if(_loc9_.drawId != _loc30_)
               {
                  _loc13_ = 1 / _loc9_.cameraZ;
                  _loc23_[_loc27_] = _loc9_.cameraX * _loc21_ * _loc13_;
                  _loc27_++;
                  _loc23_[_loc27_] = _loc9_.cameraY * _loc22_ * _loc13_;
                  _loc27_++;
                  _loc24_[_loc28_] = _loc9_.u;
                  _loc28_++;
                  _loc24_[_loc28_] = _loc9_.v;
                  _loc28_++;
                  _loc24_[_loc28_] = _loc13_;
                  _loc28_++;
                  _loc10_ = _loc26_;
                  _loc9_.index = _loc26_++;
                  _loc9_.drawId = _loc30_;
               }
               else
               {
                  _loc10_ = _loc9_.index;
               }
               _loc8_ = _loc8_.next;
               _loc9_ = _loc8_.vertex;
               if(_loc9_.drawId != _loc30_)
               {
                  _loc13_ = 1 / _loc9_.cameraZ;
                  _loc23_[_loc27_] = _loc9_.cameraX * _loc21_ * _loc13_;
                  _loc27_++;
                  _loc23_[_loc27_] = _loc9_.cameraY * _loc22_ * _loc13_;
                  _loc27_++;
                  _loc24_[_loc28_] = _loc9_.u;
                  _loc28_++;
                  _loc24_[_loc28_] = _loc9_.v;
                  _loc28_++;
                  _loc24_[_loc28_] = _loc13_;
                  _loc28_++;
                  _loc11_ = _loc26_;
                  _loc9_.index = _loc26_++;
                  _loc9_.drawId = _loc30_;
               }
               else
               {
                  _loc11_ = _loc9_.index;
               }
               _loc8_ = _loc8_.next;
               while(_loc8_ != null)
               {
                  _loc9_ = _loc8_.vertex;
                  if(_loc9_.drawId != _loc30_)
                  {
                     _loc13_ = 1 / _loc9_.cameraZ;
                     _loc23_[_loc27_] = _loc9_.cameraX * _loc21_ * _loc13_;
                     _loc27_++;
                     _loc23_[_loc27_] = _loc9_.cameraY * _loc22_ * _loc13_;
                     _loc27_++;
                     _loc24_[_loc28_] = _loc9_.u;
                     _loc28_++;
                     _loc24_[_loc28_] = _loc9_.v;
                     _loc28_++;
                     _loc24_[_loc28_] = _loc13_;
                     _loc28_++;
                     _loc12_ = _loc26_;
                     _loc9_.index = _loc26_++;
                     _loc9_.drawId = _loc30_;
                  }
                  else
                  {
                     _loc12_ = _loc9_.index;
                  }
                  drawIndices[_loc29_] = _loc10_;
                  _loc29_++;
                  drawIndices[_loc29_] = _loc11_;
                  _loc29_++;
                  drawIndices[_loc29_] = _loc12_;
                  _loc29_++;
                  _loc11_ = _loc12_;
                  _loc32_++;
                  _loc8_ = _loc8_.next;
               }
               _loc31_++;
               _loc5_ = _loc6_;
            }
            _loc23_.length = _loc27_;
            _loc24_.length = _loc28_;
            _loc25_.length = _loc29_;
            if(this._mipMapping == 0)
            {
               _loc20_ = this._texture;
            }
            else
            {
               _loc14_ = param1.focalLength * this.resolution;
               _loc33_ = param4 >= _loc14_ ? int(1 + Math.log(param4 / _loc14_) * 1.4426950408889634) : 0;
               if(_loc33_ >= this.numMaps)
               {
                  _loc33_ = this.numMaps - 1;
               }
               _loc20_ = this.mipMap[_loc33_];
            }
            if(this.correctUV)
            {
               _loc18_ = -0.5 / (_loc20_.width - 1);
               _loc19_ = -0.5 / (_loc20_.height - 1);
               _loc16_ = 1 - _loc18_ - _loc18_;
               _loc17_ = 1 - _loc19_ - _loc19_;
               _loc15_ = 0;
               while(_loc15_ < _loc28_)
               {
                  _loc24_[_loc15_] = _loc24_[_loc15_] * _loc16_ + _loc18_;
                  _loc15_++;
                  _loc24_[_loc15_] = _loc24_[_loc15_] * _loc17_ + _loc19_;
                  _loc15_++;
                  _loc15_++;
               }
            }
            param2.gfx.beginBitmapFill(_loc20_,null,this.repeat,this.smooth);
            param2.gfx.drawTriangles(_loc23_,_loc25_,_loc24_,"none");
         }
         else
         {
            _loc35_ = 1e+22;
            _loc36_ = -1;
            _loc5_ = param3;
            while(_loc5_ != null)
            {
               _loc8_ = _loc5_.wrapper;
               while(_loc8_ != null)
               {
                  _loc34_ = _loc8_.vertex.cameraZ;
                  if(_loc34_ < _loc35_)
                  {
                     _loc35_ = _loc34_;
                  }
                  if(_loc34_ > _loc36_)
                  {
                     _loc36_ = _loc34_;
                  }
                  _loc8_ = _loc8_.next;
               }
               _loc5_ = _loc5_.processNext;
            }
            _loc14_ = param1.focalLength * this.resolution;
            _loc37_ = _loc35_ >= _loc14_ ? int(1 + Math.log(_loc35_ / _loc14_) * 1.4426950408889634) : 0;
            if(_loc37_ >= this.numMaps)
            {
               _loc37_ = this.numMaps - 1;
            }
            _loc38_ = _loc36_ >= _loc14_ ? int(1 + Math.log(_loc36_ / _loc14_) * 1.4426950408889634) : 0;
            if(_loc38_ >= this.numMaps)
            {
               _loc38_ = this.numMaps - 1;
            }
            _loc34_ = _loc14_ * Math.pow(2,_loc38_ - 1);
            _loc40_ = _loc38_;
            while(_loc40_ >= _loc37_)
            {
               _loc30_++;
               _loc26_ = 0;
               _loc27_ = 0;
               _loc28_ = 0;
               _loc29_ = 0;
               _loc41_ = _loc34_ - this.threshold;
               _loc42_ = _loc34_ + this.threshold;
               _loc5_ = param3;
               param3 = null;
               _loc7_ = null;
               while(_loc5_ != null)
               {
                  _loc6_ = _loc5_.processNext;
                  _loc5_.processNext = null;
                  _loc8_ = null;
                  if(_loc40_ == _loc37_)
                  {
                     _loc8_ = _loc5_.wrapper;
                  }
                  else
                  {
                     _loc43_ = _loc5_.wrapper;
                     _loc44_ = _loc43_.vertex.cameraZ;
                     _loc43_ = _loc43_.next;
                     _loc45_ = _loc43_.vertex.cameraZ;
                     _loc43_ = _loc43_.next;
                     _loc46_ = _loc43_.vertex.cameraZ;
                     _loc43_ = _loc43_.next;
                     _loc47_ = _loc44_ < _loc41_ || _loc45_ < _loc41_ || _loc46_ < _loc41_;
                     _loc48_ = _loc44_ > _loc42_ || _loc45_ > _loc42_ || _loc46_ > _loc42_;
                     while(_loc43_ != null)
                     {
                        _loc49_ = _loc43_.vertex.cameraZ;
                        if(_loc49_ < _loc41_)
                        {
                           _loc47_ = true;
                        }
                        else if(_loc49_ > _loc42_)
                        {
                           _loc48_ = true;
                        }
                        _loc43_ = _loc43_.next;
                     }
                     if(!_loc47_)
                     {
                        _loc8_ = _loc5_.wrapper;
                     }
                     else if(!_loc48_)
                     {
                        if(param3 != null)
                        {
                           _loc7_.processNext = _loc5_;
                        }
                        else
                        {
                           param3 = _loc5_;
                        }
                        _loc7_ = _loc5_;
                     }
                     else
                     {
                        _loc50_ = _loc5_.create();
                        param1.lastFace.next = _loc50_;
                        param1.lastFace = _loc50_;
                        _loc51_ = null;
                        _loc52_ = null;
                        _loc43_ = _loc5_.wrapper.next.next;
                        while(_loc43_.next != null)
                        {
                           _loc43_ = _loc43_.next;
                        }
                        _loc54_ = _loc43_.vertex;
                        _loc44_ = _loc54_.cameraZ;
                        _loc43_ = _loc5_.wrapper;
                        while(_loc43_ != null)
                        {
                           _loc55_ = _loc43_.vertex;
                           _loc45_ = _loc55_.cameraZ;
                           if(_loc44_ < _loc41_ && _loc45_ > _loc42_ || _loc44_ > _loc42_ && _loc45_ < _loc41_)
                           {
                              _loc13_ = (_loc34_ - _loc44_) / (_loc45_ - _loc44_);
                              _loc56_ = _loc55_.create();
                              param1.lastVertex.next = _loc56_;
                              param1.lastVertex = _loc56_;
                              _loc56_.cameraX = _loc54_.cameraX + (_loc55_.cameraX - _loc54_.cameraX) * _loc13_;
                              _loc56_.cameraY = _loc54_.cameraY + (_loc55_.cameraY - _loc54_.cameraY) * _loc13_;
                              _loc56_.cameraZ = _loc34_;
                              _loc56_.u = _loc54_.u + (_loc55_.u - _loc54_.u) * _loc13_;
                              _loc56_.v = _loc54_.v + (_loc55_.v - _loc54_.v) * _loc13_;
                              _loc53_ = _loc43_.create();
                              _loc53_.vertex = _loc56_;
                              if(_loc51_ != null)
                              {
                                 _loc51_.next = _loc53_;
                              }
                              else
                              {
                                 _loc50_.wrapper = _loc53_;
                              }
                              _loc51_ = _loc53_;
                              _loc53_ = _loc43_.create();
                              _loc53_.vertex = _loc56_;
                              if(_loc52_ != null)
                              {
                                 _loc52_.next = _loc53_;
                              }
                              else
                              {
                                 _loc8_ = _loc53_;
                              }
                              _loc52_ = _loc53_;
                           }
                           if(_loc45_ <= _loc42_)
                           {
                              _loc53_ = _loc43_.create();
                              _loc53_.vertex = _loc55_;
                              if(_loc51_ != null)
                              {
                                 _loc51_.next = _loc53_;
                              }
                              else
                              {
                                 _loc50_.wrapper = _loc53_;
                              }
                              _loc51_ = _loc53_;
                           }
                           if(_loc45_ >= _loc41_)
                           {
                              _loc53_ = _loc43_.create();
                              _loc53_.vertex = _loc55_;
                              if(_loc52_ != null)
                              {
                                 _loc52_.next = _loc53_;
                              }
                              else
                              {
                                 _loc8_ = _loc53_;
                              }
                              _loc52_ = _loc53_;
                           }
                           _loc54_ = _loc55_;
                           _loc44_ = _loc45_;
                           _loc43_ = _loc43_.next;
                        }
                        if(param3 != null)
                        {
                           _loc7_.processNext = _loc50_;
                        }
                        else
                        {
                           param3 = _loc50_;
                        }
                        _loc7_ = _loc50_;
                        _loc39_ = _loc8_;
                     }
                  }
                  if(_loc8_ != null)
                  {
                     _loc9_ = _loc8_.vertex;
                     if(_loc9_.drawId != _loc30_)
                     {
                        _loc13_ = 1 / _loc9_.cameraZ;
                        _loc23_[_loc27_] = _loc9_.cameraX * _loc21_ * _loc13_;
                        _loc27_++;
                        _loc23_[_loc27_] = _loc9_.cameraY * _loc22_ * _loc13_;
                        _loc27_++;
                        _loc24_[_loc28_] = _loc9_.u;
                        _loc28_++;
                        _loc24_[_loc28_] = _loc9_.v;
                        _loc28_++;
                        _loc24_[_loc28_] = _loc13_;
                        _loc28_++;
                        _loc10_ = _loc26_;
                        _loc9_.index = _loc26_++;
                        _loc9_.drawId = _loc30_;
                     }
                     else
                     {
                        _loc10_ = _loc9_.index;
                     }
                     _loc8_ = _loc8_.next;
                     _loc9_ = _loc8_.vertex;
                     if(_loc9_.drawId != _loc30_)
                     {
                        _loc13_ = 1 / _loc9_.cameraZ;
                        _loc23_[_loc27_] = _loc9_.cameraX * _loc21_ * _loc13_;
                        _loc27_++;
                        _loc23_[_loc27_] = _loc9_.cameraY * _loc22_ * _loc13_;
                        _loc27_++;
                        _loc24_[_loc28_] = _loc9_.u;
                        _loc28_++;
                        _loc24_[_loc28_] = _loc9_.v;
                        _loc28_++;
                        _loc24_[_loc28_] = _loc13_;
                        _loc28_++;
                        _loc11_ = _loc26_;
                        _loc9_.index = _loc26_++;
                        _loc9_.drawId = _loc30_;
                     }
                     else
                     {
                        _loc11_ = _loc9_.index;
                     }
                     _loc8_ = _loc8_.next;
                     while(_loc8_ != null)
                     {
                        _loc9_ = _loc8_.vertex;
                        if(_loc9_.drawId != _loc30_)
                        {
                           _loc13_ = 1 / _loc9_.cameraZ;
                           _loc23_[_loc27_] = _loc9_.cameraX * _loc21_ * _loc13_;
                           _loc27_++;
                           _loc23_[_loc27_] = _loc9_.cameraY * _loc22_ * _loc13_;
                           _loc27_++;
                           _loc24_[_loc28_] = _loc9_.u;
                           _loc28_++;
                           _loc24_[_loc28_] = _loc9_.v;
                           _loc28_++;
                           _loc24_[_loc28_] = _loc13_;
                           _loc28_++;
                           _loc12_ = _loc26_;
                           _loc9_.index = _loc26_++;
                           _loc9_.drawId = _loc30_;
                        }
                        else
                        {
                           _loc12_ = _loc9_.index;
                        }
                        drawIndices[_loc29_] = _loc10_;
                        _loc29_++;
                        drawIndices[_loc29_] = _loc11_;
                        _loc29_++;
                        drawIndices[_loc29_] = _loc12_;
                        _loc29_++;
                        _loc11_ = _loc12_;
                        _loc32_++;
                        _loc8_ = _loc8_.next;
                     }
                     _loc31_++;
                     if(_loc39_ != null)
                     {
                        _loc8_ = _loc39_;
                        while(_loc8_ != null)
                        {
                           _loc8_.vertex = null;
                           _loc8_ = _loc8_.next;
                        }
                        param1.lastWrapper.next = _loc39_;
                        param1.lastWrapper = _loc52_;
                        _loc39_ = null;
                     }
                  }
                  _loc5_ = _loc6_;
               }
               _loc34_ *= 0.5;
               _loc23_.length = _loc27_;
               _loc24_.length = _loc28_;
               _loc25_.length = _loc29_;
               _loc20_ = this.mipMap[_loc40_];
               if(this.correctUV)
               {
                  _loc18_ = -0.5 / (_loc20_.width - 1);
                  _loc19_ = -0.5 / (_loc20_.height - 1);
                  _loc16_ = 1 - _loc18_ - _loc18_;
                  _loc17_ = 1 - _loc19_ - _loc19_;
                  _loc15_ = 0;
                  while(_loc15_ < _loc28_)
                  {
                     _loc24_[_loc15_] = _loc24_[_loc15_] * _loc16_ + _loc18_;
                     _loc15_++;
                     _loc24_[_loc15_] = _loc24_[_loc15_] * _loc17_ + _loc19_;
                     _loc15_++;
                     _loc15_++;
                  }
               }
               param2.gfx.beginBitmapFill(_loc20_,null,this.repeat,this.smooth);
               param2.gfx.drawTriangles(_loc23_,_loc25_,_loc24_,"none");
               _loc40_--;
            }
         }
         param1.numDraws = _loc30_;
         param1.numPolygons += _loc31_;
         param1.numTriangles += _loc32_;
      }
      
      override alternativa3d function drawViewAligned(param1:Camera3D, param2:Canvas, param3:Face, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number) : void
      {
         var _loc13_:Face = null;
         var _loc14_:Face = null;
         var _loc15_:BitmapData = null;
         var _loc18_:Number = NaN;
         var _loc19_:int = 0;
         var _loc20_:Wrapper = null;
         var _loc21_:Vertex = null;
         var _loc22_:int = 0;
         var _loc11_:Number = param1.viewSizeX;
         var _loc12_:Number = param1.viewSizeY;
         if(this._texture == null)
         {
            clearLinks(param3);
            return;
         }
         if(this._mipMapping == 0)
         {
            _loc15_ = this._texture;
         }
         else
         {
            _loc18_ = param1.focalLength * this.resolution;
            _loc19_ = param4 >= _loc18_ ? int(1 + Math.log(param4 / _loc18_) * 1.4426950408889634) : 0;
            if(_loc19_ >= this.numMaps)
            {
               _loc19_ = this.numMaps - 1;
            }
            _loc15_ = this.mipMap[_loc19_];
         }
         var _loc16_:Number = _loc15_.width;
         var _loc17_:Number = _loc15_.height;
         drawMatrix.a = param5 / _loc16_;
         drawMatrix.b = param6 / _loc16_;
         drawMatrix.c = param7 / _loc17_;
         drawMatrix.d = param8 / _loc17_;
         drawMatrix.tx = param9;
         drawMatrix.ty = param10;
         param2.gfx.beginBitmapFill(_loc15_,drawMatrix,this.repeat,this.smooth);
         _loc13_ = param3;
         while(_loc13_ != null)
         {
            _loc14_ = _loc13_.processNext;
            _loc13_.processNext = null;
            _loc20_ = _loc13_.wrapper;
            _loc21_ = _loc20_.vertex;
            param2.gfx.moveTo(_loc21_.cameraX * _loc11_ / param4,_loc21_.cameraY * _loc12_ / param4);
            _loc22_ = -1;
            _loc20_ = _loc20_.next;
            while(_loc20_ != null)
            {
               _loc21_ = _loc20_.vertex;
               param2.gfx.lineTo(_loc21_.cameraX * _loc11_ / param4,_loc21_.cameraY * _loc12_ / param4);
               _loc22_++;
               _loc20_ = _loc20_.next;
            }
            param1.numTriangles += _loc22_;
            ++param1.numPolygons;
            _loc13_ = _loc14_;
         }
         ++param1.numDraws;
      }
      
      alternativa3d function calculateMipMaps() : void
      {
         this.mipMap = new Vector.<BitmapData>();
         this.numMaps = 0;
         this.mipMap[this.numMaps] = this._texture;
         ++this.numMaps;
         if(this._texture.width % 2 > 0 || this._texture.height % 2 > 0)
         {
            return;
         }
         filter.preserveAlpha = !this._texture.transparent;
         var _loc1_:BitmapData = this._texture.width * this._texture.height > 16777215 ? this._texture.clone() : new BitmapData(this._texture.width,this._texture.height,this._texture.transparent);
         var _loc2_:BitmapData = this._texture;
         rect.width = this._texture.width;
         rect.height = this._texture.height;
         while(rect.width % 2 == 0 && rect.height % 2 == 0)
         {
            _loc1_.applyFilter(_loc2_,rect,point,filter);
            rect.width /= 2;
            rect.height /= 2;
            _loc2_ = new BitmapData(rect.width,rect.height,this._texture.transparent,0);
            _loc2_.draw(_loc1_,matrix,null,null,null,false);
            this.mipMap[this.numMaps] = _loc2_;
            ++this.numMaps;
         }
         _loc1_.dispose();
      }
      
      private static var meter:TextField;
      private static var previous:int = 0;
      private static var windowStart:int = 0;
      private static var frames:int = 0;
      private static var intervals:Array = [];
      private static var slowWindows:int = 0;
      private static var performanceQuality:Boolean = false;

      private static function startMeter(view:flash.display.DisplayObject):void
      {
         if(meter != null || view.stage == null) return;
         meter = new TextField();
         meter.defaultTextFormat = new TextFormat('_sans',11,0xFFFFFF,true);
         meter.width = 190;
         meter.height = 36;
         meter.x = 0;
         meter.y = 35;
         meter.background = true;
         meter.backgroundColor = 0x14202B;
         meter.mouseEnabled = false;
         meter.selectable = false;
         meter.text = 'FPS: measuring… / 25';
         view.stage.addChild(meter);
         view.stage.addEventListener(Event.ENTER_FRAME,measure,false,-1000,true);
      }

      private static function measure(event:Event):void
      {
         var now:int = getTimer();
         if(previous == 0) { previous = windowStart = now; return; }
         var delta:int = now - previous;
         previous = now;
         // A background-tab suspension is not a gameplay frame-time sample.
         if(delta > 1000) { frames = 0; intervals = []; windowStart = now; return; }
         intervals.push(delta);
         frames++;
         var elapsed:int = now - windowStart;
         if(elapsed < 1000) return;
         intervals.sort(Array.NUMERIC);
         var p95:Number = intervals[Math.min(intervals.length-1,Math.ceil(intervals.length*0.95)-1)];
         var fps:Number = frames*1000/elapsed;
         if(fps < 24) slowWindows++; else slowWindows = 0;
         if(slowWindows >= 3 && !performanceQuality)
         {
            meter.stage.quality = 'low';
            performanceQuality = true;
         }
         meter.text = 'FPS: ' + fps.toFixed(1) + ' / 25' + (performanceQuality ? ' [low AA]' : '') + '\nFrame p95: ' + p95 + ' ms';
         frames = 0;
         intervals = [];
         windowStart = now;
      }
      private static var externalCamera:Camera3D;
      private static var externalIds:flash.utils.Dictionary;
      private static var externalMaterials:flash.utils.Dictionary;
      private static var externalStates:flash.utils.Dictionary;
      private static var externalNextId:int;
      private static var externalNextMaterial:int;
      private static var externalBudget:int;
      private static var externalMoving:flash.utils.Dictionary;
      private static var externalDynamic:Array;
      private static var externalInitializing:Boolean;
      private static var externalPending:Boolean;

      private static var externalSceneKey:String;
      private static var externalUploadedKey:String;
      private static var externalManifest:Object;
      private static var externalReady:Boolean;
      private static var loadingWorld:Object;
      private static var loadingWasPaused:Boolean;
      private static var loadingStarted:int;
      private static var loadingDelay:int;
      private static var loadingListener:Function;
      private static var loadingStage:flash.display.Stage;

      public static function beginScene(track:int,cup:Object,world:Object):void
      {
         externalSceneKey = track + ':' + cup[0].team + ':' + cup[1].team;
         if(!flash.external.ExternalInterface.available) return;
         if(loadingListener != null)
         {
            loadingStage.removeEventListener(flash.events.Event.ENTER_FRAME,loadingListener);
            loadingListener = null;
         }
         if(loadingWorld != null) loadingWorld.paused = loadingWasPaused;
         loadingWorld = world;
         loadingWasPaused = world.paused;
         loadingStarted = getTimer();
         loadingDelay = 0;
         world.paused = true;
         if(!externalReady || externalUploadedKey != externalSceneKey)
            flash.external.ExternalInterface.call('soccerBridge.loading',true);
      }

      public static function deferStart(camera:Camera3D,world:Object,start:Function):Boolean
      {
         if(!flash.external.ExternalInterface.available || camera == null) return true;
         if(externalReady && externalCamera == camera)
         {
            if(loadingListener != null)
            {
               loadingStage.removeEventListener(flash.events.Event.ENTER_FRAME,loadingListener);
               loadingListener = null;
            }
            if(loadingWorld == world)
            {
               world.paused = loadingWasPaused;
               loadingDelay = getTimer() - loadingStarted;
               loadingWorld = null;
               flash.external.ExternalInterface.call('soccerBridge.loading',false);
            }
            return true;
         }
         if(loadingListener == null)
         {
            flash.external.ExternalInterface.call('soccerBridge.loading',true);
            loadingStage = camera.view.stage;
            loadingListener = function(event:flash.events.Event):void
            {
               if(loadingWorld != world) return;
               if(camera.view.stage != loadingStage)
               {
                  loadingStage.removeEventListener(flash.events.Event.ENTER_FRAME,loadingListener);
                  loadingListener = null;
                  if(loadingWorld == world)
                  {
                     world.paused = loadingWasPaused;
                     loadingWorld = null;
                     flash.external.ExternalInterface.call('soccerBridge.loading',false);
                  }
                  return;
               }
               camera.render();
               if(externalReady && externalCamera == camera)
               {
                  loadingStage.removeEventListener(flash.events.Event.ENTER_FRAME,loadingListener);
                  loadingListener = null;
                  start();
               }
            };
            camera.view.stage.addEventListener(flash.events.Event.ENTER_FRAME,loadingListener);
         }
         return false;
      }

      public static function takeLoadingDelay():int
      {
         var elapsed:int = loadingDelay;
         loadingDelay = 0;
         return elapsed;
      }

      private static function externalBindings():void
      {
         externalIds = new flash.utils.Dictionary();
         externalStates = new flash.utils.Dictionary();
         externalMoving = new flash.utils.Dictionary();
         externalDynamic = [];
      }

      private static function externalSignature(node:alternativa.engine3d.core.Object3D):String
      {
         return getQualifiedClassName(node) + '|' + node.name + '|' +
            (node is alternativa.engine3d.core.Object3DContainer ? alternativa.engine3d.core.Object3DContainer(node).numChildren : 0);
      }

      private static function externalRebind(node:alternativa.engine3d.core.Object3D,path:String,packet:Object):Boolean
      {
         if(node is Camera3D) return true;
         var entry:Object = externalManifest[path];
         if(entry == null || entry.signature != externalSignature(node)) return false;
         externalIds[node] = entry.id;
         externalMoving[node] = entry.moving;
         if(entry.moving) externalDynamic.push({node:node,id:entry.id});
         externalUpdate(node,entry.id,packet);
         if(node is alternativa.engine3d.core.Object3DContainer)
         {
            var container:alternativa.engine3d.core.Object3DContainer = node as alternativa.engine3d.core.Object3DContainer;
            for(var c:int=0;c<container.numChildren;c++)
               if(!externalRebind(container.getChildAt(c),path + '/' + c,packet)) return false;
         }
         return true;
      }

      public static function physicsReady(world:Object):Boolean
      {
         return world != null && world.ball != null && world.ball.b2body != null && world.players.length >= 4;
      }

      public static function renderExternal(camera:Camera3D):Boolean
      {
         if(camera.view == null || camera.view.stage == null ||
            camera.view.root.loaderInfo.parameters.webglbridge != '1' ||
            !flash.external.ExternalInterface.available) return false;
         try
         {
            var reset:Boolean = externalCamera != camera;
            var packet:Object = {reset:false,nodes:[],materials:[],updates:[],time:getTimer(),sceneKey:externalSceneKey};
            var top:alternativa.engine3d.core.Object3D = camera;
            while(top.parent != null) top = top.parent;
            if(reset)
            {
               externalCamera = camera;
               externalBindings();
               if(externalReady && externalSceneKey == externalUploadedKey && externalManifest != null &&
                  externalRebind(top,'0',packet))
               {
                  packet.reuse = true;
                  packet.snap = true;
                  externalInitializing = false;
               }
               else
               {
                  externalBindings();
                  externalMaterials = new flash.utils.Dictionary();
                  externalNextId = 1;
                  externalNextMaterial = 1;
                  externalManifest = {};
                  externalInitializing = true;
                  externalReady = false;
                  packet.updates = [];
                  packet.reset = true;
               }
            }
            externalBudget = 4;
            if(externalInitializing)
            {
               externalPending = false;
               externalNode(top,0,packet,false,'0');
               externalInitializing = externalPending;
            }
            else if(packet.reuse !== true)
            {
               for each(var moving:Object in externalDynamic) externalUpdate(moving.node,moving.id,packet);
            }
            var raw:Vector.<Number> = camera.concatenatedMatrix.rawData;
            var matrixData:Array = [];
            for(var i:int=0;i<16;i++) matrixData.push(raw[i]);
            packet.camera = {matrix:matrixData,fov:camera.fov,near:Math.max(0.1,camera.nearClipping),far:Math.max(20000,camera.farClipping)};
            packet.dynamic = externalDynamic.length;
            packet.complete = !externalInitializing;
            var response:int = int(flash.external.ExternalInterface.call('soccerBridge.receive',packet));
            if(response == 2) { externalReady = true; externalUploadedKey = externalSceneKey; }
            camera.view.visible = response != 2;
            if(response == 0) { externalCamera = null; externalReady = false; }
            return response == 2;
         }
         catch(error:Error)
         {
            externalCamera = null;
            externalReady = false;
            camera.view.visible = true;
            trace('WebGL bridge error: ' + error.message);
            flash.external.ExternalInterface.call('soccerBridge.reportError',error.message);
            return false;
         }
      }

      private static function externalNode(node:alternativa.engine3d.core.Object3D,parent:int,packet:Object,dynamicBranch:Boolean,path:String):void
      {
         if(node is Camera3D) return;
         var id:int = externalIds[node];
         var fresh:Boolean = id == 0;
         if(fresh && externalBudget <= 0) { externalPending = true; return; }
         if(fresh) externalBudget--;
         if(fresh) { id = externalNextId++; externalIds[node] = id; }
         if(fresh)
         {
            if(node is alternativa.engine3d.core.Object3DContainer &&
               alternativa.engine3d.core.Object3DContainer(node).getChildByName('carBody1') != null) dynamicBranch = true;
            if(node.name == 'shadowBall') dynamicBranch = true;
            if(node is alternativa.engine3d.objects.Mesh)
            {
               var checkFaces:Vector.<alternativa.engine3d.core.Face> = alternativa.engine3d.objects.Mesh(node).faces;
               if(checkFaces.length > 0 && checkFaces[0].material is TextureMaterial &&
                  getQualifiedClassName(TextureMaterial(checkFaces[0].material).texture) == 'ballTexture') dynamicBranch = true;
            }
            externalManifest[path] = {id:id,signature:externalSignature(node),moving:dynamicBranch};
            externalMoving[node] = dynamicBranch;
            if(dynamicBranch) externalDynamic.push({node:node,id:id});
         }
         dynamicBranch = externalMoving[node] === true;
         externalUpdate(node,id,packet);
         if(fresh)
         {
            externalDefinition(node,id,parent,packet);
         }
         if(node is alternativa.engine3d.core.Object3DContainer)
         {
            var container:alternativa.engine3d.core.Object3DContainer = node as alternativa.engine3d.core.Object3DContainer;
            for(var c:int=0;c<container.numChildren;c++) externalNode(container.getChildAt(c),id,packet,dynamicBranch,path + '/' + c);
         }
      }

      private static function externalUpdate(node:alternativa.engine3d.core.Object3D,id:int,packet:Object):void
      {
         var state:Array = [node.x,node.y,node.z,node.rotationX,node.rotationY,node.rotationZ,node.scaleX,node.scaleY,node.scaleZ,node.visible,node.alpha];
         var previous:Array = externalStates[node];
         var changed:Boolean = previous == null;
         if(!changed)
         {
            for(var s:int=0;s<state.length;s++)
            {
               if(previous[s] !== state[s]) { changed = true; break; }
            }
         }
         if(changed)
         {
            externalStates[node] = state;
            packet.updates.push({id:id,state:state});
         }
      }

      private static function externalDefinition(node:alternativa.engine3d.core.Object3D,id:int,parent:int,packet:Object):void
      {
            var definition:Object = {id:id,parent:parent,name:node.name,parts:[]};
            if(node is alternativa.engine3d.objects.Mesh)
            {
               var mesh:alternativa.engine3d.objects.Mesh = node as alternativa.engine3d.objects.Mesh;
               var groups:Object = {};
               for each(var face:alternativa.engine3d.core.Face in mesh.faces)
               {
                  var materialId:int = externalMaterial(face.material,packet);
                  var group:Object = groups[materialId];
                  if(group == null)
                  {
                     group = {material:materialId,position:[],uv:[]};
                     groups[materialId] = group;
                     definition.parts.push(group);
                  }
                  var vertices:Vector.<alternativa.engine3d.core.Vertex> = face.vertices;
                  for(var j:int=1;j+1<vertices.length;j++)
                  {
                     var tri:Array = [vertices[0],vertices[j],vertices[j+1]];
                     for each(var vertex:alternativa.engine3d.core.Vertex in tri)
                     {
                        group.position.push(vertex.x,vertex.y,vertex.z);
                        group.uv.push(vertex.u,vertex.v);
                     }
                  }
               }
            }
            packet.nodes.push(definition);
      }

      private static function externalMaterial(material:Material,packet:Object):int
      {
         if(material == null) return 0;
         var id:int = externalMaterials[material];
         if(id != 0) return id;
         id = externalNextMaterial++;
         externalMaterials[material] = id;
         var definition:Object = {id:id,color:16777215};
         if(material is TextureMaterial)
         {
            var bitmap:BitmapData = TextureMaterial(material).texture;
            if(bitmap != null)
            {
               definition.imageClass = getQualifiedClassName(bitmap);
               definition.width = bitmap.width;
               definition.height = bitmap.height;
               definition.repeat = TextureMaterial(material).repeat;
               if(definition.imageClass == 'flash.display::BitmapData' || definition.imageClass == 'BitmapData')
               {
                  var bytes:flash.utils.ByteArray = bitmap.getPixels(bitmap.rect);
                  bytes.compress();
                  definition.pixels = externalBase64(bytes);
               }
            }
         }
         else if(material is FillMaterial)
         {
            definition.color = FillMaterial(material).color;
            definition.alpha = FillMaterial(material).alpha;
         }
         packet.materials.push(definition);
         return id;
      }

      private static function externalBase64(bytes:flash.utils.ByteArray):String
      {
         var alphabet:String = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/';
         var chunks:Array = [];
         var chunk:String = '';
         bytes.position = 0;
         while(bytes.bytesAvailable > 0)
         {
            var remaining:int = bytes.bytesAvailable;
            var a:int = bytes.readUnsignedByte();
            var b:int = remaining > 1 ? bytes.readUnsignedByte() : 0;
            var c:int = remaining > 2 ? bytes.readUnsignedByte() : 0;
            chunk += alphabet.charAt(a >> 2) + alphabet.charAt(((a & 3) << 4) | (b >> 4)) +
               (remaining > 1 ? alphabet.charAt(((b & 15) << 2) | (c >> 6)) : '=') +
               (remaining > 2 ? alphabet.charAt(c & 63) : '=');
            if(chunk.length >= 1024) { chunks.push(chunk); chunk = ''; }
         }
         if(chunk.length > 0) chunks.push(chunk);
         return chunks.join('');
      }

      public function get mipMapping() : int
      {
         return this._mipMapping;
      }
      
      public function get texture() : BitmapData
      {
         return this._texture;
      }
      
      override public function clone() : Material
      {
         var _loc1_:TextureMaterial = new TextureMaterial(this._texture,this.repeat,this.smooth,this._mipMapping,this.resolution);
         _loc1_.clonePropertiesFrom(this);
         return _loc1_;
      }
      
      public function set mipMapping(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 != this._mipMapping)
         {
            if(this._texture != null)
            {
               if(this._mipMapping == 0 && param1 > 0)
               {
                  this.calculateMipMaps();
               }
               else if(this._mipMapping > 0 && param1 == 0)
               {
                  this.disposeMipMaps();
               }
            }
            this._mipMapping = param1;
         }
      }
      
      public function set texture(param1:BitmapData) : void
      {
         if(param1 != this._texture)
         {
            this._texture = param1;
            this.disposeMipMaps();
            if(param1 != null && this._mipMapping > 0)
            {
               this.calculateMipMaps();
            }
         }
      }
      
      alternativa3d function disposeMipMaps() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ < this.numMaps)
         {
            (this.mipMap[_loc1_] as BitmapData).dispose();
            _loc1_++;
         }
         this.mipMap = null;
         this.numMaps = 0;
      }
   }
}



