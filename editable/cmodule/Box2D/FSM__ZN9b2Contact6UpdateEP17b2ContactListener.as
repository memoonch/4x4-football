package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.system.*;
   import flash.text.*;
   import flash.utils.*;
   
   public final class FSM__ZN9b2Contact6UpdateEP17b2ContactListener extends Machine
   {
      
      public static const intRegCount:int = 19;
      
      public static const NumberRegCount:int = 2;
      
      public var f1:Number;
      
      public var i10:int;
      
      public var i11:int;
      
      public var i12:int;
      
      public var i13:int;
      
      public var i14:int;
      
      public var i15:int;
      
      public var i17:int;
      
      public var f0:Number;
      
      public var i16:int;
      
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
      
      public var i18:int;
      
      public function FSM__ZN9b2Contact6UpdateEP17b2ContactListener()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZN9b2Contact6UpdateEP17b2ContactListener = null;
         _loc1_ = new FSM__ZN9b2Contact6UpdateEP17b2ContactListener();
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
               mstate.esp -= 240;
               this.i0 = mstate.ebp + -240;
               this.i1 = li32(mstate.ebp + 8);
               this.i2 = this.i1 + 64;
               this.i3 = 72;
               cmodule.Box2D.memcpy(this.i0,this.i2,this.i3);
               this.i3 = li32(this.i1 + 4);
               this.i4 = li32(this.i1 + 48);
               this.i5 = li8(this.i4 + 42);
               this.i3 >>>= 1;
               this.i3 &= 1;
               this.i6 = this.i1 + 4;
               this.i7 = li32(mstate.ebp + 12);
               this.i8 = this.i1;
               while(true)
               {
                  if(this.i5 == 0)
                  {
                     this.i5 = li32(this.i1 + 52);
                     this.i5 = li8(this.i5 + 42);
                     if(this.i5 == 0)
                     {
                        this.i5 = 0;
                        break;
                     }
                  }
                  this.i5 = 1;
                  break;
               }
               this.i9 = li32(this.i1 + 52);
               this.i10 = li32(this.i4 + 12);
               this.i11 = li32(this.i9 + 12);
               this.i12 = this.i5 & 0xFF;
               if(this.i12 != 0)
               {
                  this.i0 = 0;
                  this.i2 = li32(this.i4 + 16);
                  this.i8 = li32(this.i9 + 16);
                  this.i4 = li32(this.i1 + 60);
                  this.i9 = li32(this.i1 + 56);
                  si32(this.i0,mstate.ebp + -96);
                  si32(this.i0,mstate.ebp + -92);
                  si32(this.i0,mstate.ebp + -88);
                  si32(this.i0,mstate.ebp + -68);
                  si32(this.i0,mstate.ebp + -64);
                  si32(this.i0,mstate.ebp + -60);
                  mstate.esp -= 12;
                  this.i12 = mstate.ebp + -112;
                  si32(this.i12,mstate.esp);
                  si32(this.i2,mstate.esp + 4);
                  si32(this.i9,mstate.esp + 8);
                  state = 1;
                  mstate.esp -= 4;
                  FSM__ZN15b2DistanceProxy3SetEPK7b2Shapei.start();
                  return;
               }
               this.i4 = li32(this.i1);
               this.i4 = li32(this.i4);
               mstate.esp -= 16;
               this.i9 = this.i11 + 12;
               this.i12 = this.i10 + 12;
               si32(this.i1,mstate.esp);
               si32(this.i2,mstate.esp + 4);
               si32(this.i12,mstate.esp + 8);
               si32(this.i9,mstate.esp + 12);
               state = 4;
               mstate.esp -= 4;
               mstate.funcs[this.i4]();
               return;
               break;
            case 1:
               mstate.esp += 12;
               mstate.esp -= 12;
               this.i2 = this.i12 + 28;
               si32(this.i2,mstate.esp);
               si32(this.i8,mstate.esp + 4);
               si32(this.i4,mstate.esp + 8);
               state = 2;
               mstate.esp -= 4;
               FSM__ZN15b2DistanceProxy3SetEPK7b2Shapei.start();
               return;
            case 2:
               mstate.esp += 12;
               this.f0 = lf32(this.i10 + 12);
               sf32(this.f0,mstate.ebp + -56);
               this.f0 = lf32(this.i10 + 16);
               sf32(this.f0,mstate.ebp + -52);
               this.f0 = lf32(this.i10 + 20);
               sf32(this.f0,mstate.ebp + -48);
               this.f0 = lf32(this.i10 + 24);
               sf32(this.f0,mstate.ebp + -44);
               this.f0 = lf32(this.i10 + 28);
               sf32(this.f0,mstate.ebp + -40);
               this.f0 = lf32(this.i10 + 32);
               sf32(this.f0,mstate.ebp + -36);
               this.f0 = lf32(this.i11 + 12);
               sf32(this.f0,mstate.ebp + -32);
               this.f0 = lf32(this.i11 + 16);
               sf32(this.f0,mstate.ebp + -28);
               this.f0 = lf32(this.i11 + 20);
               sf32(this.f0,mstate.ebp + -24);
               this.f0 = lf32(this.i11 + 24);
               sf32(this.f0,mstate.ebp + -20);
               this.f0 = lf32(this.i11 + 28);
               sf32(this.f0,mstate.ebp + -16);
               this.f0 = lf32(this.i11 + 32);
               sf32(this.f0,mstate.ebp + -12);
               this.i2 = 1;
               si8(this.i2,mstate.ebp + -8);
               si16(this.i0,mstate.ebp + -124);
               mstate.esp -= 12;
               this.i2 = mstate.ebp + -160;
               this.i8 = mstate.ebp + -128;
               si32(this.i2,mstate.esp);
               si32(this.i8,mstate.esp + 4);
               si32(this.i12,mstate.esp + 8);
               state = 3;
               mstate.esp -= 4;
               FSM__Z10b2DistanceP16b2DistanceOutputP14b2SimplexCachePK15b2DistanceInput.start();
               return;
            case 3:
               this.f0 = 0.00000119209;
               mstate.esp += 12;
               this.f0 = this.f0;
               this.f1 = lf32(mstate.ebp + -144);
               this.f0 = this.f0;
               this.i2 = this.f1 < this.f0 ? 1 : 0;
               si32(this.i0,this.i1 + 132);
               this.i0 = li32(this.i6);
               this.i2 &= 1;
               loop5:
               while(true)
               {
                  while(true)
                  {
                     if(this.f1 >= this.f0)
                     {
                        addr0538:
                        this.i0 &= -3;
                        si32(this.i0,this.i6);
                        this.i0 = this.i3 & 0xFF;
                        if(this.i0 != 0)
                        {
                           break;
                        }
                     }
                     else
                     {
                        addr08f2:
                        this.i0 |= 2;
                        si32(this.i0,this.i6);
                        this.i0 = this.i3 & 0xFF;
                        if(this.i0 != 0)
                        {
                           break;
                        }
                     }
                     addr0925:
                     this.i0 = this.i2 & 0xFF;
                     if(this.i0 == 1)
                     {
                        if(this.i7 != 0)
                        {
                           this.i0 = li32(this.i7);
                           this.i0 = li32(this.i0 + 8);
                           mstate.esp -= 8;
                           si32(this.i7,mstate.esp);
                           si32(this.i1,mstate.esp + 4);
                           state = 5;
                           mstate.esp -= 4;
                           mstate.funcs[this.i0]();
                           return;
                        }
                     }
                     addr09bd:
                     this.i0 = this.i3 & 0xFF;
                     if(this.i0 != 0)
                     {
                        break;
                     }
                     break loop5;
                  }
                  addr09d8:
                  this.i0 = this.i2 & 0xFF;
                  if(this.i0 == 0)
                  {
                     if(this.i7 != 0)
                     {
                        this.i0 = li32(this.i7);
                        this.i0 = li32(this.i0 + 12);
                        mstate.esp -= 8;
                        si32(this.i7,mstate.esp);
                        si32(this.i1,mstate.esp + 4);
                        state = 6;
                        mstate.esp -= 4;
                        mstate.funcs[this.i0]();
                        return;
                     }
                  }
                  break;
               }
               this.i0 = this.i2;
               this.i2 = this.i5 & 0xFF;
               if(this.i2 == 0)
               {
                  if(this.i7 != 0)
                  {
                     this.i0 &= 255;
                     if(this.i0 != 0)
                     {
                        this.i0 = mstate.ebp + -240;
                        this.i2 = li32(this.i7);
                        this.i2 = li32(this.i2 + 16);
                        mstate.esp -= 12;
                        si32(this.i7,mstate.esp);
                        si32(this.i1,mstate.esp + 4);
                        si32(this.i0,mstate.esp + 8);
                        state = 7;
                        mstate.esp -= 4;
                        mstate.funcs[this.i2]();
                        return;
                     }
                  }
               }
               break;
            case 4:
               mstate.esp += 16;
               this.i2 = li32(this.i1 + 132);
               this.i4 = this.i2 > 0 ? 1 : 0;
               this.i4 &= 1;
               if(this.i2 >= 1)
               {
                  this.i9 = li32(mstate.ebp + -172);
                  if(this.i9 <= 0)
                  {
                     this.i0 = 0;
                     do
                     {
                        this.i9 = 0;
                        si32(this.i9,this.i8 + 72);
                        si32(this.i9,this.i8 + 76);
                        this.i8 += 24;
                        this.i0 += 1;
                     }
                     while(this.i2 > this.i0);
                  }
                  else
                  {
                     this.i12 = 0;
                     loop0:
                     while(true)
                     {
                        this.i13 = 0;
                        si32(this.i13,this.i8 + 72);
                        si32(this.i13,this.i8 + 76);
                        this.i14 = li32(this.i8 + 80);
                        this.i15 = this.i0 + 16;
                        this.i16 = this.i8 + 76;
                        this.i17 = this.i8 + 72;
                        while(true)
                        {
                           this.i18 = li32(this.i15);
                           if(this.i18 == this.i14)
                           {
                              break;
                           }
                           this.i15 += 24;
                           this.i13 += 1;
                           if(this.i9 > this.i13)
                           {
                              continue;
                           }
                           addr0742:
                           this.f0 = 0;
                           this.i13 = 0;
                           si32(this.i13,this.i17);
                           this.f0 = this.f0;
                           sf32(this.f0,this.i16);
                           this.i8 += 24;
                           this.i12 += 1;
                           if(this.i2 <= this.i12)
                           {
                              break loop0;
                           }
                           continue loop0;
                        }
                        this.i14 = mstate.ebp + -240;
                        this.i13 *= 24;
                        this.i13 = this.i14 + this.i13;
                        this.f0 = lf32(this.i13 + 8);
                        sf32(this.f0,this.i17);
                        this.f0 = lf32(this.i13 + 12);
                        §§goto(addr0742);
                     }
                  }
               }
               this.i0 = this.i3 & 0xFF;
               this.i8 = this.i4 & 0xFF;
               if(this.i8 != this.i0)
               {
                  this.i0 = li16(this.i10 + 4);
                  this.i8 = this.i10 + 4;
                  this.i9 = this.i0 & 2;
                  if(this.i9 == 0)
                  {
                     this.i9 = 0;
                     this.i0 |= 2;
                     si16(this.i0,this.i8);
                     si32(this.i9,this.i10 + 148);
                  }
                  this.i0 = li16(this.i11 + 4);
                  this.i8 = this.i11 + 4;
                  this.i9 = this.i0 & 2;
                  if(this.i9 == 0)
                  {
                     this.i9 = 0;
                     this.i0 |= 2;
                     si16(this.i0,this.i8);
                     si32(this.i9,this.i11 + 148);
                  }
               }
               this.i0 = li32(this.i6);
               while(true)
               {
                  if(this.i2 <= 0)
                  {
                     this.i2 = this.i4;
                     §§goto(addr0538);
                  }
                  else
                  {
                     this.i2 = this.i4;
                     §§goto(addr08f2);
                  }
               }
               §§goto(addr09d8);
            case 5:
               mstate.esp += 8;
               §§goto(addr09bd);
            case 6:
               mstate.esp += 8;
               break loop5;
            case 7:
               mstate.esp += 12;
               break;
            default:
               throw "Invalid state in __ZN9b2Contact6UpdateEP17b2ContactListener";
         }
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp += 4;
         mstate.esp += 4;
         mstate.gworker = caller;
      }
   }
}

