package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.system.*;
   import flash.text.*;
   import flash.utils.*;
   
   public final class FSM__ZN12b2BroadPhase11UpdatePairsI16b2ContactManagerEEvPT_ extends Machine
   {
      
      public static const intRegCount:int = 29;
      
      public static const NumberRegCount:int = 5;
      
      public var i21:int;
      
      public var f0:Number;
      
      public var f1:Number;
      
      public var f2:Number;
      
      public var f3:Number;
      
      public var f4:Number;
      
      public var i10:int;
      
      public var i11:int;
      
      public var i12:int;
      
      public var i13:int;
      
      public var i14:int;
      
      public var i15:int;
      
      public var i17:int;
      
      public var i19:int;
      
      public var i16:int;
      
      public var i18:int;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i22:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public var i6:int;
      
      public var i7:int;
      
      public var i8:int;
      
      public var i2:int;
      
      public var i23:int;
      
      public var i24:int;
      
      public var i25:int;
      
      public var i26:int;
      
      public var i27:int;
      
      public var i20:int;
      
      public var i9:int;
      
      public var i28:int;
      
      public function FSM__ZN12b2BroadPhase11UpdatePairsI16b2ContactManagerEEvPT_()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZN12b2BroadPhase11UpdatePairsI16b2ContactManagerEEvPT_ = null;
         _loc1_ = new FSM__ZN12b2BroadPhase11UpdatePairsI16b2ContactManagerEEvPT_();
         cmodule.Box2D.gstate.gworker = _loc1_;
      }
      
      final override public function work() : void
      {
         loop11:
         switch(state)
         {
            case 0:
               mstate.esp -= 4;
               si32(mstate.ebp,mstate.esp);
               mstate.ebp = mstate.esp;
               mstate.esp -= 1040;
               this.i0 = 0;
               this.i1 = li32(mstate.ebp + 8);
               si32(this.i0,this.i1 + 52);
               this.i0 = li32(mstate.ebp + 12);
               this.i2 = li32(this.i1 + 40);
               this.i3 = this.i1 + 40;
               this.i4 = this.i1 + 52;
               if(this.i2 >= 1)
               {
                  this.i2 = mstate.ebp + -1040;
                  this.i5 = 0;
                  this.i6 = this.i1 + 44;
                  this.i7 = this.i1 + 48;
                  this.i8 = this.i2 + 1032;
                  this.i9 = this.i2 + 1028;
                  this.i10 = this.i2 + 4;
                  this.i11 = this.i1 + 4;
                  this.i12 = this.i1 + 12;
                  this.i13 = this.i1 + 56;
                  this.i14 = this.i1 + 32;
                  this.i15 = this.i1;
                  this.i16 = this.i5;
                  addr016b:
                  this.i17 = li32(this.i14);
                  this.i17 += this.i16;
                  this.i17 = li32(this.i17);
                  si32(this.i17,this.i13);
                  if(this.i17 != -1)
                  {
                     if(this.i17 >= 0)
                     {
                        this.i18 = li32(this.i12);
                        loop12:
                        while(true)
                        {
                           while(true)
                           {
                              if(this.i18 > this.i17)
                              {
                                 this.i18 = 256;
                                 this.i19 = li32(this.i11);
                                 si32(this.i10,this.i2);
                                 si32(this.i18,this.i8);
                                 this.i18 = li32(this.i15);
                                 this.i17 *= 36;
                                 this.i17 = this.i19 + this.i17;
                                 si32(this.i18,this.i10);
                                 this.i18 = 1;
                                 si32(this.i18,this.i9);
                                 this.i19 = this.i17 + 12;
                                 this.i20 = this.i17 + 4;
                                 this.i21 = this.i17 + 8;
                                 this.i22 = this.i18;
                                 loop3:
                                 while(this.i18 >= 1)
                                 {
                                    this.i22 += -1;
                                    si32(this.i22,this.i9);
                                    this.i18 = li32(this.i2);
                                    this.i23 = this.i22 << 2;
                                    this.i23 = this.i18 + this.i23;
                                    this.i23 = li32(this.i23);
                                    while(true)
                                    {
                                       if(this.i23 != -1)
                                       {
                                          this.f0 = 0;
                                          this.i24 = li32(this.i11);
                                          this.i25 = this.i23 * 36;
                                          this.i25 = this.i24 + this.i25;
                                          this.f1 = lf32(this.i25 + 4);
                                          this.f2 = lf32(this.i19);
                                          this.f3 = lf32(this.i25);
                                          this.f4 = lf32(this.i21);
                                          this.f1 -= this.f2;
                                          this.f2 = this.f3 - this.f4;
                                          this.f3 = lf32(this.i17);
                                          this.f4 = lf32(this.i25 + 8);
                                          this.f3 -= this.f4;
                                          this.f1 = this.f1;
                                          this.f2 = this.f2;
                                          this.f3 = this.f3;
                                          this.f0 = this.f0;
                                          this.f0 = this.f0;
                                          this.f3 = this.f3;
                                          if(this.f3 <= this.f0)
                                          {
                                             this.f0 = 0;
                                             this.i25 = this.i23 * 36;
                                             this.i25 = this.i24 + this.i25;
                                             this.f3 = lf32(this.i20);
                                             this.f4 = lf32(this.i25 + 12);
                                             this.f3 -= this.f4;
                                             this.f3 = this.f3;
                                             this.f0 = this.f0;
                                             this.f0 = this.f0;
                                             this.f3 = this.f3;
                                             if(this.f3 <= this.f0)
                                             {
                                                this.f0 = 0;
                                                this.f0 = this.f0;
                                                this.f0 = this.f0;
                                                this.f2 = this.f2;
                                                if(this.f2 <= this.f0)
                                                {
                                                   this.f0 = 0;
                                                   this.f0 = this.f0;
                                                   this.f0 = this.f0;
                                                   this.f1 = this.f1;
                                                   if(this.f1 <= this.f0)
                                                   {
                                                      this.i25 = this.i23 * 36;
                                                      this.i25 = this.i24 + this.i25;
                                                      this.i26 = li32(this.i25 + 24);
                                                      this.i25 += 24;
                                                      if(this.i26 != -1)
                                                      {
                                                         this.i26 = li32(this.i8);
                                                         if(this.i22 == this.i26)
                                                         {
                                                            this.i27 = 0;
                                                            this.i28 = this.i26 << 1;
                                                            si32(this.i28,this.i8);
                                                            mstate.esp -= 8;
                                                            this.i26 <<= 3;
                                                            si32(this.i27,mstate.esp);
                                                            si32(this.i26,mstate.esp + 4);
                                                            state = 5;
                                                            mstate.esp -= 4;
                                                            FSM_pubrealloc.start();
                                                            return;
                                                         }
                                                         addr097e:
                                                         this.i22 = li32(this.i9);
                                                         this.i18 = li32(this.i2);
                                                         this.i25 = li32(this.i25);
                                                         this.i22 <<= 2;
                                                         this.i22 = this.i18 + this.i22;
                                                         si32(this.i25,this.i22);
                                                         this.i22 = li32(this.i9);
                                                         this.i22 += 1;
                                                         this.i18 = this.i23 * 36;
                                                         this.i18 = this.i24 + this.i18;
                                                         si32(this.i22,this.i9);
                                                         this.i23 = li32(this.i8);
                                                         this.i18 += 28;
                                                         if(this.i22 == this.i23)
                                                         {
                                                            this.i24 = 0;
                                                            this.i25 = li32(this.i2);
                                                            this.i26 = this.i23 << 1;
                                                            si32(this.i26,this.i8);
                                                            mstate.esp -= 8;
                                                            this.i23 <<= 3;
                                                            si32(this.i24,mstate.esp);
                                                            si32(this.i23,mstate.esp + 4);
                                                            state = 7;
                                                            mstate.esp -= 4;
                                                            FSM_pubrealloc.start();
                                                            return;
                                                         }
                                                         addr0b43:
                                                         this.i22 = li32(this.i9);
                                                         this.i23 = li32(this.i2);
                                                         this.i18 = li32(this.i18);
                                                         this.i22 <<= 2;
                                                         this.i22 = this.i23 + this.i22;
                                                         si32(this.i18,this.i22);
                                                         this.i22 = li32(this.i9);
                                                         this.i22 += 1;
                                                         si32(this.i22,this.i9);
                                                         this.i18 = this.i22;
                                                         break;
                                                      }
                                                      this.i22 = li32(this.i13);
                                                      if(this.i22 != this.i23)
                                                      {
                                                         this.i22 = li32(this.i4);
                                                         this.i18 = li32(this.i7);
                                                         if(this.i22 == this.i18)
                                                         {
                                                            this.i24 = 0;
                                                            this.i25 = li32(this.i6);
                                                            this.i26 = this.i18 << 1;
                                                            si32(this.i26,this.i7);
                                                            mstate.esp -= 8;
                                                            this.i18 *= 24;
                                                            si32(this.i24,mstate.esp);
                                                            si32(this.i18,mstate.esp + 4);
                                                            state = 3;
                                                            mstate.esp -= 4;
                                                            FSM_pubrealloc.start();
                                                            return;
                                                         }
                                                         addr0742:
                                                         this.i22 = li32(this.i4);
                                                         this.i18 = li32(this.i6);
                                                         this.i24 = li32(this.i13);
                                                         this.i22 *= 12;
                                                         this.i24 = this.i24 > this.i23 ? this.i23 : this.i24;
                                                         this.i22 = this.i18 + this.i22;
                                                         si32(this.i24,this.i22);
                                                         this.i22 = li32(this.i4);
                                                         this.i18 = li32(this.i13);
                                                         this.i24 = li32(this.i6);
                                                         this.i22 *= 12;
                                                         this.i18 = this.i18 < this.i23 ? this.i23 : this.i18;
                                                         this.i22 = this.i24 + this.i22;
                                                         si32(this.i18,this.i22 + 4);
                                                         this.i22 = li32(this.i4);
                                                         this.i22 += 1;
                                                         si32(this.i22,this.i4);
                                                      }
                                                      this.i18 = li32(this.i9);
                                                      if(this.i18 >= 1)
                                                      {
                                                         this.i22 = this.i18;
                                                         continue loop3;
                                                      }
                                                      addr0bd6:
                                                      this.i17 = li32(this.i2);
                                                      if(this.i17 != this.i10)
                                                      {
                                                         this.i18 = 0;
                                                         mstate.esp -= 8;
                                                         si32(this.i17,mstate.esp);
                                                         si32(this.i18,mstate.esp + 4);
                                                         state = 9;
                                                         mstate.esp -= 4;
                                                         FSM_pubrealloc.start();
                                                         return;
                                                      }
                                                      addr0c5c:
                                                      addr0c8c:
                                                      while(true)
                                                      {
                                                         this.i17 = li32(this.i3);
                                                         this.i16 += 4;
                                                         this.i5 += 1;
                                                         if(this.i17 <= this.i5)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr016b);
                                                      }
                                                      this.i2 = 0;
                                                      si32(this.i2,this.i3);
                                                      this.i2 = li32(this.i4);
                                                      this.i3 = li32(this.i1 + 44);
                                                      this.i5 = this.i2 * 12;
                                                      this.i5 = this.i3 + this.i5;
                                                      this.i6 = this.i1 + 44;
                                                      this.i7 = this.i3;
                                                      if(this.i2 == 0)
                                                      {
                                                         addr0cec:
                                                         this.i2 = 0;
                                                         addr1cba:
                                                         this.i3 = li32(this.i4);
                                                         if(this.i3 > this.i2)
                                                         {
                                                            addr1070:
                                                            this.i3 = li32(this.i6);
                                                            this.i5 = this.i2 * 12;
                                                            this.i5 = this.i3 + this.i5;
                                                            this.i7 = li32(this.i5);
                                                            if(this.i7 >= 0)
                                                            {
                                                               this.i8 = li32(this.i1 + 12);
                                                               this.i9 = this.i1 + 12;
                                                               if(this.i8 > this.i7)
                                                               {
                                                                  this.i8 = li32(this.i1 + 4);
                                                                  this.i7 *= 36;
                                                                  this.i10 = this.i2 * 12;
                                                                  this.i3 += this.i10;
                                                                  this.i7 = this.i8 + this.i7;
                                                                  this.i7 = li32(this.i7 + 16);
                                                                  this.i8 = li32(this.i3 + 4);
                                                                  this.i3 += 4;
                                                                  this.i10 = this.i1 + 4;
                                                                  if(this.i8 >= 0)
                                                                  {
                                                                     this.i9 = li32(this.i9);
                                                                     while(true)
                                                                     {
                                                                        if(this.i9 > this.i8)
                                                                        {
                                                                           this.i9 = li32(this.i10);
                                                                           this.i8 *= 36;
                                                                           this.i8 = this.i9 + this.i8;
                                                                           this.i8 = li32(this.i8 + 16);
                                                                           this.i9 = li32(this.i7 + 16);
                                                                           this.i10 = li32(this.i8 + 16);
                                                                           this.i7 = li32(this.i7 + 20);
                                                                           this.i8 = li32(this.i8 + 20);
                                                                           this.i11 = li32(this.i9 + 12);
                                                                           this.i12 = li32(this.i10 + 12);
                                                                           if(this.i11 != this.i12)
                                                                           {
                                                                              this.i13 = li32(this.i12 + 120);
                                                                              loop16:
                                                                              while(true)
                                                                              {
                                                                                 if(this.i13 != 0)
                                                                                 {
                                                                                    do
                                                                                    {
                                                                                       this.i14 = li32(this.i13);
                                                                                       if(this.i14 == this.i11)
                                                                                       {
                                                                                          this.i14 = li32(this.i13 + 4);
                                                                                          this.i15 = li32(this.i14 + 48);
                                                                                          this.i16 = li32(this.i14 + 52);
                                                                                          this.i17 = li32(this.i14 + 56);
                                                                                          this.i14 = li32(this.i14 + 60);
                                                                                          if(this.i16 == this.i10)
                                                                                          {
                                                                                             if(this.i15 == this.i9)
                                                                                             {
                                                                                                if(this.i14 == this.i8)
                                                                                                {
                                                                                                   if(this.i17 == this.i7)
                                                                                                   {
                                                                                                      break loop16;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          if(this.i16 == this.i9)
                                                                                          {
                                                                                             if(this.i15 == this.i10)
                                                                                             {
                                                                                                if(this.i14 == this.i7)
                                                                                                {
                                                                                                   if(this.i17 == this.i8)
                                                                                                   {
                                                                                                      break loop16;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       this.i13 = li32(this.i13 + 12);
                                                                                    }
                                                                                    while(this.i13 != 0);
                                                                                 }
                                                                                 this.i13 = li32(this.i12);
                                                                                 if(this.i13 != 2)
                                                                                 {
                                                                                    this.i13 = li32(this.i11);
                                                                                    if(this.i13 != 2)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                 }
                                                                                 this.i12 = li32(this.i12 + 116);
                                                                                 if(this.i12 != 0)
                                                                                 {
                                                                                    do
                                                                                    {
                                                                                       this.i13 = li32(this.i12);
                                                                                       if(this.i13 == this.i11)
                                                                                       {
                                                                                          this.i13 = li32(this.i12 + 4);
                                                                                          this.i13 = li8(this.i13 + 57);
                                                                                          if(this.i13 == 0)
                                                                                          {
                                                                                             break loop16;
                                                                                          }
                                                                                       }
                                                                                       this.i12 = li32(this.i12 + 12);
                                                                                    }
                                                                                    while(this.i12 != 0);
                                                                                 }
                                                                                 this.i11 = li32(this.i0 + 68);
                                                                                 if(this.i11 != 0)
                                                                                 {
                                                                                    this.i12 = li32(this.i11);
                                                                                    this.i12 = li32(this.i12 + 8);
                                                                                    mstate.esp -= 12;
                                                                                    si32(this.i11,mstate.esp);
                                                                                    si32(this.i9,mstate.esp + 4);
                                                                                    si32(this.i10,mstate.esp + 8);
                                                                                    state = 13;
                                                                                    mstate.esp -= 4;
                                                                                    mstate.funcs[this.i12]();
                                                                                    return;
                                                                                 }
                                                                                 addr1462:
                                                                                 addr1797:
                                                                                 this.i11 = li32(this.i0 + 76);
                                                                                 this.i12 = li8(cmodule.Box2D.__ZN9b2Contact13s_initializedE_2E_b);
                                                                                 if(this.i12 == 0)
                                                                                 {
                                                                                    this.i12 = cmodule.Box2D.__ZN15b2CircleContact6CreateEP9b2FixtureiS1_iP16b2BlockAllocator;
                                                                                    si32(this.i12,cmodule.Box2D.__ZN9b2Contact11s_registersE);
                                                                                    this.i12 = cmodule.Box2D.__ZN15b2CircleContact7DestroyEP9b2ContactP16b2BlockAllocator;
                                                                                    si32(this.i12,cmodule.Box2D.__ZN9b2Contact11s_registersE + 4);
                                                                                    this.i12 = 1;
                                                                                    si8(this.i12,cmodule.Box2D.__ZN9b2Contact11s_registersE + 8);
                                                                                    this.i13 = cmodule.Box2D.__ZN25b2PolygonAndCircleContact6CreateEP9b2FixtureiS1_iP16b2BlockAllocator;
                                                                                    si32(this.i13,cmodule.Box2D.__ZN9b2Contact11s_registersE + 96);
                                                                                    this.i14 = cmodule.Box2D.__ZN25b2PolygonAndCircleContact7DestroyEP9b2ContactP16b2BlockAllocator;
                                                                                    si32(this.i14,cmodule.Box2D.__ZN9b2Contact11s_registersE + 100);
                                                                                    si8(this.i12,cmodule.Box2D.__ZN9b2Contact11s_registersE + 104);
                                                                                    si32(this.i13,cmodule.Box2D.__ZN9b2Contact11s_registersE + 24);
                                                                                    si32(this.i14,cmodule.Box2D.__ZN9b2Contact11s_registersE + 28);
                                                                                    this.i13 = 0;
                                                                                    si8(this.i13,cmodule.Box2D.__ZN9b2Contact11s_registersE + 32);
                                                                                    this.i14 = cmodule.Box2D.__ZN16b2PolygonContact6CreateEP9b2FixtureiS1_iP16b2BlockAllocator;
                                                                                    si32(this.i14,cmodule.Box2D.__ZN9b2Contact11s_registersE + 120);
                                                                                    this.i14 = cmodule.Box2D.__ZN16b2PolygonContact7DestroyEP9b2ContactP16b2BlockAllocator;
                                                                                    si32(this.i14,cmodule.Box2D.__ZN9b2Contact11s_registersE + 124);
                                                                                    si8(this.i12,cmodule.Box2D.__ZN9b2Contact11s_registersE + 128);
                                                                                    this.i14 = cmodule.Box2D.__ZN22b2EdgeAndCircleContact6CreateEP9b2FixtureiS1_iP16b2BlockAllocator;
                                                                                    si32(this.i14,cmodule.Box2D.__ZN9b2Contact11s_registersE + 48);
                                                                                    this.i15 = cmodule.Box2D.__ZN22b2EdgeAndCircleContact7DestroyEP9b2ContactP16b2BlockAllocator;
                                                                                    si32(this.i15,cmodule.Box2D.__ZN9b2Contact11s_registersE + 52);
                                                                                    si8(this.i12,cmodule.Box2D.__ZN9b2Contact11s_registersE + 56);
                                                                                    si32(this.i14,cmodule.Box2D.__ZN9b2Contact11s_registersE + 12);
                                                                                    si32(this.i15,cmodule.Box2D.__ZN9b2Contact11s_registersE + 16);
                                                                                    si8(this.i13,cmodule.Box2D.__ZN9b2Contact11s_registersE + 20);
                                                                                    this.i14 = cmodule.Box2D.__ZN23b2EdgeAndPolygonContact6CreateEP9b2FixtureiS1_iP16b2BlockAllocator;
                                                                                    si32(this.i14,cmodule.Box2D.__ZN9b2Contact11s_registersE + 72);
                                                                                    this.i15 = cmodule.Box2D.__ZN23b2EdgeAndPolygonContact7DestroyEP9b2ContactP16b2BlockAllocator;
                                                                                    si32(this.i15,cmodule.Box2D.__ZN9b2Contact11s_registersE + 76);
                                                                                    si8(this.i12,cmodule.Box2D.__ZN9b2Contact11s_registersE + 80);
                                                                                    si32(this.i14,cmodule.Box2D.__ZN9b2Contact11s_registersE + 108);
                                                                                    si32(this.i15,cmodule.Box2D.__ZN9b2Contact11s_registersE + 112);
                                                                                    si8(this.i13,cmodule.Box2D.__ZN9b2Contact11s_registersE + 116);
                                                                                    this.i14 = cmodule.Box2D.__ZN22b2LoopAndCircleContact6CreateEP9b2FixtureiS1_iP16b2BlockAllocator;
                                                                                    si32(this.i14,cmodule.Box2D.__ZN9b2Contact11s_registersE + 144);
                                                                                    this.i15 = cmodule.Box2D.__ZN22b2LoopAndCircleContact7DestroyEP9b2ContactP16b2BlockAllocator;
                                                                                    si32(this.i15,cmodule.Box2D.__ZN9b2Contact11s_registersE + 148);
                                                                                    si8(this.i12,cmodule.Box2D.__ZN9b2Contact11s_registersE + 152);
                                                                                    si32(this.i14,cmodule.Box2D.__ZN9b2Contact11s_registersE + 36);
                                                                                    si32(this.i15,cmodule.Box2D.__ZN9b2Contact11s_registersE + 40);
                                                                                    si8(this.i13,cmodule.Box2D.__ZN9b2Contact11s_registersE + 44);
                                                                                    this.i14 = cmodule.Box2D.__ZN23b2LoopAndPolygonContact6CreateEP9b2FixtureiS1_iP16b2BlockAllocator;
                                                                                    si32(this.i14,cmodule.Box2D.__ZN9b2Contact11s_registersE + 168);
                                                                                    this.i15 = cmodule.Box2D.__ZN23b2LoopAndPolygonContact7DestroyEP9b2ContactP16b2BlockAllocator;
                                                                                    si32(this.i15,cmodule.Box2D.__ZN9b2Contact11s_registersE + 172);
                                                                                    si8(this.i12,cmodule.Box2D.__ZN9b2Contact11s_registersE + 176);
                                                                                    si32(this.i14,cmodule.Box2D.__ZN9b2Contact11s_registersE + 132);
                                                                                    si32(this.i15,cmodule.Box2D.__ZN9b2Contact11s_registersE + 136);
                                                                                    si8(this.i13,cmodule.Box2D.__ZN9b2Contact11s_registersE + 140);
                                                                                    si8(this.i12,cmodule.Box2D.__ZN9b2Contact13s_initializedE_2E_b);
                                                                                 }
                                                                                 this.i12 = li32(this.i9 + 16);
                                                                                 this.i13 = li32(this.i10 + 16);
                                                                                 this.i12 = li32(this.i12 + 4);
                                                                                 this.i13 = li32(this.i13 + 4);
                                                                                 if(uint(this.i12) >= uint(4))
                                                                                 {
                                                                                    this.i2 = cmodule.Box2D.___sF;
                                                                                    mstate.esp -= 24;
                                                                                    this.i0 = cmodule.Box2D.__2E_str1670;
                                                                                    this.i1 = cmodule.Box2D.__2E_str18225;
                                                                                    this.i3 = cmodule.Box2D.__ZZN11b2LoopShape6CreateEPK6b2Vec2iE8__func__;
                                                                                    this.i4 = cmodule.Box2D.__2E_str17224;
                                                                                    this.i5 = 80;
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    if(uint(this.i13) < uint(4))
                                                                                    {
                                                                                       §§goto(addr1843);
                                                                                    }
                                                                                    this.i2 = cmodule.Box2D.___sF;
                                                                                    mstate.esp -= 24;
                                                                                    this.i0 = cmodule.Box2D.__2E_str1670;
                                                                                    this.i1 = cmodule.Box2D.__2E_str19226;
                                                                                    this.i3 = cmodule.Box2D.__ZZN11b2LoopShape6CreateEPK6b2Vec2iE8__func__;
                                                                                    this.i4 = cmodule.Box2D.__2E_str17224;
                                                                                    this.i5 = 81;
                                                                                 }
                                                                                 this.i2 += 176;
                                                                                 si32(this.i2,mstate.esp);
                                                                                 si32(this.i0,mstate.esp + 4);
                                                                                 si32(this.i1,mstate.esp + 8);
                                                                                 si32(this.i3,mstate.esp + 12);
                                                                                 si32(this.i4,mstate.esp + 16);
                                                                                 si32(this.i5,mstate.esp + 20);
                                                                                 break loop12;
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              this.i7 = li32(this.i4);
                                                                              this.i8 = this.i2 + 1;
                                                                              if(this.i7 <= this.i8)
                                                                              {
                                                                                 this.i2 = this.i8;
                                                                              }
                                                                              else
                                                                              {
                                                                                 this.i8 = li32(this.i6);
                                                                                 this.i5 = li32(this.i5);
                                                                                 this.i9 = this.i2 * 12;
                                                                                 this.i8 += this.i9;
                                                                                 this.i2 += 1;
                                                                                 while(true)
                                                                                 {
                                                                                    this.i9 = li32(this.i8 + 12);
                                                                                    if(this.i9 == this.i5)
                                                                                    {
                                                                                       this.i9 = li32(this.i8 + 16);
                                                                                       this.i10 = li32(this.i3);
                                                                                       if(this.i9 == this.i10)
                                                                                       {
                                                                                          this.i8 += 12;
                                                                                          this.i2 += 1;
                                                                                          if(this.i7 <= this.i2)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                              }
                                                                              §§goto(addr1cba);
                                                                           }
                                                                           addr1cd4:
                                                                           this.i0 = li32(this.i1);
                                                                           this.i2 = this.i1;
                                                                           this.i3 = this.i1;
                                                                           if(this.i0 != -1)
                                                                           {
                                                                              this.i0 = 0;
                                                                              this.i4 = this.i1 + 20;
                                                                              this.i1 += 4;
                                                                              §§goto(addr1d19);
                                                                           }
                                                                           break loop11;
                                                                           addr1be7:
                                                                        }
                                                                     }
                                                                     addr10ce:
                                                                     this.i2 = cmodule.Box2D.___sF;
                                                                     mstate.esp -= 24;
                                                                     this.i0 = cmodule.Box2D.__2E_str1670;
                                                                     this.i1 = cmodule.Box2D.__2E_str3210;
                                                                     this.i3 = cmodule.Box2D.__ZZNK13b2DynamicTree11GetUserDataEiE8__func__;
                                                                     this.i4 = cmodule.Box2D.__2E_str2209;
                                                                     this.i5 = 141;
                                                                     §§goto(addr1797);
                                                                  }
                                                                  §§goto(addr10ce);
                                                               }
                                                            }
                                                            §§goto(addr10ce);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         this.i8 = this.i5 - this.i3;
                                                         this.i9 = this.i8 / 12;
                                                         this.i10 = this.i8 + -12;
                                                         if(uint(this.i10) >= uint(12))
                                                         {
                                                            this.i10 = -1;
                                                            do
                                                            {
                                                               this.i10 += 1;
                                                               this.i9 >>= 1;
                                                            }
                                                            while(this.i9 != 1);
                                                            this.i9 = this.i10 << 1;
                                                            this.i9 += 2;
                                                         }
                                                         else
                                                         {
                                                            this.i9 = 0;
                                                         }
                                                         mstate.esp -= 12;
                                                         si32(this.i7,mstate.esp);
                                                         si32(this.i5,mstate.esp + 4);
                                                         si32(this.i9,mstate.esp + 8);
                                                         mstate.esp -= 4;
                                                         FSM__ZSt16__introsort_loopIP6b2PairiPFbRKS0_S3_EEvT_S6_T0_T1_.start();
                                                         addr0dca:
                                                         mstate.esp += 12;
                                                         if(this.i8 >= 204)
                                                         {
                                                            mstate.esp -= 8;
                                                            this.i5 = this.i7 + 192;
                                                            si32(this.i7,mstate.esp);
                                                            si32(this.i5,mstate.esp + 4);
                                                            mstate.esp -= 4;
                                                            FSM__ZSt16__insertion_sortIP6b2PairPFbRKS0_S3_EEvT_S6_T0_.start();
                                                            addr0e30:
                                                            mstate.esp += 8;
                                                            if(this.i2 != 16)
                                                            {
                                                               this.i5 = 16;
                                                               do
                                                               {
                                                                  this.i8 = 0;
                                                                  this.i9 = li32(this.i3 + 192);
                                                                  this.i10 = li32(this.i3 + 196);
                                                                  this.i11 = li32(this.i3 + 200);
                                                                  this.i12 = this.i3 + 192;
                                                                  this.i13 = this.i3;
                                                                  while(true)
                                                                  {
                                                                     this.i15 = this.i13;
                                                                     this.i14 = this.i8;
                                                                     this.i13 = this.i12;
                                                                     this.i8 = this.i14 ^ -1;
                                                                     this.i8 = this.i5 + this.i8;
                                                                     this.i12 = this.i8 * 12;
                                                                     this.i8 = li32(this.i15 + 180);
                                                                     this.i12 = this.i7 + this.i12;
                                                                     if(this.i9 >= this.i8)
                                                                     {
                                                                        if(this.i9 != this.i8)
                                                                        {
                                                                           this.i8 = this.i13;
                                                                           break;
                                                                        }
                                                                        this.i16 = li32(this.i15 + 184);
                                                                        this.i17 = this.i13;
                                                                        if(this.i10 >= this.i16)
                                                                        {
                                                                           this.i8 = this.i17;
                                                                           break;
                                                                        }
                                                                        this.i16 = this.i17;
                                                                     }
                                                                     else
                                                                     {
                                                                        this.i16 = this.i13;
                                                                     }
                                                                     si32(this.i8,this.i16);
                                                                     this.i8 = li32(this.i15 + 184);
                                                                     si32(this.i8,this.i13 + 4);
                                                                     this.i8 = li32(this.i15 + 188);
                                                                     si32(this.i8,this.i13 + 8);
                                                                     this.i8 = this.i15 + -12;
                                                                     this.i14 += 1;
                                                                     this.i13 = this.i8;
                                                                     this.i8 = this.i14;
                                                                  }
                                                                  si32(this.i9,this.i8);
                                                                  si32(this.i10,this.i13 + 4);
                                                                  si32(this.i11,this.i13 + 8);
                                                                  this.i3 += 12;
                                                                  this.i5 += 1;
                                                               }
                                                               while(this.i5 != this.i2);
                                                            }
                                                            §§goto(addr0cec);
                                                         }
                                                         else
                                                         {
                                                            mstate.esp -= 8;
                                                            si32(this.i7,mstate.esp);
                                                            si32(this.i5,mstate.esp + 4);
                                                            mstate.esp -= 4;
                                                            FSM__ZSt16__insertion_sortIP6b2PairPFbRKS0_S3_EEvT_S6_T0_.start();
                                                            addr1042:
                                                            mstate.esp += 8;
                                                            this.i2 = li32(this.i4);
                                                            if(this.i2 >= 1)
                                                            {
                                                               this.i2 = 0;
                                                               §§goto(addr1070);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr1cd4);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       this.i18 = this.i22;
                                       break;
                                    }
                                    this.i23 = this.i22;
                                    if(this.i23 >= 1)
                                    {
                                       this.i22 = this.i18;
                                       this.i18 = this.i23;
                                       continue;
                                    }
                                    §§goto(addr0bd6);
                                 }
                                 this.i5 = cmodule.Box2D.___sF;
                                 mstate.esp -= 24;
                                 this.i16 = cmodule.Box2D.__2E_str1670;
                                 this.i0 = cmodule.Box2D.__2E_str38245;
                                 this.i1 = cmodule.Box2D.__ZZN15b2GrowableStackIiLi256EE3PopEvE8__func__;
                                 this.i2 = cmodule.Box2D.__2E_str37244;
                                 this.i3 = 67;
                                 this.i5 += 176;
                                 si32(this.i5,mstate.esp);
                                 si32(this.i16,mstate.esp + 4);
                                 si32(this.i0,mstate.esp + 8);
                                 si32(this.i1,mstate.esp + 12);
                                 si32(this.i2,mstate.esp + 16);
                                 si32(this.i3,mstate.esp + 20);
                                 state = 1;
                                 mstate.esp -= 4;
                                 FSM_fprintf.start();
                                 return;
                              }
                              break;
                           }
                        }
                        state = 14;
                        mstate.esp -= 4;
                        FSM_fprintf.start();
                        return;
                     }
                     this.i5 = cmodule.Box2D.___sF;
                     mstate.esp -= 24;
                     this.i16 = cmodule.Box2D.__2E_str1670;
                     this.i0 = cmodule.Box2D.__2E_str3210;
                     this.i1 = cmodule.Box2D.__ZZNK13b2DynamicTree10GetFatAABBEiE8__func__;
                     this.i2 = cmodule.Box2D.__2E_str2209;
                     this.i3 = 147;
                     this.i5 += 176;
                     si32(this.i5,mstate.esp);
                     si32(this.i16,mstate.esp + 4);
                     si32(this.i0,mstate.esp + 8);
                     si32(this.i1,mstate.esp + 12);
                     si32(this.i2,mstate.esp + 16);
                     si32(this.i3,mstate.esp + 20);
                     break loop12;
                  }
                  §§goto(addr0c5c);
               }
               §§goto(addr0c8c);
            case 2:
               §§goto(addr03d5);
            case 4:
               this.i22 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr0742);
            case 5:
               this.i26 = mstate.eax;
               mstate.esp += 8;
               si32(this.i26,this.i2);
               this.i27 = this.i18;
               this.i22 <<= 2;
               cmodule.Box2D.memcpy(this.i26,this.i27,this.i22);
               this.i22 = this.i18;
               if(this.i10 != this.i18)
               {
                  this.i18 = 0;
                  mstate.esp -= 8;
                  si32(this.i22,mstate.esp);
                  si32(this.i18,mstate.esp + 4);
                  state = 6;
                  mstate.esp -= 4;
                  FSM_pubrealloc.start();
                  return;
               }
               §§goto(addr097e);
               break;
            case 6:
               this.i22 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr097e);
            case 7:
               this.i23 = mstate.eax;
               mstate.esp += 8;
               si32(this.i23,this.i2);
               this.i24 = this.i25;
               this.i22 <<= 2;
               cmodule.Box2D.memcpy(this.i23,this.i24,this.i22);
               if(this.i10 != this.i25)
               {
                  this.i22 = 0;
                  mstate.esp -= 8;
                  si32(this.i25,mstate.esp);
                  si32(this.i22,mstate.esp + 4);
                  state = 8;
                  mstate.esp -= 4;
                  FSM_pubrealloc.start();
                  return;
               }
               §§goto(addr0b43);
               break;
            case 8:
               this.i22 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr0b43);
            case 9:
               this.i17 = mstate.eax;
               mstate.esp += 8;
               si32(this.i18,this.i2);
               §§goto(addr0c5c);
            case 10:
               §§goto(addr0dca);
            case 12:
               §§goto(addr1042);
            case 11:
               §§goto(addr0e30);
            case 13:
               this.i11 = mstate.eax;
               mstate.esp += 12;
               if(this.i11 != 0)
               {
                  §§goto(addr1462);
               }
               §§goto(addr1be7);
            case 16:
               this.i7 = mstate.eax;
               mstate.esp += 20;
               §§goto(addr1a15);
            case 17:
               this.i7 = mstate.eax;
               mstate.esp += 20;
               §§goto(addr1a15);
            case 15:
               addr1843:
               this.i14 = cmodule.Box2D.__ZN9b2Contact11s_registersE;
               this.i15 = this.i12 * 48;
               this.i16 = this.i13 * 12;
               this.i14 += this.i15;
               this.i14 += this.i16;
               this.i14 = li32(this.i14);
               if(this.i14 == 0)
               {
                  this.i7 = 0;
                  while(true)
                  {
                     this.i8 = 0;
                     this.i9 = li32(this.i7 + 48);
                     this.i10 = li32(this.i7 + 52);
                     this.i9 = li32(this.i9 + 12);
                     this.i10 = li32(this.i10 + 12);
                     si32(this.i8,this.i7 + 8);
                     this.i8 = li32(this.i0 + 60);
                     si32(this.i8,this.i7 + 12);
                     this.i8 = li32(this.i0 + 60);
                     this.i11 = this.i0 + 60;
                     if(this.i8 != 0)
                     {
                        si32(this.i7,this.i8 + 8);
                     }
                     this.i8 = 0;
                     si32(this.i7,this.i11);
                     si32(this.i7,this.i7 + 20);
                     si32(this.i10,this.i7 + 16);
                     si32(this.i8,this.i7 + 24);
                     this.i8 = li32(this.i9 + 120);
                     si32(this.i8,this.i7 + 28);
                     this.i8 = li32(this.i9 + 120);
                     this.i11 = this.i9 + 120;
                     if(this.i8 != 0)
                     {
                        this.i12 = this.i7 + 16;
                        si32(this.i12,this.i8 + 8);
                     }
                     this.i8 = 0;
                     this.i12 = this.i7 + 16;
                     si32(this.i12,this.i11);
                     si32(this.i7,this.i7 + 36);
                     si32(this.i9,this.i7 + 32);
                     si32(this.i8,this.i7 + 40);
                     this.i8 = li32(this.i10 + 120);
                     si32(this.i8,this.i7 + 44);
                     this.i8 = li32(this.i10 + 120);
                     this.i9 = this.i10 + 120;
                     if(this.i8 != 0)
                     {
                        this.i10 = this.i7 + 32;
                        si32(this.i10,this.i8 + 8);
                     }
                     this.i7 += 32;
                     si32(this.i7,this.i9);
                     this.i7 = li32(this.i0 + 64);
                     this.i7 += 1;
                     si32(this.i7,this.i0 + 64);
                     break loop16;
                     this.i7 = 0;
                  }
                  break loop13;
                  addr1a15:
               }
               this.i15 = cmodule.Box2D.__ZN9b2Contact11s_registersE;
               this.i12 *= 48;
               this.i13 *= 12;
               this.i12 = this.i15 + this.i12;
               this.i12 += this.i13;
               this.i12 = li8(this.i12 + 8);
               if(this.i12 != 0)
               {
                  mstate.esp -= 20;
                  si32(this.i9,mstate.esp);
                  si32(this.i7,mstate.esp + 4);
                  si32(this.i10,mstate.esp + 8);
                  si32(this.i8,mstate.esp + 12);
                  si32(this.i11,mstate.esp + 16);
                  state = 16;
                  mstate.esp -= 4;
                  mstate.funcs[this.i14]();
                  return;
               }
               mstate.esp -= 20;
               si32(this.i10,mstate.esp);
               si32(this.i8,mstate.esp + 4);
               si32(this.i9,mstate.esp + 8);
               si32(this.i7,mstate.esp + 12);
               si32(this.i11,mstate.esp + 16);
               state = 17;
               mstate.esp -= 4;
               mstate.funcs[this.i14]();
               return;
            case 1:
               mstate.esp += 24;
               state = 2;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 3:
               this.i18 = mstate.eax;
               mstate.esp += 8;
               si32(this.i18,this.i6);
               this.i22 *= 12;
               cmodule.Box2D.memcpy(this.i18,this.i25,this.i22);
               mstate.esp -= 8;
               si32(this.i25,mstate.esp);
               si32(this.i24,mstate.esp + 4);
               state = 4;
               mstate.esp -= 4;
               FSM_pubrealloc.start();
               return;
            case 14:
               mstate.esp += 24;
               state = 15;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 18:
               mstate.esp += 8;
               mstate.esp -= 8;
               si32(this.i3,mstate.esp);
               si32(this.i5,mstate.esp + 4);
               state = 19;
               mstate.esp -= 4;
               FSM__ZN13b2DynamicTree10InsertLeafEi.start();
               return;
            case 19:
               mstate.esp += 8;
               this.i0 += 1;
               if(this.i0 != 4)
               {
                  addr1d19:
                  this.i5 = li32(this.i2);
                  this.i6 = li32(this.i1);
                  this.i7 = this.i5 * 36;
                  this.i7 = this.i6 + this.i7;
                  this.i7 = li32(this.i7 + 24);
                  if(this.i7 != -1)
                  {
                     this.i7 = 0;
                     this.i8 = li32(this.i4);
                     do
                     {
                        this.i9 = this.i8 >>> this.i7;
                        this.i9 &= 1;
                        this.i5 *= 36;
                        this.i9 <<= 2;
                        this.i5 = this.i6 + this.i5;
                        this.i5 += this.i9;
                        this.i5 = li32(this.i5 + 24);
                        this.i9 = this.i5 * 36;
                        this.i9 = this.i6 + this.i9;
                        this.i9 = li32(this.i9 + 24);
                        this.i7 += 1;
                        this.i7 &= 31;
                     }
                     while(this.i9 != -1);
                  }
                  this.i6 = li32(this.i4);
                  this.i6 += 1;
                  si32(this.i6,this.i4);
                  mstate.esp -= 8;
                  si32(this.i3,mstate.esp);
                  si32(this.i5,mstate.esp + 4);
                  state = 18;
                  mstate.esp -= 4;
                  FSM__ZN13b2DynamicTree10RemoveLeafEi.start();
                  return;
               }
               break;
            default:
               throw "Invalid state in __ZN12b2BroadPhase11UpdatePairsI16b2ContactManagerEEvPT_";
         }
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp += 4;
         mstate.esp += 4;
         mstate.gworker = caller;
      }
   }
}

