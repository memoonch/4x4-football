package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZNK13b2CircleShape5CloneEP16b2BlockAllocator extends Machine
   {
      
      public static const intRegCount:int = 4;
      
      public static const NumberRegCount:int = 2;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var f0:Number;
      
      public var f1:Number;
      
      public var i3:int;
      
      public function FSM__ZNK13b2CircleShape5CloneEP16b2BlockAllocator()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZNK13b2CircleShape5CloneEP16b2BlockAllocator = null;
         _loc1_ = new FSM__ZNK13b2CircleShape5CloneEP16b2BlockAllocator();
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
                  this.i3 = cmodule.Box2D.__ZTV13b2CircleShape;
                  this.i3 += 8;
                  si32(this.i3,this.i0);
                  this.i3 = 0;
                  si32(this.i3,this.i2 + 4);
                  si32(this.i3,this.i2 + 8);
                  si32(this.i3,this.i2 + 16);
                  si32(this.i3,this.i2 + 20);
               }
               this.i3 = li32(this.i1 + 4);
               si32(this.i3,this.i2 + 4);
               this.f0 = lf32(this.i1 + 8);
               sf32(this.f0,this.i2 + 8);
               this.f0 = lf32(this.i1 + 12);
               sf32(this.f0,this.i2 + 12);
               this.f0 = lf32(this.i1 + 16);
               this.f1 = lf32(this.i1 + 20);
               sf32(this.f0,this.i2 + 16);
               sf32(this.f1,this.i2 + 20);
               mstate.eax = this.i0;
               mstate.esp = mstate.ebp;
               mstate.ebp = li32(mstate.esp);
               mstate.esp += 4;
               mstate.esp += 4;
               mstate.gworker = caller;
               return;
            default:
               throw "Invalid state in __ZNK13b2CircleShape5CloneEP16b2BlockAllocator";
         }
      }
   }
}

