package Box2DAS.Collision.Shapes
{
   import Box2DAS.*;
   import Box2DAS.Collision.*;
   import Box2DAS.Common.*;
   import Box2DAS.Dynamics.*;
   import Box2DAS.Dynamics.Contacts.*;
   import Box2DAS.Dynamics.Joints.*;
   import cmodule.Box2D.*;
   import flash.display.*;
   
   public class b2LoopShape extends b2Shape
   {
      
      public var m_verticesSet:Boolean = false;
      
      public function b2LoopShape(param1:int = 0)
      {
         super();
         _ptr = param1 == 0 ? Number(lib.b2LoopShape_new()) : param1;
      }
      
      public function set m_vertices(param1:Vector.<V2>) : void
      {
         if(this.m_verticesSet)
         {
            this.destroyVertices();
         }
         this.m_verticesSet = true;
         this.m_verticesPtr = lib.b2Vec2Array_new(param1.length);
         this.m_count = param1.length;
         writeVertices(this.m_verticesPtr,param1);
      }
      
      public function get m_vertices() : Vector.<V2>
      {
         return readVertices(this.m_verticesPtr,this.m_count);
      }
      
      public function destroyVertices() : void
      {
         this.m_verticesSet = false;
         lib.b2Vec2Array_delete(this.m_verticesPtr);
      }
      
      override public function destroy() : void
      {
         this.destroyVertices();
         super.destroy();
      }
      
      override public function Draw(param1:Graphics, param2:XF, param3:Number = 1, param4:Object = null) : void
      {
         var _loc5_:Vector.<V2> = this.m_vertices;
         var _loc6_:Number = this.m_count;
         var _loc7_:V2 = param2.multiply(_loc5_[0]);
         param1.moveTo(_loc7_.x * param3,_loc7_.y * param3);
         if(Boolean(param4) && Boolean(param4.startPoint))
         {
            param1.drawCircle(_loc7_.x * param3,_loc7_.y * param3,3);
         }
         var _loc8_:int = 1;
         while(_loc8_ < _loc6_)
         {
            _loc7_ = param2.multiply(_loc5_[_loc8_]);
            param1.lineTo(_loc7_.x * param3,_loc7_.y * param3);
            _loc8_++;
         }
         _loc7_ = param2.multiply(_loc5_[0]);
         param1.lineTo(_loc7_.x * param3,_loc7_.y * param3);
      }
      
      public function get m_verticesPtr() : int
      {
         return mem._mr32(_ptr + 16);
      }
      
      public function set m_verticesPtr(param1:int) : void
      {
         mem._mw32(_ptr + 16,param1);
      }
      
      public function get m_count() : int
      {
         return mem._mr32(_ptr + 20);
      }
      
      public function set m_count(param1:int) : void
      {
         mem._mw32(_ptr + 20,param1);
      }
   }
}

