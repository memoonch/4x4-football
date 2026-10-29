package cmodule.Box2D
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public final class FSM___cxa_get_globals extends Machine
   {
      
      public static const intRegCount:int = 3;
      
      public static const NumberRegCount:int = 0;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public function FSM___cxa_get_globals()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM___cxa_get_globals = null;
         _loc1_ = new FSM___cxa_get_globals();
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
               this.i0 = li8(cmodule.Box2D.__ZL14use_thread_key_2E_b);
               this.i0 = this.i0 != 0 ? 0 : -1;
               if(this.i0 != 0)
               {
                  if(this.i0 > -1)
                  {
                     this.i0 = 8;
                     mstate.esp -= 8;
                     this.i1 = 0;
                     si32(this.i1,mstate.esp);
                     si32(this.i0,mstate.esp + 4);
                     state = 1;
                     mstate.esp -= 4;
                     FSM_pubrealloc.start();
                     return;
                  }
                  this.i0 = 1;
                  si8(this.i0,cmodule.Box2D.__ZL14use_thread_key_2E_b);
               }
            case 2:
               this.i0 = cmodule.Box2D.__ZL14globals_static;
               mstate.eax = this.i0;
               break;
            case 1:
               this.i0 = mstate.eax;
               mstate.esp += 8;
               this.i1 = this.i0;
               if(this.i0 != 0)
               {
                  this.i2 = 0;
                  si32(this.i2,this.i0);
                  si32(this.i2,this.i1 + 4);
                  mstate.eax = this.i1;
                  break;
               }
               state = 2;
               mstate.esp -= 4;
               FSM__ZSt9terminatev.start();
               return;
               break;
            default:
               throw "Invalid state in ___cxa_get_globals";
         }
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp += 4;
         mstate.esp += 4;
         mstate.gworker = caller;
      }
   }
}

