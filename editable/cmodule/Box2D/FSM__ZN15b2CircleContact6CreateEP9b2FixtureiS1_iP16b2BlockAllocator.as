package cmodule.Box2D
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZN15b2CircleContact6CreateEP9b2FixtureiS1_iP16b2BlockAllocator extends Machine
   {
      
      public static const intRegCount:int = 6;
      
      public static const NumberRegCount:int = 0;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public function FSM__ZN15b2CircleContact6CreateEP9b2FixtureiS1_iP16b2BlockAllocator()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZN15b2CircleContact6CreateEP9b2FixtureiS1_iP16b2BlockAllocator = null;
         _loc1_ = new FSM__ZN15b2CircleContact6CreateEP9b2FixtureiS1_iP16b2BlockAllocator();
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
               this.i0 = 148;
               mstate.esp -= 8;
               this.i1 = li32(mstate.ebp + 24);
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 1;
               mstate.esp -= 4;
               FSM__ZN16b2BlockAllocator8AllocateEi.start();
               return;
            case 1:
               this.i0 = mstate.eax;
               mstate.esp += 8;
               this.i1 = li32(mstate.ebp + 8);
               this.i2 = li32(mstate.ebp + 16);
               if(this.i0 == 0)
               {
                  break;
               }
               this.i3 = 4;
               si32(this.i3,this.i0 + 4);
               si32(this.i1,this.i0 + 48);
               si32(this.i2,this.i0 + 52);
               this.i3 = 0;
               si32(this.i3,this.i0 + 56);
               si32(this.i3,this.i0 + 60);
               si32(this.i3,this.i0 + 132);
               si32(this.i3,this.i0 + 8);
               si32(this.i3,this.i0 + 12);
               si32(this.i3,this.i0 + 20);
               si32(this.i3,this.i0 + 24);
               si32(this.i3,this.i0 + 28);
               si32(this.i3,this.i0 + 16);
               si32(this.i3,this.i0 + 36);
               si32(this.i3,this.i0 + 40);
               si32(this.i3,this.i0 + 44);
               si32(this.i3,this.i0 + 32);
               this.i4 = cmodule.Box2D.__ZTV15b2CircleContact;
               si32(this.i3,this.i0 + 136);
               this.i3 = this.i4 + 8;
               si32(this.i3,this.i0);
               this.i1 = li32(this.i1 + 16);
               this.i1 = li32(this.i1 + 4);
               if(this.i1 != 0)
               {
                  this.i0 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i2 = cmodule.Box2D.__2E_str1670;
                  this.i1 = cmodule.Box2D.__2E_str94301;
                  this.i3 = cmodule.Box2D.__ZZN15b2CircleContactC4EP9b2FixtureS1_E8__func__;
                  this.i4 = cmodule.Box2D.__2E_str93300;
                  this.i5 = 44;
                  this.i0 += 176;
                  si32(this.i0,mstate.esp);
                  si32(this.i2,mstate.esp + 4);
                  si32(this.i1,mstate.esp + 8);
                  si32(this.i3,mstate.esp + 12);
                  si32(this.i4,mstate.esp + 16);
                  si32(this.i5,mstate.esp + 20);
                  state = 2;
                  mstate.esp -= 4;
                  FSM_fprintf.start();
                  return;
               }
            case 3:
               this.i1 = li32(this.i2 + 16);
               this.i1 = li32(this.i1 + 4);
               if(this.i1 != 0)
               {
                  this.i0 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i1 = cmodule.Box2D.__2E_str1670;
                  this.i2 = cmodule.Box2D.__2E_str95302;
                  this.i3 = cmodule.Box2D.__ZZN15b2CircleContactC4EP9b2FixtureS1_E8__func__;
                  this.i4 = cmodule.Box2D.__2E_str93300;
                  this.i5 = 45;
                  this.i0 += 176;
                  si32(this.i0,mstate.esp);
                  si32(this.i1,mstate.esp + 4);
                  si32(this.i2,mstate.esp + 8);
                  si32(this.i3,mstate.esp + 12);
                  si32(this.i4,mstate.esp + 16);
                  si32(this.i5,mstate.esp + 20);
                  state = 4;
                  mstate.esp -= 4;
                  FSM_fprintf.start();
                  return;
               }
               break;
            case 5:
               break;
            case 2:
               mstate.esp += 24;
               state = 3;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 4:
               mstate.esp += 24;
               state = 5;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            default:
               throw "Invalid state in __ZN15b2CircleContact6CreateEP9b2FixtureiS1_iP16b2BlockAllocator";
         }
         mstate.eax = this.i0;
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp += 4;
         mstate.esp += 4;
         mstate.gworker = caller;
      }
   }
}

