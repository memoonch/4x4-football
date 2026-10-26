package cmodule.Box2D
{
   import avm2.intrinsics.memory.si32;
   
   public final class FSM___cxa_pure_virtual extends Machine
   {
      
      public static const intRegCount:int = 3;
      
      public static const NumberRegCount:int = 0;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public function FSM___cxa_pure_virtual()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM___cxa_pure_virtual = null;
         _loc1_ = new FSM___cxa_pure_virtual();
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
               this.i1 = cmodule.Box2D.__2E_str99;
               this.i2 = 27;
               this.i0 = 2;
               state = 1;
               break;
            case 1:
               break;
            default:
               throw "Invalid state in ___cxa_pure_virtual";
         }
         this.i0 = mstate.system.write(this.i0,this.i1,this.i2);
         state = 2;
         mstate.esp -= 4;
         FSM__ZSt9terminatev.start();
      }
   }
}

