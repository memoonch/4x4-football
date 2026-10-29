package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public final class FSM__ZN22b2LoopAndCircleContact8EvaluateEP10b2ManifoldRK11b2TransformS4_ extends Machine
   {
      
      public static const intRegCount:int = 12;
      
      public static const NumberRegCount:int = 2;
      
      public var i10:int;
      
      public var i11:int;
      
      public var f0:Number;
      
      public var f1:Number;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public var i6:int;
      
      public var i7:int;
      
      public var i8:int;
      
      public var i9:int;
      
      public function FSM__ZN22b2LoopAndCircleContact8EvaluateEP10b2ManifoldRK11b2TransformS4_()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZN22b2LoopAndCircleContact8EvaluateEP10b2ManifoldRK11b2TransformS4_ = null;
         _loc1_ = new FSM__ZN22b2LoopAndCircleContact8EvaluateEP10b2ManifoldRK11b2TransformS4_();
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
               this.i0 = cmodule.Box2D.__ZTV11b2EdgeShape;
               this.i1 = li32(mstate.ebp + 8);
               this.i2 = li32(this.i1 + 48);
               this.i2 = li32(this.i2 + 16);
               this.i0 += 8;
               si32(this.i0,mstate.ebp + -64);
               this.i0 = 1;
               si32(this.i0,mstate.ebp + -60);
               this.f0 = lf32(cmodule.Box2D._b2_polygonRadius);
               sf32(this.f0,mstate.ebp + -56);
               this.i0 = 0;
               si8(this.i0,mstate.ebp + -16);
               si8(this.i0,mstate.ebp + -15);
               this.i0 = mstate.ebp + -64;
               this.i3 = li32(this.i1 + 56);
               this.i4 = li32(this.i2 + 20);
               this.i5 = this.i2 + 20;
               this.i6 = this.i0 + 49;
               this.i7 = this.i0 + 48;
               this.i8 = this.i0 + 8;
               this.i0 += 4;
               this.i9 = li32(mstate.ebp + 12);
               this.i10 = li32(mstate.ebp + 16);
               this.i11 = li32(mstate.ebp + 20);
               if(this.i4 <= 1)
               {
                  this.i0 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i1 = cmodule.Box2D.__2E_str1670;
                  this.i2 = cmodule.Box2D.__2E_str9216;
                  this.i3 = cmodule.Box2D.__ZZNK11b2LoopShape12GetChildEdgeEP11b2EdgeShapeiE8__func__;
                  this.i5 = cmodule.Box2D.__2E_str8215;
                  this.i6 = 56;
                  this.i0 += 176;
                  si32(this.i0,mstate.esp);
                  si32(this.i1,mstate.esp + 4);
                  si32(this.i2,mstate.esp + 8);
                  si32(this.i3,mstate.esp + 12);
                  si32(this.i5,mstate.esp + 16);
                  si32(this.i6,mstate.esp + 20);
                  state = 1;
                  mstate.esp -= 4;
                  FSM_fprintf.start();
                  return;
               }
            case 2:
               if(this.i3 >= 0)
               {
                  this.i4 = li32(this.i5);
                  if(this.i4 > this.i3)
                  {
                     break;
                  }
               }
               this.i0 = cmodule.Box2D.___sF;
               mstate.esp -= 24;
               this.i1 = cmodule.Box2D.__2E_str1670;
               this.i2 = cmodule.Box2D.__2E_str1208;
               this.i3 = cmodule.Box2D.__ZZNK11b2LoopShape12GetChildEdgeEP11b2EdgeShapeiE8__func__;
               this.i5 = cmodule.Box2D.__2E_str8215;
               this.i6 = 57;
               this.i0 += 176;
               si32(this.i0,mstate.esp);
               si32(this.i1,mstate.esp + 4);
               si32(this.i2,mstate.esp + 8);
               si32(this.i3,mstate.esp + 12);
               si32(this.i5,mstate.esp + 16);
               si32(this.i6,mstate.esp + 20);
               state = 3;
               mstate.esp -= 4;
               FSM_fprintf.start();
               return;
            case 4:
               break;
            case 1:
               mstate.esp += 24;
               state = 2;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 3:
               mstate.esp += 24;
               state = 4;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 5:
               mstate.esp += 20;
               mstate.esp = mstate.ebp;
               mstate.ebp = li32(mstate.esp);
               mstate.esp += 4;
               mstate.esp += 4;
               mstate.gworker = caller;
               return;
            default:
               throw "Invalid state in __ZN22b2LoopAndCircleContact8EvaluateEP10b2ManifoldRK11b2TransformS4_";
         }
         this.i4 = 1;
         si32(this.i4,this.i0);
         this.f0 = lf32(this.i2 + 8);
         sf32(this.f0,this.i8);
         si8(this.i4,this.i7);
         si8(this.i4,this.i6);
         this.i0 = this.i3 + -1;
         if(this.i0 >= 0)
         {
            this.i0 = this.i3;
         }
         else
         {
            this.i0 = li32(this.i5);
         }
         this.i4 = li32(this.i5);
         this.i5 = this.i3 + 1;
         this.i5 = this.i5 < this.i4 ? this.i5 : 0;
         this.i6 = this.i3 + 2;
         this.i0 += -1;
         if(this.i4 > this.i6)
         {
            this.i4 = this.i6;
         }
         else
         {
            this.i6 = this.i3 + 2;
            do
            {
               this.i6 -= this.i4;
            }
            while(this.i4 <= this.i6);
            this.i4 = this.i6;
         }
         this.i6 = mstate.ebp + -64;
         this.i7 = li32(this.i2 + 16);
         this.i0 <<= 3;
         this.i0 = this.i7 + this.i0;
         this.f0 = lf32(this.i0);
         this.f1 = lf32(this.i0 + 4);
         sf32(this.f0,mstate.ebp + -32);
         sf32(this.f1,mstate.ebp + -28);
         this.i0 = li32(this.i2 + 16);
         this.i3 <<= 3;
         this.i0 += this.i3;
         this.f0 = lf32(this.i0);
         this.f1 = lf32(this.i0 + 4);
         sf32(this.f0,mstate.ebp + -48);
         sf32(this.f1,mstate.ebp + -44);
         this.i0 = li32(this.i2 + 16);
         this.i3 = this.i5 << 3;
         this.i0 += this.i3;
         this.f0 = lf32(this.i0);
         this.f1 = lf32(this.i0 + 4);
         sf32(this.f0,mstate.ebp + -40);
         sf32(this.f1,mstate.ebp + -36);
         this.i0 = li32(this.i2 + 16);
         this.i2 = this.i4 << 3;
         this.i0 += this.i2;
         this.f0 = lf32(this.i0);
         this.f1 = lf32(this.i0 + 4);
         sf32(this.f0,mstate.ebp + -24);
         sf32(this.f1,mstate.ebp + -20);
         this.i0 = li32(this.i1 + 52);
         this.i0 = li32(this.i0 + 16);
         mstate.esp -= 20;
         si32(this.i9,mstate.esp);
         si32(this.i6,mstate.esp + 4);
         si32(this.i10,mstate.esp + 8);
         si32(this.i0,mstate.esp + 12);
         si32(this.i11,mstate.esp + 16);
         state = 5;
         mstate.esp -= 4;
         FSM__Z22b2CollideEdgeAndCircleP10b2ManifoldPK11b2EdgeShapeRK11b2TransformPK13b2CircleShapeS6_.start();
      }
   }
}

