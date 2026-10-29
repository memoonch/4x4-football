package cmodule.Box2D
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZN15b2RevoluteJointD1Ev extends Machine
   {
      
      public static const intRegCount:int = 2;
      
      public static const NumberRegCount:int = 0;
      
      public var i0:int;
      
      public var i1:int;
      
      public function FSM__ZN15b2RevoluteJointD1Ev()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZN15b2RevoluteJointD1Ev = null;
         _loc1_ = new FSM__ZN15b2RevoluteJointD1Ev();
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
               this.i0 = cmodule.Box2D.__ZTV7b2Joint;
               this.i1 = li32(mstate.ebp + 8);
               this.i0 += 8;
               si32(this.i0,this.i1);
               mstate.esp = mstate.ebp;
               mstate.ebp = li32(mstate.esp);
               mstate.esp += 4;
               mstate.esp += 4;
               mstate.gworker = caller;
               return;
            default:
               throw "Invalid state in __ZN15b2RevoluteJointD1Ev";
         }
      }
   }
}

