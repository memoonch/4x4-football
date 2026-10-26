package cmodule.Box2D
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public final class FSM__start extends Machine
   {
      
      public static const intRegCount:int = 3;
      
      public static const NumberRegCount:int = 0;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public function FSM__start()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__start = null;
         _loc1_ = new FSM__start();
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
               this.i0 = li32(mstate.ebp + 8);
               this.i1 = li32(this.i0);
               this.i2 = this.i1 << 2;
               this.i2 += this.i0;
               this.i2 += 8;
               si32(this.i2,cmodule.Box2D._environ);
               if(this.i1 >= 1)
               {
                  this.i0 = li32(this.i0 + 4);
                  this.i1 = this.i0;
                  if(this.i0 != 0)
                  {
                     si32(this.i1,cmodule.Box2D.___progname);
                     this.i2 = li8(this.i1);
                     if(this.i2 != 0)
                     {
                        do
                        {
                           this.i2 = li8(this.i0);
                           if(this.i2 == 47)
                           {
                              this.i1 = this.i0 + 1;
                           }
                           this.i2 = li8(this.i0 + 1);
                           this.i0 += 1;
                        }
                        while(this.i2 != 0);
                        si32(this.i1,cmodule.Box2D.___progname);
                     }
                  }
               }
               this.i0 = 0;
               mstate.esp -= 4;
               si32(this.i0,mstate.esp);
               state = 1;
               mstate.esp -= 4;
               FSM_atexit.start();
               return;
            case 1:
               mstate.esp += 4;
               mstate.esp -= 4;
               this.i0 = cmodule.Box2D.__fini;
               si32(this.i0,mstate.esp);
               state = 2;
               mstate.esp -= 4;
               FSM_atexit.start();
               return;
            case 2:
               mstate.esp += 4;
               this.i0 = cmodule.Box2D.__2E_str1;
               this.i1 = 4;
               this.i2 = 1;
               cmodule.Box2D.log(this.i1,mstate.gworker.stringFromPtr(this.i0));
               si8(this.i2,cmodule.Box2D.___mb_cur_max_2E_b);
               state = 3;
               mstate.esp -= 4;
               FSM_main.start();
               return;
            case 3:
               this.i0 = mstate.eax;
               mstate.esp -= 4;
               si32(this.i0,mstate.esp);
               state = 4;
               mstate.esp -= 4;
               FSM_exit.start();
               return;
            case 4:
               mstate.esp += 4;
         }
         throw "Invalid state in __start";
      }
   }
}

