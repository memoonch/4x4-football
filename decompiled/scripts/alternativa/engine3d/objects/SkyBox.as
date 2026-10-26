package alternativa.engine3d.objects
{
   import alternativa.engine3d.alternativa3d;
   import alternativa.engine3d.core.Camera3D;
   import alternativa.engine3d.core.Canvas;
   import alternativa.engine3d.core.Clipping;
   import alternativa.engine3d.core.Face;
   import alternativa.engine3d.core.Object3D;
   import alternativa.engine3d.core.Sorting;
   import alternativa.engine3d.core.VG;
   import alternativa.engine3d.core.Vertex;
   import alternativa.engine3d.core.Wrapper;
   import alternativa.engine3d.materials.Material;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   use namespace alternativa3d;
   
   public class SkyBox extends Mesh
   {
      
      public static const LEFT:String = "left";
      
      public static const RIGHT:String = "right";
      
      public static const BACK:String = "back";
      
      public static const FRONT:String = "front";
      
      public static const BOTTOM:String = "bottom";
      
      public static const TOP:String = "top";
      
      private var rightFace:Face;
      
      private var frontFace:Face;
      
      private var bottomFace:Face;
      
      private var backFace:Face;
      
      private var topFace:Face;
      
      private var leftFace:Face;
      
      public function SkyBox(param1:Number, param2:Material = null, param3:Material = null, param4:Material = null, param5:Material = null, param6:Material = null, param7:Material = null, param8:Number = 0)
      {
         super();
         param1 *= 0.5;
         var _loc9_:Vertex = this.createVertex(-param1,-param1,param1,param8,param8);
         var _loc10_:Vertex = this.createVertex(-param1,-param1,-param1,param8,1 - param8);
         var _loc11_:Vertex = this.createVertex(-param1,param1,-param1,1 - param8,1 - param8);
         var _loc12_:Vertex = this.createVertex(-param1,param1,param1,1 - param8,param8);
         this.leftFace = this.createQuad(_loc9_,_loc10_,_loc11_,_loc12_,param2);
         _loc9_ = this.createVertex(param1,param1,param1,param8,param8);
         _loc10_ = this.createVertex(param1,param1,-param1,param8,1 - param8);
         _loc11_ = this.createVertex(param1,-param1,-param1,1 - param8,1 - param8);
         _loc12_ = this.createVertex(param1,-param1,param1,1 - param8,param8);
         this.rightFace = this.createQuad(_loc9_,_loc10_,_loc11_,_loc12_,param3);
         _loc9_ = this.createVertex(param1,-param1,param1,param8,param8);
         _loc10_ = this.createVertex(param1,-param1,-param1,param8,1 - param8);
         _loc11_ = this.createVertex(-param1,-param1,-param1,1 - param8,1 - param8);
         _loc12_ = this.createVertex(-param1,-param1,param1,1 - param8,param8);
         this.backFace = this.createQuad(_loc9_,_loc10_,_loc11_,_loc12_,param4);
         _loc9_ = this.createVertex(-param1,param1,param1,param8,param8);
         _loc10_ = this.createVertex(-param1,param1,-param1,param8,1 - param8);
         _loc11_ = this.createVertex(param1,param1,-param1,1 - param8,1 - param8);
         _loc12_ = this.createVertex(param1,param1,param1,1 - param8,param8);
         this.frontFace = this.createQuad(_loc9_,_loc10_,_loc11_,_loc12_,param5);
         _loc9_ = this.createVertex(-param1,param1,-param1,param8,param8);
         _loc10_ = this.createVertex(-param1,-param1,-param1,param8,1 - param8);
         _loc11_ = this.createVertex(param1,-param1,-param1,1 - param8,1 - param8);
         _loc12_ = this.createVertex(param1,param1,-param1,1 - param8,param8);
         this.bottomFace = this.createQuad(_loc9_,_loc10_,_loc11_,_loc12_,param6);
         _loc9_ = this.createVertex(-param1,-param1,param1,param8,param8);
         _loc10_ = this.createVertex(-param1,param1,param1,param8,1 - param8);
         _loc11_ = this.createVertex(param1,param1,param1,1 - param8,1 - param8);
         _loc12_ = this.createVertex(param1,-param1,param1,1 - param8,param8);
         this.topFace = this.createQuad(_loc9_,_loc10_,_loc11_,_loc12_,param7);
         calculateBounds();
         calculateFacesNormals(true);
         clipping = Clipping.FACE_CLIPPING;
         sorting = Sorting.NONE;
      }
      
      override protected function clonePropertiesFrom(param1:Object3D) : void
      {
         super.clonePropertiesFrom(param1);
         var _loc2_:SkyBox = param1 as SkyBox;
         var _loc3_:Face = _loc2_.faceList;
         var _loc4_:Face = faceList;
         while(_loc3_ != null)
         {
            if(_loc3_ == _loc2_.leftFace)
            {
               this.leftFace = _loc4_;
            }
            else if(_loc3_ == _loc2_.rightFace)
            {
               this.rightFace = _loc4_;
            }
            else if(_loc3_ == _loc2_.backFace)
            {
               this.backFace = _loc4_;
            }
            else if(_loc3_ == _loc2_.frontFace)
            {
               this.frontFace = _loc4_;
            }
            else if(_loc3_ == _loc2_.bottomFace)
            {
               this.bottomFace = _loc4_;
            }
            else if(_loc3_ == _loc2_.topFace)
            {
               this.topFace = _loc4_;
            }
            _loc3_ = _loc3_.next;
            _loc4_ = _loc4_.next;
         }
      }
      
      private function createQuad(param1:Vertex, param2:Vertex, param3:Vertex, param4:Vertex, param5:Material) : Face
      {
         var _loc6_:Face = new Face();
         _loc6_.material = param5;
         _loc6_.next = faceList;
         faceList = _loc6_;
         _loc6_.wrapper = new Wrapper();
         _loc6_.wrapper.vertex = param1;
         _loc6_.wrapper.next = new Wrapper();
         _loc6_.wrapper.next.vertex = param2;
         _loc6_.wrapper.next.next = new Wrapper();
         _loc6_.wrapper.next.next.vertex = param3;
         _loc6_.wrapper.next.next.next = new Wrapper();
         _loc6_.wrapper.next.next.next.vertex = param4;
         return _loc6_;
      }
      
      private function createVertex(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : Vertex
      {
         var _loc6_:Vertex = new Vertex();
         _loc6_.next = vertexList;
         vertexList = _loc6_;
         _loc6_.x = param1;
         _loc6_.y = param2;
         _loc6_.z = param3;
         _loc6_.u = param4;
         _loc6_.v = param5;
         return _loc6_;
      }
      
      public function getSide(param1:String) : Face
      {
         switch(param1)
         {
            case LEFT:
               return this.leftFace;
            case RIGHT:
               return this.rightFace;
            case BACK:
               return this.backFace;
            case FRONT:
               return this.frontFace;
            case BOTTOM:
               return this.bottomFace;
            case TOP:
               return this.topFace;
            default:
               return null;
         }
      }
      
      override alternativa3d function getVG(param1:Camera3D) : VG
      {
         culling &= ~3;
         return super.alternativa3d::getVG(param1);
      }
      
      public function transformUV(param1:String, param2:Matrix) : void
      {
         var _loc4_:Wrapper = null;
         var _loc5_:Vertex = null;
         var _loc6_:Point = null;
         var _loc3_:Face = this.getSide(param1);
         if(_loc3_ != null)
         {
            _loc4_ = _loc3_.wrapper;
            while(_loc4_ != null)
            {
               _loc5_ = _loc4_.vertex;
               _loc6_ = param2.transformPoint(new Point(_loc5_.u,_loc5_.v));
               _loc5_.u = _loc6_.x;
               _loc5_.v = _loc6_.y;
               _loc4_ = _loc4_.next;
            }
         }
      }
      
      override alternativa3d function draw(param1:Camera3D, param2:Canvas) : void
      {
         culling &= ~3;
         super.alternativa3d::draw(param1,param2);
      }
      
      override public function clone() : Object3D
      {
         var _loc1_:SkyBox = new SkyBox(0);
         _loc1_.clonePropertiesFrom(this);
         return _loc1_;
      }
   }
}

