package alternativa.engine3d.containers
{
   import alternativa.engine3d.alternativa3d;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Canvas;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.core.Object3DContainer;
   
   use namespace alternativa3d;
   
   public class DistanceSortContainer extends Object3DContainer
   {
      
      private static const sortingStack:Vector.<int> = new Vector.<int>();
      
      public var sortByZ:Boolean = false;
      
      public function DistanceSortContainer()
      {
         super();
      }
      
      override alternativa3d function drawVisibleChildren(param1:Camera3D, param2:Canvas) : void
      {
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:Object3D = null;
         var _loc8_:* = 0;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:int = numVisibleChildren - 1;
         sortingStack[0] = _loc6_;
         sortingStack[1] = _loc7_;
         _loc8_ = 2;
         if(this.sortByZ)
         {
            while(_loc8_ > 0)
            {
               _loc7_ = sortingStack[--_loc8_];
               _loc6_ = sortingStack[--_loc8_];
               _loc4_ = _loc7_;
               _loc3_ = _loc6_;
               _loc5_ = visibleChildren[_loc7_ + _loc6_ >> 1];
               _loc10_ = _loc5_.ml;
               do
               {
                  while(true)
                  {
                     _loc9_ = (visibleChildren[_loc3_] as Object3D).ml;
                     if(_loc9_ <= _loc10_)
                     {
                        break;
                     }
                     _loc3_++;
                  }
                  while(true)
                  {
                     _loc11_ = (visibleChildren[_loc4_] as Object3D).ml;
                     if(_loc11_ >= _loc10_)
                     {
                        break;
                     }
                     _loc4_--;
                  }
                  if(_loc3_ <= _loc4_)
                  {
                     _loc5_ = visibleChildren[_loc3_];
                     var _loc14_:Number;
                     visibleChildren[_loc14_ = _loc3_++] = visibleChildren[_loc4_];
                     var _loc15_:Number;
                     visibleChildren[_loc15_ = _loc4_--] = _loc5_;
                  }
               }
               while(_loc3_ <= _loc4_);
               if(_loc6_ < _loc4_)
               {
                  sortingStack[_loc14_ = _loc8_++] = _loc6_;
                  sortingStack[_loc15_ = _loc8_++] = _loc4_;
               }
               if(_loc3_ < _loc7_)
               {
                  sortingStack[_loc14_ = _loc8_++] = _loc3_;
                  sortingStack[_loc15_ = _loc8_++] = _loc7_;
               }
            }
         }
         else
         {
            _loc3_ = 0;
            while(_loc3_ < numVisibleChildren)
            {
               _loc5_ = visibleChildren[_loc3_];
               _loc12_ = _loc5_.md * param1.viewSizeX / param1.focalLength;
               _loc13_ = _loc5_.mh * param1.viewSizeY / param1.focalLength;
               _loc5_.distance = _loc12_ * _loc12_ + _loc13_ * _loc13_ + _loc5_.ml * _loc5_.ml;
               _loc3_++;
            }
            while(_loc8_ > 0)
            {
               _loc7_ = sortingStack[--_loc8_];
               _loc6_ = sortingStack[--_loc8_];
               _loc4_ = _loc7_;
               _loc3_ = _loc6_;
               _loc5_ = visibleChildren[_loc7_ + _loc6_ >> 1];
               _loc10_ = _loc5_.distance;
               do
               {
                  while(true)
                  {
                     _loc9_ = (visibleChildren[_loc3_] as Object3D).distance;
                     if(_loc9_ <= _loc10_)
                     {
                        break;
                     }
                     _loc3_++;
                  }
                  while(true)
                  {
                     _loc11_ = (visibleChildren[_loc4_] as Object3D).distance;
                     if(_loc11_ >= _loc10_)
                     {
                        break;
                     }
                     _loc4_--;
                  }
                  if(_loc3_ <= _loc4_)
                  {
                     _loc5_ = visibleChildren[_loc3_];
                     visibleChildren[_loc14_ = _loc3_++] = visibleChildren[_loc4_];
                     visibleChildren[_loc15_ = _loc4_--] = _loc5_;
                  }
               }
               while(_loc3_ <= _loc4_);
               if(_loc6_ < _loc4_)
               {
                  sortingStack[_loc14_ = _loc8_++] = _loc6_;
                  sortingStack[_loc15_ = _loc8_++] = _loc4_;
               }
               if(_loc3_ < _loc7_)
               {
                  sortingStack[_loc14_ = _loc8_++] = _loc3_;
                  sortingStack[_loc15_ = _loc8_++] = _loc7_;
               }
            }
         }
         _loc3_ = int(numVisibleChildren - 1);
         while(_loc3_ >= 0)
         {
            _loc5_ = visibleChildren[_loc3_];
            _loc5_.draw(param1,param2);
            visibleChildren[_loc3_] = null;
            _loc3_--;
         }
      }
      
      override protected function clonePropertiesFrom(param1:Object3D) : void
      {
         super.clonePropertiesFrom(param1);
         var _loc2_:DistanceSortContainer = param1 as DistanceSortContainer;
         this.sortByZ = _loc2_.sortByZ;
      }
      
      override public function clone() : Object3D
      {
         var _loc1_:DistanceSortContainer = new DistanceSortContainer();
         _loc1_.clonePropertiesFrom(this);
         return _loc1_;
      }
   }
}

