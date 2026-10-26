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
   
   public class b2EdgeShape extends b2Shape
   {
      
      public var m_vertex0:b2Vec2;
      
      public var m_vertex1:b2Vec2;
      
      public var m_vertex2:b2Vec2;
      
      public var m_vertex3:b2Vec2;
      
      public function b2EdgeShape(param1:int = 0)
      {
         super();
         _ptr = param1 == 0 ? Number(lib.b2EdgeShape_new()) : param1;
         this.m_vertex0 = new b2Vec2(_ptr + 32);
         this.m_vertex1 = new b2Vec2(_ptr + 16);
         this.m_vertex2 = new b2Vec2(_ptr + 24);
         this.m_vertex3 = new b2Vec2(_ptr + 40);
      }
      
      override public function Draw(param1:Graphics, param2:XF, param3:Number = 1, param4:Object = null) : void
      {
         var _loc5_:V2 = param2.multiply(this.m_vertex1.v2);
         var _loc6_:V2 = param2.multiply(this.m_vertex2.v2);
         param1.moveTo(_loc5_.x * param3,_loc5_.y * param3);
         param1.lineTo(_loc6_.x * param3,_loc6_.y * param3);
      }
      
      public function get m_hasVertex0() : Boolean
      {
         return mem._mru8(_ptr + 48) == 1;
      }
      
      public function set m_hasVertex0(param1:Boolean) : void
      {
         mem._mw8(_ptr + 48,param1 ? 1 : 0);
      }
      
      public function get m_hasVertex3() : Boolean
      {
         return mem._mru8(_ptr + 49) == 1;
      }
      
      public function set m_hasVertex3(param1:Boolean) : void
      {
         mem._mw8(_ptr + 49,param1 ? 1 : 0);
      }
   }
}

