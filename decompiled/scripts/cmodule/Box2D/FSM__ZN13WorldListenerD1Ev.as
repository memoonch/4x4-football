package cmodule.Box2D
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZN13WorldListenerD1Ev extends Machine
   {
      
      public static const intRegCount:int = 3;
      
      public static const NumberRegCount:int = 0;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public function FSM__ZN13WorldListenerD1Ev()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZN13WorldListenerD1Ev = null;
         _loc1_ = new FSM__ZN13WorldListenerD1Ev();
         cmodule.Box2D.gstate.gworker = _loc1_;
      }
      
      final override public function work() : void
      {
         switch(state)
         {
            case 0:
               mstate.esp -= 4;
               si32(mstate.ebp,mstate.esp);
               mstate.ebp = mstate.esp;
               mstate.esp -= 0;
               this.i0 = cmodule.Box2D.__ZTV21b2DestructionListener;
               this.i1 = cmodule.Box2D.__ZTV17b2ContactListener;
               this.i2 = li32(mstate.ebp + 8);
               this.i0 += 8;
               si32(this.i0,this.i2 + 4);
               this.i0 = this.i1 + 8;
               si32(this.i0,this.i2);
               mstate.esp = mstate.ebp;
               mstate.ebp = li32(mstate.esp);
               mstate.esp += 4;
               mstate.esp += 4;
               mstate.gworker = caller;
               return;
            default:
               throw "Invalid state in __ZN13WorldListenerD1Ev";
         }
      }
   }
}

