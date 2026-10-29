package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public final class FSM__ZNK11b2LoopShape7RayCastEP15b2RayCastOutputRK14b2RayCastInputRK11b2Transformi extends Machine
   {
      
      public static const intRegCount:int = 8;
      
      public static const NumberRegCount:int = 2;
      
      public var f1:Number;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public var i6:int;
      
      public var f0:Number;
      
      public var i7:int;
      
      public function FSM__ZNK11b2LoopShape7RayCastEP15b2RayCastOutputRK14b2RayCastInputRK11b2Transformi()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZNK11b2LoopShape7RayCastEP15b2RayCastOutputRK14b2RayCastInputRK11b2Transformi = null;
         _loc1_ = new FSM__ZNK11b2LoopShape7RayCastEP15b2RayCastOutputRK14b2RayCastInputRK11b2Transformi();
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
               mstate.esp -= 64;
               this.i0 = li32(mstate.ebp + 8);
               this.i1 = li32(mstate.ebp + 12);
               this.i2 = li32(mstate.ebp + 16);
               this.i3 = li32(mstate.ebp + 20);
               this.i4 = li32(mstate.ebp + 24);
               this.i5 = li32(this.i0 + 20);
               this.i6 = this.i0 + 20;
               if(this.i5 <= this.i4)
               {
                  this.i0 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i1 = cmodule.Box2D.__2E_str1670;
                  this.i2 = cmodule.Box2D.__2E_str63270;
                  this.i3 = cmodule.Box2D.__ZZNK14b2PolygonShape7RayCastEP15b2RayCastOutputRK14b2RayCastInputRK11b2TransformiE8__func__;
                  this.i4 = cmodule.Box2D.__2E_str8215;
                  this.i6 = 88;
                  this.i0 += 176;
                  si32(this.i0,mstate.esp);
                  si32(this.i1,mstate.esp + 4);
                  si32(this.i2,mstate.esp + 8);
                  si32(this.i3,mstate.esp + 12);
                  si32(this.i4,mstate.esp + 16);
                  si32(this.i6,mstate.esp + 20);
                  state = 1;
                  mstate.esp -= 4;
                  FSM_fprintf.start();
                  return;
               }
            case 2:
               this.i5 = cmodule.Box2D.__ZTV11b2EdgeShape;
               this.i5 += 8;
               si32(this.i5,mstate.ebp + -64);
               this.i5 = 1;
               si32(this.i5,mstate.ebp + -60);
               this.f0 = lf32(cmodule.Box2D._b2_polygonRadius);
               sf32(this.f0,mstate.ebp + -56);
               this.i5 = 0;
               si8(this.i5,mstate.ebp + -16);
               si8(this.i5,mstate.ebp + -15);
               this.i0 = li32(this.i0 + 16);
               this.i7 = this.i4 << 3;
               this.i7 = this.i0 + this.i7;
               this.i6 = li32(this.i6);
               this.i4 += 1;
               this.f0 = lf32(this.i7);
               this.f1 = lf32(this.i7 + 4);
               this.i4 = this.i6 == this.i4 ? 0 : this.i4;
               sf32(this.f0,mstate.ebp + -48);
               this.i4 <<= 3;
               sf32(this.f1,mstate.ebp + -44);
               this.i0 += this.i4;
               this.f0 = lf32(this.i0);
               this.f1 = lf32(this.i0 + 4);
               sf32(this.f0,mstate.ebp + -40);
               sf32(this.f1,mstate.ebp + -36);
               mstate.esp -= 20;
               this.i0 = mstate.ebp + -64;
               si32(this.i0,mstate.esp);
               si32(this.i1,mstate.esp + 4);
               si32(this.i2,mstate.esp + 8);
               si32(this.i3,mstate.esp + 12);
               si32(this.i5,mstate.esp + 16);
               mstate.esp -= 4;
               FSM__ZNK11b2EdgeShape7RayCastEP15b2RayCastOutputRK14b2RayCastInputRK11b2Transformi.start();
               break;
            case 3:
               break;
            case 1:
               mstate.esp += 24;
               state = 2;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            default:
               throw "Invalid state in __ZNK11b2LoopShape7RayCastEP15b2RayCastOutputRK14b2RayCastInputRK11b2Transformi";
         }
         this.i0 = mstate.eax;
         mstate.esp += 20;
         mstate.eax = this.i0;
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp += 4;
         mstate.esp += 4;
         mstate.gworker = caller;
      }
   }
}

