package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZNK11b2LoopShape11ComputeAABBEP6b2AABBRK11b2Transformi extends Machine
   {
      
      public static const intRegCount:int = 6;
      
      public static const NumberRegCount:int = 11;
      
      public var f10:Number;
      
      public var f0:Number;
      
      public var f1:Number;
      
      public var f2:Number;
      
      public var f3:Number;
      
      public var f5:Number;
      
      public var f7:Number;
      
      public var f9:Number;
      
      public var f4:Number;
      
      public var f6:Number;
      
      public var f8:Number;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public function FSM__ZNK11b2LoopShape11ComputeAABBEP6b2AABBRK11b2Transformi()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZNK11b2LoopShape11ComputeAABBEP6b2AABBRK11b2Transformi = null;
         _loc1_ = new FSM__ZNK11b2LoopShape11ComputeAABBEP6b2AABBRK11b2Transformi();
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
               this.i1 = li32(mstate.ebp + 12);
               this.i2 = li32(mstate.ebp + 16);
               this.i3 = li32(mstate.ebp + 20);
               this.i4 = li32(this.i0 + 20);
               this.i5 = this.i0 + 20;
               if(this.i4 <= this.i3)
               {
                  this.i0 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i1 = cmodule.Box2D.__2E_str1670;
                  this.i2 = cmodule.Box2D.__2E_str63270;
                  this.i3 = cmodule.Box2D.__ZZNK11b2LoopShape11ComputeAABBEP6b2AABBRK11b2TransformiE8__func__;
                  this.i5 = cmodule.Box2D.__2E_str8215;
                  this.i4 = 107;
                  this.i0 += 176;
                  si32(this.i0,mstate.esp);
                  si32(this.i1,mstate.esp + 4);
                  si32(this.i2,mstate.esp + 8);
                  si32(this.i3,mstate.esp + 12);
                  si32(this.i5,mstate.esp + 16);
                  si32(this.i4,mstate.esp + 20);
                  state = 1;
                  mstate.esp -= 4;
                  FSM_fprintf.start();
                  return;
               }
               break;
            case 2:
               break;
            case 1:
               mstate.esp += 24;
               state = 2;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            default:
               throw "Invalid state in __ZNK11b2LoopShape11ComputeAABBEP6b2AABBRK11b2Transformi";
         }
         this.i4 = li32(this.i5);
         this.i5 = this.i3 + 1;
         this.i4 = this.i4 == this.i5 ? 0 : this.i5;
         this.i0 = li32(this.i0 + 16);
         this.i4 <<= 3;
         this.i3 <<= 3;
         this.i4 = this.i0 + this.i4;
         this.i0 += this.i3;
         this.f0 = lf32(this.i2 + 8);
         this.f1 = lf32(this.i0);
         this.f2 = lf32(this.i4);
         this.f3 = lf32(this.i2 + 12);
         this.f4 = this.f0 * this.f2;
         this.f0 *= this.f1;
         this.f4 = this.f4;
         this.f2 = this.f3 * this.f2;
         this.f0 = this.f0;
         this.f1 = this.f3 * this.f1;
         this.f2 = this.f2;
         this.f1 = this.f1;
         this.f3 = lf32(this.i2);
         this.f4 = this.f4;
         this.f0 = this.f0;
         this.f5 = lf32(this.i2 + 16);
         this.f6 = lf32(this.i0 + 4);
         this.f7 = lf32(this.i4 + 4);
         this.f8 = lf32(this.i2 + 20);
         this.f9 = lf32(this.i2 + 4);
         this.f4 = this.f3 + this.f4;
         this.f2 = this.f2;
         this.f10 = this.f5 * this.f7;
         this.f0 = this.f3 + this.f0;
         this.f1 = this.f1;
         this.f3 = this.f5 * this.f6;
         this.f4 = this.f4;
         this.f2 = this.f9 + this.f2;
         this.f5 = this.f10;
         this.f7 = this.f8 * this.f7;
         this.f0 = this.f0;
         this.f1 = this.f9 + this.f1;
         this.f3 = this.f3;
         this.f6 = this.f8 * this.f6;
         this.f2 = this.f2;
         this.f7 = this.f7;
         this.f1 = this.f1;
         this.f6 = this.f6;
         this.f5 = this.f5;
         this.f4 = this.f4;
         this.f3 = this.f3;
         this.f0 = this.f0;
         this.f4 += this.f5;
         this.f0 += this.f3;
         this.f3 = this.f7;
         this.f2 = this.f2;
         this.f5 = this.f6;
         this.f1 = this.f1;
         this.f4 = this.f4;
         this.f2 += this.f3;
         this.f0 = this.f0;
         this.f1 += this.f5;
         this.f2 = this.f2;
         this.f1 = this.f1;
         this.f3 = this.f4;
         this.f0 = this.f0;
         this.f4 = this.f0 < this.f3 ? this.f0 : this.f3;
         this.f2 = this.f2;
         this.f1 = this.f1;
         this.f5 = this.f1 < this.f2 ? this.f1 : this.f2;
         this.f4 = this.f4;
         this.f0 = this.f0 > this.f3 ? this.f0 : this.f3;
         sf32(this.f4,this.i1);
         this.f3 = this.f5;
         this.f1 = this.f1 > this.f2 ? this.f1 : this.f2;
         sf32(this.f3,this.i1 + 4);
         this.f0 = this.f0;
         sf32(this.f0,this.i1 + 8);
         this.f0 = this.f1;
         sf32(this.f0,this.i1 + 12);
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp += 4;
         mstate.esp += 4;
         mstate.gworker = caller;
      }
   }
}

