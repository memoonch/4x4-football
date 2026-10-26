package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZNK11b2LoopShape5CloneEP16b2BlockAllocator extends Machine
   {
      
      public static const intRegCount:int = 6;
      
      public static const NumberRegCount:int = 1;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public var f0:Number;
      
      public function FSM__ZNK11b2LoopShape5CloneEP16b2BlockAllocator()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZNK11b2LoopShape5CloneEP16b2BlockAllocator = null;
         _loc1_ = new FSM__ZNK11b2LoopShape5CloneEP16b2BlockAllocator();
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
               this.i0 = 24;
               mstate.esp -= 8;
               this.i1 = li32(mstate.ebp + 12);
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
               this.i2 = this.i0;
               if(this.i0 != 0)
               {
                  this.i3 = cmodule.Box2D.__ZTV11b2LoopShape;
                  this.i3 += 8;
                  si32(this.i3,this.i0);
                  this.i3 = 3;
                  si32(this.i3,this.i2 + 4);
                  this.f0 = lf32(cmodule.Box2D._b2_polygonRadius);
                  sf32(this.f0,this.i2 + 8);
                  this.i3 = 0;
                  si32(this.i3,this.i2 + 16);
                  si32(this.i3,this.i2 + 20);
               }
               this.i3 = li32(this.i1 + 20);
               this.i1 = li32(this.i1 + 16);
               this.i4 = li32(this.i2 + 16);
               this.i5 = this.i2 + 16;
               if(this.i4 == 0)
               {
                  this.i4 = li32(this.i2 + 20);
                  this.i2 += 20;
                  if(this.i4 == 0)
                  {
                     break;
                  }
               }
               this.i0 = cmodule.Box2D.___sF;
               mstate.esp -= 24;
               this.i1 = cmodule.Box2D.__2E_str1670;
               this.i2 = cmodule.Box2D.__2E_str74281;
               this.i3 = cmodule.Box2D.__ZZN11b2LoopShape6CreateEPK6b2Vec2iE8__func__;
               this.i5 = cmodule.Box2D.__2E_str8215;
               this.i4 = 34;
               §§goto(addr01e7);
            case 3:
               break;
            case 2:
               mstate.esp += 24;
               state = 3;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 4:
               this.i3 = mstate.eax;
               mstate.esp += 8;
               si32(this.i3,this.i5);
               this.i2 = li32(this.i2);
               this.i2 <<= 3;
               cmodule.Box2D.memcpy(this.i3,this.i1,this.i2);
               mstate.eax = this.i0;
               mstate.esp = mstate.ebp;
               mstate.ebp = li32(mstate.esp);
               mstate.esp += 4;
               mstate.esp += 4;
               mstate.gworker = caller;
               return;
            default:
               throw "Invalid state in __ZNK11b2LoopShape5CloneEP16b2BlockAllocator";
         }
         if(this.i3 <= 1)
         {
            this.i0 = cmodule.Box2D.___sF;
            mstate.esp -= 24;
            this.i1 = cmodule.Box2D.__2E_str1670;
            this.i2 = cmodule.Box2D.__2E_str75282;
            this.i3 = cmodule.Box2D.__ZZN11b2LoopShape6CreateEPK6b2Vec2iE8__func__;
            this.i5 = cmodule.Box2D.__2E_str8215;
            this.i4 = 35;
            addr01e7:
            this.i0 += 176;
            si32(this.i0,mstate.esp);
            si32(this.i1,mstate.esp + 4);
            si32(this.i2,mstate.esp + 8);
            si32(this.i3,mstate.esp + 12);
            si32(this.i5,mstate.esp + 16);
            si32(this.i4,mstate.esp + 20);
            state = 2;
            mstate.esp -= 4;
            FSM_fprintf.start();
            return;
         }
         this.i4 = 0;
         si32(this.i3,this.i2);
         mstate.esp -= 8;
         this.i3 <<= 3;
         si32(this.i4,mstate.esp);
         si32(this.i3,mstate.esp + 4);
         state = 4;
         mstate.esp -= 4;
         FSM_pubrealloc.start();
      }
   }
}

