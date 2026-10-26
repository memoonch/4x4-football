package alternativa.engine3d.containers
{
   import alternativa.engine3d.alternativa3d;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Canvas;
   import alternativa.engine3d.core.Debug;
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.core.Object3DContainer;
   import alternativa.engine3d.core.RayIntersectionData;
   import alternativa.engine3d.core.VG;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.core.Wrapper;
   import alternativa.engine3d.objects.Mesh;
   import flash.geom.Vector3D;
   import flash.utils.Dictionary;
   
   use namespace alternativa3d;
   
   public class BSPContainer extends ConflictContainer
   {
      
      private var bottomPlaneX:Number;
      
      private var bottomPlaneZ:Number;
      
      private var leftPlaneOffset:Number;
      
      private var bottomPlaneY:Number;
      
      private var viewAngle:Number;
      
      private var topPlaneX:Number;
      
      private var topPlaneY:Number;
      
      private var topPlaneZ:Number;
      
      private var rightPlaneX:Number;
      
      private var rightPlaneY:Number;
      
      private var rightPlaneZ:Number;
      
      private var directionZ:Number;
      
      private var directionX:Number;
      
      private var directionY:Number;
      
      public var clipping:int = 2;
      
      private var nearPlaneY:Number;
      
      private var nearPlaneZ:Number;
      
      private var nearPlaneOffset:Number;
      
      private var rightPlaneOffset:Number;
      
      private var nearPlaneX:Number;
      
      private var leftPlaneX:Number;
      
      private var leftPlaneY:Number;
      
      private var leftPlaneZ:Number;
      
      public var debugAlphaFade:Number = 0.8;
      
      alternativa3d var vertexList:Vertex;
      
      alternativa3d var root:BSPNode;
      
      private var farPlaneX:Number;
      
      private var farPlaneZ:Number;
      
      private var farPlaneOffset:Number;
      
      private var topPlaneOffset:Number;
      
      private var farPlaneY:Number;
      
      private var bottomPlaneOffset:Number;
      
      public function BSPContainer()
      {
         super();
      }
      
      override alternativa3d function updateBounds(param1:Object3D, param2:Object3D = null) : void
      {
         super.alternativa3d::updateBounds(param1,param2);
         var _loc3_:Vertex = this.vertexList;
         while(_loc3_ != null)
         {
            if(param2 != null)
            {
               _loc3_.cameraX = param2.ma * _loc3_.x + param2.mb * _loc3_.y + param2.mc * _loc3_.z + param2.md;
               _loc3_.cameraY = param2.me * _loc3_.x + param2.mf * _loc3_.y + param2.mg * _loc3_.z + param2.mh;
               _loc3_.cameraZ = param2.mi * _loc3_.x + param2.mj * _loc3_.y + param2.mk * _loc3_.z + param2.ml;
            }
            else
            {
               _loc3_.cameraX = _loc3_.x;
               _loc3_.cameraY = _loc3_.y;
               _loc3_.cameraZ = _loc3_.z;
            }
            if(_loc3_.cameraX < param1.boundMinX)
            {
               param1.boundMinX = _loc3_.cameraX;
            }
            if(_loc3_.cameraX > param1.boundMaxX)
            {
               param1.boundMaxX = _loc3_.cameraX;
            }
            if(_loc3_.cameraY < param1.boundMinY)
            {
               param1.boundMinY = _loc3_.cameraY;
            }
            if(_loc3_.cameraY > param1.boundMaxY)
            {
               param1.boundMaxY = _loc3_.cameraY;
            }
            if(_loc3_.cameraZ < param1.boundMinZ)
            {
               param1.boundMinZ = _loc3_.cameraZ;
            }
            if(_loc3_.cameraZ > param1.boundMaxZ)
            {
               param1.boundMaxZ = _loc3_.cameraZ;
            }
            _loc3_ = _loc3_.next;
         }
         if(this.root != null)
         {
            this.updateBoundsNode(this.root,param1,param2);
         }
      }
      
      override public function intersectRay(param1:Vector3D, param2:Vector3D, param3:Dictionary = null, param4:Camera3D = null) : RayIntersectionData
      {
         var _loc6_:RayIntersectionData = null;
         if(param3 != null && Boolean(param3[this]))
         {
            return null;
         }
         if(!boundIntersectRay(param1,param2,boundMinX,boundMinY,boundMinZ,boundMaxX,boundMaxY,boundMaxZ))
         {
            return null;
         }
         var _loc5_:RayIntersectionData = super.intersectRay(param1,param2,param3,param4);
         if(this.root != null && boundIntersectRay(param1,param2,this.root.boundMinX,this.root.boundMinY,this.root.boundMinZ,this.root.boundMaxX,this.root.boundMaxY,this.root.boundMaxZ))
         {
            _loc6_ = this.intersectRayNode(this.root,param1,param2,param3,param4);
            if(_loc6_ != null && (_loc5_ == null || _loc6_.time < _loc5_.time))
            {
               _loc5_ = _loc6_;
            }
         }
         return _loc5_;
      }
      
      private function debugNode(param1:BSPNode, param2:int, param3:Camera3D, param4:Canvas, param5:Number) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(param1 != null)
         {
            _loc6_ = -1;
            _loc7_ = -1;
            if(param1.negative != null)
            {
               _loc6_ = param2 > 0 ? this.cullingInContainer(param2,param1.negative.boundMinX,param1.negative.boundMinY,param1.negative.boundMinZ,param1.negative.boundMaxX,param1.negative.boundMaxY,param1.negative.boundMaxZ) : 0;
            }
            if(param1.positive != null)
            {
               _loc7_ = param2 > 0 ? this.cullingInContainer(param2,param1.positive.boundMinX,param1.positive.boundMinY,param1.positive.boundMinZ,param1.positive.boundMaxX,param1.positive.boundMaxY,param1.positive.boundMaxZ) : 0;
            }
            if(_loc6_ >= 0)
            {
               this.debugNode(param1.negative,_loc6_,param3,param4,param5 * this.debugAlphaFade);
            }
            Debug.drawBounds(param3,param4,this,param1.boundMinX,param1.boundMinY,param1.boundMinZ,param1.boundMaxX,param1.boundMaxY,param1.boundMaxZ,14496733,param5);
            if(_loc7_ >= 0)
            {
               this.debugNode(param1.positive,_loc7_,param3,param4,param5 * this.debugAlphaFade);
            }
         }
      }
      
      private function drawNode(param1:BSPNode, param2:int, param3:Camera3D, param4:Canvas, param5:VG, param6:Face = null) : Face
      {
         var _loc7_:VG = null;
         var _loc8_:VG = null;
         var _loc9_:VG = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Face = null;
         var _loc18_:Face = null;
         var _loc19_:Wrapper = null;
         var _loc20_:Vertex = null;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Object3D = null;
         var _loc25_:Object3D = null;
         var _loc26_:VG = null;
         if(param1.objectList == null)
         {
            _loc11_ = -1;
            _loc12_ = -1;
            _loc13_ = param1.normalX;
            _loc14_ = param1.normalY;
            _loc15_ = param1.normalZ;
            _loc16_ = param1.offset;
            if(imd * _loc13_ + imh * _loc14_ + iml * _loc15_ > _loc16_)
            {
               if(this.directionX * _loc13_ + this.directionY * _loc14_ + this.directionZ * _loc15_ < this.viewAngle)
               {
                  while(param5 != null)
                  {
                     _loc7_ = param5.next;
                     _loc10_ = this.checkBounds(_loc13_,_loc14_,_loc15_,_loc16_,param5.boundMinX,param5.boundMinY,param5.boundMinZ,param5.boundMaxX,param5.boundMaxY,param5.boundMaxZ,true);
                     if(_loc10_ < 0)
                     {
                        param5.next = _loc8_;
                        _loc8_ = param5;
                     }
                     else if(_loc10_ > 0)
                     {
                        param5.next = _loc9_;
                        _loc9_ = param5;
                     }
                     else
                     {
                        param5.split(param3,_loc13_,_loc14_,_loc15_,_loc16_,threshold);
                        if(param5.next != null)
                        {
                           param5.next.next = _loc8_;
                           _loc8_ = param5.next;
                        }
                        if(param5.faceStruct != null)
                        {
                           param5.next = _loc9_;
                           _loc9_ = param5;
                        }
                        else
                        {
                           param5.destroy();
                        }
                     }
                     param5 = _loc7_;
                  }
                  if(param1.positive != null)
                  {
                     _loc12_ = param2 > 0 ? this.cullingInContainer(param2,param1.positive.boundMinX,param1.positive.boundMinY,param1.positive.boundMinZ,param1.positive.boundMaxX,param1.positive.boundMaxY,param1.positive.boundMaxZ) : 0;
                  }
                  if(_loc12_ >= 0)
                  {
                     param6 = this.drawNode(param1.positive,_loc12_,param3,param4,_loc9_,param6);
                  }
                  else if(_loc9_ != null)
                  {
                     if(param6 != null)
                     {
                        this.drawFaces(param3,param4,param6);
                        param6 = null;
                     }
                     if(_loc9_.next != null)
                     {
                        if(resolveByAABB)
                        {
                           drawAABBGeometry(param3,param4,_loc9_);
                        }
                        else if(resolveByOOBB)
                        {
                           param5 = _loc9_;
                           while(param5 != null)
                           {
                              param5.calculateOOBB(this);
                              param5 = param5.next;
                           }
                           drawOOBBGeometry(param3,param4,_loc9_);
                        }
                        else
                        {
                           drawConflictGeometry(param3,param4,_loc9_);
                        }
                     }
                     else
                     {
                        _loc9_.draw(param3,param4,threshold,this);
                        _loc9_.destroy();
                     }
                  }
                  _loc18_ = param1.faceList;
                  while(_loc18_ != null)
                  {
                     _loc19_ = _loc18_.wrapper;
                     while(_loc19_ != null)
                     {
                        _loc20_ = _loc19_.vertex;
                        if(_loc20_.transformId != transformId)
                        {
                           _loc21_ = _loc20_.x;
                           _loc22_ = _loc20_.y;
                           _loc23_ = _loc20_.z;
                           _loc20_.cameraX = ma * _loc21_ + mb * _loc22_ + mc * _loc23_ + md;
                           _loc20_.cameraY = me * _loc21_ + mf * _loc22_ + mg * _loc23_ + mh;
                           _loc20_.cameraZ = mi * _loc21_ + mj * _loc22_ + mk * _loc23_ + ml;
                           _loc20_.transformId = transformId;
                           _loc20_.drawId = 0;
                        }
                        _loc19_ = _loc19_.next;
                     }
                     _loc18_.processNext = _loc17_;
                     _loc17_ = _loc18_;
                     _loc18_ = _loc18_.next;
                  }
                  if(_loc17_ != null)
                  {
                     if(param2 > 0)
                     {
                        if(this.clipping == 2)
                        {
                           _loc17_ = param3.clip(_loc17_,param2);
                        }
                        else
                        {
                           _loc17_ = param3.cull(_loc17_,param2);
                        }
                        if(_loc17_ != null)
                        {
                           _loc18_ = _loc17_;
                           while(_loc18_.processNext != null)
                           {
                              _loc18_ = _loc18_.processNext;
                           }
                           _loc18_.processNext = param6;
                           param6 = _loc17_;
                        }
                     }
                     else
                     {
                        _loc18_ = _loc17_;
                        while(_loc18_.processNext != null)
                        {
                           _loc18_ = _loc18_.processNext;
                        }
                        _loc18_.processNext = param6;
                        param6 = _loc17_;
                     }
                  }
                  if(param1.negative != null)
                  {
                     _loc11_ = param2 > 0 ? this.cullingInContainer(param2,param1.negative.boundMinX,param1.negative.boundMinY,param1.negative.boundMinZ,param1.negative.boundMaxX,param1.negative.boundMaxY,param1.negative.boundMaxZ) : 0;
                  }
                  if(_loc11_ >= 0)
                  {
                     param6 = this.drawNode(param1.negative,_loc11_,param3,param4,_loc8_,param6);
                  }
                  else if(_loc8_ != null)
                  {
                     if(param6 != null)
                     {
                        this.drawFaces(param3,param4,param6);
                        param6 = null;
                     }
                     if(_loc8_.next != null)
                     {
                        if(resolveByAABB)
                        {
                           drawAABBGeometry(param3,param4,_loc8_);
                        }
                        else if(resolveByOOBB)
                        {
                           param5 = _loc8_;
                           while(param5 != null)
                           {
                              param5.calculateOOBB(this);
                              param5 = param5.next;
                           }
                           drawOOBBGeometry(param3,param4,_loc8_);
                        }
                        else
                        {
                           drawConflictGeometry(param3,param4,_loc8_);
                        }
                     }
                     else
                     {
                        _loc8_.draw(param3,param4,threshold,this);
                        _loc8_.destroy();
                     }
                  }
               }
               else
               {
                  while(param5 != null)
                  {
                     _loc7_ = param5.next;
                     _loc10_ = this.checkBounds(_loc13_,_loc14_,_loc15_,_loc16_,param5.boundMinX,param5.boundMinY,param5.boundMinZ,param5.boundMaxX,param5.boundMaxY,param5.boundMaxZ,true);
                     if(_loc10_ < 0)
                     {
                        param5.destroy();
                     }
                     else if(_loc10_ > 0)
                     {
                        param5.next = _loc9_;
                        _loc9_ = param5;
                     }
                     else
                     {
                        param5.crop(param3,_loc13_,_loc14_,_loc15_,_loc16_,threshold);
                        if(param5.faceStruct != null)
                        {
                           param5.next = _loc9_;
                           _loc9_ = param5;
                        }
                        else
                        {
                           param5.destroy();
                        }
                     }
                     param5 = _loc7_;
                  }
                  if(param1.positive != null)
                  {
                     _loc12_ = param2 > 0 ? this.cullingInContainer(param2,param1.positive.boundMinX,param1.positive.boundMinY,param1.positive.boundMinZ,param1.positive.boundMaxX,param1.positive.boundMaxY,param1.positive.boundMaxZ) : 0;
                  }
                  if(_loc12_ >= 0)
                  {
                     param6 = this.drawNode(param1.positive,_loc12_,param3,param4,_loc9_,param6);
                  }
                  else if(_loc9_ != null)
                  {
                     if(param6 != null)
                     {
                        this.drawFaces(param3,param4,param6);
                        param6 = null;
                     }
                     if(_loc9_.next != null)
                     {
                        if(resolveByAABB)
                        {
                           drawAABBGeometry(param3,param4,_loc9_);
                        }
                        else if(resolveByOOBB)
                        {
                           param5 = _loc9_;
                           while(param5 != null)
                           {
                              param5.calculateOOBB(this);
                              param5 = param5.next;
                           }
                           drawOOBBGeometry(param3,param4,_loc9_);
                        }
                        else
                        {
                           drawConflictGeometry(param3,param4,_loc9_);
                        }
                     }
                     else
                     {
                        _loc9_.draw(param3,param4,threshold,this);
                        _loc9_.destroy();
                     }
                  }
               }
            }
            else if(this.directionX * _loc13_ + this.directionY * _loc14_ + this.directionZ * _loc15_ > -this.viewAngle)
            {
               while(param5 != null)
               {
                  _loc7_ = param5.next;
                  _loc10_ = this.checkBounds(_loc13_,_loc14_,_loc15_,_loc16_,param5.boundMinX,param5.boundMinY,param5.boundMinZ,param5.boundMaxX,param5.boundMaxY,param5.boundMaxZ,false);
                  if(_loc10_ < 0)
                  {
                     param5.next = _loc8_;
                     _loc8_ = param5;
                  }
                  else if(_loc10_ > 0)
                  {
                     param5.next = _loc9_;
                     _loc9_ = param5;
                  }
                  else
                  {
                     param5.split(param3,_loc13_,_loc14_,_loc15_,_loc16_,threshold);
                     if(param5.next != null)
                     {
                        param5.next.next = _loc8_;
                        _loc8_ = param5.next;
                     }
                     if(param5.faceStruct != null)
                     {
                        param5.next = _loc9_;
                        _loc9_ = param5;
                     }
                     else
                     {
                        param5.destroy();
                     }
                  }
                  param5 = _loc7_;
               }
               if(param1.negative != null)
               {
                  _loc11_ = param2 > 0 ? this.cullingInContainer(param2,param1.negative.boundMinX,param1.negative.boundMinY,param1.negative.boundMinZ,param1.negative.boundMaxX,param1.negative.boundMaxY,param1.negative.boundMaxZ) : 0;
               }
               if(_loc11_ >= 0)
               {
                  param6 = this.drawNode(param1.negative,_loc11_,param3,param4,_loc8_,param6);
               }
               else if(_loc8_ != null)
               {
                  if(param6 != null)
                  {
                     this.drawFaces(param3,param4,param6);
                     param6 = null;
                  }
                  if(_loc8_.next != null)
                  {
                     if(resolveByAABB)
                     {
                        drawAABBGeometry(param3,param4,_loc8_);
                     }
                     else if(resolveByOOBB)
                     {
                        param5 = _loc8_;
                        while(param5 != null)
                        {
                           param5.calculateOOBB(this);
                           param5 = param5.next;
                        }
                        drawOOBBGeometry(param3,param4,_loc8_);
                     }
                     else
                     {
                        drawConflictGeometry(param3,param4,_loc8_);
                     }
                  }
                  else
                  {
                     _loc8_.draw(param3,param4,threshold,this);
                     _loc8_.destroy();
                  }
               }
               if(param1.positive != null)
               {
                  _loc12_ = param2 > 0 ? this.cullingInContainer(param2,param1.positive.boundMinX,param1.positive.boundMinY,param1.positive.boundMinZ,param1.positive.boundMaxX,param1.positive.boundMaxY,param1.positive.boundMaxZ) : 0;
               }
               if(_loc12_ >= 0)
               {
                  param6 = this.drawNode(param1.positive,_loc12_,param3,param4,_loc9_,param6);
               }
               else if(_loc9_ != null)
               {
                  if(param6 != null)
                  {
                     this.drawFaces(param3,param4,param6);
                     param6 = null;
                  }
                  if(_loc9_.next != null)
                  {
                     if(resolveByAABB)
                     {
                        drawAABBGeometry(param3,param4,_loc9_);
                     }
                     else if(resolveByOOBB)
                     {
                        param5 = _loc9_;
                        while(param5 != null)
                        {
                           param5.calculateOOBB(this);
                           param5 = param5.next;
                        }
                        drawOOBBGeometry(param3,param4,_loc9_);
                     }
                     else
                     {
                        drawConflictGeometry(param3,param4,_loc9_);
                     }
                  }
                  else
                  {
                     _loc9_.draw(param3,param4,threshold,this);
                     _loc9_.destroy();
                  }
               }
            }
            else
            {
               while(param5 != null)
               {
                  _loc7_ = param5.next;
                  _loc10_ = this.checkBounds(_loc13_,_loc14_,_loc15_,_loc16_,param5.boundMinX,param5.boundMinY,param5.boundMinZ,param5.boundMaxX,param5.boundMaxY,param5.boundMaxZ,false);
                  if(_loc10_ < 0)
                  {
                     param5.next = _loc8_;
                     _loc8_ = param5;
                  }
                  else if(_loc10_ > 0)
                  {
                     param5.destroy();
                  }
                  else
                  {
                     param5.crop(param3,-_loc13_,-_loc14_,-_loc15_,-_loc16_,threshold);
                     if(param5.faceStruct != null)
                     {
                        param5.next = _loc8_;
                        _loc8_ = param5;
                     }
                     else
                     {
                        param5.destroy();
                     }
                  }
                  param5 = _loc7_;
               }
               if(param1.negative != null)
               {
                  _loc11_ = param2 > 0 ? this.cullingInContainer(param2,param1.negative.boundMinX,param1.negative.boundMinY,param1.negative.boundMinZ,param1.negative.boundMaxX,param1.negative.boundMaxY,param1.negative.boundMaxZ) : 0;
               }
               if(_loc11_ >= 0)
               {
                  param6 = this.drawNode(param1.negative,_loc11_,param3,param4,_loc8_,param6);
               }
               else if(_loc8_ != null)
               {
                  if(param6 != null)
                  {
                     this.drawFaces(param3,param4,param6);
                     param6 = null;
                  }
                  if(_loc8_.next != null)
                  {
                     if(resolveByAABB)
                     {
                        drawAABBGeometry(param3,param4,_loc8_);
                     }
                     else if(resolveByOOBB)
                     {
                        param5 = _loc8_;
                        while(param5 != null)
                        {
                           param5.calculateOOBB(this);
                           param5 = param5.next;
                        }
                        drawOOBBGeometry(param3,param4,_loc8_);
                     }
                     else
                     {
                        drawConflictGeometry(param3,param4,_loc8_);
                     }
                  }
                  else
                  {
                     _loc8_.draw(param3,param4,threshold,this);
                     _loc8_.destroy();
                  }
               }
            }
         }
         else
         {
            if(param6 != null)
            {
               this.drawFaces(param3,param4,param6);
               param6 = null;
            }
            if(param1.objectList.next != null || param5 != null)
            {
               _loc24_ = param1.objectList;
               _loc25_ = param1.boundList;
               while(_loc24_ != null)
               {
                  if(_loc24_.visible && ((_loc24_.culling = param2) == 0 || (_loc24_.culling = this.cullingInContainer(param2,_loc25_.boundMinX,_loc25_.boundMinY,_loc25_.boundMinZ,_loc25_.boundMaxX,_loc25_.boundMaxY,_loc25_.boundMaxZ)) >= 0))
                  {
                     _loc24_.composeAndAppend(this);
                     _loc26_ = _loc24_.getVG(param3);
                     while(_loc26_ != null)
                     {
                        _loc7_ = _loc26_.next;
                        _loc26_.next = param5;
                        param5 = _loc26_;
                        if(resolveByAABB)
                        {
                           _loc26_.calculateAABB(ima,imb,imc,imd,ime,imf,img,imh,imi,imj,imk,iml);
                        }
                        _loc26_ = _loc7_;
                     }
                  }
                  _loc24_ = _loc24_.next;
                  _loc25_ = _loc25_.next;
               }
               if(param5 != null)
               {
                  if(param5.next != null)
                  {
                     drawConflictGeometry(param3,param4,param5);
                  }
                  else
                  {
                     param5.draw(param3,param4,threshold,this);
                     param5.destroy();
                  }
               }
            }
            else
            {
               _loc24_ = param1.objectList;
               if(_loc24_.visible)
               {
                  _loc24_.composeAndAppend(this);
                  _loc24_.culling = param2;
                  _loc24_.draw(param3,param4);
               }
            }
         }
         return param6;
      }
      
      private function updateBoundsNode(param1:BSPNode, param2:Object3D, param3:Object3D) : void
      {
         var _loc4_:Object3D = null;
         if(param1.objectList == null)
         {
            if(param1.negative != null)
            {
               this.updateBoundsNode(param1.negative,param2,param3);
            }
            if(param1.positive != null)
            {
               this.updateBoundsNode(param1.positive,param2,param3);
            }
         }
         else
         {
            _loc4_ = param1.objectList;
            while(_loc4_ != null)
            {
               if(param3 != null)
               {
                  _loc4_.composeAndAppend(param3);
               }
               else
               {
                  _loc4_.composeMatrix();
               }
               _loc4_.updateBounds(param2,_loc4_);
               _loc4_ = _loc4_.next;
            }
         }
      }
      
      private function collectPlanesNode(param1:BSPNode, param2:Vector3D, param3:Vector3D, param4:Vector3D, param5:Vector3D, param6:Vector3D, param7:Vector3D, param8:Vector.<Face>, param9:Dictionary = null) : void
      {
         var _loc10_:Number = NaN;
         var _loc11_:Face = null;
         var _loc12_:Wrapper = null;
         var _loc13_:Vertex = null;
         var _loc14_:Object3D = null;
         if(param1.objectList == null)
         {
            _loc10_ = param1.normalX * param2.x + param1.normalY * param2.y + param1.normalZ * param2.z - param1.offset;
            if(_loc10_ >= param2.w)
            {
               if(param1.positive != null && boundIntersectSphere(param2,param1.positive.boundMinX,param1.positive.boundMinY,param1.positive.boundMinZ,param1.positive.boundMaxX,param1.positive.boundMaxY,param1.positive.boundMaxZ))
               {
                  this.collectPlanesNode(param1.positive,param2,param3,param4,param5,param6,param7,param8,param9);
               }
            }
            else if(_loc10_ <= -param2.w)
            {
               if(param1.negative != null && boundIntersectSphere(param2,param1.negative.boundMinX,param1.negative.boundMinY,param1.negative.boundMinZ,param1.negative.boundMaxX,param1.negative.boundMaxY,param1.negative.boundMaxZ))
               {
                  this.collectPlanesNode(param1.negative,param2,param3,param4,param5,param6,param7,param8,param9);
               }
            }
            else
            {
               _loc11_ = param1.faceList;
               while(_loc11_ != null)
               {
                  _loc12_ = _loc11_.wrapper;
                  while(_loc12_ != null)
                  {
                     _loc13_ = _loc12_.vertex;
                     if(_loc13_.transformId != transformId)
                     {
                        _loc13_.cameraX = ma * _loc13_.x + mb * _loc13_.y + mc * _loc13_.z + md;
                        _loc13_.cameraY = me * _loc13_.x + mf * _loc13_.y + mg * _loc13_.z + mh;
                        _loc13_.cameraZ = mi * _loc13_.x + mj * _loc13_.y + mk * _loc13_.z + ml;
                        _loc13_.transformId = transformId;
                     }
                     _loc12_ = _loc12_.next;
                  }
                  param8.push(_loc11_);
                  _loc11_ = _loc11_.next;
               }
               if(param1.positive != null && boundIntersectSphere(param2,param1.positive.boundMinX,param1.positive.boundMinY,param1.positive.boundMinZ,param1.positive.boundMaxX,param1.positive.boundMaxY,param1.positive.boundMaxZ))
               {
                  this.collectPlanesNode(param1.positive,param2,param3,param4,param5,param6,param7,param8,param9);
               }
               if(param1.negative != null && boundIntersectSphere(param2,param1.negative.boundMinX,param1.negative.boundMinY,param1.negative.boundMinZ,param1.negative.boundMaxX,param1.negative.boundMaxY,param1.negative.boundMaxZ))
               {
                  this.collectPlanesNode(param1.negative,param2,param3,param4,param5,param6,param7,param8,param9);
               }
            }
         }
         else
         {
            _loc14_ = param1.objectList;
            while(_loc14_ != null)
            {
               _loc14_.composeAndAppend(this);
               _loc14_.collectPlanes(param3,param4,param5,param6,param7,param8,param9);
               _loc14_ = _loc14_.next;
            }
         }
      }
      
      private function destroyNode(param1:BSPNode) : void
      {
         var _loc3_:Object3D = null;
         var _loc4_:Object3D = null;
         var _loc5_:Face = null;
         if(param1.negative != null)
         {
            this.destroyNode(param1.negative);
            param1.negative = null;
         }
         if(param1.positive != null)
         {
            this.destroyNode(param1.positive);
            param1.positive = null;
         }
         var _loc2_:Face = param1.faceList;
         while(_loc2_ != null)
         {
            _loc5_ = _loc2_.next;
            _loc2_.next = null;
            _loc2_ = _loc5_;
         }
         _loc3_ = param1.objectList;
         while(_loc3_ != null)
         {
            _loc4_ = _loc3_.next;
            _loc3_.setParent(null);
            _loc3_.next = null;
            _loc3_ = _loc4_;
         }
         _loc3_ = param1.boundList;
         while(_loc3_ != null)
         {
            _loc4_ = _loc3_.next;
            _loc3_.next = null;
            _loc3_ = _loc4_;
         }
         param1.faceList = null;
         param1.objectList = null;
         param1.boundList = null;
      }
      
      private function createObjectBounds(param1:Object3D) : Object3D
      {
         var _loc2_:Object3D = new Object3D();
         _loc2_.boundMinX = 1e+22;
         _loc2_.boundMinY = 1e+22;
         _loc2_.boundMinZ = 1e+22;
         _loc2_.boundMaxX = -1e+22;
         _loc2_.boundMaxY = -1e+22;
         _loc2_.boundMaxZ = -1e+22;
         param1.composeMatrix();
         param1.updateBounds(_loc2_,param1);
         return _loc2_;
      }
      
      private function createNode(param1:Face, param2:Face, param3:Object3D, param4:Object3D, param5:Vector.<Face>, param6:Vector.<Object3D>, param7:Face = null) : BSPNode
      {
         var _loc9_:Face = null;
         var _loc10_:Face = null;
         var _loc11_:Face = null;
         var _loc12_:Face = null;
         var _loc13_:Face = null;
         var _loc14_:Object3D = null;
         var _loc15_:Object3D = null;
         var _loc16_:Object3D = null;
         var _loc17_:Object3D = null;
         var _loc18_:Face = null;
         var _loc19_:Face = null;
         var _loc20_:Face = null;
         var _loc8_:BSPNode = new BSPNode();
         this.calculateNodeBounds(_loc8_,param2,param4);
         if(param1 != null)
         {
            _loc9_ = param1.next != null ? this.findSplitter(param1) : param1;
         }
         else
         {
            if(param3 != null)
            {
               _loc19_ = this.createBoundFaces(param4);
               _loc18_ = param7;
               while(_loc18_ != null)
               {
                  _loc19_ = this.cropBoundFaceList(_loc19_,_loc18_.normalX,_loc18_.normalY,_loc18_.normalZ,_loc18_.offset);
                  if(_loc19_ == null)
                  {
                     break;
                  }
                  _loc18_ = _loc18_.next;
               }
            }
            if(_loc19_ != null)
            {
               _loc18_ = _loc19_;
               while(_loc18_.next != null)
               {
                  _loc18_ = _loc18_.next;
               }
               _loc18_.next = param2;
               _loc9_ = _loc19_.next != null ? this.findSplitter(_loc19_) : _loc19_;
            }
            else if(param2 != null)
            {
               _loc9_ = param2.next != null ? this.findSplitter(param2) : param2;
            }
         }
         if(_loc9_ != null)
         {
            _loc8_.normalX = _loc9_.normalX;
            _loc8_.normalY = _loc9_.normalY;
            _loc8_.normalZ = _loc9_.normalZ;
            _loc8_.offset = _loc9_.offset;
            if(param1 != null)
            {
               this.splitFaceList(_loc9_,param1,false,param5);
               _loc10_ = param5[0];
               _loc11_ = param5[2];
            }
            if(param2 != null)
            {
               this.splitFaceList(_loc9_,param2,true,param5);
               _loc12_ = param5[0];
               _loc8_.faceList = param5[1];
               _loc13_ = param5[2];
            }
            if(param3 != null)
            {
               this.splitObjectList(_loc9_,param3,param4,param6);
               _loc14_ = param6[0];
               _loc16_ = param6[1];
               _loc15_ = param6[2];
               _loc17_ = param6[3];
            }
            _loc20_ = new Face();
            _loc20_.next = param7;
            if(_loc12_ != null || _loc14_ != null)
            {
               _loc20_.normalX = -_loc8_.normalX;
               _loc20_.normalY = -_loc8_.normalY;
               _loc20_.normalZ = -_loc8_.normalZ;
               _loc20_.offset = -_loc8_.offset;
               _loc8_.negative = this.createNode(_loc10_,_loc12_,_loc14_,_loc16_,param5,param6,_loc20_);
            }
            if(_loc13_ != null || _loc15_ != null)
            {
               _loc20_.normalX = _loc8_.normalX;
               _loc20_.normalY = _loc8_.normalY;
               _loc20_.normalZ = _loc8_.normalZ;
               _loc20_.offset = _loc8_.offset;
               _loc8_.positive = this.createNode(_loc11_,_loc13_,_loc15_,_loc17_,param5,param6,_loc20_);
            }
         }
         else
         {
            _loc8_.objectList = param3;
            _loc8_.boundList = param4;
         }
         return _loc8_;
      }
      
      private function calculateObjectBounds(param1:Object3D) : void
      {
         var _loc2_:Object3D = null;
         param1.calculateBounds();
         if(param1 is Object3DContainer)
         {
            _loc2_ = Object3DContainer(param1).childrenList;
            while(_loc2_ != null)
            {
               this.calculateObjectBounds(_loc2_);
               _loc2_ = _loc2_.next;
            }
         }
      }
      
      private function calculateFaceList(param1:Mesh, param2:Boolean, param3:Face = null) : Face
      {
         var _loc4_:Vertex = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Face = null;
         param1.composeMatrix();
         _loc4_ = param1.vertexList;
         while(_loc4_.next != null)
         {
            _loc4_.transformId = 0;
            _loc4_.id = null;
            _loc5_ = _loc4_.x;
            _loc6_ = _loc4_.y;
            _loc7_ = _loc4_.z;
            _loc4_.x = param1.ma * _loc5_ + param1.mb * _loc6_ + param1.mc * _loc7_ + param1.md;
            _loc4_.y = param1.me * _loc5_ + param1.mf * _loc6_ + param1.mg * _loc7_ + param1.mh;
            _loc4_.z = param1.mi * _loc5_ + param1.mj * _loc6_ + param1.mk * _loc7_ + param1.ml;
            _loc4_ = _loc4_.next;
         }
         _loc4_.transformId = 0;
         _loc4_.id = null;
         _loc5_ = _loc4_.x;
         _loc6_ = _loc4_.y;
         _loc7_ = _loc4_.z;
         _loc4_.x = param1.ma * _loc5_ + param1.mb * _loc6_ + param1.mc * _loc7_ + param1.md;
         _loc4_.y = param1.me * _loc5_ + param1.mf * _loc6_ + param1.mg * _loc7_ + param1.mh;
         _loc4_.z = param1.mi * _loc5_ + param1.mj * _loc6_ + param1.mk * _loc7_ + param1.ml;
         if(param2)
         {
            _loc4_.next = this.vertexList;
            this.vertexList = param1.vertexList;
         }
         param1.vertexList = null;
         _loc8_ = param1.faceList;
         while(_loc8_.next != null)
         {
            _loc8_.calculateBestSequenceAndNormal();
            _loc8_.id = null;
            _loc8_ = _loc8_.next;
         }
         _loc8_.calculateBestSequenceAndNormal();
         _loc8_.id = null;
         _loc8_.next = param3;
         param3 = param1.faceList;
         param1.faceList = null;
         return param3;
      }
      
      private function calculateCameraPlanes(param1:Number, param2:Number) : void
      {
         this.directionX = imc;
         this.directionY = img;
         this.directionZ = imk;
         var _loc3_:Number = 1 / Math.sqrt(this.directionX * this.directionX + this.directionY * this.directionY + this.directionZ * this.directionZ);
         this.directionX *= _loc3_;
         this.directionY *= _loc3_;
         this.directionZ *= _loc3_;
         this.nearPlaneX = imc;
         this.nearPlaneY = img;
         this.nearPlaneZ = imk;
         this.nearPlaneOffset = (imc * param1 + imd) * this.nearPlaneX + (img * param1 + imh) * this.nearPlaneY + (imk * param1 + iml) * this.nearPlaneZ;
         this.farPlaneX = -imc;
         this.farPlaneY = -img;
         this.farPlaneZ = -imk;
         this.farPlaneOffset = (imc * param2 + imd) * this.farPlaneX + (img * param2 + imh) * this.farPlaneY + (imk * param2 + iml) * this.farPlaneZ;
         var _loc4_:Number = -ima - imb + imc;
         var _loc5_:Number = -ime - imf + img;
         var _loc6_:Number = -imi - imj + imk;
         var _loc7_:Number = ima - imb + imc;
         var _loc8_:Number = ime - imf + img;
         var _loc9_:Number = imi - imj + imk;
         this.topPlaneX = _loc9_ * _loc5_ - _loc8_ * _loc6_;
         this.topPlaneY = _loc7_ * _loc6_ - _loc9_ * _loc4_;
         this.topPlaneZ = _loc8_ * _loc4_ - _loc7_ * _loc5_;
         this.topPlaneOffset = imd * this.topPlaneX + imh * this.topPlaneY + iml * this.topPlaneZ;
         _loc3_ = 1 / Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_ + _loc6_ * _loc6_);
         _loc4_ *= _loc3_;
         _loc5_ *= _loc3_;
         _loc6_ *= _loc3_;
         var _loc10_:Number = _loc4_ * this.directionX + _loc5_ * this.directionY + _loc6_ * this.directionZ;
         this.viewAngle = _loc10_;
         _loc4_ = _loc7_;
         _loc5_ = _loc8_;
         _loc6_ = _loc9_;
         _loc7_ = ima + imb + imc;
         _loc8_ = ime + imf + img;
         _loc9_ = imi + imj + imk;
         this.rightPlaneX = _loc9_ * _loc5_ - _loc8_ * _loc6_;
         this.rightPlaneY = _loc7_ * _loc6_ - _loc9_ * _loc4_;
         this.rightPlaneZ = _loc8_ * _loc4_ - _loc7_ * _loc5_;
         this.rightPlaneOffset = imd * this.rightPlaneX + imh * this.rightPlaneY + iml * this.rightPlaneZ;
         _loc3_ = 1 / Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_ + _loc6_ * _loc6_);
         _loc4_ *= _loc3_;
         _loc5_ *= _loc3_;
         _loc6_ *= _loc3_;
         _loc10_ = _loc4_ * this.directionX + _loc5_ * this.directionY + _loc6_ * this.directionZ;
         if(_loc10_ < this.viewAngle)
         {
            this.viewAngle = _loc10_;
         }
         _loc4_ = _loc7_;
         _loc5_ = _loc8_;
         _loc6_ = _loc9_;
         _loc7_ = -ima + imb + imc;
         _loc8_ = -ime + imf + img;
         _loc9_ = -imi + imj + imk;
         this.bottomPlaneX = _loc9_ * _loc5_ - _loc8_ * _loc6_;
         this.bottomPlaneY = _loc7_ * _loc6_ - _loc9_ * _loc4_;
         this.bottomPlaneZ = _loc8_ * _loc4_ - _loc7_ * _loc5_;
         this.bottomPlaneOffset = imd * this.bottomPlaneX + imh * this.bottomPlaneY + iml * this.bottomPlaneZ;
         _loc3_ = 1 / Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_ + _loc6_ * _loc6_);
         _loc4_ *= _loc3_;
         _loc5_ *= _loc3_;
         _loc6_ *= _loc3_;
         _loc10_ = _loc4_ * this.directionX + _loc5_ * this.directionY + _loc6_ * this.directionZ;
         if(_loc10_ < this.viewAngle)
         {
            this.viewAngle = _loc10_;
         }
         _loc4_ = _loc7_;
         _loc5_ = _loc8_;
         _loc6_ = _loc9_;
         _loc7_ = -ima - imb + imc;
         _loc8_ = -ime - imf + img;
         _loc9_ = -imi - imj + imk;
         this.leftPlaneX = _loc9_ * _loc5_ - _loc8_ * _loc6_;
         this.leftPlaneY = _loc7_ * _loc6_ - _loc9_ * _loc4_;
         this.leftPlaneZ = _loc8_ * _loc4_ - _loc7_ * _loc5_;
         this.leftPlaneOffset = imd * this.leftPlaneX + imh * this.leftPlaneY + iml * this.leftPlaneZ;
         _loc3_ = 1 / Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_ + _loc6_ * _loc6_);
         _loc4_ *= _loc3_;
         _loc5_ *= _loc3_;
         _loc6_ *= _loc3_;
         _loc10_ = _loc4_ * this.directionX + _loc5_ * this.directionY + _loc6_ * this.directionZ;
         if(_loc10_ < this.viewAngle)
         {
            this.viewAngle = _loc10_;
         }
         this.viewAngle = Math.sin(Math.acos(this.viewAngle));
      }
      
      private function calculateNodeBounds(param1:BSPNode, param2:Face, param3:Object3D) : void
      {
         var _loc6_:Wrapper = null;
         var _loc7_:Vertex = null;
         param1.boundMinX = 1e+22;
         param1.boundMinY = 1e+22;
         param1.boundMinZ = 1e+22;
         param1.boundMaxX = -1e+22;
         param1.boundMaxY = -1e+22;
         param1.boundMaxZ = -1e+22;
         var _loc4_:Object3D = param3;
         while(_loc4_ != null)
         {
            if(_loc4_.boundMinX < param1.boundMinX)
            {
               param1.boundMinX = _loc4_.boundMinX;
            }
            if(_loc4_.boundMaxX > param1.boundMaxX)
            {
               param1.boundMaxX = _loc4_.boundMaxX;
            }
            if(_loc4_.boundMinY < param1.boundMinY)
            {
               param1.boundMinY = _loc4_.boundMinY;
            }
            if(_loc4_.boundMaxY > param1.boundMaxY)
            {
               param1.boundMaxY = _loc4_.boundMaxY;
            }
            if(_loc4_.boundMinZ < param1.boundMinZ)
            {
               param1.boundMinZ = _loc4_.boundMinZ;
            }
            if(_loc4_.boundMaxZ > param1.boundMaxZ)
            {
               param1.boundMaxZ = _loc4_.boundMaxZ;
            }
            _loc4_ = _loc4_.next;
         }
         var _loc5_:Face = param2;
         while(_loc5_ != null)
         {
            _loc6_ = _loc5_.wrapper;
            while(_loc6_ != null)
            {
               _loc7_ = _loc6_.vertex;
               if(_loc7_.x < param1.boundMinX)
               {
                  param1.boundMinX = _loc7_.x;
               }
               if(_loc7_.x > param1.boundMaxX)
               {
                  param1.boundMaxX = _loc7_.x;
               }
               if(_loc7_.y < param1.boundMinY)
               {
                  param1.boundMinY = _loc7_.y;
               }
               if(_loc7_.y > param1.boundMaxY)
               {
                  param1.boundMaxY = _loc7_.y;
               }
               if(_loc7_.z < param1.boundMinZ)
               {
                  param1.boundMinZ = _loc7_.z;
               }
               if(_loc7_.z > param1.boundMaxZ)
               {
                  param1.boundMaxZ = _loc7_.z;
               }
               _loc6_ = _loc6_.next;
            }
            _loc5_ = _loc5_.next;
         }
      }
      
      private function cullingInContainer(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number) : int
      {
         if(param1 > 0)
         {
            if(param1 & 1)
            {
               if(this.nearPlaneX >= 0)
               {
                  if(this.nearPlaneY >= 0)
                  {
                     if(this.nearPlaneZ >= 0)
                     {
                        if(param5 * this.nearPlaneX + param6 * this.nearPlaneY + param7 * this.nearPlaneZ <= this.nearPlaneOffset)
                        {
                           return -1;
                        }
                        if(param2 * this.nearPlaneX + param3 * this.nearPlaneY + param4 * this.nearPlaneZ > this.nearPlaneOffset)
                        {
                           param1 &= 62;
                        }
                     }
                     else
                     {
                        if(param5 * this.nearPlaneX + param6 * this.nearPlaneY + param4 * this.nearPlaneZ <= this.nearPlaneOffset)
                        {
                           return -1;
                        }
                        if(param2 * this.nearPlaneX + param3 * this.nearPlaneY + param7 * this.nearPlaneZ > this.nearPlaneOffset)
                        {
                           param1 &= 62;
                        }
                     }
                  }
                  else if(this.nearPlaneZ >= 0)
                  {
                     if(param5 * this.nearPlaneX + param3 * this.nearPlaneY + param7 * this.nearPlaneZ <= this.nearPlaneOffset)
                     {
                        return -1;
                     }
                     if(param2 * this.nearPlaneX + param6 * this.nearPlaneY + param4 * this.nearPlaneZ > this.nearPlaneOffset)
                     {
                        param1 &= 62;
                     }
                  }
                  else
                  {
                     if(param5 * this.nearPlaneX + param3 * this.nearPlaneY + param4 * this.nearPlaneZ <= this.nearPlaneOffset)
                     {
                        return -1;
                     }
                     if(param2 * this.nearPlaneX + param6 * this.nearPlaneY + param7 * this.nearPlaneZ > this.nearPlaneOffset)
                     {
                        param1 &= 62;
                     }
                  }
               }
               else if(this.nearPlaneY >= 0)
               {
                  if(this.nearPlaneZ >= 0)
                  {
                     if(param2 * this.nearPlaneX + param6 * this.nearPlaneY + param7 * this.nearPlaneZ <= this.nearPlaneOffset)
                     {
                        return -1;
                     }
                     if(param5 * this.nearPlaneX + param3 * this.nearPlaneY + param4 * this.nearPlaneZ > this.nearPlaneOffset)
                     {
                        param1 &= 62;
                     }
                  }
                  else
                  {
                     if(param2 * this.nearPlaneX + param6 * this.nearPlaneY + param4 * this.nearPlaneZ <= this.nearPlaneOffset)
                     {
                        return -1;
                     }
                     if(param5 * this.nearPlaneX + param3 * this.nearPlaneY + param7 * this.nearPlaneZ > this.nearPlaneOffset)
                     {
                        param1 &= 62;
                     }
                  }
               }
               else if(this.nearPlaneZ >= 0)
               {
                  if(param2 * this.nearPlaneX + param3 * this.nearPlaneY + param7 * this.nearPlaneZ <= this.nearPlaneOffset)
                  {
                     return -1;
                  }
                  if(param5 * this.nearPlaneX + param6 * this.nearPlaneY + param4 * this.nearPlaneZ > this.nearPlaneOffset)
                  {
                     param1 &= 62;
                  }
               }
               else
               {
                  if(param2 * this.nearPlaneX + param3 * this.nearPlaneY + param4 * this.nearPlaneZ <= this.nearPlaneOffset)
                  {
                     return -1;
                  }
                  if(param5 * this.nearPlaneX + param6 * this.nearPlaneY + param7 * this.nearPlaneZ > this.nearPlaneOffset)
                  {
                     param1 &= 62;
                  }
               }
            }
            if(param1 & 2)
            {
               if(this.farPlaneX >= 0)
               {
                  if(this.farPlaneY >= 0)
                  {
                     if(this.farPlaneZ >= 0)
                     {
                        if(param5 * this.farPlaneX + param6 * this.farPlaneY + param7 * this.farPlaneZ <= this.farPlaneOffset)
                        {
                           return -1;
                        }
                        if(param2 * this.farPlaneX + param3 * this.farPlaneY + param4 * this.farPlaneZ > this.farPlaneOffset)
                        {
                           param1 &= 61;
                        }
                     }
                     else
                     {
                        if(param5 * this.farPlaneX + param6 * this.farPlaneY + param4 * this.farPlaneZ <= this.farPlaneOffset)
                        {
                           return -1;
                        }
                        if(param2 * this.farPlaneX + param3 * this.farPlaneY + param7 * this.farPlaneZ > this.farPlaneOffset)
                        {
                           param1 &= 61;
                        }
                     }
                  }
                  else if(this.farPlaneZ >= 0)
                  {
                     if(param5 * this.farPlaneX + param3 * this.farPlaneY + param7 * this.farPlaneZ <= this.farPlaneOffset)
                     {
                        return -1;
                     }
                     if(param2 * this.farPlaneX + param6 * this.farPlaneY + param4 * this.farPlaneZ > this.farPlaneOffset)
                     {
                        param1 &= 61;
                     }
                  }
                  else
                  {
                     if(param5 * this.farPlaneX + param3 * this.farPlaneY + param4 * this.farPlaneZ <= this.farPlaneOffset)
                     {
                        return -1;
                     }
                     if(param2 * this.farPlaneX + param6 * this.farPlaneY + param7 * this.farPlaneZ > this.farPlaneOffset)
                     {
                        param1 &= 61;
                     }
                  }
               }
               else if(this.farPlaneY >= 0)
               {
                  if(this.farPlaneZ >= 0)
                  {
                     if(param2 * this.farPlaneX + param6 * this.farPlaneY + param7 * this.farPlaneZ <= this.farPlaneOffset)
                     {
                        return -1;
                     }
                     if(param5 * this.farPlaneX + param3 * this.farPlaneY + param4 * this.farPlaneZ > this.farPlaneOffset)
                     {
                        param1 &= 61;
                     }
                  }
                  else
                  {
                     if(param2 * this.farPlaneX + param6 * this.farPlaneY + param4 * this.farPlaneZ <= this.farPlaneOffset)
                     {
                        return -1;
                     }
                     if(param5 * this.farPlaneX + param3 * this.farPlaneY + param7 * this.farPlaneZ > this.farPlaneOffset)
                     {
                        param1 &= 61;
                     }
                  }
               }
               else if(this.farPlaneZ >= 0)
               {
                  if(param2 * this.farPlaneX + param3 * this.farPlaneY + param7 * this.farPlaneZ <= this.farPlaneOffset)
                  {
                     return -1;
                  }
                  if(param5 * this.farPlaneX + param6 * this.farPlaneY + param4 * this.farPlaneZ > this.farPlaneOffset)
                  {
                     param1 &= 61;
                  }
               }
               else
               {
                  if(param2 * this.farPlaneX + param3 * this.farPlaneY + param4 * this.farPlaneZ <= this.farPlaneOffset)
                  {
                     return -1;
                  }
                  if(param5 * this.farPlaneX + param6 * this.farPlaneY + param7 * this.farPlaneZ > this.farPlaneOffset)
                  {
                     param1 &= 61;
                  }
               }
            }
            if(param1 & 4)
            {
               if(this.leftPlaneX >= 0)
               {
                  if(this.leftPlaneY >= 0)
                  {
                     if(this.leftPlaneZ >= 0)
                     {
                        if(param5 * this.leftPlaneX + param6 * this.leftPlaneY + param7 * this.leftPlaneZ <= this.leftPlaneOffset)
                        {
                           return -1;
                        }
                        if(param2 * this.leftPlaneX + param3 * this.leftPlaneY + param4 * this.leftPlaneZ > this.leftPlaneOffset)
                        {
                           param1 &= 59;
                        }
                     }
                     else
                     {
                        if(param5 * this.leftPlaneX + param6 * this.leftPlaneY + param4 * this.leftPlaneZ <= this.leftPlaneOffset)
                        {
                           return -1;
                        }
                        if(param2 * this.leftPlaneX + param3 * this.leftPlaneY + param7 * this.leftPlaneZ > this.leftPlaneOffset)
                        {
                           param1 &= 59;
                        }
                     }
                  }
                  else if(this.leftPlaneZ >= 0)
                  {
                     if(param5 * this.leftPlaneX + param3 * this.leftPlaneY + param7 * this.leftPlaneZ <= this.leftPlaneOffset)
                     {
                        return -1;
                     }
                     if(param2 * this.leftPlaneX + param6 * this.leftPlaneY + param4 * this.leftPlaneZ > this.leftPlaneOffset)
                     {
                        param1 &= 59;
                     }
                  }
                  else
                  {
                     if(param5 * this.leftPlaneX + param3 * this.leftPlaneY + param4 * this.leftPlaneZ <= this.leftPlaneOffset)
                     {
                        return -1;
                     }
                     if(param2 * this.leftPlaneX + param6 * this.leftPlaneY + param7 * this.leftPlaneZ > this.leftPlaneOffset)
                     {
                        param1 &= 59;
                     }
                  }
               }
               else if(this.leftPlaneY >= 0)
               {
                  if(this.leftPlaneZ >= 0)
                  {
                     if(param2 * this.leftPlaneX + param6 * this.leftPlaneY + param7 * this.leftPlaneZ <= this.leftPlaneOffset)
                     {
                        return -1;
                     }
                     if(param5 * this.leftPlaneX + param3 * this.leftPlaneY + param4 * this.leftPlaneZ > this.leftPlaneOffset)
                     {
                        param1 &= 59;
                     }
                  }
                  else
                  {
                     if(param2 * this.leftPlaneX + param6 * this.leftPlaneY + param4 * this.leftPlaneZ <= this.leftPlaneOffset)
                     {
                        return -1;
                     }
                     if(param5 * this.leftPlaneX + param3 * this.leftPlaneY + param7 * this.leftPlaneZ > this.leftPlaneOffset)
                     {
                        param1 &= 59;
                     }
                  }
               }
               else if(this.leftPlaneZ >= 0)
               {
                  if(param2 * this.leftPlaneX + param3 * this.leftPlaneY + param7 * this.leftPlaneZ <= this.leftPlaneOffset)
                  {
                     return -1;
                  }
                  if(param5 * this.leftPlaneX + param6 * this.leftPlaneY + param4 * this.leftPlaneZ > this.leftPlaneOffset)
                  {
                     param1 &= 59;
                  }
               }
               else
               {
                  if(param2 * this.leftPlaneX + param3 * this.leftPlaneY + param4 * this.leftPlaneZ <= this.leftPlaneOffset)
                  {
                     return -1;
                  }
                  if(param5 * this.leftPlaneX + param6 * this.leftPlaneY + param7 * this.leftPlaneZ > this.leftPlaneOffset)
                  {
                     param1 &= 59;
                  }
               }
            }
            if(param1 & 8)
            {
               if(this.rightPlaneX >= 0)
               {
                  if(this.rightPlaneY >= 0)
                  {
                     if(this.rightPlaneZ >= 0)
                     {
                        if(param5 * this.rightPlaneX + param6 * this.rightPlaneY + param7 * this.rightPlaneZ <= this.rightPlaneOffset)
                        {
                           return -1;
                        }
                        if(param2 * this.rightPlaneX + param3 * this.rightPlaneY + param4 * this.rightPlaneZ > this.rightPlaneOffset)
                        {
                           param1 &= 55;
                        }
                     }
                     else
                     {
                        if(param5 * this.rightPlaneX + param6 * this.rightPlaneY + param4 * this.rightPlaneZ <= this.rightPlaneOffset)
                        {
                           return -1;
                        }
                        if(param2 * this.rightPlaneX + param3 * this.rightPlaneY + param7 * this.rightPlaneZ > this.rightPlaneOffset)
                        {
                           param1 &= 55;
                        }
                     }
                  }
                  else if(this.rightPlaneZ >= 0)
                  {
                     if(param5 * this.rightPlaneX + param3 * this.rightPlaneY + param7 * this.rightPlaneZ <= this.rightPlaneOffset)
                     {
                        return -1;
                     }
                     if(param2 * this.rightPlaneX + param6 * this.rightPlaneY + param4 * this.rightPlaneZ > this.rightPlaneOffset)
                     {
                        param1 &= 55;
                     }
                  }
                  else
                  {
                     if(param5 * this.rightPlaneX + param3 * this.rightPlaneY + param4 * this.rightPlaneZ <= this.rightPlaneOffset)
                     {
                        return -1;
                     }
                     if(param2 * this.rightPlaneX + param6 * this.rightPlaneY + param7 * this.rightPlaneZ > this.rightPlaneOffset)
                     {
                        param1 &= 55;
                     }
                  }
               }
               else if(this.rightPlaneY >= 0)
               {
                  if(this.rightPlaneZ >= 0)
                  {
                     if(param2 * this.rightPlaneX + param6 * this.rightPlaneY + param7 * this.rightPlaneZ <= this.rightPlaneOffset)
                     {
                        return -1;
                     }
                     if(param5 * this.rightPlaneX + param3 * this.rightPlaneY + param4 * this.rightPlaneZ > this.rightPlaneOffset)
                     {
                        param1 &= 55;
                     }
                  }
                  else
                  {
                     if(param2 * this.rightPlaneX + param6 * this.rightPlaneY + param4 * this.rightPlaneZ <= this.rightPlaneOffset)
                     {
                        return -1;
                     }
                     if(param5 * this.rightPlaneX + param3 * this.rightPlaneY + param7 * this.rightPlaneZ > this.rightPlaneOffset)
                     {
                        param1 &= 55;
                     }
                  }
               }
               else if(this.rightPlaneZ >= 0)
               {
                  if(param2 * this.rightPlaneX + param3 * this.rightPlaneY + param7 * this.rightPlaneZ <= this.rightPlaneOffset)
                  {
                     return -1;
                  }
                  if(param5 * this.rightPlaneX + param6 * this.rightPlaneY + param4 * this.rightPlaneZ > this.rightPlaneOffset)
                  {
                     param1 &= 55;
                  }
               }
               else
               {
                  if(param2 * this.rightPlaneX + param3 * this.rightPlaneY + param4 * this.rightPlaneZ <= this.rightPlaneOffset)
                  {
                     return -1;
                  }
                  if(param5 * this.rightPlaneX + param6 * this.rightPlaneY + param7 * this.rightPlaneZ > this.rightPlaneOffset)
                  {
                     param1 &= 55;
                  }
               }
            }
            if(param1 & 0x10)
            {
               if(this.topPlaneX >= 0)
               {
                  if(this.topPlaneY >= 0)
                  {
                     if(this.topPlaneZ >= 0)
                     {
                        if(param5 * this.topPlaneX + param6 * this.topPlaneY + param7 * this.topPlaneZ <= this.topPlaneOffset)
                        {
                           return -1;
                        }
                        if(param2 * this.topPlaneX + param3 * this.topPlaneY + param4 * this.topPlaneZ > this.topPlaneOffset)
                        {
                           param1 &= 47;
                        }
                     }
                     else
                     {
                        if(param5 * this.topPlaneX + param6 * this.topPlaneY + param4 * this.topPlaneZ <= this.topPlaneOffset)
                        {
                           return -1;
                        }
                        if(param2 * this.topPlaneX + param3 * this.topPlaneY + param7 * this.topPlaneZ > this.topPlaneOffset)
                        {
                           param1 &= 47;
                        }
                     }
                  }
                  else if(this.topPlaneZ >= 0)
                  {
                     if(param5 * this.topPlaneX + param3 * this.topPlaneY + param7 * this.topPlaneZ <= this.topPlaneOffset)
                     {
                        return -1;
                     }
                     if(param2 * this.topPlaneX + param6 * this.topPlaneY + param4 * this.topPlaneZ > this.topPlaneOffset)
                     {
                        param1 &= 47;
                     }
                  }
                  else
                  {
                     if(param5 * this.topPlaneX + param3 * this.topPlaneY + param4 * this.topPlaneZ <= this.topPlaneOffset)
                     {
                        return -1;
                     }
                     if(param2 * this.topPlaneX + param6 * this.topPlaneY + param7 * this.topPlaneZ > this.topPlaneOffset)
                     {
                        param1 &= 47;
                     }
                  }
               }
               else if(this.topPlaneY >= 0)
               {
                  if(this.topPlaneZ >= 0)
                  {
                     if(param2 * this.topPlaneX + param6 * this.topPlaneY + param7 * this.topPlaneZ <= this.topPlaneOffset)
                     {
                        return -1;
                     }
                     if(param5 * this.topPlaneX + param3 * this.topPlaneY + param4 * this.topPlaneZ > this.topPlaneOffset)
                     {
                        param1 &= 47;
                     }
                  }
                  else
                  {
                     if(param2 * this.topPlaneX + param6 * this.topPlaneY + param4 * this.topPlaneZ <= this.topPlaneOffset)
                     {
                        return -1;
                     }
                     if(param5 * this.topPlaneX + param3 * this.topPlaneY + param7 * this.topPlaneZ > this.topPlaneOffset)
                     {
                        param1 &= 47;
                     }
                  }
               }
               else if(this.topPlaneZ >= 0)
               {
                  if(param2 * this.topPlaneX + param3 * this.topPlaneY + param7 * this.topPlaneZ <= this.topPlaneOffset)
                  {
                     return -1;
                  }
                  if(param5 * this.topPlaneX + param6 * this.topPlaneY + param4 * this.topPlaneZ > this.topPlaneOffset)
                  {
                     param1 &= 47;
                  }
               }
               else
               {
                  if(param2 * this.topPlaneX + param3 * this.topPlaneY + param4 * this.topPlaneZ <= this.topPlaneOffset)
                  {
                     return -1;
                  }
                  if(param5 * this.topPlaneX + param6 * this.topPlaneY + param7 * this.topPlaneZ > this.topPlaneOffset)
                  {
                     param1 &= 47;
                  }
               }
            }
            if(param1 & 0x20)
            {
               if(this.bottomPlaneX >= 0)
               {
                  if(this.bottomPlaneY >= 0)
                  {
                     if(this.bottomPlaneZ >= 0)
                     {
                        if(param5 * this.bottomPlaneX + param6 * this.bottomPlaneY + param7 * this.bottomPlaneZ <= this.bottomPlaneOffset)
                        {
                           return -1;
                        }
                        if(param2 * this.bottomPlaneX + param3 * this.bottomPlaneY + param4 * this.bottomPlaneZ > this.bottomPlaneOffset)
                        {
                           param1 &= 31;
                        }
                     }
                     else
                     {
                        if(param5 * this.bottomPlaneX + param6 * this.bottomPlaneY + param4 * this.bottomPlaneZ <= this.bottomPlaneOffset)
                        {
                           return -1;
                        }
                        if(param2 * this.bottomPlaneX + param3 * this.bottomPlaneY + param7 * this.bottomPlaneZ > this.bottomPlaneOffset)
                        {
                           param1 &= 31;
                        }
                     }
                  }
                  else if(this.bottomPlaneZ >= 0)
                  {
                     if(param5 * this.bottomPlaneX + param3 * this.bottomPlaneY + param7 * this.bottomPlaneZ <= this.bottomPlaneOffset)
                     {
                        return -1;
                     }
                     if(param2 * this.bottomPlaneX + param6 * this.bottomPlaneY + param4 * this.bottomPlaneZ > this.bottomPlaneOffset)
                     {
                        param1 &= 31;
                     }
                  }
                  else
                  {
                     if(param5 * this.bottomPlaneX + param3 * this.bottomPlaneY + param4 * this.bottomPlaneZ <= this.bottomPlaneOffset)
                     {
                        return -1;
                     }
                     if(param2 * this.bottomPlaneX + param6 * this.bottomPlaneY + param7 * this.bottomPlaneZ > this.bottomPlaneOffset)
                     {
                        param1 &= 31;
                     }
                  }
               }
               else if(this.bottomPlaneY >= 0)
               {
                  if(this.bottomPlaneZ >= 0)
                  {
                     if(param2 * this.bottomPlaneX + param6 * this.bottomPlaneY + param7 * this.bottomPlaneZ <= this.bottomPlaneOffset)
                     {
                        return -1;
                     }
                     if(param5 * this.bottomPlaneX + param3 * this.bottomPlaneY + param4 * this.bottomPlaneZ > this.bottomPlaneOffset)
                     {
                        param1 &= 31;
                     }
                  }
                  else
                  {
                     if(param2 * this.bottomPlaneX + param6 * this.bottomPlaneY + param4 * this.bottomPlaneZ <= this.bottomPlaneOffset)
                     {
                        return -1;
                     }
                     if(param5 * this.bottomPlaneX + param3 * this.bottomPlaneY + param7 * this.bottomPlaneZ > this.bottomPlaneOffset)
                     {
                        param1 &= 31;
                     }
                  }
               }
               else if(this.bottomPlaneZ >= 0)
               {
                  if(param2 * this.bottomPlaneX + param3 * this.bottomPlaneY + param7 * this.bottomPlaneZ <= this.bottomPlaneOffset)
                  {
                     return -1;
                  }
                  if(param5 * this.bottomPlaneX + param6 * this.bottomPlaneY + param4 * this.bottomPlaneZ > this.bottomPlaneOffset)
                  {
                     param1 &= 31;
                  }
               }
               else
               {
                  if(param2 * this.bottomPlaneX + param3 * this.bottomPlaneY + param4 * this.bottomPlaneZ <= this.bottomPlaneOffset)
                  {
                     return -1;
                  }
                  if(param5 * this.bottomPlaneX + param6 * this.bottomPlaneY + param7 * this.bottomPlaneZ > this.bottomPlaneOffset)
                  {
                     param1 &= 31;
                  }
               }
            }
         }
         return param1;
      }
      
      private function findSplitter(param1:Face) : Face
      {
         var _loc2_:Face = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:int = 0;
         var _loc12_:Face = null;
         var _loc13_:Wrapper = null;
         var _loc14_:Vertex = null;
         var _loc15_:Vertex = null;
         var _loc16_:Vertex = null;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = false;
         var _loc22_:Vertex = null;
         var _loc23_:Number = NaN;
         var _loc3_:int = 2147483647;
         var _loc4_:Face = param1;
         while(_loc4_ != null)
         {
            _loc5_ = _loc4_.normalX;
            _loc6_ = _loc4_.normalY;
            _loc7_ = _loc4_.normalZ;
            _loc8_ = _loc4_.offset;
            _loc9_ = _loc8_ - threshold;
            _loc10_ = _loc8_ + threshold;
            _loc11_ = 0;
            _loc12_ = param1;
            while(_loc12_ != null)
            {
               if(_loc12_ != _loc4_)
               {
                  _loc13_ = _loc12_.wrapper;
                  _loc14_ = _loc13_.vertex;
                  _loc13_ = _loc13_.next;
                  _loc15_ = _loc13_.vertex;
                  _loc13_ = _loc13_.next;
                  _loc16_ = _loc13_.vertex;
                  _loc17_ = _loc14_.x * _loc5_ + _loc14_.y * _loc6_ + _loc14_.z * _loc7_;
                  _loc18_ = _loc15_.x * _loc5_ + _loc15_.y * _loc6_ + _loc15_.z * _loc7_;
                  _loc19_ = _loc16_.x * _loc5_ + _loc16_.y * _loc6_ + _loc16_.z * _loc7_;
                  _loc20_ = _loc17_ < _loc9_ || _loc18_ < _loc9_ || _loc19_ < _loc9_;
                  _loc21_ = _loc17_ > _loc10_ || _loc18_ > _loc10_ || _loc19_ > _loc10_;
                  _loc13_ = _loc13_.next;
                  while(_loc13_ != null)
                  {
                     _loc22_ = _loc13_.vertex;
                     _loc23_ = _loc22_.x * _loc5_ + _loc22_.y * _loc6_ + _loc22_.z * _loc7_;
                     if(_loc23_ < _loc9_)
                     {
                        _loc20_ = true;
                        if(_loc21_)
                        {
                           break;
                        }
                     }
                     else if(_loc23_ > _loc10_)
                     {
                        _loc21_ = true;
                        if(_loc20_)
                        {
                           break;
                        }
                     }
                     _loc13_ = _loc13_.next;
                  }
                  if(_loc21_ && _loc20_)
                  {
                     if(++_loc11_ >= _loc3_)
                     {
                        break;
                     }
                  }
               }
               _loc12_ = _loc12_.next;
            }
            if(_loc11_ < _loc3_)
            {
               _loc2_ = _loc4_;
               _loc3_ = _loc11_;
               if(_loc3_ == 0)
               {
                  break;
               }
            }
            _loc4_ = _loc4_.next;
         }
         return _loc2_;
      }
      
      override alternativa3d function getVG(param1:Camera3D) : VG
      {
         var _loc3_:int = 0;
         var _loc4_:Vertex = null;
         var _loc2_:VG = collectVG(param1);
         if(this.root != null)
         {
            if(transformId > 500000000)
            {
               transformId = 0;
               _loc4_ = this.vertexList;
               while(_loc4_ != null)
               {
                  _loc4_.transformId = 0;
                  _loc4_ = _loc4_.next;
               }
            }
            ++transformId;
            calculateInverseMatrix();
            this.calculateCameraPlanes(param1.nearClipping,param1.farClipping);
            _loc3_ = this.cullingInContainer(culling,this.root.boundMinX,this.root.boundMinY,this.root.boundMinZ,this.root.boundMaxX,this.root.boundMaxY,this.root.boundMaxZ);
            if(_loc3_ >= 0)
            {
               _loc2_ = this.collectVGNode(this.root,_loc3_,param1,_loc2_);
            }
         }
         colorizeVG(_loc2_);
         return _loc2_;
      }
      
      private function collectVGNode(param1:BSPNode, param2:int, param3:Camera3D, param4:VG = null) : VG
      {
         var _loc5_:VG = null;
         var _loc6_:VG = null;
         var _loc9_:VG = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc7_:Object3D = param1.objectList;
         var _loc8_:Object3D = param1.boundList;
         while(_loc7_ != null)
         {
            if(_loc7_.visible && ((_loc7_.culling = param2) == 0 || (_loc7_.culling = this.cullingInContainer(param2,_loc8_.boundMinX,_loc8_.boundMinY,_loc8_.boundMinZ,_loc8_.boundMaxX,_loc8_.boundMaxY,_loc8_.boundMaxZ)) >= 0))
            {
               _loc7_.composeAndAppend(this);
               _loc9_ = _loc7_.getVG(param3);
               if(_loc9_ != null)
               {
                  if(_loc5_ != null)
                  {
                     _loc6_.next = _loc9_;
                  }
                  else
                  {
                     _loc5_ = _loc9_;
                     _loc6_ = _loc9_;
                  }
                  while(_loc6_.next != null)
                  {
                     _loc6_ = _loc6_.next;
                  }
               }
            }
            _loc7_ = _loc7_.next;
            _loc8_ = _loc8_.next;
         }
         if(_loc5_ != null)
         {
            _loc6_.next = param4;
            param4 = _loc5_;
         }
         if(param1.negative != null)
         {
            _loc10_ = param2 > 0 ? this.cullingInContainer(param2,param1.negative.boundMinX,param1.negative.boundMinY,param1.negative.boundMinZ,param1.negative.boundMaxX,param1.negative.boundMaxY,param1.negative.boundMaxZ) : 0;
            if(_loc10_ >= 0)
            {
               param4 = this.collectVGNode(param1.negative,_loc10_,param3,param4);
            }
         }
         if(param1.positive != null)
         {
            _loc11_ = param2 > 0 ? this.cullingInContainer(param2,param1.positive.boundMinX,param1.positive.boundMinY,param1.positive.boundMinZ,param1.positive.boundMaxX,param1.positive.boundMaxY,param1.positive.boundMaxZ) : 0;
            if(_loc11_ >= 0)
            {
               param4 = this.collectVGNode(param1.positive,_loc11_,param3,param4);
            }
         }
         return param4;
      }
      
      private function cropBoundFaceList(param1:Face, param2:Number, param3:Number, param4:Number, param5:Number) : Face
      {
         var _loc6_:Face = null;
         var _loc10_:Face = null;
         var _loc11_:Vertex = null;
         var _loc12_:Wrapper = null;
         var _loc13_:Vertex = null;
         var _loc14_:Vertex = null;
         var _loc15_:Vertex = null;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = false;
         var _loc21_:Number = NaN;
         var _loc22_:Wrapper = null;
         var _loc23_:Wrapper = null;
         var _loc24_:Number = NaN;
         var _loc7_:Number = param5 - threshold;
         var _loc8_:Number = param5 + threshold;
         var _loc9_:Face = param1;
         while(_loc9_ != null)
         {
            _loc10_ = _loc9_.next;
            _loc9_.next = null;
            _loc12_ = _loc9_.wrapper;
            _loc13_ = _loc12_.vertex;
            _loc12_ = _loc12_.next;
            _loc14_ = _loc12_.vertex;
            _loc12_ = _loc12_.next;
            _loc15_ = _loc12_.vertex;
            _loc12_ = _loc12_.next;
            _loc16_ = _loc13_.x * param2 + _loc13_.y * param3 + _loc13_.z * param4;
            _loc17_ = _loc14_.x * param2 + _loc14_.y * param3 + _loc14_.z * param4;
            _loc18_ = _loc15_.x * param2 + _loc15_.y * param3 + _loc15_.z * param4;
            _loc19_ = _loc16_ < _loc7_ || _loc17_ < _loc7_ || _loc18_ < _loc7_;
            _loc20_ = _loc16_ > _loc8_ || _loc17_ > _loc8_ || _loc18_ > _loc8_;
            while(_loc12_ != null)
            {
               _loc11_ = _loc12_.vertex;
               _loc21_ = _loc11_.x * param2 + _loc11_.y * param3 + _loc11_.z * param4;
               if(_loc21_ < _loc7_)
               {
                  _loc19_ = true;
               }
               else if(_loc21_ > _loc8_)
               {
                  _loc20_ = true;
               }
               _loc11_.offset = _loc21_;
               _loc12_ = _loc12_.next;
            }
            if(_loc20_)
            {
               if(!_loc19_)
               {
                  _loc9_.next = _loc6_;
                  _loc6_ = _loc9_;
               }
               else
               {
                  _loc13_.offset = _loc16_;
                  _loc14_.offset = _loc17_;
                  _loc15_.offset = _loc18_;
                  _loc22_ = null;
                  _loc12_ = _loc9_.wrapper.next.next;
                  while(_loc12_.next != null)
                  {
                     _loc12_ = _loc12_.next;
                  }
                  _loc13_ = _loc12_.vertex;
                  _loc16_ = _loc13_.offset;
                  _loc12_ = _loc9_.wrapper;
                  _loc9_.wrapper = null;
                  while(_loc12_ != null)
                  {
                     _loc14_ = _loc12_.vertex;
                     _loc17_ = _loc14_.offset;
                     if(_loc16_ < _loc7_ && _loc17_ > _loc8_ || _loc16_ > _loc8_ && _loc17_ < _loc7_)
                     {
                        _loc24_ = (param5 - _loc16_) / (_loc17_ - _loc16_);
                        _loc11_ = new Vertex();
                        _loc11_.x = _loc13_.x + (_loc14_.x - _loc13_.x) * _loc24_;
                        _loc11_.y = _loc13_.y + (_loc14_.y - _loc13_.y) * _loc24_;
                        _loc11_.z = _loc13_.z + (_loc14_.z - _loc13_.z) * _loc24_;
                        _loc23_ = _loc12_.create();
                        _loc23_.vertex = _loc11_;
                        if(_loc22_ != null)
                        {
                           _loc22_.next = _loc23_;
                        }
                        else
                        {
                           _loc9_.wrapper = _loc23_;
                        }
                        _loc22_ = _loc23_;
                     }
                     if(_loc17_ >= _loc7_)
                     {
                        _loc23_ = _loc12_.create();
                        _loc23_.vertex = _loc14_;
                        if(_loc22_ != null)
                        {
                           _loc22_.next = _loc23_;
                        }
                        else
                        {
                           _loc9_.wrapper = _loc23_;
                        }
                        _loc22_ = _loc23_;
                     }
                     _loc13_ = _loc14_;
                     _loc16_ = _loc17_;
                     _loc12_ = _loc12_.next;
                  }
                  _loc9_.next = _loc6_;
                  _loc6_ = _loc9_;
               }
            }
            _loc9_ = _loc10_;
         }
         return _loc6_;
      }
      
      private function intersectRayNode(param1:BSPNode, param2:Vector3D, param3:Vector3D, param4:Dictionary, param5:Camera3D) : RayIntersectionData
      {
         var _loc6_:RayIntersectionData = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Face = null;
         var _loc17_:Wrapper = null;
         var _loc18_:Vertex = null;
         var _loc19_:Vertex = null;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Vector3D = null;
         var _loc27_:Vector3D = null;
         var _loc28_:Number = NaN;
         var _loc29_:RayIntersectionData = null;
         var _loc30_:Object3D = null;
         if(param1.objectList == null)
         {
            _loc7_ = param1.normalX;
            _loc8_ = param1.normalY;
            _loc9_ = param1.normalZ;
            _loc10_ = _loc7_ * param2.x + _loc8_ * param2.y + _loc9_ * param2.z - param1.offset;
            if(_loc10_ > 0)
            {
               if(param1.positive != null && boundIntersectRay(param2,param3,param1.positive.boundMinX,param1.positive.boundMinY,param1.positive.boundMinZ,param1.positive.boundMaxX,param1.positive.boundMaxY,param1.positive.boundMaxZ))
               {
                  _loc6_ = this.intersectRayNode(param1.positive,param2,param3,param4,param5);
                  if(_loc6_ != null)
                  {
                     return _loc6_;
                  }
               }
               _loc11_ = param3.x * _loc7_ + param3.y * _loc8_ + param3.z * _loc9_;
               if(_loc11_ < 0)
               {
                  _loc12_ = -_loc10_ / _loc11_;
                  _loc13_ = param2.x + param3.x * _loc12_;
                  _loc14_ = param2.y + param3.y * _loc12_;
                  _loc15_ = param2.z + param3.z * _loc12_;
                  _loc16_ = param1.faceList;
                  while(_loc16_ != null)
                  {
                     _loc17_ = _loc16_.wrapper;
                     while(_loc17_ != null)
                     {
                        _loc18_ = _loc17_.vertex;
                        _loc19_ = _loc17_.next != null ? _loc17_.next.vertex : _loc16_.wrapper.vertex;
                        _loc20_ = _loc19_.x - _loc18_.x;
                        _loc21_ = _loc19_.y - _loc18_.y;
                        _loc22_ = _loc19_.z - _loc18_.z;
                        _loc23_ = _loc13_ - _loc18_.x;
                        _loc24_ = _loc14_ - _loc18_.y;
                        _loc25_ = _loc15_ - _loc18_.z;
                        if((_loc25_ * _loc21_ - _loc24_ * _loc22_) * _loc7_ + (_loc23_ * _loc22_ - _loc25_ * _loc20_) * _loc8_ + (_loc24_ * _loc20_ - _loc23_ * _loc21_) * _loc9_ < 0)
                        {
                           break;
                        }
                        _loc17_ = _loc17_.next;
                     }
                     if(_loc17_ == null)
                     {
                        _loc6_ = new RayIntersectionData();
                        _loc6_.object = this;
                        _loc6_.face = _loc16_;
                        _loc6_.point = new Vector3D(_loc13_,_loc14_,_loc15_);
                        _loc6_.uv = _loc16_.getUV(_loc6_.point);
                        _loc6_.time = _loc12_;
                        return _loc6_;
                     }
                     _loc16_ = _loc16_.next;
                  }
                  if(param1.negative != null && boundIntersectRay(param2,param3,param1.negative.boundMinX,param1.negative.boundMinY,param1.negative.boundMinZ,param1.negative.boundMaxX,param1.negative.boundMaxY,param1.negative.boundMaxZ))
                  {
                     return this.intersectRayNode(param1.negative,param2,param3,param4,param5);
                  }
               }
            }
            else
            {
               if(param1.negative != null && boundIntersectRay(param2,param3,param1.negative.boundMinX,param1.negative.boundMinY,param1.negative.boundMinZ,param1.negative.boundMaxX,param1.negative.boundMaxY,param1.negative.boundMaxZ))
               {
                  _loc6_ = this.intersectRayNode(param1.negative,param2,param3,param4,param5);
                  if(_loc6_ != null)
                  {
                     return _loc6_;
                  }
               }
               if(param1.positive != null && param3.x * _loc7_ + param3.y * _loc8_ + param3.z * _loc9_ > 0 && boundIntersectRay(param2,param3,param1.positive.boundMinX,param1.positive.boundMinY,param1.positive.boundMinZ,param1.positive.boundMaxX,param1.positive.boundMaxY,param1.positive.boundMaxZ))
               {
                  return this.intersectRayNode(param1.positive,param2,param3,param4,param5);
               }
            }
            return null;
         }
         _loc28_ = 1e+22;
         _loc30_ = param1.objectList;
         while(_loc30_ != null)
         {
            _loc30_.composeMatrix();
            _loc30_.invertMatrix();
            if(_loc26_ == null)
            {
               _loc26_ = new Vector3D();
               _loc27_ = new Vector3D();
            }
            _loc26_.x = _loc30_.ma * param2.x + _loc30_.mb * param2.y + _loc30_.mc * param2.z + _loc30_.md;
            _loc26_.y = _loc30_.me * param2.x + _loc30_.mf * param2.y + _loc30_.mg * param2.z + _loc30_.mh;
            _loc26_.z = _loc30_.mi * param2.x + _loc30_.mj * param2.y + _loc30_.mk * param2.z + _loc30_.ml;
            _loc27_.x = _loc30_.ma * param3.x + _loc30_.mb * param3.y + _loc30_.mc * param3.z;
            _loc27_.y = _loc30_.me * param3.x + _loc30_.mf * param3.y + _loc30_.mg * param3.z;
            _loc27_.z = _loc30_.mi * param3.x + _loc30_.mj * param3.y + _loc30_.mk * param3.z;
            _loc6_ = _loc30_.intersectRay(_loc26_,_loc27_,param4,param5);
            if(_loc6_ != null && _loc6_.time < _loc28_)
            {
               _loc28_ = _loc6_.time;
               _loc29_ = _loc6_;
            }
            _loc30_ = _loc30_.next;
         }
         return _loc29_;
      }
      
      private function splitObjectList(param1:Face, param2:Object3D, param3:Object3D, param4:Vector.<Object3D>) : void
      {
         var _loc5_:Object3D = null;
         var _loc6_:Object3D = null;
         var _loc7_:Object3D = null;
         var _loc8_:Object3D = null;
         var _loc9_:Object3D = null;
         var _loc10_:Object3D = null;
         var _loc11_:Object3D = null;
         var _loc12_:Object3D = null;
         var _loc13_:int = 0;
         var _loc14_:Vertex = null;
         var _loc15_:Vector3D = null;
         var _loc16_:Vector3D = null;
         var _loc17_:Vector3D = null;
         var _loc18_:int = 0;
         var _loc19_:Vector.<Object3D> = null;
         _loc9_ = param2;
         _loc10_ = param3;
         while(_loc9_ != null)
         {
            _loc11_ = _loc9_.next;
            _loc12_ = _loc10_.next;
            _loc9_.next = null;
            _loc10_.next = null;
            _loc13_ = this.checkBounds(param1.normalX,param1.normalY,param1.normalZ,param1.offset,_loc10_.boundMinX,_loc10_.boundMinY,_loc10_.boundMinZ,_loc10_.boundMaxX,_loc10_.boundMaxY,_loc10_.boundMaxZ,true);
            if(_loc13_ < 0)
            {
               _loc9_.next = _loc5_;
               _loc5_ = _loc9_;
               _loc10_.next = _loc6_;
               _loc6_ = _loc10_;
            }
            else if(_loc13_ > 0)
            {
               _loc9_.next = _loc7_;
               _loc7_ = _loc9_;
               _loc10_.next = _loc8_;
               _loc8_ = _loc10_;
            }
            else
            {
               _loc9_.composeMatrix();
               _loc9_.calculateInverseMatrix();
               _loc14_ = param1.wrapper.vertex;
               _loc15_ = new Vector3D(_loc9_.ima * _loc14_.x + _loc9_.imb * _loc14_.y + _loc9_.imc * _loc14_.z + _loc9_.imd,_loc9_.ime * _loc14_.x + _loc9_.imf * _loc14_.y + _loc9_.img * _loc14_.z + _loc9_.imh,_loc9_.imi * _loc14_.x + _loc9_.imj * _loc14_.y + _loc9_.imk * _loc14_.z + _loc9_.iml);
               _loc14_ = param1.wrapper.next.vertex;
               _loc16_ = new Vector3D(_loc9_.ima * _loc14_.x + _loc9_.imb * _loc14_.y + _loc9_.imc * _loc14_.z + _loc9_.imd,_loc9_.ime * _loc14_.x + _loc9_.imf * _loc14_.y + _loc9_.img * _loc14_.z + _loc9_.imh,_loc9_.imi * _loc14_.x + _loc9_.imj * _loc14_.y + _loc9_.imk * _loc14_.z + _loc9_.iml);
               _loc14_ = param1.wrapper.next.next.vertex;
               _loc17_ = new Vector3D(_loc9_.ima * _loc14_.x + _loc9_.imb * _loc14_.y + _loc9_.imc * _loc14_.z + _loc9_.imd,_loc9_.ime * _loc14_.x + _loc9_.imf * _loc14_.y + _loc9_.img * _loc14_.z + _loc9_.imh,_loc9_.imi * _loc14_.x + _loc9_.imj * _loc14_.y + _loc9_.imk * _loc14_.z + _loc9_.iml);
               _loc18_ = _loc9_.testSplit(_loc15_,_loc16_,_loc17_,threshold);
               if(_loc18_ < 0)
               {
                  _loc9_.next = _loc5_;
                  _loc5_ = _loc9_;
                  _loc10_.next = _loc6_;
                  _loc6_ = _loc10_;
               }
               else if(_loc18_ > 0)
               {
                  _loc9_.next = _loc7_;
                  _loc7_ = _loc9_;
                  _loc10_.next = _loc8_;
                  _loc8_ = _loc10_;
               }
               else
               {
                  _loc19_ = _loc9_.split(_loc15_,_loc16_,_loc17_,threshold);
                  if(_loc19_[0] != null)
                  {
                     _loc9_ = _loc19_[0];
                     _loc9_.setParent(this);
                     _loc9_.next = _loc5_;
                     _loc5_ = _loc9_;
                     _loc10_ = this.createObjectBounds(_loc9_);
                     _loc10_.next = _loc6_;
                     _loc6_ = _loc10_;
                  }
                  if(_loc19_[1] != null)
                  {
                     _loc9_ = _loc19_[1];
                     _loc9_.setParent(this);
                     _loc9_.next = _loc7_;
                     _loc7_ = _loc9_;
                     _loc10_ = this.createObjectBounds(_loc9_);
                     _loc10_.next = _loc8_;
                     _loc8_ = _loc10_;
                  }
               }
            }
            _loc9_ = _loc11_;
            _loc10_ = _loc12_;
         }
         param4[0] = _loc5_;
         param4[1] = _loc6_;
         param4[2] = _loc7_;
         param4[3] = _loc8_;
      }
      
      public function destroyTree() : void
      {
         if(this.root != null)
         {
            this.vertexList = null;
            this.destroyNode(this.root);
            this.root = null;
         }
      }
      
      public function createTree(param1:Vector.<Mesh>, param2:Vector.<Mesh> = null, param3:Boolean = false, param4:Vector.<Object3D> = null) : void
      {
         var _loc5_:* = 0;
         var _loc6_:int = 0;
         var _loc7_:Face = null;
         var _loc8_:Face = null;
         var _loc9_:Object3D = null;
         var _loc10_:Object3D = null;
         var _loc11_:Object3D = null;
         var _loc12_:Object3D = null;
         this.destroyTree();
         if(param2 != null)
         {
            _loc6_ = int(param2.length);
            _loc5_ = int(_loc6_ - 1);
            while(_loc5_ >= 0)
            {
               _loc7_ = this.calculateFaceList(param3 ? param2[_loc5_] : Mesh(param2[_loc5_].clone()),false,_loc7_);
               _loc5_--;
            }
         }
         _loc6_ = int(param1.length);
         _loc5_ = int(_loc6_ - 1);
         while(_loc5_ >= 0)
         {
            _loc8_ = this.calculateFaceList(param3 ? param1[_loc5_] : Mesh(param1[_loc5_].clone()),true,_loc8_);
            _loc5_--;
         }
         if(param4 != null)
         {
            _loc6_ = int(param4.length);
            _loc5_ = 0;
            while(_loc5_ < _loc6_)
            {
               _loc11_ = param4[_loc5_];
               _loc11_ = _loc11_.clone();
               _loc11_.setParent(this);
               this.calculateObjectBounds(_loc11_);
               _loc12_ = this.createObjectBounds(_loc11_);
               if(_loc12_.boundMinX <= _loc12_.boundMaxX)
               {
                  _loc11_.next = _loc9_;
                  _loc9_ = _loc11_;
                  _loc12_.next = _loc10_;
                  _loc10_ = _loc12_;
               }
               _loc5_++;
            }
         }
         if(_loc8_ != null || _loc9_ != null || _loc7_ != null)
         {
            this.root = this.createNode(_loc7_,_loc8_,_loc9_,_loc10_,new Vector.<Face>(3),new Vector.<Object3D>(4));
         }
      }
      
      override protected function clonePropertiesFrom(param1:Object3D) : void
      {
         var _loc3_:Vertex = null;
         var _loc4_:Vertex = null;
         var _loc5_:Vertex = null;
         super.clonePropertiesFrom(param1);
         var _loc2_:BSPContainer = param1 as BSPContainer;
         this.clipping = _loc2_.clipping;
         this.debugAlphaFade = _loc2_.debugAlphaFade;
         _loc3_ = _loc2_.vertexList;
         while(_loc3_ != null)
         {
            _loc5_ = new Vertex();
            _loc5_.x = _loc3_.x;
            _loc5_.y = _loc3_.y;
            _loc5_.z = _loc3_.z;
            _loc5_.u = _loc3_.u;
            _loc5_.v = _loc3_.v;
            _loc5_.normalX = _loc3_.normalX;
            _loc5_.normalY = _loc3_.normalY;
            _loc5_.normalZ = _loc3_.normalZ;
            _loc3_.value = _loc5_;
            if(_loc4_ != null)
            {
               _loc4_.next = _loc5_;
            }
            else
            {
               this.vertexList = _loc5_;
            }
            _loc4_ = _loc5_;
            _loc3_ = _loc3_.next;
         }
         if(_loc2_.root != null)
         {
            this.root = _loc2_.cloneNode(_loc2_.root,this);
         }
         _loc3_ = _loc2_.vertexList;
         while(_loc3_ != null)
         {
            _loc3_.value = null;
            _loc3_ = _loc3_.next;
         }
      }
      
      private function splitFaceList(param1:Face, param2:Face, param3:Boolean, param4:Vector.<Face>) : void
      {
         var _loc11_:Face = null;
         var _loc12_:Face = null;
         var _loc13_:Face = null;
         var _loc14_:Face = null;
         var _loc15_:Face = null;
         var _loc16_:Face = null;
         var _loc17_:Face = null;
         var _loc18_:Wrapper = null;
         var _loc19_:Vertex = null;
         var _loc20_:Vertex = null;
         var _loc21_:Vertex = null;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Boolean = false;
         var _loc26_:Boolean = false;
         var _loc27_:Vertex = null;
         var _loc28_:Number = NaN;
         var _loc29_:Face = null;
         var _loc30_:Face = null;
         var _loc31_:Wrapper = null;
         var _loc32_:Wrapper = null;
         var _loc33_:Wrapper = null;
         var _loc34_:Number = NaN;
         var _loc5_:Number = param1.normalX;
         var _loc6_:Number = param1.normalY;
         var _loc7_:Number = param1.normalZ;
         var _loc8_:Number = param1.offset;
         var _loc9_:Number = _loc8_ - threshold;
         var _loc10_:Number = _loc8_ + threshold;
         while(param2 != null)
         {
            _loc17_ = param2.next;
            param2.next = null;
            if(param2 == param1)
            {
               if(_loc13_ != null)
               {
                  _loc14_.next = param2;
               }
               else
               {
                  _loc13_ = param2;
               }
               _loc14_ = param2;
               param2 = _loc17_;
            }
            else
            {
               _loc18_ = param2.wrapper;
               _loc19_ = _loc18_.vertex;
               _loc18_ = _loc18_.next;
               _loc20_ = _loc18_.vertex;
               _loc18_ = _loc18_.next;
               _loc21_ = _loc18_.vertex;
               _loc22_ = _loc19_.x * _loc5_ + _loc19_.y * _loc6_ + _loc19_.z * _loc7_;
               _loc23_ = _loc20_.x * _loc5_ + _loc20_.y * _loc6_ + _loc20_.z * _loc7_;
               _loc24_ = _loc21_.x * _loc5_ + _loc21_.y * _loc6_ + _loc21_.z * _loc7_;
               _loc25_ = _loc22_ < _loc9_ || _loc23_ < _loc9_ || _loc24_ < _loc9_;
               _loc26_ = _loc22_ > _loc10_ || _loc23_ > _loc10_ || _loc24_ > _loc10_;
               _loc18_ = _loc18_.next;
               while(_loc18_ != null)
               {
                  _loc27_ = _loc18_.vertex;
                  _loc28_ = _loc27_.x * _loc5_ + _loc27_.y * _loc6_ + _loc27_.z * _loc7_;
                  if(_loc28_ < _loc9_)
                  {
                     _loc25_ = true;
                  }
                  else if(_loc28_ > _loc10_)
                  {
                     _loc26_ = true;
                  }
                  _loc27_.offset = _loc28_;
                  _loc18_ = _loc18_.next;
               }
               if(!_loc25_)
               {
                  if(!_loc26_)
                  {
                     if(param2.normalX * _loc5_ + param2.normalY * _loc6_ + param2.normalZ * _loc7_ > 0)
                     {
                        if(_loc13_ != null)
                        {
                           _loc14_.next = param2;
                        }
                        else
                        {
                           _loc13_ = param2;
                        }
                        _loc14_ = param2;
                     }
                     else
                     {
                        if(_loc11_ != null)
                        {
                           _loc12_.next = param2;
                        }
                        else
                        {
                           _loc11_ = param2;
                        }
                        _loc12_ = param2;
                     }
                  }
                  else
                  {
                     if(_loc15_ != null)
                     {
                        _loc16_.next = param2;
                     }
                     else
                     {
                        _loc15_ = param2;
                     }
                     _loc16_ = param2;
                  }
               }
               else if(!_loc26_)
               {
                  if(_loc11_ != null)
                  {
                     _loc12_.next = param2;
                  }
                  else
                  {
                     _loc11_ = param2;
                  }
                  _loc12_ = param2;
               }
               else
               {
                  _loc19_.offset = _loc22_;
                  _loc20_.offset = _loc23_;
                  _loc21_.offset = _loc24_;
                  _loc29_ = new Face();
                  _loc30_ = new Face();
                  _loc31_ = null;
                  _loc32_ = null;
                  _loc18_ = param2.wrapper.next.next;
                  while(_loc18_.next != null)
                  {
                     _loc18_ = _loc18_.next;
                  }
                  _loc19_ = _loc18_.vertex;
                  _loc22_ = _loc19_.offset;
                  _loc18_ = param2.wrapper;
                  while(_loc18_ != null)
                  {
                     _loc20_ = _loc18_.vertex;
                     _loc23_ = _loc20_.offset;
                     if(_loc22_ < _loc9_ && _loc23_ > _loc10_ || _loc22_ > _loc10_ && _loc23_ < _loc9_)
                     {
                        _loc34_ = (_loc8_ - _loc22_) / (_loc23_ - _loc22_);
                        _loc27_ = new Vertex();
                        if(param3)
                        {
                           _loc27_.next = this.vertexList;
                           this.vertexList = _loc27_;
                        }
                        _loc27_.x = _loc19_.x + (_loc20_.x - _loc19_.x) * _loc34_;
                        _loc27_.y = _loc19_.y + (_loc20_.y - _loc19_.y) * _loc34_;
                        _loc27_.z = _loc19_.z + (_loc20_.z - _loc19_.z) * _loc34_;
                        _loc27_.u = _loc19_.u + (_loc20_.u - _loc19_.u) * _loc34_;
                        _loc27_.v = _loc19_.v + (_loc20_.v - _loc19_.v) * _loc34_;
                        _loc27_.normalX = _loc19_.normalX + (_loc20_.normalX - _loc19_.normalX) * _loc34_;
                        _loc27_.normalY = _loc19_.normalY + (_loc20_.normalY - _loc19_.normalY) * _loc34_;
                        _loc27_.normalZ = _loc19_.normalZ + (_loc20_.normalZ - _loc19_.normalZ) * _loc34_;
                        _loc33_ = new Wrapper();
                        _loc33_.vertex = _loc27_;
                        if(_loc31_ != null)
                        {
                           _loc31_.next = _loc33_;
                        }
                        else
                        {
                           _loc29_.wrapper = _loc33_;
                        }
                        _loc31_ = _loc33_;
                        _loc33_ = new Wrapper();
                        _loc33_.vertex = _loc27_;
                        if(_loc32_ != null)
                        {
                           _loc32_.next = _loc33_;
                        }
                        else
                        {
                           _loc30_.wrapper = _loc33_;
                        }
                        _loc32_ = _loc33_;
                     }
                     if(_loc23_ <= _loc10_)
                     {
                        _loc33_ = new Wrapper();
                        _loc33_.vertex = _loc20_;
                        if(_loc31_ != null)
                        {
                           _loc31_.next = _loc33_;
                        }
                        else
                        {
                           _loc29_.wrapper = _loc33_;
                        }
                        _loc31_ = _loc33_;
                     }
                     if(_loc23_ >= _loc9_)
                     {
                        _loc33_ = new Wrapper();
                        _loc33_.vertex = _loc20_;
                        if(_loc32_ != null)
                        {
                           _loc32_.next = _loc33_;
                        }
                        else
                        {
                           _loc30_.wrapper = _loc33_;
                        }
                        _loc32_ = _loc33_;
                     }
                     _loc19_ = _loc20_;
                     _loc22_ = _loc23_;
                     _loc18_ = _loc18_.next;
                  }
                  _loc29_.material = param2.material;
                  _loc29_.calculateBestSequenceAndNormal();
                  if(_loc11_ != null)
                  {
                     _loc12_.next = _loc29_;
                  }
                  else
                  {
                     _loc11_ = _loc29_;
                  }
                  _loc12_ = _loc29_;
                  _loc30_.material = param2.material;
                  _loc30_.calculateBestSequenceAndNormal();
                  if(_loc15_ != null)
                  {
                     _loc16_.next = _loc30_;
                  }
                  else
                  {
                     _loc15_ = _loc30_;
                  }
                  _loc16_ = _loc30_;
               }
               param2 = _loc17_;
            }
         }
         param4[0] = _loc11_;
         param4[1] = _loc13_;
         param4[2] = _loc15_;
      }
      
      private function createBoundFaces(param1:Object3D) : Face
      {
         var _loc2_:Face = null;
         var _loc4_:Vertex = null;
         var _loc5_:Vertex = null;
         var _loc6_:Vertex = null;
         var _loc7_:Vertex = null;
         var _loc8_:Vertex = null;
         var _loc9_:Vertex = null;
         var _loc10_:Vertex = null;
         var _loc11_:Vertex = null;
         var _loc12_:Face = null;
         var _loc3_:Object3D = param1;
         while(_loc3_ != null)
         {
            _loc4_ = new Vertex();
            _loc4_.x = _loc3_.boundMinX;
            _loc4_.y = _loc3_.boundMinY;
            _loc4_.z = _loc3_.boundMinZ;
            _loc5_ = new Vertex();
            _loc5_.x = _loc3_.boundMaxX;
            _loc5_.y = _loc3_.boundMinY;
            _loc5_.z = _loc3_.boundMinZ;
            _loc6_ = new Vertex();
            _loc6_.x = _loc3_.boundMinX;
            _loc6_.y = _loc3_.boundMaxY;
            _loc6_.z = _loc3_.boundMinZ;
            _loc7_ = new Vertex();
            _loc7_.x = _loc3_.boundMaxX;
            _loc7_.y = _loc3_.boundMaxY;
            _loc7_.z = _loc3_.boundMinZ;
            _loc8_ = new Vertex();
            _loc8_.x = _loc3_.boundMinX;
            _loc8_.y = _loc3_.boundMinY;
            _loc8_.z = _loc3_.boundMaxZ;
            _loc9_ = new Vertex();
            _loc9_.x = _loc3_.boundMaxX;
            _loc9_.y = _loc3_.boundMinY;
            _loc9_.z = _loc3_.boundMaxZ;
            _loc10_ = new Vertex();
            _loc10_.x = _loc3_.boundMinX;
            _loc10_.y = _loc3_.boundMaxY;
            _loc10_.z = _loc3_.boundMaxZ;
            _loc11_ = new Vertex();
            _loc11_.x = _loc3_.boundMaxX;
            _loc11_.y = _loc3_.boundMaxY;
            _loc11_.z = _loc3_.boundMaxZ;
            _loc12_ = new Face();
            _loc12_.normalX = -1;
            _loc12_.normalY = 0;
            _loc12_.normalZ = 0;
            _loc12_.offset = -_loc3_.boundMinX;
            _loc12_.wrapper = new Wrapper();
            _loc12_.wrapper.vertex = _loc4_;
            _loc12_.wrapper.next = new Wrapper();
            _loc12_.wrapper.next.vertex = _loc8_;
            _loc12_.wrapper.next.next = new Wrapper();
            _loc12_.wrapper.next.next.vertex = _loc10_;
            _loc12_.wrapper.next.next.next = new Wrapper();
            _loc12_.wrapper.next.next.next.vertex = _loc6_;
            _loc12_.next = _loc2_;
            _loc2_ = _loc12_;
            _loc12_ = new Face();
            _loc12_.normalX = 1;
            _loc12_.normalY = 0;
            _loc12_.normalZ = 0;
            _loc12_.offset = _loc3_.boundMaxX;
            _loc12_.wrapper = new Wrapper();
            _loc12_.wrapper.vertex = _loc5_;
            _loc12_.wrapper.next = new Wrapper();
            _loc12_.wrapper.next.vertex = _loc7_;
            _loc12_.wrapper.next.next = new Wrapper();
            _loc12_.wrapper.next.next.vertex = _loc11_;
            _loc12_.wrapper.next.next.next = new Wrapper();
            _loc12_.wrapper.next.next.next.vertex = _loc9_;
            _loc12_.next = _loc2_;
            _loc2_ = _loc12_;
            _loc12_ = new Face();
            _loc12_.normalX = 0;
            _loc12_.normalY = -1;
            _loc12_.normalZ = 0;
            _loc12_.offset = -_loc3_.boundMinY;
            _loc12_.wrapper = new Wrapper();
            _loc12_.wrapper.vertex = _loc4_;
            _loc12_.wrapper.next = new Wrapper();
            _loc12_.wrapper.next.vertex = _loc5_;
            _loc12_.wrapper.next.next = new Wrapper();
            _loc12_.wrapper.next.next.vertex = _loc9_;
            _loc12_.wrapper.next.next.next = new Wrapper();
            _loc12_.wrapper.next.next.next.vertex = _loc8_;
            _loc12_.next = _loc2_;
            _loc2_ = _loc12_;
            _loc12_ = new Face();
            _loc12_.normalX = 0;
            _loc12_.normalY = 1;
            _loc12_.normalZ = 0;
            _loc12_.offset = _loc3_.boundMaxY;
            _loc12_.wrapper = new Wrapper();
            _loc12_.wrapper.vertex = _loc6_;
            _loc12_.wrapper.next = new Wrapper();
            _loc12_.wrapper.next.vertex = _loc10_;
            _loc12_.wrapper.next.next = new Wrapper();
            _loc12_.wrapper.next.next.vertex = _loc11_;
            _loc12_.wrapper.next.next.next = new Wrapper();
            _loc12_.wrapper.next.next.next.vertex = _loc7_;
            _loc12_.next = _loc2_;
            _loc2_ = _loc12_;
            _loc12_ = new Face();
            _loc12_.normalX = 0;
            _loc12_.normalY = 0;
            _loc12_.normalZ = -1;
            _loc12_.offset = -_loc3_.boundMinZ;
            _loc12_.wrapper = new Wrapper();
            _loc12_.wrapper.vertex = _loc4_;
            _loc12_.wrapper.next = new Wrapper();
            _loc12_.wrapper.next.vertex = _loc6_;
            _loc12_.wrapper.next.next = new Wrapper();
            _loc12_.wrapper.next.next.vertex = _loc7_;
            _loc12_.wrapper.next.next.next = new Wrapper();
            _loc12_.wrapper.next.next.next.vertex = _loc5_;
            _loc12_.next = _loc2_;
            _loc2_ = _loc12_;
            _loc12_ = new Face();
            _loc12_.normalX = 0;
            _loc12_.normalY = 0;
            _loc12_.normalZ = 1;
            _loc12_.offset = _loc3_.boundMaxZ;
            _loc12_.wrapper = new Wrapper();
            _loc12_.wrapper.vertex = _loc8_;
            _loc12_.wrapper.next = new Wrapper();
            _loc12_.wrapper.next.vertex = _loc9_;
            _loc12_.wrapper.next.next = new Wrapper();
            _loc12_.wrapper.next.next.vertex = _loc11_;
            _loc12_.wrapper.next.next.next = new Wrapper();
            _loc12_.wrapper.next.next.next.vertex = _loc10_;
            _loc12_.next = _loc2_;
            _loc2_ = _loc12_;
            _loc3_ = _loc3_.next;
         }
         return _loc2_;
      }
      
      private function drawFaces(param1:Camera3D, param2:Canvas, param3:Face) : void
      {
         var _loc6_:Face = null;
         if(param1.debug && Boolean(param1.checkInDebug(this) & Debug.EDGES))
         {
            Debug.drawEdges(param1,param2.getChildCanvas(true,false),param3,16777215);
         }
         var _loc4_:Canvas = param2.getChildCanvas(true,false,this);
         var _loc5_:Face = param3;
         while(_loc5_ != null)
         {
            _loc6_ = _loc5_.processNext;
            if(_loc6_ == null || _loc6_.material != param3.material)
            {
               _loc5_.processNext = null;
               if(param3.material != null)
               {
                  param3.material.draw(param1,_loc4_,param3,ml);
               }
               else
               {
                  while(param3 != null)
                  {
                     _loc5_ = param3.processNext;
                     param3.processNext = null;
                     param3 = _loc5_;
                  }
               }
               param3 = _loc6_;
            }
            _loc5_ = _loc6_;
         }
      }
      
      private function checkIntersectionNode(param1:BSPNode, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Dictionary) : Boolean
      {
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Face = null;
         var _loc20_:Wrapper = null;
         var _loc21_:Vertex = null;
         var _loc22_:Vertex = null;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc29_:Object3D = null;
         var _loc30_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc32_:Number = NaN;
         var _loc33_:Number = NaN;
         var _loc34_:Number = NaN;
         var _loc35_:Number = NaN;
         if(param1.objectList != null)
         {
            _loc29_ = param1.objectList;
            while(true)
            {
               if(_loc29_ != null)
               {
                  _loc29_.composeMatrix();
                  _loc29_.invertMatrix();
                  _loc30_ = _loc29_.ma * param2 + _loc29_.mb * param3 + _loc29_.mc * param4 + _loc29_.md;
                  _loc31_ = _loc29_.me * param2 + _loc29_.mf * param3 + _loc29_.mg * param4 + _loc29_.mh;
                  _loc32_ = _loc29_.mi * param2 + _loc29_.mj * param3 + _loc29_.mk * param4 + _loc29_.ml;
                  _loc33_ = _loc29_.ma * param5 + _loc29_.mb * param6 + _loc29_.mc * param7;
                  _loc34_ = _loc29_.me * param5 + _loc29_.mf * param6 + _loc29_.mg * param7;
                  _loc35_ = _loc29_.mi * param5 + _loc29_.mj * param6 + _loc29_.mk * param7;
                  if(_loc29_.checkIntersection(_loc30_,_loc31_,_loc32_,_loc33_,_loc34_,_loc35_,param8,param9))
                  {
                     break;
                  }
                  _loc29_ = _loc29_.next;
                  continue;
               }
            }
            return true;
         }
         _loc11_ = param1.normalX;
         _loc12_ = param1.normalY;
         _loc13_ = param1.normalZ;
         _loc14_ = _loc11_ * param2 + _loc12_ * param3 + _loc13_ * param4 - param1.offset;
         if(_loc14_ > 0)
         {
            _loc10_ = param5 * _loc11_ + param6 * _loc12_ + param7 * _loc13_;
            if(_loc10_ < 0)
            {
               _loc15_ = -_loc14_ / _loc10_;
               if(_loc15_ < param8)
               {
                  _loc16_ = param2 + param5 * _loc15_;
                  _loc17_ = param3 + param6 * _loc15_;
                  _loc18_ = param4 + param7 * _loc15_;
                  _loc19_ = param1.faceList;
                  while(_loc19_ != null)
                  {
                     _loc20_ = _loc19_.wrapper;
                     while(_loc20_ != null)
                     {
                        _loc21_ = _loc20_.vertex;
                        _loc22_ = _loc20_.next != null ? _loc20_.next.vertex : _loc19_.wrapper.vertex;
                        _loc23_ = _loc22_.x - _loc21_.x;
                        _loc24_ = _loc22_.y - _loc21_.y;
                        _loc25_ = _loc22_.z - _loc21_.z;
                        _loc26_ = _loc16_ - _loc21_.x;
                        _loc27_ = _loc17_ - _loc21_.y;
                        _loc28_ = _loc18_ - _loc21_.z;
                        if((_loc28_ * _loc24_ - _loc27_ * _loc25_) * _loc11_ + (_loc26_ * _loc25_ - _loc28_ * _loc23_) * _loc12_ + (_loc27_ * _loc23_ - _loc26_ * _loc24_) * _loc13_ < 0)
                        {
                           break;
                        }
                        _loc20_ = _loc20_.next;
                     }
                     if(_loc20_ == null)
                     {
                        return true;
                     }
                     _loc19_ = _loc19_.next;
                  }
                  if(param1.negative != null && boundCheckIntersection(param2,param3,param4,param5,param6,param7,param8,param1.negative.boundMinX,param1.negative.boundMinY,param1.negative.boundMinZ,param1.negative.boundMaxX,param1.negative.boundMaxY,param1.negative.boundMaxZ) && this.checkIntersectionNode(param1.negative,param2,param3,param4,param5,param6,param7,param8,param9))
                  {
                     return true;
                  }
               }
            }
            return param1.positive != null && boundCheckIntersection(param2,param3,param4,param5,param6,param7,param8,param1.positive.boundMinX,param1.positive.boundMinY,param1.positive.boundMinZ,param1.positive.boundMaxX,param1.positive.boundMaxY,param1.positive.boundMaxZ) && this.checkIntersectionNode(param1.positive,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         if(param1.negative != null && boundCheckIntersection(param2,param3,param4,param5,param6,param7,param8,param1.negative.boundMinX,param1.negative.boundMinY,param1.negative.boundMinZ,param1.negative.boundMaxX,param1.negative.boundMaxY,param1.negative.boundMaxZ) && this.checkIntersectionNode(param1.negative,param2,param3,param4,param5,param6,param7,param8,param9))
         {
            return true;
         }
         if(param1.positive != null)
         {
            _loc10_ = param5 * _loc11_ + param6 * _loc12_ + param7 * _loc13_;
            return _loc10_ > 0 && -_loc14_ / _loc10_ < param8 && boundCheckIntersection(param2,param3,param4,param5,param6,param7,param8,param1.positive.boundMinX,param1.positive.boundMinY,param1.positive.boundMinZ,param1.positive.boundMaxX,param1.positive.boundMaxY,param1.positive.boundMaxZ) && this.checkIntersectionNode(param1.positive,param2,param3,param4,param5,param6,param7,param8,param9);
         }
         return false;
      }
      
      override public function clone() : Object3D
      {
         var _loc1_:BSPContainer = new BSPContainer();
         _loc1_.clonePropertiesFrom(this);
         return _loc1_;
      }
      
      override alternativa3d function checkIntersection(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Dictionary) : Boolean
      {
         if(super.alternativa3d::checkIntersection(param1,param2,param3,param4,param5,param6,param7,param8))
         {
            return true;
         }
         if(this.root != null && boundCheckIntersection(param1,param2,param3,param4,param5,param6,param7,this.root.boundMinX,this.root.boundMinY,this.root.boundMinZ,this.root.boundMaxX,this.root.boundMaxY,this.root.boundMaxZ))
         {
            return this.checkIntersectionNode(this.root,param1,param2,param3,param4,param5,param6,param7,param8);
         }
         return false;
      }
      
      override alternativa3d function collectPlanes(param1:Vector3D, param2:Vector3D, param3:Vector3D, param4:Vector3D, param5:Vector3D, param6:Vector.<Face>, param7:Dictionary = null) : void
      {
         var _loc10_:Vertex = null;
         if(param7 != null && Boolean(param7[this]))
         {
            return;
         }
         var _loc8_:Vector3D = calculateSphere(param1,param2,param3,param4,param5);
         if(!boundIntersectSphere(_loc8_,boundMinX,boundMinY,boundMinZ,boundMaxX,boundMaxY,boundMaxZ))
         {
            return;
         }
         if(transformId > 500000000)
         {
            transformId = 0;
            _loc10_ = this.vertexList;
            while(_loc10_ != null)
            {
               _loc10_.transformId = 0;
               _loc10_ = _loc10_.next;
            }
         }
         ++transformId;
         var _loc9_:Object3D = childrenList;
         while(_loc9_ != null)
         {
            _loc9_.composeAndAppend(this);
            _loc9_.collectPlanes(param1,param2,param3,param4,param5,param6,param7);
            _loc9_ = _loc9_.next;
         }
         if(this.root != null && boundIntersectSphere(_loc8_,this.root.boundMinX,this.root.boundMinY,this.root.boundMinZ,this.root.boundMaxX,this.root.boundMaxY,this.root.boundMaxZ))
         {
            this.collectPlanesNode(this.root,_loc8_,param1,param2,param3,param4,param5,param6,param7);
         }
      }
      
      private function checkBounds(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean) : int
      {
         if(param11)
         {
            if(param1 >= 0)
            {
               if(param2 >= 0)
               {
                  if(param3 >= 0)
                  {
                     if(param5 * param1 + param6 * param2 + param7 * param3 >= param4 - threshold)
                     {
                        return 1;
                     }
                     if(param8 * param1 + param9 * param2 + param10 * param3 <= param4 + threshold)
                     {
                        return -1;
                     }
                  }
                  else
                  {
                     if(param5 * param1 + param6 * param2 + param10 * param3 >= param4 - threshold)
                     {
                        return 1;
                     }
                     if(param8 * param1 + param9 * param2 + param7 * param3 <= param4 + threshold)
                     {
                        return -1;
                     }
                  }
               }
               else if(param3 >= 0)
               {
                  if(param5 * param1 + param9 * param2 + param7 * param3 >= param4 - threshold)
                  {
                     return 1;
                  }
                  if(param8 * param1 + param6 * param2 + param10 * param3 <= param4 + threshold)
                  {
                     return -1;
                  }
               }
               else
               {
                  if(param5 * param1 + param9 * param2 + param10 * param3 >= param4 - threshold)
                  {
                     return 1;
                  }
                  if(param8 * param1 + param6 * param2 + param7 * param3 <= param4 + threshold)
                  {
                     return -1;
                  }
               }
            }
            else if(param2 >= 0)
            {
               if(param3 >= 0)
               {
                  if(param8 * param1 + param6 * param2 + param7 * param3 >= param4 - threshold)
                  {
                     return 1;
                  }
                  if(param5 * param1 + param9 * param2 + param10 * param3 <= param4 + threshold)
                  {
                     return -1;
                  }
               }
               else
               {
                  if(param8 * param1 + param6 * param2 + param10 * param3 >= param4 - threshold)
                  {
                     return 1;
                  }
                  if(param5 * param1 + param9 * param2 + param7 * param3 <= param4 + threshold)
                  {
                     return -1;
                  }
               }
            }
            else if(param3 >= 0)
            {
               if(param8 * param1 + param9 * param2 + param7 * param3 >= param4 - threshold)
               {
                  return 1;
               }
               if(param5 * param1 + param6 * param2 + param10 * param3 <= param4 + threshold)
               {
                  return -1;
               }
            }
            else
            {
               if(param8 * param1 + param9 * param2 + param10 * param3 >= param4 - threshold)
               {
                  return 1;
               }
               if(param5 * param1 + param6 * param2 + param7 * param3 <= param4 + threshold)
               {
                  return -1;
               }
            }
         }
         else if(param1 >= 0)
         {
            if(param2 >= 0)
            {
               if(param3 >= 0)
               {
                  if(param8 * param1 + param9 * param2 + param10 * param3 <= param4 + threshold)
                  {
                     return -1;
                  }
                  if(param5 * param1 + param6 * param2 + param7 * param3 >= param4 - threshold)
                  {
                     return 1;
                  }
               }
               else
               {
                  if(param8 * param1 + param9 * param2 + param7 * param3 <= param4 + threshold)
                  {
                     return -1;
                  }
                  if(param5 * param1 + param6 * param2 + param10 * param3 >= param4 - threshold)
                  {
                     return 1;
                  }
               }
            }
            else if(param3 >= 0)
            {
               if(param8 * param1 + param6 * param2 + param10 * param3 <= param4 + threshold)
               {
                  return -1;
               }
               if(param5 * param1 + param9 * param2 + param7 * param3 >= param4 - threshold)
               {
                  return 1;
               }
            }
            else
            {
               if(param8 * param1 + param6 * param2 + param7 * param3 <= param4 + threshold)
               {
                  return -1;
               }
               if(param5 * param1 + param9 * param2 + param10 * param3 >= param4 - threshold)
               {
                  return 1;
               }
            }
         }
         else if(param2 >= 0)
         {
            if(param3 >= 0)
            {
               if(param5 * param1 + param9 * param2 + param10 * param3 <= param4 + threshold)
               {
                  return -1;
               }
               if(param8 * param1 + param6 * param2 + param7 * param3 >= param4 - threshold)
               {
                  return 1;
               }
            }
            else
            {
               if(param5 * param1 + param9 * param2 + param7 * param3 <= param4 + threshold)
               {
                  return -1;
               }
               if(param8 * param1 + param6 * param2 + param10 * param3 >= param4 - threshold)
               {
                  return 1;
               }
            }
         }
         else if(param3 >= 0)
         {
            if(param5 * param1 + param6 * param2 + param10 * param3 <= param4 + threshold)
            {
               return -1;
            }
            if(param8 * param1 + param9 * param2 + param7 * param3 >= param4 - threshold)
            {
               return 1;
            }
         }
         else
         {
            if(param5 * param1 + param6 * param2 + param7 * param3 <= param4 + threshold)
            {
               return -1;
            }
            if(param8 * param1 + param9 * param2 + param10 * param3 >= param4 - threshold)
            {
               return 1;
            }
         }
         return 0;
      }
      
      override alternativa3d function draw(param1:Camera3D, param2:Canvas) : void
      {
         var _loc3_:Canvas = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Vertex = null;
         var _loc7_:VG = null;
         var _loc8_:VG = null;
         var _loc9_:Face = null;
         if(this.root != null)
         {
            if(transformId > 500000000)
            {
               transformId = 0;
               _loc6_ = this.vertexList;
               while(_loc6_ != null)
               {
                  _loc6_.transformId = 0;
                  _loc6_ = _loc6_.next;
               }
            }
            ++transformId;
            calculateInverseMatrix();
            this.calculateCameraPlanes(param1.nearClipping,param1.farClipping);
            _loc5_ = this.cullingInContainer(culling,this.root.boundMinX,this.root.boundMinY,this.root.boundMinZ,this.root.boundMaxX,this.root.boundMaxY,this.root.boundMaxZ);
            if(_loc5_ >= 0)
            {
               if(param1.debug && (_loc4_ = param1.checkInDebug(this)) > 0)
               {
                  _loc3_ = param2.getChildCanvas(true,false);
                  if(_loc4_ & Debug.NODES)
                  {
                     this.debugNode(this.root,_loc5_,param1,_loc3_,1);
                  }
                  if(_loc4_ & Debug.BOUNDS)
                  {
                     Debug.drawBounds(param1,_loc3_,this,boundMinX,boundMinY,boundMinZ,boundMaxX,boundMaxY,boundMaxZ);
                  }
               }
               _loc3_ = param2.getChildCanvas(false,true,this,alpha,blendMode,colorTransform,filters);
               _loc3_.numDraws = 0;
               _loc8_ = _loc7_ = collectVG(param1);
               while(_loc8_ != null)
               {
                  _loc8_.calculateAABB(ima,imb,imc,imd,ime,imf,img,imh,imi,imj,imk,iml);
                  _loc8_ = _loc8_.next;
               }
               _loc9_ = this.drawNode(this.root,_loc5_,param1,_loc3_,_loc7_);
               if(_loc9_ != null)
               {
                  this.drawFaces(param1,_loc3_,_loc9_);
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
            else
            {
               super.alternativa3d::draw(param1,param2);
            }
         }
         else
         {
            super.alternativa3d::draw(param1,param2);
         }
      }
      
      private function cloneNode(param1:BSPNode, param2:Object3DContainer) : BSPNode
      {
         var _loc4_:Face = null;
         var _loc6_:Object3D = null;
         var _loc7_:Object3D = null;
         var _loc8_:Object3D = null;
         var _loc9_:Face = null;
         var _loc10_:Wrapper = null;
         var _loc11_:Wrapper = null;
         var _loc12_:Wrapper = null;
         var _loc3_:BSPNode = new BSPNode();
         _loc3_.normalX = param1.normalX;
         _loc3_.normalY = param1.normalY;
         _loc3_.normalZ = param1.normalZ;
         _loc3_.offset = param1.offset;
         _loc3_.boundMinX = param1.boundMinX;
         _loc3_.boundMinY = param1.boundMinY;
         _loc3_.boundMinZ = param1.boundMinZ;
         _loc3_.boundMaxX = param1.boundMaxX;
         _loc3_.boundMaxY = param1.boundMaxY;
         _loc3_.boundMaxZ = param1.boundMaxZ;
         var _loc5_:Face = param1.faceList;
         while(_loc5_ != null)
         {
            _loc9_ = new Face();
            _loc9_.material = _loc5_.material;
            _loc9_.normalX = _loc5_.normalX;
            _loc9_.normalY = _loc5_.normalY;
            _loc9_.normalZ = _loc5_.normalZ;
            _loc9_.offset = _loc5_.offset;
            _loc10_ = null;
            _loc11_ = _loc5_.wrapper;
            while(_loc11_ != null)
            {
               _loc12_ = new Wrapper();
               _loc12_.vertex = _loc11_.vertex.value;
               if(_loc10_ != null)
               {
                  _loc10_.next = _loc12_;
               }
               else
               {
                  _loc9_.wrapper = _loc12_;
               }
               _loc10_ = _loc12_;
               _loc11_ = _loc11_.next;
            }
            if(_loc3_.faceList != null)
            {
               _loc4_.next = _loc9_;
            }
            else
            {
               _loc3_.faceList = _loc9_;
            }
            _loc4_ = _loc9_;
            _loc5_ = _loc5_.next;
         }
         _loc6_ = param1.objectList;
         _loc7_ = null;
         while(_loc6_ != null)
         {
            _loc8_ = _loc6_.clone();
            if(_loc3_.objectList != null)
            {
               _loc7_.next = _loc8_;
            }
            else
            {
               _loc3_.objectList = _loc8_;
            }
            _loc7_ = _loc8_;
            _loc8_.setParent(param2);
            _loc6_ = _loc6_.next;
         }
         _loc6_ = param1.boundList;
         _loc7_ = null;
         while(_loc6_ != null)
         {
            _loc8_ = _loc6_.clone();
            if(_loc3_.boundList != null)
            {
               _loc7_.next = _loc8_;
            }
            else
            {
               _loc3_.boundList = _loc8_;
            }
            _loc7_ = _loc8_;
            _loc6_ = _loc6_.next;
         }
         if(param1.negative != null)
         {
            _loc3_.negative = this.cloneNode(param1.negative,param2);
         }
         if(param1.positive != null)
         {
            _loc3_.positive = this.cloneNode(param1.positive,param2);
         }
         return _loc3_;
      }
   }
}

import alternativa.engine3d.core.Face;
import alternativa.engine3d.core.Object3D;

class BSPNode
{
   
   public var offset:Number;
   
   public var normalX:Number;
   
   public var normalY:Number;
   
   public var boundMaxY:Number;
   
   public var boundMaxZ:Number;
   
   public var boundMaxX:Number;
   
   public var normalZ:Number;
   
   public var faceList:Face;
   
   public var boundMinY:Number;
   
   public var boundMinX:Number;
   
   public var negative:BSPNode;
   
   public var positive:BSPNode;
   
   public var boundList:Object3D;
   
   public var objectList:Object3D;
   
   public var boundMinZ:Number;
   
   public function BSPNode()
   {
      super();
   }
}
