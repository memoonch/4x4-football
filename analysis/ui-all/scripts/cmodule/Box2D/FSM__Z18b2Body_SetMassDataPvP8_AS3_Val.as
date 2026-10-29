package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.system.*;
   import flash.text.*;
   import flash.utils.*;
   
   public final class FSM__Z18b2Body_SetMassDataPvP8_AS3_Val extends Machine
   {
      
      public static const intRegCount:int = 6;
      
      public static const NumberRegCount:int = 9;
      
      public var f0:Number;
      
      public var f1:Number;
      
      public var f2:Number;
      
      public var f3:Number;
      
      public var f5:Number;
      
      public var f7:Number;
      
      public var f4:Number;
      
      public var f6:Number;
      
      public var f8:Number;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public function FSM__Z18b2Body_SetMassDataPvP8_AS3_Val()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__Z18b2Body_SetMassDataPvP8_AS3_Val = null;
         _loc1_ = new FSM__Z18b2Body_SetMassDataPvP8_AS3_Val();
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
               mstate.esp -= 8;
               this.i0 = cmodule.Box2D.__2E_str34241;
               mstate.esp -= 16;
               this.i1 = li32(mstate.ebp + 12);
               this.i2 = mstate.ebp + -8;
               this.i3 = mstate.ebp + -4;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               si32(this.i3,mstate.esp + 8);
               si32(this.i2,mstate.esp + 12);
               state = 1;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_ArrayValue]();
               return;
            case 1:
               mstate.esp += 16;
               this.i0 = li32(mstate.ebp + -4);
               this.i1 = li32(this.i0 + 96);
               this.i1 = li32(this.i1 + 102868);
               this.i2 = li32(mstate.ebp + -8);
               this.i1 &= 2;
               if(this.i1 == 0)
               {
                  break;
               }
               this.i0 = cmodule.Box2D.___sF;
               mstate.esp -= 24;
               this.i2 = cmodule.Box2D.__2E_str1670;
               this.i1 = cmodule.Box2D.__2E_str54261;
               this.i3 = cmodule.Box2D.__ZZN6b2Body11SetMassDataEPK10b2MassDataE8__func__;
               this.i4 = cmodule.Box2D.__2E_str53260;
               this.i5 = 326;
               this.i0 += 176;
               si32(this.i0,mstate.esp);
               si32(this.i2,mstate.esp + 4);
               si32(this.i1,mstate.esp + 8);
               §§goto(addr01be);
            case 3:
               break;
            case 2:
               mstate.esp += 24;
               state = 3;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 4:
               this.i0 = mstate.eax;
               mstate.eax = this.i0;
               mstate.esp = mstate.ebp;
               mstate.ebp = li32(mstate.esp);
               mstate.esp += 4;
               mstate.esp += 4;
               mstate.gworker = caller;
               return;
            default:
               throw "Invalid state in __Z18b2Body_SetMassDataPvP8_AS3_Val";
         }
         this.i1 = li32(this.i0);
         if(this.i1 == 2)
         {
            this.i1 = 0;
            si32(this.i1,this.i0 + 128);
            si32(this.i1,this.i0 + 132);
            this.f0 = 0;
            this.f1 = 1;
            this.f0 = this.f0;
            this.f1 = this.f1;
            si32(this.i1,this.i0 + 136);
            this.f2 = lf32(this.i2);
            this.f1 = this.f1;
            this.f0 = this.f0;
            this.f2 = this.f2 > this.f0 ? this.f2 : this.f1;
            this.f2 = this.f2;
            this.f3 = this.f2;
            this.f1 /= this.f3;
            sf32(this.f2,this.i0 + 124);
            this.f1 = this.f1;
            sf32(this.f1,this.i0 + 128);
            this.f1 = lf32(this.i2 + 12);
            this.i1 = this.i0 + 136;
            this.i3 = this.i0 + 132;
            this.f3 = this.f1;
            if(this.f3 > this.f0)
            {
               this.i4 = li16(this.i0 + 4);
               this.i4 &= 16;
               if(this.i4 == 0)
               {
                  this.f0 = 0;
                  this.f3 = lf32(this.i2 + 4);
                  this.f4 = lf32(this.i2 + 8);
                  this.f3 *= this.f3;
                  this.f4 *= this.f4;
                  this.f3 = this.f3;
                  this.f4 = this.f4;
                  this.f4 = this.f4;
                  this.f3 = this.f3;
                  this.f3 += this.f4;
                  this.f3 = this.f3;
                  this.f3 = this.f3;
                  this.f2 = this.f2;
                  this.f2 *= this.f3;
                  this.f2 = this.f2;
                  this.f2 = this.f2;
                  this.f1 = this.f1;
                  this.f1 -= this.f2;
                  this.f1 = this.f1;
                  sf32(this.f1,this.i3);
                  this.f0 = this.f0;
                  this.f0 = this.f0;
                  this.f2 = this.f1;
                  if(this.f2 <= this.f0)
                  {
                     this.i0 = cmodule.Box2D.___sF;
                     mstate.esp -= 24;
                     this.i1 = cmodule.Box2D.__2E_str1670;
                     this.i2 = cmodule.Box2D.__2E_str55262;
                     this.i3 = cmodule.Box2D.__ZZN6b2Body11SetMassDataEPK10b2MassDataE8__func__;
                     this.i4 = cmodule.Box2D.__2E_str53260;
                     this.i5 = 352;
                     this.i0 += 176;
                     si32(this.i0,mstate.esp);
                     si32(this.i1,mstate.esp + 4);
                     si32(this.i2,mstate.esp + 8);
                     addr01be:
                     si32(this.i3,mstate.esp + 12);
                     si32(this.i4,mstate.esp + 16);
                     si32(this.i5,mstate.esp + 20);
                     state = 2;
                     mstate.esp -= 4;
                     FSM_fprintf.start();
                     return;
                  }
                  this.f0 = 1;
                  this.f0 = this.f0;
                  this.f1 = this.f1;
                  this.f0 = this.f0;
                  this.f0 /= this.f1;
                  this.f0 = this.f0;
                  sf32(this.f0,this.i1);
               }
            }
            this.f0 = lf32(this.i2 + 4);
            this.f1 = lf32(this.i2 + 8);
            this.f2 = lf32(this.i0 + 52);
            this.f3 = lf32(this.i0 + 56);
            sf32(this.f0,this.i0 + 36);
            sf32(this.f1,this.i0 + 40);
            this.f4 = lf32(this.i0 + 20);
            this.f0 = this.f0;
            this.f5 = lf32(this.i0 + 24);
            this.f4 *= this.f0;
            this.f4 = this.f4;
            this.f0 = this.f5 * this.f0;
            this.f0 = this.f0;
            this.f5 = lf32(this.i0 + 12);
            this.f4 = this.f4;
            this.f6 = lf32(this.i0 + 28);
            this.f1 = this.f1;
            this.f7 = lf32(this.i0 + 32);
            this.f8 = lf32(this.i0 + 16);
            this.f4 = this.f5 + this.f4;
            this.f5 = this.f6 * this.f1;
            this.f0 = this.f0;
            this.f4 = this.f4;
            this.f5 = this.f5;
            this.f0 = this.f8 + this.f0;
            this.f1 = this.f7 * this.f1;
            this.f0 = this.f0;
            this.f1 = this.f1;
            this.f5 = this.f5;
            this.f4 = this.f4;
            this.f4 += this.f5;
            this.f1 = this.f1;
            this.f0 = this.f0;
            this.f4 = this.f4;
            this.f0 += this.f1;
            this.f0 = this.f0;
            sf32(this.f4,this.i0 + 52);
            sf32(this.f0,this.i0 + 56);
            this.f1 = this.f0;
            sf32(this.f4,this.i0 + 44);
            this.f1 -= this.f3;
            sf32(this.f0,this.i0 + 48);
            this.f0 = this.f1;
            this.f1 = lf32(this.i0 + 80);
            this.f0 = this.f0;
            this.f0 *= this.f1;
            this.f3 = this.f4;
            this.f0 = this.f0;
            this.f2 = this.f3 - this.f2;
            this.f3 = lf32(this.i0 + 72);
            this.f0 = this.f0;
            this.f2 = this.f2;
            this.f2 = this.f2;
            this.f0 = this.f3 - this.f0;
            this.f1 = this.f2 * this.f1;
            this.f0 = this.f0;
            sf32(this.f0,this.i0 + 72);
            this.f0 = this.f1;
            this.f1 = lf32(this.i0 + 76);
            this.f0 = this.f0;
            this.f0 = this.f1 + this.f0;
            this.f0 = this.f0;
            sf32(this.f0,this.i0 + 76);
         }
         state = 4;
         mstate.esp -= 4;
         mstate.funcs[cmodule.Box2D._AS3_Null]();
      }
   }
}

