package Box2DAS.Collision
{
   import Box2DAS.Common.b2Base;
   
   public class b2BroadPhase extends b2Base
   {
      
      public static const e_nullProxy:int = -1;
      
      public function b2BroadPhase(param1:int)
      {
         super();
         _ptr = param1;
      }
      
      public function GetProxyCount() : int
      {
         return this.m_proxyCount;
      }
      
      public function get m_proxyCount() : int
      {
         return mem._mr32(_ptr + 28);
      }
      
      public function set m_proxyCount(param1:int) : void
      {
         mem._mw32(_ptr + 28,param1);
      }
      
      public function get m_moveBuffer() : int
      {
         return mem._mr32(_ptr + 32);
      }
      
      public function set m_moveBuffer(param1:int) : void
      {
         mem._mw32(_ptr + 32,param1);
      }
      
      public function get m_moveCapacity() : int
      {
         return mem._mr32(_ptr + 36);
      }
      
      public function set m_moveCapacity(param1:int) : void
      {
         mem._mw32(_ptr + 36,param1);
      }
      
      public function get m_moveCount() : int
      {
         return mem._mr32(_ptr + 40);
      }
      
      public function set m_moveCount(param1:int) : void
      {
         mem._mw32(_ptr + 40,param1);
      }
      
      public function get m_pairCapacity() : int
      {
         return mem._mr32(_ptr + 48);
      }
      
      public function set m_pairCapacity(param1:int) : void
      {
         mem._mw32(_ptr + 48,param1);
      }
      
      public function get m_pairCount() : int
      {
         return mem._mr32(_ptr + 52);
      }
      
      public function set m_pairCount(param1:int) : void
      {
         mem._mw32(_ptr + 52,param1);
      }
      
      public function get m_queryProxyId() : int
      {
         return mem._mr32(_ptr + 56);
      }
      
      public function set m_queryProxyId(param1:int) : void
      {
         mem._mw32(_ptr + 56,param1);
      }
   }
}

