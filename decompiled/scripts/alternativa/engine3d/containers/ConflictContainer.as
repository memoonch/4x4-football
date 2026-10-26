package alternativa.engine3d.containers
{
   import alternativa.engine3d.alternativa3d;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Canvas;
   import alternativa.engine3d.core.Debug;
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.core.Object3DContainer;
   import alternativa.engine3d.core.VG;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.core.Wrapper;
   
   use namespace alternativa3d;
   
   public class ConflictContainer extends Object3DContainer
   {
      
      public var resolveByOOBB:Boolean = true;
      
      public var resolveByAABB:Boolean = true;
      
      public var threshold:Number = 0.01;
      
      public function ConflictContainer()
      {
         super();
      }
      
      override alternativa3d function draw(param1:Camera3D, param2:Canvas) : void
      {
         var _loc3_:Canvas = null;
         var _loc4_:int = 0;
         var _loc6_:VG = null;
         var _loc5_:VG = collectVG(param1);
         if(_loc5_ != null)
         {
            if(param1.debug && (_loc4_ = param1.checkInDebug(this)) > 0)
            {
               _loc3_ = param2.getChildCanvas(true,false);
               if(_loc4_ & Debug.BOUNDS)
               {
                  Debug.drawBounds(param1,_loc3_,this,boundMinX,boundMinY,boundMinZ,boundMaxX,boundMaxY,boundMaxZ);
               }
            }
            _loc3_ = param2.getChildCanvas(false,true,this,alpha,blendMode,colorTransform,filters);
            _loc3_.numDraws = 0;
            if(_loc5_.next != null)
            {
               calculateInverseMatrix();
               if(this.resolveByAABB)
               {
                  _loc6_ = _loc5_;
                  while(_loc6_ != null)
                  {
                     _loc6_.calculateAABB(ima,imb,imc,imd,ime,imf,img,imh,imi,imj,imk,iml);
                     _loc6_ = _loc6_.next;
                  }
                  this.drawAABBGeometry(param1,_loc3_,_loc5_);
               }
               else if(this.resolveByOOBB)
               {
                  _loc6_ = _loc5_;
                  while(_loc6_ != null)
                  {
                     _loc6_.calculateOOBB(this);
                     _loc6_ = _loc6_.next;
                  }
                  this.drawOOBBGeometry(param1,_loc3_,_loc5_);
               }
               else
               {
                  this.drawConflictGeometry(param1,_loc3_,_loc5_);
               }
            }
            else
            {
               _loc5_.draw(param1,_loc3_,this.threshold,this);
               _loc5_.destroy();
            }
            if(_loc3_.numDraws > 0)
            {
               _loc3_.removeChildren(_loc3_.numDraws);
            }
            else
            {
               --param2.numDraws;
            }
         }
      }
      
      alternativa3d function drawOOBBGeometry(param1:Camera3D, param2:Canvas, param3:VG) : void
      {
         var _loc4_:Vertex = null;
         var _loc5_:Vertex = null;
         var _loc6_:Wrapper = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = false;
         var _loc14_:VG = null;
         var _loc15_:VG = null;
         var _loc16_:Boolean = false;
         var _loc17_:VG = null;
         var _loc18_:VG = null;
         var _loc19_:VG = null;
         var _loc20_:VG = null;
         _loc14_ = param3;
         while(_loc14_ != null)
         {
            if(_loc14_.viewAligned)
            {
               _loc11_ = _loc14_.object.ml;
               _loc15_ = param3;
               while(_loc15_ != null)
               {
                  if(!_loc15_.viewAligned)
                  {
                     _loc12_ = false;
                     _loc13_ = false;
                     _loc4_ = _loc15_.boundVertexList;
                     while(_loc4_ != null)
                     {
                        if(_loc4_.cameraZ > _loc11_)
                        {
                           if(_loc12_)
                           {
                              break;
                           }
                           _loc13_ = true;
                        }
                        else
                        {
                           if(_loc13_)
                           {
                              break;
                           }
                           _loc12_ = true;
                        }
                        _loc4_ = _loc4_.next;
                     }
                     if(_loc4_ != null)
                     {
                        break;
                     }
                  }
                  _loc15_ = _loc15_.next;
               }
               if(_loc15_ == null)
               {
                  break;
               }
            }
            else
            {
               _loc5_ = _loc14_.boundPlaneList;
               while(_loc5_ != null)
               {
                  _loc8_ = _loc5_.cameraX;
                  _loc9_ = _loc5_.cameraY;
                  _loc10_ = _loc5_.cameraZ;
                  _loc11_ = _loc5_.offset;
                  _loc16_ = false;
                  _loc15_ = param3;
                  while(_loc15_ != null)
                  {
                     if(_loc14_ != _loc15_)
                     {
                        _loc12_ = false;
                        _loc13_ = false;
                        if(_loc15_.viewAligned)
                        {
                           _loc6_ = _loc15_.faceStruct.wrapper;
                           while(_loc6_ != null)
                           {
                              _loc4_ = _loc6_.vertex;
                              if(_loc4_.cameraX * _loc8_ + _loc4_.cameraY * _loc9_ + _loc4_.cameraZ * _loc10_ >= _loc11_ - this.threshold)
                              {
                                 if(_loc12_)
                                 {
                                    break;
                                 }
                                 _loc16_ = true;
                                 _loc13_ = true;
                              }
                              else
                              {
                                 if(_loc13_)
                                 {
                                    break;
                                 }
                                 _loc12_ = true;
                              }
                              _loc6_ = _loc6_.next;
                           }
                           if(_loc6_ != null)
                           {
                              break;
                           }
                        }
                        else
                        {
                           _loc4_ = _loc15_.boundVertexList;
                           while(_loc4_ != null)
                           {
                              if(_loc4_.cameraX * _loc8_ + _loc4_.cameraY * _loc9_ + _loc4_.cameraZ * _loc10_ >= _loc11_ - this.threshold)
                              {
                                 if(_loc12_)
                                 {
                                    break;
                                 }
                                 _loc16_ = true;
                                 _loc13_ = true;
                              }
                              else
                              {
                                 if(_loc13_)
                                 {
                                    break;
                                 }
                                 _loc12_ = true;
                              }
                              _loc4_ = _loc4_.next;
                           }
                           if(_loc4_ != null)
                           {
                              break;
                           }
                        }
                     }
                     _loc15_ = _loc15_.next;
                  }
                  if(_loc15_ == null && _loc16_)
                  {
                     break;
                  }
                  _loc5_ = _loc5_.next;
               }
               if(_loc5_ != null)
               {
                  break;
               }
            }
            _loc14_ = _loc14_.next;
         }
         if(_loc14_ != null)
         {
            if(_loc14_.viewAligned)
            {
               while(param3 != null)
               {
                  _loc17_ = param3.next;
                  if(param3.viewAligned)
                  {
                     _loc7_ = param3.object.ml - _loc11_;
                     if(_loc7_ < -this.threshold)
                     {
                        param3.next = _loc20_;
                        _loc20_ = param3;
                     }
                     else if(_loc7_ > this.threshold)
                     {
                        param3.next = _loc18_;
                        _loc18_ = param3;
                     }
                     else
                     {
                        param3.next = _loc19_;
                        _loc19_ = param3;
                     }
                  }
                  else
                  {
                     _loc4_ = param3.boundVertexList;
                     while(_loc4_ != null)
                     {
                        _loc7_ = _loc4_.cameraZ - _loc11_;
                        if(_loc7_ < -this.threshold)
                        {
                           param3.next = _loc20_;
                           _loc20_ = param3;
                           break;
                        }
                        if(_loc7_ > this.threshold)
                        {
                           param3.next = _loc18_;
                           _loc18_ = param3;
                           break;
                        }
                        _loc4_ = _loc4_.next;
                     }
                     if(_loc4_ == null)
                     {
                        param3.next = _loc19_;
                        _loc19_ = param3;
                     }
                  }
                  param3 = _loc17_;
               }
            }
            else
            {
               while(param3 != null)
               {
                  _loc17_ = param3.next;
                  if(param3.viewAligned)
                  {
                     _loc6_ = param3.faceStruct.wrapper;
                     while(_loc6_ != null)
                     {
                        _loc4_ = _loc6_.vertex;
                        _loc7_ = _loc4_.cameraX * _loc8_ + _loc4_.cameraY * _loc9_ + _loc4_.cameraZ * _loc10_ - _loc11_;
                        if(_loc7_ < -this.threshold)
                        {
                           param3.next = _loc18_;
                           _loc18_ = param3;
                           break;
                        }
                        if(_loc7_ > this.threshold)
                        {
                           param3.next = _loc20_;
                           _loc20_ = param3;
                           break;
                        }
                        _loc6_ = _loc6_.next;
                     }
                     if(_loc6_ == null)
                     {
                        param3.next = _loc19_;
                        _loc19_ = param3;
                     }
                  }
                  else
                  {
                     _loc4_ = param3.boundVertexList;
                     while(_loc4_ != null)
                     {
                        _loc7_ = _loc4_.cameraX * _loc8_ + _loc4_.cameraY * _loc9_ + _loc4_.cameraZ * _loc10_ - _loc11_;
                        if(_loc7_ < -this.threshold)
                        {
                           param3.next = _loc18_;
                           _loc18_ = param3;
                           break;
                        }
                        if(_loc7_ > this.threshold)
                        {
                           param3.next = _loc20_;
                           _loc20_ = param3;
                           break;
                        }
                        _loc4_ = _loc4_.next;
                     }
                     if(_loc4_ == null)
                     {
                        param3.next = _loc19_;
                        _loc19_ = param3;
                     }
                  }
                  param3 = _loc17_;
               }
            }
            if(_loc14_.viewAligned || _loc11_ < 0)
            {
               if(_loc20_ != null)
               {
                  if(_loc20_.next != null)
                  {
                     this.drawOOBBGeometry(param1,param2,_loc20_);
                  }
                  else
                  {
                     _loc20_.draw(param1,param2,this.threshold,this);
                     _loc20_.destroy();
                  }
               }
               while(_loc19_ != null)
               {
                  _loc17_ = _loc19_.next;
                  _loc19_.draw(param1,param2,this.threshold,this);
                  _loc19_.destroy();
                  _loc19_ = _loc17_;
               }
               if(_loc18_ != null)
               {
                  if(_loc18_.next != null)
                  {
                     this.drawOOBBGeometry(param1,param2,_loc18_);
                  }
                  else
                  {
                     _loc18_.draw(param1,param2,this.threshold,this);
                     _loc18_.destroy();
                  }
               }
            }
            else
            {
               if(_loc18_ != null)
               {
                  if(_loc18_.next != null)
                  {
                     this.drawOOBBGeometry(param1,param2,_loc18_);
                  }
                  else
                  {
                     _loc18_.draw(param1,param2,this.threshold,this);
                     _loc18_.destroy();
                  }
               }
               while(_loc19_ != null)
               {
                  _loc17_ = _loc19_.next;
                  _loc19_.draw(param1,param2,this.threshold,this);
                  _loc19_.destroy();
                  _loc19_ = _loc17_;
               }
               if(_loc20_ != null)
               {
                  if(_loc20_.next != null)
                  {
                     this.drawOOBBGeometry(param1,param2,_loc20_);
                  }
                  else
                  {
                     _loc20_.draw(param1,param2,this.threshold,this);
                     _loc20_.destroy();
                  }
               }
            }
         }
         else
         {
            this.drawConflictGeometry(param1,param2,param3);
         }
      }
      
      alternativa3d function drawConflictGeometry(param1:Camera3D, param2:Canvas, param3:VG) : void
      {
         var _loc4_:Canvas = null;
         var _loc5_:Face = null;
         var _loc6_:Face = null;
         var _loc7_:VG = null;
         var _loc8_:VG = null;
         var _loc9_:VG = null;
         var _loc10_:Face = null;
         var _loc11_:Face = null;
         var _loc12_:Face = null;
         var _loc13_:Face = null;
         var _loc14_:Face = null;
         var _loc15_:Face = null;
         var _loc16_:Face = null;
         var _loc17_:Face = null;
         var _loc18_:Boolean = false;
         while(param3 != null)
         {
            _loc7_ = param3.next;
            if(param3.space == 1)
            {
               param3.transformStruct(param3.faceStruct,++param3.object.transformId,ma,mb,mc,md,me,mf,mg,mh,mi,mj,mk,ml);
            }
            if(param3.sorting == 3)
            {
               param3.next = _loc8_;
               _loc8_ = param3;
            }
            else
            {
               if(param3.sorting == 2)
               {
                  if(_loc10_ != null)
                  {
                     _loc11_.processNext = param3.faceStruct;
                  }
                  else
                  {
                     _loc10_ = param3.faceStruct;
                  }
                  _loc11_ = param3.faceStruct;
                  _loc11_.geometry = param3;
                  while(_loc11_.processNext != null)
                  {
                     _loc11_ = _loc11_.processNext;
                     _loc11_.geometry = param3;
                  }
               }
               else
               {
                  if(_loc12_ != null)
                  {
                     _loc13_.processNext = param3.faceStruct;
                  }
                  else
                  {
                     _loc12_ = param3.faceStruct;
                  }
                  _loc13_ = param3.faceStruct;
                  _loc13_.geometry = param3;
                  while(_loc13_.processNext != null)
                  {
                     _loc13_ = _loc13_.processNext;
                     _loc13_.geometry = param3;
                  }
               }
               param3.faceStruct = null;
               param3.next = _loc9_;
               _loc9_ = param3;
            }
            param3 = _loc7_;
         }
         if(_loc9_ != null)
         {
            param3 = _loc9_;
            while(param3.next != null)
            {
               param3 = param3.next;
            }
            param3.next = _loc8_;
         }
         else
         {
            _loc9_ = _loc8_;
         }
         if(_loc10_ != null)
         {
            _loc14_ = _loc10_;
            _loc11_.processNext = _loc12_;
         }
         else
         {
            _loc14_ = _loc12_;
         }
         if(_loc8_ != null)
         {
            _loc8_.faceStruct.geometry = _loc8_;
            _loc14_ = this.collectNode(_loc8_.faceStruct,_loc14_,param1,this.threshold,true);
            _loc8_.faceStruct = null;
            _loc8_ = _loc8_.next;
            while(_loc8_ != null)
            {
               _loc8_.faceStruct.geometry = _loc8_;
               _loc14_ = this.collectNode(_loc8_.faceStruct,_loc14_,param1,this.threshold,false);
               _loc8_.faceStruct = null;
               _loc8_ = _loc8_.next;
            }
         }
         else if(_loc10_ != null)
         {
            _loc14_ = this.collectNode(null,_loc14_,param1,this.threshold,true);
         }
         else if(_loc12_ != null)
         {
            _loc14_ = param1.sortByAverageZ(_loc14_);
         }
         _loc5_ = _loc14_;
         while(_loc5_ != null)
         {
            _loc6_ = _loc5_.processNext;
            param3 = _loc5_.geometry;
            _loc5_.geometry = null;
            _loc18_ = _loc6_ == null || param3 != _loc6_.geometry;
            if((_loc18_) || _loc5_.material != _loc6_.material)
            {
               _loc5_.processNext = null;
               if(_loc18_)
               {
                  if(_loc15_ != null)
                  {
                     _loc16_.processNegative = _loc14_;
                     _loc15_ = null;
                     _loc16_ = null;
                  }
                  else
                  {
                     _loc14_.processPositive = _loc17_;
                     _loc17_ = _loc14_;
                     _loc17_.geometry = param3;
                  }
               }
               else
               {
                  if(_loc15_ != null)
                  {
                     _loc16_.processNegative = _loc14_;
                  }
                  else
                  {
                     _loc14_.processPositive = _loc17_;
                     _loc17_ = _loc14_;
                     _loc17_.geometry = param3;
                     _loc15_ = _loc14_;
                  }
                  _loc16_ = _loc14_;
               }
               _loc14_ = _loc6_;
            }
            _loc5_ = _loc6_;
         }
         if(param1.debug)
         {
            _loc4_ = param2.getChildCanvas(true,false);
            _loc14_ = _loc17_;
            while(_loc14_ != null)
            {
               if(_loc14_.geometry.debug & Debug.EDGES)
               {
                  _loc5_ = _loc14_;
                  while(_loc5_ != null)
                  {
                     Debug.drawEdges(param1,_loc4_,_loc5_,16711680);
                     _loc5_ = _loc5_.processNegative;
                  }
               }
               _loc14_ = _loc14_.processPositive;
            }
         }
         while(_loc17_ != null)
         {
            _loc14_ = _loc17_;
            _loc17_ = _loc14_.processPositive;
            _loc14_.processPositive = null;
            param3 = _loc14_.geometry;
            _loc14_.geometry = null;
            _loc4_ = param2.getChildCanvas(true,false,param3.object,param3.alpha,param3.blendMode,param3.colorTransform,param3.filters);
            while(_loc14_ != null)
            {
               _loc6_ = _loc14_.processNegative;
               _loc14_.processNegative = null;
               if(_loc14_.material != null)
               {
                  if(param3.viewAligned)
                  {
                     _loc14_.material.drawViewAligned(param1,_loc4_,_loc14_,param3.object.ml,param3.tma,param3.tmb,param3.tmc,param3.tmd,param3.tmtx,param3.tmty);
                  }
                  else
                  {
                     _loc14_.material.draw(param1,_loc4_,_loc14_,param3.object.ml);
                  }
               }
               else
               {
                  while(_loc14_ != null)
                  {
                     _loc5_ = _loc14_.processNext;
                     _loc14_.processNext = null;
                     _loc14_ = _loc5_;
                  }
               }
               _loc14_ = _loc6_;
            }
         }
         param3 = _loc9_;
         while(param3 != null)
         {
            _loc7_ = param3.next;
            param3.destroy();
            param3 = _loc7_;
         }
      }
      
      private function collectNode(param1:Face, param2:Face, param3:Camera3D, param4:Number, param5:Boolean, param6:Face = null) : Face
      {
         var _loc7_:Wrapper = null;
         var _loc8_:Vertex = null;
         var _loc9_:Vertex = null;
         var _loc10_:Vertex = null;
         var _loc11_:Vertex = null;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Face = null;
         var _loc17_:Face = null;
         var _loc18_:Face = null;
         var _loc19_:VG = null;
         var _loc22_:Face = null;
         var _loc23_:Face = null;
         var _loc24_:Face = null;
         var _loc25_:Face = null;
         var _loc26_:Face = null;
         var _loc28_:Number = NaN;
         var _loc29_:Number = NaN;
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
         var _loc40_:Number = NaN;
         var _loc41_:Number = NaN;
         var _loc42_:Number = NaN;
         var _loc43_:Number = NaN;
         var _loc44_:Number = NaN;
         var _loc45_:Boolean = false;
         var _loc46_:Boolean = false;
         var _loc47_:Number = NaN;
         var _loc48_:Face = null;
         var _loc49_:Face = null;
         var _loc50_:Wrapper = null;
         var _loc51_:Wrapper = null;
         var _loc52_:Wrapper = null;
         var _loc53_:Boolean = false;
         var _loc54_:Number = NaN;
         if(param1 != null)
         {
            _loc19_ = param1.geometry;
            if(param1.offset < 0)
            {
               _loc17_ = param1.processNegative;
               _loc18_ = param1.processPositive;
               _loc12_ = param1.normalX;
               _loc13_ = param1.normalY;
               _loc14_ = param1.normalZ;
               _loc15_ = param1.offset;
            }
            else
            {
               _loc17_ = param1.processPositive;
               _loc18_ = param1.processNegative;
               _loc12_ = -param1.normalX;
               _loc13_ = -param1.normalY;
               _loc14_ = -param1.normalZ;
               _loc15_ = -param1.offset;
            }
            param1.processNegative = null;
            param1.processPositive = null;
            if(param1.wrapper != null)
            {
               _loc16_ = param1;
               while(_loc16_.processNext != null)
               {
                  _loc16_ = _loc16_.processNext;
                  _loc16_.geometry = _loc19_;
               }
            }
            else
            {
               param1.geometry = null;
               param1 = null;
            }
         }
         else
         {
            param1 = param2;
            param2 = param1.processNext;
            _loc16_ = param1;
            _loc7_ = param1.wrapper;
            _loc8_ = _loc7_.vertex;
            _loc7_ = _loc7_.next;
            _loc9_ = _loc7_.vertex;
            _loc28_ = _loc8_.cameraX;
            _loc29_ = _loc8_.cameraY;
            _loc30_ = _loc8_.cameraZ;
            _loc31_ = _loc9_.cameraX - _loc28_;
            _loc32_ = _loc9_.cameraY - _loc29_;
            _loc33_ = _loc9_.cameraZ - _loc30_;
            _loc12_ = 0;
            _loc13_ = 0;
            _loc14_ = 1;
            _loc15_ = _loc30_;
            _loc34_ = 0;
            _loc7_ = _loc7_.next;
            while(_loc7_ != null)
            {
               _loc11_ = _loc7_.vertex;
               _loc35_ = _loc11_.cameraX - _loc28_;
               _loc36_ = _loc11_.cameraY - _loc29_;
               _loc37_ = _loc11_.cameraZ - _loc30_;
               _loc38_ = _loc37_ * _loc32_ - _loc36_ * _loc33_;
               _loc39_ = _loc35_ * _loc33_ - _loc37_ * _loc31_;
               _loc40_ = _loc36_ * _loc31_ - _loc35_ * _loc32_;
               _loc41_ = _loc38_ * _loc38_ + _loc39_ * _loc39_ + _loc40_ * _loc40_;
               if(_loc41_ > param4)
               {
                  _loc41_ = 1 / Math.sqrt(_loc41_);
                  _loc12_ = _loc38_ * _loc41_;
                  _loc13_ = _loc39_ * _loc41_;
                  _loc14_ = _loc40_ * _loc41_;
                  _loc15_ = _loc28_ * _loc12_ + _loc29_ * _loc13_ + _loc30_ * _loc14_;
                  break;
               }
               if(_loc41_ > _loc34_)
               {
                  _loc41_ = 1 / Math.sqrt(_loc41_);
                  _loc12_ = _loc38_ * _loc41_;
                  _loc13_ = _loc39_ * _loc41_;
                  _loc14_ = _loc40_ * _loc41_;
                  _loc15_ = _loc28_ * _loc12_ + _loc29_ * _loc13_ + _loc30_ * _loc14_;
                  _loc34_ = _loc41_;
               }
               _loc7_ = _loc7_.next;
            }
         }
         var _loc20_:Number = _loc15_ - param4;
         var _loc21_:Number = _loc15_ + param4;
         var _loc27_:Face = param2;
         while(_loc27_ != null)
         {
            _loc26_ = _loc27_.processNext;
            _loc7_ = _loc27_.wrapper;
            _loc8_ = _loc7_.vertex;
            _loc7_ = _loc7_.next;
            _loc9_ = _loc7_.vertex;
            _loc7_ = _loc7_.next;
            _loc10_ = _loc7_.vertex;
            _loc7_ = _loc7_.next;
            _loc42_ = _loc8_.cameraX * _loc12_ + _loc8_.cameraY * _loc13_ + _loc8_.cameraZ * _loc14_;
            _loc43_ = _loc9_.cameraX * _loc12_ + _loc9_.cameraY * _loc13_ + _loc9_.cameraZ * _loc14_;
            _loc44_ = _loc10_.cameraX * _loc12_ + _loc10_.cameraY * _loc13_ + _loc10_.cameraZ * _loc14_;
            _loc45_ = _loc42_ < _loc20_ || _loc43_ < _loc20_ || _loc44_ < _loc20_;
            _loc46_ = _loc42_ > _loc21_ || _loc43_ > _loc21_ || _loc44_ > _loc21_;
            while(_loc7_ != null)
            {
               _loc11_ = _loc7_.vertex;
               _loc47_ = _loc11_.cameraX * _loc12_ + _loc11_.cameraY * _loc13_ + _loc11_.cameraZ * _loc14_;
               if(_loc47_ < _loc20_)
               {
                  _loc45_ = true;
               }
               else if(_loc47_ > _loc21_)
               {
                  _loc46_ = true;
               }
               _loc11_.offset = _loc47_;
               _loc7_ = _loc7_.next;
            }
            if(!_loc45_)
            {
               if(!_loc46_)
               {
                  if(param1 != null)
                  {
                     _loc16_.processNext = _loc27_;
                  }
                  else
                  {
                     param1 = _loc27_;
                  }
                  _loc16_ = _loc27_;
               }
               else
               {
                  if(_loc24_ != null)
                  {
                     _loc25_.processNext = _loc27_;
                  }
                  else
                  {
                     _loc24_ = _loc27_;
                  }
                  _loc25_ = _loc27_;
               }
            }
            else if(!_loc46_)
            {
               if(_loc22_ != null)
               {
                  _loc23_.processNext = _loc27_;
               }
               else
               {
                  _loc22_ = _loc27_;
               }
               _loc23_ = _loc27_;
            }
            else
            {
               _loc8_.offset = _loc42_;
               _loc9_.offset = _loc43_;
               _loc10_.offset = _loc44_;
               _loc48_ = _loc27_.create();
               _loc48_.material = _loc27_.material;
               _loc48_.geometry = _loc27_.geometry;
               param3.lastFace.next = _loc48_;
               param3.lastFace = _loc48_;
               _loc49_ = _loc27_.create();
               _loc49_.material = _loc27_.material;
               _loc49_.geometry = _loc27_.geometry;
               param3.lastFace.next = _loc49_;
               param3.lastFace = _loc49_;
               _loc50_ = null;
               _loc51_ = null;
               _loc7_ = _loc27_.wrapper.next.next;
               while(_loc7_.next != null)
               {
                  _loc7_ = _loc7_.next;
               }
               _loc8_ = _loc7_.vertex;
               _loc42_ = _loc8_.offset;
               _loc53_ = _loc27_.material != null && _loc27_.material.useVerticesNormals;
               _loc7_ = _loc27_.wrapper;
               while(_loc7_ != null)
               {
                  _loc9_ = _loc7_.vertex;
                  _loc43_ = _loc9_.offset;
                  if(_loc42_ < _loc20_ && _loc43_ > _loc21_ || _loc42_ > _loc21_ && _loc43_ < _loc20_)
                  {
                     _loc54_ = (_loc15_ - _loc42_) / (_loc43_ - _loc42_);
                     _loc11_ = _loc9_.create();
                     param3.lastVertex.next = _loc11_;
                     param3.lastVertex = _loc11_;
                     _loc11_.cameraX = _loc8_.cameraX + (_loc9_.cameraX - _loc8_.cameraX) * _loc54_;
                     _loc11_.cameraY = _loc8_.cameraY + (_loc9_.cameraY - _loc8_.cameraY) * _loc54_;
                     _loc11_.cameraZ = _loc8_.cameraZ + (_loc9_.cameraZ - _loc8_.cameraZ) * _loc54_;
                     _loc11_.u = _loc8_.u + (_loc9_.u - _loc8_.u) * _loc54_;
                     _loc11_.v = _loc8_.v + (_loc9_.v - _loc8_.v) * _loc54_;
                     if(_loc53_)
                     {
                        _loc11_.x = _loc8_.x + (_loc9_.x - _loc8_.x) * _loc54_;
                        _loc11_.y = _loc8_.y + (_loc9_.y - _loc8_.y) * _loc54_;
                        _loc11_.z = _loc8_.z + (_loc9_.z - _loc8_.z) * _loc54_;
                        _loc11_.normalX = _loc8_.normalX + (_loc9_.normalX - _loc8_.normalX) * _loc54_;
                        _loc11_.normalY = _loc8_.normalY + (_loc9_.normalY - _loc8_.normalY) * _loc54_;
                        _loc11_.normalZ = _loc8_.normalZ + (_loc9_.normalZ - _loc8_.normalZ) * _loc54_;
                     }
                     _loc52_ = _loc7_.create();
                     _loc52_.vertex = _loc11_;
                     if(_loc50_ != null)
                     {
                        _loc50_.next = _loc52_;
                     }
                     else
                     {
                        _loc48_.wrapper = _loc52_;
                     }
                     _loc50_ = _loc52_;
                     _loc52_ = _loc7_.create();
                     _loc52_.vertex = _loc11_;
                     if(_loc51_ != null)
                     {
                        _loc51_.next = _loc52_;
                     }
                     else
                     {
                        _loc49_.wrapper = _loc52_;
                     }
                     _loc51_ = _loc52_;
                  }
                  if(_loc43_ <= _loc21_)
                  {
                     _loc52_ = _loc7_.create();
                     _loc52_.vertex = _loc9_;
                     if(_loc50_ != null)
                     {
                        _loc50_.next = _loc52_;
                     }
                     else
                     {
                        _loc48_.wrapper = _loc52_;
                     }
                     _loc50_ = _loc52_;
                  }
                  if(_loc43_ >= _loc20_)
                  {
                     _loc52_ = _loc7_.create();
                     _loc52_.vertex = _loc9_;
                     if(_loc51_ != null)
                     {
                        _loc51_.next = _loc52_;
                     }
                     else
                     {
                        _loc49_.wrapper = _loc52_;
                     }
                     _loc51_ = _loc52_;
                  }
                  _loc8_ = _loc9_;
                  _loc42_ = _loc43_;
                  _loc7_ = _loc7_.next;
               }
               if(_loc22_ != null)
               {
                  _loc23_.processNext = _loc48_;
               }
               else
               {
                  _loc22_ = _loc48_;
               }
               _loc23_ = _loc48_;
               if(_loc24_ != null)
               {
                  _loc25_.processNext = _loc49_;
               }
               else
               {
                  _loc24_ = _loc49_;
               }
               _loc25_ = _loc49_;
               _loc27_.processNext = null;
               _loc27_.geometry = null;
            }
            _loc27_ = _loc26_;
         }
         if(_loc18_ != null)
         {
            _loc18_.geometry = _loc19_;
            if(_loc25_ != null)
            {
               _loc25_.processNext = null;
            }
            param6 = this.collectNode(_loc18_,_loc24_,param3,param4,param5,param6);
         }
         else if(_loc24_ != null)
         {
            if(param5 && _loc24_ != _loc25_)
            {
               if(_loc25_ != null)
               {
                  _loc25_.processNext = null;
               }
               if(_loc24_.geometry.sorting == 2)
               {
                  param6 = this.collectNode(null,_loc24_,param3,param4,param5,param6);
               }
               else
               {
                  _loc24_ = param3.sortByAverageZ(_loc24_);
                  _loc25_ = _loc24_.processNext;
                  while(_loc25_.processNext != null)
                  {
                     _loc25_ = _loc25_.processNext;
                  }
                  _loc25_.processNext = param6;
                  param6 = _loc24_;
               }
            }
            else
            {
               _loc25_.processNext = param6;
               param6 = _loc24_;
            }
         }
         if(param1 != null)
         {
            _loc16_.processNext = param6;
            param6 = param1;
         }
         if(_loc17_ != null)
         {
            _loc17_.geometry = _loc19_;
            if(_loc23_ != null)
            {
               _loc23_.processNext = null;
            }
            param6 = this.collectNode(_loc17_,_loc22_,param3,param4,param5,param6);
         }
         else if(_loc22_ != null)
         {
            if(param5 && _loc22_ != _loc23_)
            {
               if(_loc23_ != null)
               {
                  _loc23_.processNext = null;
               }
               if(_loc22_.geometry.sorting == 2)
               {
                  param6 = this.collectNode(null,_loc22_,param3,param4,param5,param6);
               }
               else
               {
                  _loc22_ = param3.sortByAverageZ(_loc22_);
                  _loc23_ = _loc22_.processNext;
                  while(_loc23_.processNext != null)
                  {
                     _loc23_ = _loc23_.processNext;
                  }
                  _loc23_.processNext = param6;
                  param6 = _loc22_;
               }
            }
            else
            {
               _loc23_.processNext = param6;
               param6 = _loc22_;
            }
         }
         return param6;
      }
      
      alternativa3d function drawAABBGeometry(param1:Camera3D, param2:Canvas, param3:VG) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc10_:VG = null;
         var _loc11_:Boolean = false;
         var _loc12_:VG = null;
         var _loc13_:VG = null;
         var _loc14_:VG = null;
         var _loc15_:VG = null;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc9_:VG = param3;
         while(_loc9_ != null)
         {
            _loc4_ = _loc9_.boundMinX;
            _loc5_ = _loc4_ - this.threshold;
            _loc6_ = _loc4_ + this.threshold;
            _loc11_ = false;
            _loc10_ = param3;
            while(_loc10_ != null)
            {
               if(_loc9_ != _loc10_)
               {
                  if(_loc10_.boundMaxX <= _loc6_)
                  {
                     _loc11_ = true;
                  }
                  else if(_loc10_.boundMinX < _loc5_)
                  {
                     break;
                  }
               }
               _loc10_ = _loc10_.next;
            }
            if(_loc10_ == null && _loc11_)
            {
               _loc7_ = true;
               _loc8_ = false;
               break;
            }
            _loc4_ = _loc9_.boundMaxX;
            _loc5_ = _loc4_ - this.threshold;
            _loc6_ = _loc4_ + this.threshold;
            _loc11_ = false;
            _loc10_ = param3;
            while(_loc10_ != null)
            {
               if(_loc9_ != _loc10_)
               {
                  if(_loc10_.boundMinX >= _loc5_)
                  {
                     _loc11_ = true;
                  }
                  else if(_loc10_.boundMaxX > _loc6_)
                  {
                     break;
                  }
               }
               _loc10_ = _loc10_.next;
            }
            if(_loc10_ == null && _loc11_)
            {
               _loc7_ = true;
               _loc8_ = false;
               break;
            }
            _loc4_ = _loc9_.boundMinY;
            _loc5_ = _loc4_ - this.threshold;
            _loc6_ = _loc4_ + this.threshold;
            _loc11_ = false;
            _loc10_ = param3;
            while(_loc10_ != null)
            {
               if(_loc9_ != _loc10_)
               {
                  if(_loc10_.boundMaxY <= _loc6_)
                  {
                     _loc11_ = true;
                  }
                  else if(_loc10_.boundMinY < _loc5_)
                  {
                     break;
                  }
               }
               _loc10_ = _loc10_.next;
            }
            if(_loc10_ == null && _loc11_)
            {
               _loc7_ = false;
               _loc8_ = true;
               break;
            }
            _loc4_ = _loc9_.boundMaxY;
            _loc5_ = _loc4_ - this.threshold;
            _loc6_ = _loc4_ + this.threshold;
            _loc11_ = false;
            _loc10_ = param3;
            while(_loc10_ != null)
            {
               if(_loc9_ != _loc10_)
               {
                  if(_loc10_.boundMinY >= _loc5_)
                  {
                     _loc11_ = true;
                  }
                  else if(_loc10_.boundMaxY > _loc6_)
                  {
                     break;
                  }
               }
               _loc10_ = _loc10_.next;
            }
            if(_loc10_ == null && _loc11_)
            {
               _loc7_ = false;
               _loc8_ = true;
               break;
            }
            _loc4_ = _loc9_.boundMinZ;
            _loc5_ = _loc4_ - this.threshold;
            _loc6_ = _loc4_ + this.threshold;
            _loc11_ = false;
            _loc10_ = param3;
            while(_loc10_ != null)
            {
               if(_loc9_ != _loc10_)
               {
                  if(_loc10_.boundMaxZ <= _loc6_)
                  {
                     _loc11_ = true;
                  }
                  else if(_loc10_.boundMinZ < _loc5_)
                  {
                     break;
                  }
               }
               _loc10_ = _loc10_.next;
            }
            if(_loc10_ == null && _loc11_)
            {
               _loc7_ = false;
               _loc8_ = false;
               break;
            }
            _loc4_ = _loc9_.boundMaxZ;
            _loc5_ = _loc4_ - this.threshold;
            _loc6_ = _loc4_ + this.threshold;
            _loc11_ = false;
            _loc10_ = param3;
            while(_loc10_ != null)
            {
               if(_loc9_ != _loc10_)
               {
                  if(_loc10_.boundMinZ >= _loc5_)
                  {
                     _loc11_ = true;
                  }
                  else if(_loc10_.boundMaxZ > _loc6_)
                  {
                     break;
                  }
               }
               _loc10_ = _loc10_.next;
            }
            if(_loc10_ == null && _loc11_)
            {
               _loc7_ = false;
               _loc8_ = false;
               break;
            }
            _loc9_ = _loc9_.next;
         }
         if(_loc9_ != null)
         {
            while(param3 != null)
            {
               _loc12_ = param3.next;
               _loc16_ = _loc7_ ? param3.boundMinX : (_loc8_ ? param3.boundMinY : param3.boundMinZ);
               _loc17_ = _loc7_ ? param3.boundMaxX : (_loc8_ ? param3.boundMaxY : param3.boundMaxZ);
               if(_loc17_ > _loc6_)
               {
                  param3.next = _loc15_;
                  _loc15_ = param3;
               }
               else if(_loc16_ < _loc5_)
               {
                  param3.next = _loc13_;
                  _loc13_ = param3;
               }
               else
               {
                  param3.next = _loc14_;
                  _loc14_ = param3;
               }
               param3 = _loc12_;
            }
            if(_loc7_ && imd > _loc4_ || _loc8_ && imh > _loc4_ || !_loc7_ && !_loc8_ && iml > _loc4_)
            {
               if(_loc15_ != null)
               {
                  if(_loc15_.next != null)
                  {
                     this.drawAABBGeometry(param1,param2,_loc15_);
                  }
                  else
                  {
                     _loc15_.draw(param1,param2,this.threshold,this);
                     _loc15_.destroy();
                  }
               }
               while(_loc14_ != null)
               {
                  _loc12_ = _loc14_.next;
                  _loc14_.draw(param1,param2,this.threshold,this);
                  _loc14_.destroy();
                  _loc14_ = _loc12_;
               }
               if(_loc13_ != null)
               {
                  if(_loc13_.next != null)
                  {
                     this.drawAABBGeometry(param1,param2,_loc13_);
                  }
                  else
                  {
                     _loc13_.draw(param1,param2,this.threshold,this);
                     _loc13_.destroy();
                  }
               }
            }
            else
            {
               if(_loc13_ != null)
               {
                  if(_loc13_.next != null)
                  {
                     this.drawAABBGeometry(param1,param2,_loc13_);
                  }
                  else
                  {
                     _loc13_.draw(param1,param2,this.threshold,this);
                     _loc13_.destroy();
                  }
               }
               while(_loc14_ != null)
               {
                  _loc12_ = _loc14_.next;
                  _loc14_.draw(param1,param2,this.threshold,this);
                  _loc14_.destroy();
                  _loc14_ = _loc12_;
               }
               if(_loc15_ != null)
               {
                  if(_loc15_.next != null)
                  {
                     this.drawAABBGeometry(param1,param2,_loc15_);
                  }
                  else
                  {
                     _loc15_.draw(param1,param2,this.threshold,this);
                     _loc15_.destroy();
                  }
               }
            }
         }
         else if(this.resolveByOOBB)
         {
            _loc9_ = param3;
            while(_loc9_ != null)
            {
               _loc9_.calculateOOBB(this);
               _loc9_ = _loc9_.next;
            }
            this.drawOOBBGeometry(param1,param2,param3);
         }
         else
         {
            this.drawConflictGeometry(param1,param2,param3);
         }
      }
      
      override protected function clonePropertiesFrom(param1:Object3D) : void
      {
         super.clonePropertiesFrom(param1);
         var _loc2_:ConflictContainer = param1 as ConflictContainer;
         this.resolveByAABB = _loc2_.resolveByAABB;
         this.resolveByOOBB = _loc2_.resolveByOOBB;
         this.threshold = _loc2_.threshold;
      }
      
      override public function clone() : Object3D
      {
         var _loc1_:ConflictContainer = new ConflictContainer();
         _loc1_.clonePropertiesFrom(this);
         return _loc1_;
      }
   }
}

