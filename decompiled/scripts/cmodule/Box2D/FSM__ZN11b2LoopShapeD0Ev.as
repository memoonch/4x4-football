package cmodule.Box2D
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZN11b2LoopShapeD0Ev extends Machine
   {
      
      public static const intRegCount:int = 3;
      
      public static const NumberRegCount:int = 0;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public function FSM__ZN11b2LoopShapeD0Ev()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZN11b2LoopShapeD0Ev = null;
         _loc1_ = new FSM__ZN11b2LoopShapeD0Ev();
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
               this.i0 = cmodule.Box2D.__ZTV11b2LoopShape;
               this.i1 = li32(mstate.ebp + 8);
               this.i0 += 8;
               si32(this.i0,this.i1);
               this.i0 = li32(this.i1 + 16);
               mstate.esp -= 8;
               this.i2 = 0;
               si32(this.i0,mstate.esp);
               si32(this.i2,mstate.esp + 4);
               state = 1;
               mstate.esp -= 4;
               FSM_pubrealloc.start();
               return;
            case 1:
               this.i0 = mstate.eax;
               mstate.esp += 8;
               si32(this.i2,this.i1 + 16);
               this.i0 = cmodule.Box2D.__ZTV7b2Shape;
               si32(this.i2,this.i1 + 20);
               this.i0 += 8;
               si32(this.i0,this.i1);
               if(this.i1 != 0)
               {
                  this.i0 = 0;
                  mstate.esp -= 8;
                  si32(this.i1,mstate.esp);
                  si32(this.i0,mstate.esp + 4);
                  state = 2;
                  mstate.esp -= 4;
                  FSM_pubrealloc.start();
                  return;
               }
               break;
            case 2:
               this.i0 = mstate.eax;
               mstate.esp += 8;
               break;
            default:
               throw "Invalid state in __ZN11b2LoopShapeD0Ev";
         }
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp += 4;
         mstate.esp += 4;
         mstate.gworker = caller;
      }
   }
}

