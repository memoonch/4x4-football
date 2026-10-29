package alternativa.engine3d.core
{
   import alternativa.engine3d.alternativa3d;
   
   use namespace alternativa3d;
   
   public class Debug
   {
      
      public static const BOUNDS:int = 8;
      
      public static const EDGES:int = 16;
      
      public static const NODES:int = 128;
      
      public static const LIGHTS:int = 256;
      
      public static const BONES:int = 512;
      
      private static const boundVertexList:Vertex = Vertex.createList(8);
      
      private static const nodeVertexList:Vertex = Vertex.createList(4);
      
      public function Debug()
      {
         super();
      }
      
      alternativa3d static function drawEdges(param1:Camera3D, param2:Canvas, param3:Face, param4:int) : void
      {
         var _loc7_:Number = NaN;
         var _loc9_:Wrapper = null;
         var _loc10_:Vertex = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc5_:Number = param1.viewSizeX;
         var _loc6_:Number = param1.viewSizeY;
         param2.gfx.lineStyle(0,param4);
         var _loc8_:Face = param3;
         while(_loc8_ != null)
         {
            _loc9_ = _loc8_.wrapper;
            _loc10_ = _loc9_.vertex;
            _loc7_ = 1 / _loc10_.cameraZ;
            _loc11_ = _loc10_.cameraX * _loc5_ * _loc7_;
            _loc12_ = _loc10_.cameraY * _loc6_ * _loc7_;
            param2.gfx.moveTo(_loc11_,_loc12_);
            _loc9_ = _loc9_.next;
            while(_loc9_ != null)
            {
               _loc10_ = _loc9_.vertex;
               _loc7_ = 1 / _loc10_.cameraZ;
               param2.gfx.lineTo(_loc10_.cameraX * _loc5_ * _loc7_,_loc10_.cameraY * _loc6_ * _loc7_);
               _loc9_ = _loc9_.next;
            }
            param2.gfx.lineTo(_loc11_,_loc12_);
            _loc8_ = _loc8_.processNext;
         }
      }
      
      alternativa3d static function drawBone(param1:Canvas, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:int) : void
      {
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc8_:Number = param4 - param2;
         var _loc9_:Number = param5 - param3;
         var _loc10_:Number = Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_);
         if(_loc10_ > 0.001)
         {
            _loc8_ /= _loc10_;
            _loc9_ /= _loc10_;
            _loc11_ = _loc9_ * param6;
            _loc12_ = -_loc8_ * param6;
            _loc13_ = -_loc9_ * param6;
            _loc14_ = _loc8_ * param6;
            if(_loc10_ > param6 * 2)
            {
               _loc10_ = param6;
            }
            else
            {
               _loc10_ /= 2;
            }
            param1.gfx.lineStyle(1,param7);
            param1.gfx.beginFill(param7,0.6);
            param1.gfx.moveTo(param2,param3);
            param1.gfx.lineTo(param2 + _loc8_ * _loc10_ + _loc11_,param3 + _loc9_ * _loc10_ + _loc12_);
            param1.gfx.lineTo(param4,param5);
            param1.gfx.lineTo(param2 + _loc8_ * _loc10_ + _loc13_,param3 + _loc9_ * _loc10_ + _loc14_);
            param1.gfx.lineTo(param2,param3);
         }
      }
      
      alternativa3d static function drawBounds(param1:Camera3D, param2:Canvas, param3:Object3D, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:int = -1, param11:Number = 1) : void
      {
         var _loc12_:Vertex = null;
         var _loc23_:Number = NaN;
         var _loc13_:Vertex = boundVertexList;
         _loc13_.x = param4;
         _loc13_.y = param5;
         _loc13_.z = param6;
         var _loc14_:Vertex = _loc13_.next;
         _loc14_.x = param7;
         _loc14_.y = param5;
         _loc14_.z = param6;
         var _loc15_:Vertex = _loc14_.next;
         _loc15_.x = param4;
         _loc15_.y = param8;
         _loc15_.z = param6;
         var _loc16_:Vertex = _loc15_.next;
         _loc16_.x = param7;
         _loc16_.y = param8;
         _loc16_.z = param6;
         var _loc17_:Vertex = _loc16_.next;
         _loc17_.x = param4;
         _loc17_.y = param5;
         _loc17_.z = param9;
         var _loc18_:Vertex = _loc17_.next;
         _loc18_.x = param7;
         _loc18_.y = param5;
         _loc18_.z = param9;
         var _loc19_:Vertex = _loc18_.next;
         _loc19_.x = param4;
         _loc19_.y = param8;
         _loc19_.z = param9;
         var _loc20_:Vertex = _loc19_.next;
         _loc20_.x = param7;
         _loc20_.y = param8;
         _loc20_.z = param9;
         _loc12_ = _loc13_;
         while(_loc12_ != null)
         {
            _loc12_.cameraX = param3.ma * _loc12_.x + param3.mb * _loc12_.y + param3.mc * _loc12_.z + param3.md;
            _loc12_.cameraY = param3.me * _loc12_.x + param3.mf * _loc12_.y + param3.mg * _loc12_.z + param3.mh;
            _loc12_.cameraZ = param3.mi * _loc12_.x + param3.mj * _loc12_.y + param3.mk * _loc12_.z + param3.ml;
            if(_loc12_.cameraZ <= 0)
            {
               return;
            }
            _loc12_ = _loc12_.next;
         }
         var _loc21_:Number = param1.viewSizeX;
         var _loc22_:Number = param1.viewSizeY;
         _loc12_ = _loc13_;
         while(_loc12_ != null)
         {
            _loc23_ = 1 / _loc12_.cameraZ;
            _loc12_.cameraX = _loc12_.cameraX * _loc21_ * _loc23_;
            _loc12_.cameraY = _loc12_.cameraY * _loc22_ * _loc23_;
            _loc12_ = _loc12_.next;
         }
         param2.gfx.lineStyle(0,param10 < 0 ? (param3.culling > 0 ? 16776960 : 65280) : uint(param10),param11);
         param2.gfx.moveTo(_loc13_.cameraX,_loc13_.cameraY);
         param2.gfx.lineTo(_loc14_.cameraX,_loc14_.cameraY);
         param2.gfx.lineTo(_loc16_.cameraX,_loc16_.cameraY);
         param2.gfx.lineTo(_loc15_.cameraX,_loc15_.cameraY);
         param2.gfx.lineTo(_loc13_.cameraX,_loc13_.cameraY);
         param2.gfx.moveTo(_loc17_.cameraX,_loc17_.cameraY);
         param2.gfx.lineTo(_loc18_.cameraX,_loc18_.cameraY);
         param2.gfx.lineTo(_loc20_.cameraX,_loc20_.cameraY);
         param2.gfx.lineTo(_loc19_.cameraX,_loc19_.cameraY);
         param2.gfx.lineTo(_loc17_.cameraX,_loc17_.cameraY);
         param2.gfx.moveTo(_loc13_.cameraX,_loc13_.cameraY);
         param2.gfx.lineTo(_loc17_.cameraX,_loc17_.cameraY);
         param2.gfx.moveTo(_loc14_.cameraX,_loc14_.cameraY);
         param2.gfx.lineTo(_loc18_.cameraX,_loc18_.cameraY);
         param2.gfx.moveTo(_loc16_.cameraX,_loc16_.cameraY);
         param2.gfx.lineTo(_loc20_.cameraX,_loc20_.cameraY);
         param2.gfx.moveTo(_loc15_.cameraX,_loc15_.cameraY);
         param2.gfx.lineTo(_loc19_.cameraX,_loc19_.cameraY);
      }
      
      alternativa3d static function drawKDNode(param1:Camera3D, param2:Canvas, param3:Object3D, param4:int, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number, param12:Number) : void
      {
         var _loc13_:Vertex = null;
         var _loc20_:Number = NaN;
         var _loc14_:Vertex = nodeVertexList;
         var _loc15_:Vertex = _loc14_.next;
         var _loc16_:Vertex = _loc15_.next;
         var _loc17_:Vertex = _loc16_.next;
         if(param4 == 0)
         {
            _loc14_.x = param5;
            _loc14_.y = param7;
            _loc14_.z = param11;
            _loc15_.x = param5;
            _loc15_.y = param10;
            _loc15_.z = param11;
            _loc16_.x = param5;
            _loc16_.y = param10;
            _loc16_.z = param8;
            _loc17_.x = param5;
            _loc17_.y = param7;
            _loc17_.z = param8;
         }
         else if(param4 == 1)
         {
            _loc14_.x = param9;
            _loc14_.y = param5;
            _loc14_.z = param11;
            _loc15_.x = param6;
            _loc15_.y = param5;
            _loc15_.z = param11;
            _loc16_.x = param6;
            _loc16_.y = param5;
            _loc16_.z = param8;
            _loc17_.x = param9;
            _loc17_.y = param5;
            _loc17_.z = param8;
         }
         else
         {
            _loc14_.x = param6;
            _loc14_.y = param7;
            _loc14_.z = param5;
            _loc15_.x = param9;
            _loc15_.y = param7;
            _loc15_.z = param5;
            _loc16_.x = param9;
            _loc16_.y = param10;
            _loc16_.z = param5;
            _loc17_.x = param6;
            _loc17_.y = param10;
            _loc17_.z = param5;
         }
         _loc13_ = _loc14_;
         while(_loc13_ != null)
         {
            _loc13_.cameraX = param3.ma * _loc13_.x + param3.mb * _loc13_.y + param3.mc * _loc13_.z + param3.md;
            _loc13_.cameraY = param3.me * _loc13_.x + param3.mf * _loc13_.y + param3.mg * _loc13_.z + param3.mh;
            _loc13_.cameraZ = param3.mi * _loc13_.x + param3.mj * _loc13_.y + param3.mk * _loc13_.z + param3.ml;
            if(_loc13_.cameraZ <= 0)
            {
               return;
            }
            _loc13_ = _loc13_.next;
         }
         var _loc18_:Number = param1.viewSizeX;
         var _loc19_:Number = param1.viewSizeY;
         _loc13_ = _loc14_;
         while(_loc13_ != null)
         {
            _loc20_ = 1 / _loc13_.cameraZ;
            _loc13_.cameraX = _loc13_.cameraX * _loc18_ * _loc20_;
            _loc13_.cameraY = _loc13_.cameraY * _loc19_ * _loc20_;
            _loc13_ = _loc13_.next;
         }
         param2.gfx.lineStyle(0,param4 == 0 ? 16711680 : (param4 == 1 ? 65280 : 255),param12);
         param2.gfx.moveTo(_loc14_.cameraX,_loc14_.cameraY);
         param2.gfx.lineTo(_loc15_.cameraX,_loc15_.cameraY);
         param2.gfx.lineTo(_loc16_.cameraX,_loc16_.cameraY);
         param2.gfx.lineTo(_loc17_.cameraX,_loc17_.cameraY);
         param2.gfx.lineTo(_loc14_.cameraX,_loc14_.cameraY);
      }
   }
}

