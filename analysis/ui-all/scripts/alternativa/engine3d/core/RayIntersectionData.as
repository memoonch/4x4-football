package alternativa.engine3d.core
{
   import flash.geom.Point;
   import flash.geom.Vector3D;
   
   public class RayIntersectionData
   {
      
      public var uv:Point;
      
      public var time:Number;
      
      public var point:Vector3D;
      
      public var face:Face;
      
      public var object:Object3D;
      
      public function RayIntersectionData()
      {
         super();
      }
      
      public function toString() : String
      {
         return "[RayIntersectionData " + this.object + ", " + this.face + ", " + this.point + ", " + this.uv + ", " + this.time + "]";
      }
   }
}

