package Box2DAS.Dynamics.Joints
{
   import Box2DAS.Common.b2Base;
   import Box2DAS.Dynamics.b2Body;
   
   public class b2JointEdge extends b2Base
   {
      
      public function b2JointEdge(param1:int)
      {
         super();
         _ptr = param1;
      }
      
      public function get other() : b2Body
      {
         return deref(mem._mr32(mem._mr32(_ptr + 0) + 152)) as b2Body;
      }
      
      public function get joint() : b2Joint
      {
         return deref(mem._mr32(mem._mr32(_ptr + 4) + 60)) as b2Joint;
      }
      
      public function get prev() : b2JointEdge
      {
         var _loc1_:int = mem._mr32(_ptr + 8);
         return _loc1_ ? new b2JointEdge(_loc1_) : null;
      }
      
      public function get next() : b2JointEdge
      {
         var _loc1_:int = mem._mr32(_ptr + 12);
         return _loc1_ ? new b2JointEdge(_loc1_) : null;
      }
   }
}

