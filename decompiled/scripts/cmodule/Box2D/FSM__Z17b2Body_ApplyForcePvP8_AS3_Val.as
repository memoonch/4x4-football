package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.system.*;
   import flash.text.*;
   import flash.utils.*;
   
   public final class FSM__Z17b2Body_ApplyForcePvP8_AS3_Val extends Machine
   {
      
      public static const intRegCount:int = 8;
      
      public static const NumberRegCount:int = 4;
      
      public var f0:Number;
      
      public var f1:Number;
      
      public var f2:Number;
      
      public var f3:Number;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public var i6:int;
      
      public var i7:int;
      
      public function FSM__Z17b2Body_ApplyForcePvP8_AS3_Val()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__Z17b2Body_ApplyForcePvP8_AS3_Val = null;
         _loc1_ = new FSM__Z17b2Body_ApplyForcePvP8_AS3_Val();
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
               mstate.esp -= 24;
               this.i0 = mstate.ebp + -24;
               this.i1 = mstate.ebp + -16;
               mstate.esp -= 28;
               this.i2 = li32(mstate.ebp + 12);
               this.i3 = cmodule.Box2D.__2E_str44251;
               this.i4 = mstate.ebp + -4;
               this.i5 = this.i0 + 4;
               this.i6 = this.i1 + 4;
               si32(this.i2,mstate.esp);
               si32(this.i3,mstate.esp + 4);
               si32(this.i4,mstate.esp + 8);
               si32(this.i1,mstate.esp + 12);
               si32(this.i6,mstate.esp + 16);
               si32(this.i0,mstate.esp + 20);
               si32(this.i5,mstate.esp + 24);
               state = 1;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_ArrayValue]();
               return;
            case 1:
               mstate.esp += 28;
               this.i2 = li32(mstate.ebp + -4);
               this.i3 = li32(this.i2);
               if(this.i3 == 2)
               {
                  this.i3 = li16(this.i2 + 4);
                  this.i4 = this.i2 + 4;
                  this.i7 = this.i3 & 2;
                  if(this.i7 == 0)
                  {
                     this.i7 = 0;
                     this.i3 |= 2;
                     si16(this.i3,this.i4);
                     si32(this.i7,this.i2 + 148);
                  }
                  this.f0 = lf32(this.i2 + 84);
                  this.f1 = lf32(this.i1);
                  this.f0 += this.f1;
                  this.f0 = this.f0;
                  sf32(this.f0,this.i2 + 84);
                  this.f0 = lf32(this.i2 + 88);
                  this.f1 = lf32(this.i6);
                  this.f0 += this.f1;
                  this.f0 = this.f0;
                  sf32(this.f0,this.i2 + 88);
                  this.f0 = lf32(this.i5);
                  this.f1 = lf32(this.i2 + 56);
                  this.f2 = lf32(this.i0);
                  this.f3 = lf32(this.i2 + 52);
                  this.f0 -= this.f1;
                  this.f1 = this.f2 - this.f3;
                  this.f0 = this.f0;
                  this.f1 = this.f1;
                  this.f2 = lf32(this.i6);
                  this.f1 = this.f1;
                  this.f3 = lf32(this.i1);
                  this.f0 = this.f0;
                  this.f0 *= this.f3;
                  this.f1 *= this.f2;
                  this.f0 = this.f0;
                  this.f1 = this.f1;
                  this.f0 = this.f0;
                  this.f1 = this.f1;
                  this.f0 = this.f1 - this.f0;
                  this.f0 = this.f0;
                  this.f1 = lf32(this.i2 + 92);
                  this.f0 = this.f0;
                  this.f0 = this.f1 + this.f0;
                  this.f0 = this.f0;
                  sf32(this.f0,this.i2 + 92);
               }
               state = 2;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Null]();
               return;
            case 2:
               this.i0 = mstate.eax;
               mstate.eax = this.i0;
               mstate.esp = mstate.ebp;
               mstate.ebp = li32(mstate.esp);
               mstate.esp += 4;
               mstate.esp += 4;
               mstate.gworker = caller;
               return;
            default:
               throw "Invalid state in __Z17b2Body_ApplyForcePvP8_AS3_Val";
         }
      }
   }
}

