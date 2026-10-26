package cmodule.Box2D
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM___cxa_allocate_exception extends Machine
   {
      
      public static const intRegCount:int = 5;
      
      public static const NumberRegCount:int = 0;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public function FSM___cxa_allocate_exception()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM___cxa_allocate_exception = null;
         _loc1_ = new FSM___cxa_allocate_exception();
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
               this.i0 = 0;
               this.i1 = li32(mstate.ebp + 8);
               mstate.esp -= 8;
               this.i1 += 80;
               si32(this.i0,mstate.esp);
               si32(this.i1,mstate.esp + 4);
               state = 1;
               mstate.esp -= 4;
               FSM_pubrealloc.start();
               return;
            case 1:
               this.i0 = mstate.eax;
               mstate.esp += 8;
               if(this.i0 == 0)
               {
                  this.i2 = li32(cmodule.Box2D.__ZL14emergency_used);
                  loop2:
                  while(true)
                  {
                     if(uint(this.i1) <= uint(512))
                     {
                        this.i1 = 0;
                        this.i3 = this.i2;
                        while(true)
                        {
                           this.i4 = this.i1;
                           this.i1 = this.i3;
                           this.i3 = this.i1 & 1;
                           if(this.i3 == 0)
                           {
                              this.i0 = 1;
                              this.i0 <<= this.i4;
                              this.i1 = cmodule.Box2D.__ZL16emergency_buffer;
                              this.i3 = this.i4 << 9;
                              this.i0 = this.i2 | this.i0;
                              si32(this.i0,cmodule.Box2D.__ZL14emergency_used);
                              this.i0 = this.i1 + this.i3;
                              break loop2;
                           }
                           this.i3 = this.i4 + 1;
                           this.i4 = this.i1 >>> 1;
                           if(uint(this.i3) <= uint(31))
                           {
                              continue;
                           }
                           this.i1 = this.i3;
                           this.i3 = this.i4;
                        }
                     }
                     break;
                  }
                  if(this.i0 == 0)
                  {
                     state = 2;
                     mstate.esp -= 4;
                     FSM__ZSt9terminatev.start();
                     return;
                  }
               }
               this.i1 = 0;
               this.i2 = this.i0;
               this.i3 = 80;
               cmodule.Box2D.memset(this.i2,this.i1,this.i3);
               this.i0 += 80;
               mstate.eax = this.i0;
               mstate.esp = mstate.ebp;
               mstate.ebp = li32(mstate.esp);
               mstate.esp += 4;
               mstate.esp += 4;
               mstate.gworker = caller;
               return;
            case 2:
         }
         throw "Invalid state in ___cxa_allocate_exception";
      }
   }
}

