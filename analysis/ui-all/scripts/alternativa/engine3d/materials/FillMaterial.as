package alternativa.engine3d.materials
{
   import alternativa.engine3d.alternativa3d;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Canvas;
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.core.Wrapper;
   
   use namespace alternativa3d;
   
   public class FillMaterial extends Material
   {
      
      public var lineThickness:Number;
      
      public var color:int;
      
      public var alpha:Number;
      
      public var lineColor:int;
      
      public function FillMaterial(param1:int = 8355711, param2:Number = 1, param3:Number = -1, param4:int = 16777215)
      {
         super();
         this.color = param1;
         this.alpha = param2;
         this.lineThickness = param3;
         this.lineColor = param4;
      }
      
      override alternativa3d function draw(param1:Camera3D, param2:Canvas, param3:Face, param4:Number) : void
      {
         var _loc7_:Face = null;
         var _loc9_:Wrapper = null;
         var _loc10_:Vertex = null;
         var _loc11_:int = 0;
         var _loc5_:Number = param1.viewSizeX;
         var _loc6_:Number = param1.viewSizeY;
         if(this.lineThickness >= 0)
         {
            param2.gfx.lineStyle(this.lineThickness,this.lineColor);
         }
         var _loc8_:Face = param3;
         while(_loc8_ != null)
         {
            _loc7_ = _loc8_.processNext;
            _loc8_.processNext = null;
            _loc9_ = _loc8_.wrapper;
            _loc10_ = _loc9_.vertex;
            param2.gfx.beginFill(this.color,this.alpha);
            param2.gfx.moveTo(_loc10_.cameraX * _loc5_ / _loc10_.cameraZ,_loc10_.cameraY * _loc6_ / _loc10_.cameraZ);
            _loc11_ = -1;
            _loc9_ = _loc9_.next;
            while(_loc9_ != null)
            {
               _loc10_ = _loc9_.vertex;
               param2.gfx.lineTo(_loc10_.cameraX * _loc5_ / _loc10_.cameraZ,_loc10_.cameraY * _loc6_ / _loc10_.cameraZ);
               _loc11_++;
               _loc9_ = _loc9_.next;
            }
            _loc10_ = _loc8_.wrapper.vertex;
            param2.gfx.lineTo(_loc10_.cameraX * _loc5_ / _loc10_.cameraZ,_loc10_.cameraY * _loc6_ / _loc10_.cameraZ);
            param1.numTriangles += _loc11_;
            ++param1.numPolygons;
            _loc8_ = _loc7_;
         }
         if(this.lineThickness >= 0)
         {
            param2.gfx.lineStyle();
         }
         ++param1.numDraws;
      }
      
      override alternativa3d function drawViewAligned(param1:Camera3D, param2:Canvas, param3:Face, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number) : void
      {
         var _loc13_:Face = null;
         var _loc15_:Wrapper = null;
         var _loc16_:Vertex = null;
         var _loc17_:int = 0;
         var _loc11_:Number = param1.viewSizeX;
         var _loc12_:Number = param1.viewSizeY;
         if(this.lineThickness >= 0)
         {
            param2.gfx.lineStyle(this.lineThickness,this.lineColor);
         }
         var _loc14_:Face = param3;
         while(_loc14_ != null)
         {
            _loc13_ = _loc14_.processNext;
            _loc14_.processNext = null;
            _loc15_ = _loc14_.wrapper;
            _loc16_ = _loc15_.vertex;
            param2.gfx.beginFill(this.color,this.alpha);
            param2.gfx.moveTo(_loc16_.cameraX * _loc11_ / param4,_loc16_.cameraY * _loc12_ / param4);
            _loc17_ = -1;
            _loc15_ = _loc15_.next;
            while(_loc15_ != null)
            {
               _loc16_ = _loc15_.vertex;
               param2.gfx.lineTo(_loc16_.cameraX * _loc11_ / param4,_loc16_.cameraY * _loc12_ / param4);
               _loc17_++;
               _loc15_ = _loc15_.next;
            }
            _loc16_ = _loc14_.wrapper.vertex;
            param2.gfx.lineTo(_loc16_.cameraX * _loc11_ / param4,_loc16_.cameraY * _loc12_ / param4);
            param1.numTriangles += _loc17_;
            ++param1.numPolygons;
            _loc14_ = _loc13_;
         }
         if(this.lineThickness >= 0)
         {
            param2.gfx.lineStyle();
         }
         ++param1.numDraws;
      }
      
      override public function clone() : Material
      {
         var _loc1_:FillMaterial = new FillMaterial(this.color,this.alpha,this.lineThickness,this.lineColor);
         _loc1_.clonePropertiesFrom(this);
         return _loc1_;
      }
   }
}

