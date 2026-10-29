package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import avm2.intrinsics.memory.sxi16;
   import avm2.intrinsics.memory.sxi8;
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.system.*;
   import flash.text.*;
   import flash.utils.*;
   
   public final class FSM___vfprintf extends Machine
   {
      
      public static const intRegCount:int = 32;
      
      public static const NumberRegCount:int = 5;
      
      public var i21:int;
      
      public var i30:int;
      
      public var i31:int;
      
      public var f0:Number;
      
      public var f1:Number;
      
      public var f3:Number;
      
      public var f2:Number;
      
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
      
      public var i29:int;
      
      public function FSM___vfprintf()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM___vfprintf = null;
         _loc1_ = new FSM___vfprintf();
         cmodule.Box2D.gstate.gworker = _loc1_;
      }
      
      final override public function work() : void
      {
         loop71:
         switch(state)
         {
            case 0:
               mstate.esp -= 4;
               si32(mstate.ebp,mstate.esp);
               mstate.ebp = mstate.esp;
               mstate.esp -= 2556;
               this.i0 = 0;
               si8(this.i0,mstate.ebp + -1745);
               mstate.esp -= 4;
               FSM_localeconv.start();
            case 1:
               this.i0 = li32(mstate.ebp + 8);
               this.i1 = li16(this.i0 + 12);
               this.i2 = li32(cmodule.Box2D._ret_2E_1494_2E_0);
               si32(this.i2,mstate.ebp + -2097);
               this.i2 = this.i0 + 12;
               si32(this.i2,mstate.ebp + -1971);
               this.i2 = mstate.ebp + -1328;
               this.i3 = mstate.ebp + -192;
               si32(this.i3,mstate.ebp + -2196);
               this.i3 = mstate.ebp + -1736;
               si32(this.i3,mstate.ebp + -2205);
               this.i3 = mstate.ebp + -1648;
               si32(this.i3,mstate.ebp + -2034);
               this.i3 = mstate.ebp + -208;
               si32(this.i3,mstate.ebp + -2052);
               this.i3 = li32(mstate.ebp + 12);
               si32(this.i3,mstate.ebp + -2232);
               this.i3 = li32(mstate.ebp + 16);
               this.i4 = this.i1 & 8;
               loop72:
               while(true)
               {
                  if(this.i4 != 0)
                  {
                     this.i4 = li32(this.i0 + 16);
                     if(this.i4 == 0)
                     {
                        this.i1 &= 512;
                        if(this.i1 == 0)
                        {
                           break;
                        }
                     }
                     addr039f:
                     this.i1 = li32(mstate.ebp + -1971);
                     this.i1 = li16(this.i1);
                     this.i4 = this.i1 & 0x1A;
                     if(this.i4 == 10)
                     {
                        this.i4 = li16(this.i0 + 14);
                        this.i5 = this.i4 << 16;
                        this.i5 >>= 16;
                        if(this.i5 >= 0)
                        {
                           this.i5 = 1024;
                           this.i1 &= -3;
                           si16(this.i1,mstate.ebp + -292);
                           si16(this.i4,mstate.ebp + -290);
                           this.i1 = li32(this.i0 + 28);
                           si32(this.i1,mstate.ebp + -276);
                           this.i1 = li32(this.i0 + 44);
                           si32(this.i1,mstate.ebp + -260);
                           this.i0 = li32(this.i0 + 56);
                           si32(this.i0,mstate.ebp + -248);
                           si32(this.i2,mstate.ebp + -304);
                           si32(this.i2,mstate.ebp + -288);
                           si32(this.i5,mstate.ebp + -296);
                           si32(this.i5,mstate.ebp + -284);
                           this.i0 = 0;
                           si32(this.i0,mstate.ebp + -280);
                           this.i0 = mstate.ebp + -304;
                           mstate.esp -= 12;
                           si32(this.i0,mstate.esp);
                           this.i1 = li32(mstate.ebp + -2232);
                           si32(this.i1,mstate.esp + 4);
                           si32(this.i3,mstate.esp + 8);
                           state = 3;
                           mstate.esp -= 4;
                           FSM___vfprintf.start();
                           return;
                        }
                     }
                     this.i1 = 0;
                     si32(this.i1,mstate.ebp + -1540);
                     si32(this.i3,mstate.ebp + -1752);
                     si32(this.i3,mstate.ebp + -1460);
                     this.i2 = mstate.ebp + -1712;
                     si32(this.i2,mstate.ebp + -1728);
                     si32(this.i1,mstate.ebp + -1720);
                     this.i4 = mstate.ebp + -1728;
                     si32(this.i1,mstate.ebp + -1724);
                     this.i1 = li32(mstate.ebp + -2232);
                     this.i1 = li8(this.i1);
                     this.i5 = this.i4 + 4;
                     this.i4 += 8;
                     this.i6 = mstate.ebp + -1460;
                     while(true)
                     {
                        if(this.i1 != 0)
                        {
                           this.i6 = this.i1 & 0xFF;
                           if(this.i6 != 37)
                           {
                              this.i1 = 1;
                              this.i7 = 0;
                              this.i8 = this.i6;
                              this.i9 = this.i6;
                              this.i10 = this.i6;
                              this.i11 = this.i6;
                              this.i12 = this.i7;
                              this.i13 = li32(mstate.ebp + -2232);
                              this.i14 = this.i2;
                              this.i15 = this.i13;
                              this.i16 = this.i6;
                              this.i17 = this.i12;
                              this.i18 = this.i6;
                              this.i19 = this.i6;
                              this.i20 = this.i6;
                              this.i21 = this.i12;
                              this.i22 = this.i6;
                              this.i23 = this.i6;
                              addr0b2d:
                              this.i24 = this.i13;
                              this.i25 = this.i14;
                              this.i26 = this.i7;
                              this.i7 = this.i15;
                              this.i27 = this.i16;
                              this.i28 = this.i17;
                              this.i29 = this.i11;
                              this.i11 = this.i18;
                              this.i30 = this.i19;
                              this.i19 = this.i20;
                              this.i18 = this.i21;
                              this.i17 = this.i22;
                              this.i16 = this.i23;
                              do
                              {
                                 this.i23 = li8(this.i7 + 1);
                                 this.i22 = this.i7 + 1;
                                 this.i7 = this.i22;
                                 if(this.i23 == 0)
                                 {
                                    break;
                                 }
                                 this.i13 = this.i23 & 0xFF;
                              }
                              while(this.i13 != 37);
                              this.i14 = this.i12;
                              this.i13 = this.i8;
                              this.i15 = this.i6;
                              this.i20 = this.i30;
                              this.i21 = this.i11;
                              this.i12 = this.i10;
                              this.i11 = this.i9;
                              this.i10 = this.i29;
                              this.i6 = this.i1;
                              this.i8 = this.i28;
                              this.i7 = this.i27;
                              this.i1 = this.i23;
                              this.i9 = this.i26;
                              this.i23 = this.i25;
                              break;
                           }
                        }
                        this.i6 = 1;
                        this.i8 = 0;
                        this.i9 = this.i8;
                        this.i10 = this.i7;
                        this.i11 = this.i7;
                        this.i12 = this.i7;
                        this.i13 = this.i7;
                        this.i14 = this.i8;
                        this.i15 = this.i7;
                        this.i16 = this.i7;
                        this.i17 = this.i7;
                        this.i18 = this.i8;
                        this.i19 = this.i7;
                        this.i20 = this.i7;
                        this.i21 = this.i7;
                        this.i22 = li32(mstate.ebp + -2232);
                        this.i23 = this.i2;
                        this.i24 = this.i22;
                        break;
                     }
                     this.i25 = this.i12;
                     this.i26 = this.i10;
                     this.i27 = this.i7;
                     this.i28 = this.i22;
                     this.i29 = this.i1;
                     this.i30 = this.i9;
                     this.i31 = this.i23;
                     this.i1 = this.i24;
                     si32(this.i1,mstate.ebp + -2250);
                     this.i1 = mstate.ebp + -1736;
                     si32(this.i1,mstate.ebp + -2124);
                     this.i1 = mstate.ebp + -1648;
                     si32(this.i1,mstate.ebp + -2187);
                     this.i1 = mstate.ebp + -32;
                     si32(this.i1,mstate.ebp + -2016);
                     this.i1 = mstate.ebp + -48;
                     si32(this.i1,mstate.ebp + -2241);
                     this.i1 = mstate.ebp + -16;
                     si32(this.i1,mstate.ebp + -2169);
                     this.i1 = mstate.ebp + -1542;
                     si32(this.i1,mstate.ebp + -2088);
                     this.i1 = li32(mstate.ebp + -2169);
                     this.i1 += 4;
                     si32(this.i1,mstate.ebp + -1980);
                     this.i1 = li32(mstate.ebp + -2016);
                     this.i1 += 4;
                     si32(this.i1,mstate.ebp + -1989);
                     this.i1 = li32(mstate.ebp + -2016);
                     this.i1 += 8;
                     si32(this.i1,mstate.ebp + -1998);
                     this.i1 = li32(mstate.ebp + -2241);
                     this.i1 += 4;
                     si32(this.i1,mstate.ebp + -2214);
                     this.i1 = li32(mstate.ebp + -2241);
                     this.i1 += 8;
                     si32(this.i1,mstate.ebp + -2007);
                     this.i1 = li32(mstate.ebp + -2124);
                     this.i1 += 3;
                     si32(this.i1,mstate.ebp + -2025);
                     this.i1 = li32(mstate.ebp + -2187);
                     this.i1 += 1;
                     si32(this.i1,mstate.ebp + -2043);
                     this.i1 = li32(mstate.ebp + -2187);
                     this.i1 += 99;
                     si32(this.i1,mstate.ebp + -2142);
                     this.i1 = li32(mstate.ebp + -2187);
                     this.i1 += 100;
                     si32(this.i1,mstate.ebp + -2160);
                     this.i1 = mstate.ebp + -176;
                     si32(this.i1,mstate.ebp + -2061);
                     this.i1 = li32(mstate.ebp + -2124);
                     this.i1 += 2;
                     si32(this.i1,mstate.ebp + -2115);
                     this.i1 = li32(mstate.ebp + -2124);
                     this.i1 += 1;
                     si32(this.i1,mstate.ebp + -2106);
                     this.i1 = mstate.ebp + -1456;
                     si32(this.i1,mstate.ebp + -2151);
                     this.i1 = mstate.ebp + -1536;
                     si32(this.i1,mstate.ebp + -2223);
                     this.i1 = li32(mstate.ebp + -2088);
                     this.i1 += 1;
                     si32(this.i1,mstate.ebp + -2178);
                     this.i1 = li32(mstate.ebp + -2016);
                     si32(this.i1,mstate.ebp + -2133);
                     this.i1 = li32(mstate.ebp + -2241);
                     si32(this.i1,mstate.ebp + -2079);
                     this.i1 = li32(mstate.ebp + -2160);
                     si32(this.i1,mstate.ebp + -2070);
                     this.i7 = this.i14;
                     this.i14 = this.i15;
                     this.i15 = this.i16;
                     this.i16 = this.i17;
                     this.i12 = this.i19;
                     this.i19 = this.i20;
                     this.i22 = this.i21;
                     this.i10 = this.i25;
                     this.i21 = this.i11;
                     this.i23 = this.i26;
                     this.i9 = this.i6;
                     this.i17 = this.i8;
                     this.i11 = this.i27;
                     this.i1 = this.i3;
                     this.i24 = this.i28;
                     this.i3 = this.i29;
                     this.i20 = this.i30;
                     this.i8 = this.i31;
                     this.i6 = li32(mstate.ebp + -2250);
                     addr1113:
                     this.i25 = this.i13;
                     this.i13 = this.i14;
                     si32(this.i13,mstate.ebp + -2295);
                     this.i13 = this.i15;
                     si32(this.i13,mstate.ebp + -2286);
                     this.i13 = this.i16;
                     si32(this.i13,mstate.ebp + -2268);
                     this.i14 = this.i18;
                     si32(this.i12,mstate.ebp + -2313);
                     this.i12 = this.i19;
                     si32(this.i12,mstate.ebp + -2304);
                     this.i12 = this.i22;
                     si32(this.i12,mstate.ebp + -2457);
                     si32(this.i10,mstate.ebp + -2448);
                     this.i10 = this.i21;
                     si32(this.i10,mstate.ebp + -2439);
                     this.i10 = this.i23;
                     si32(this.i10,mstate.ebp + -2475);
                     this.i10 = this.i17;
                     si32(this.i10,mstate.ebp + -2367);
                     this.i10 = this.i11;
                     si32(this.i10,mstate.ebp + -2322);
                     this.i10 = this.i24;
                     this.i11 = this.i20;
                     this.i12 = this.i10 - this.i6;
                     if(this.i10 == this.i6)
                     {
                        this.i6 = this.i8;
                        this.i8 = this.i11;
                        addr1421:
                        si32(this.i6,mstate.ebp + -2259);
                        this.i6 = this.i8;
                        si32(this.i6,mstate.ebp + -2277);
                        this.i6 = this.i3 & 0xFF;
                        if(this.i6 != 0)
                        {
                           this.i6 = 0;
                           si8(this.i6,mstate.ebp + -1746);
                           this.i8 = li32(mstate.ebp + -2178);
                           si8(this.i6,this.i8);
                           this.i8 = -1;
                           this.i3 = this.i10 + 1;
                           this.i10 = this.i6;
                           loop32:
                           while(true)
                           {
                              this.i11 = si8(li8(this.i3));
                              this.i3 += 1;
                              this.i12 = this.i7;
                              this.i13 = this.i11;
                              this.i11 = this.i8;
                              loop33:
                              while(true)
                              {
                                 this.i8 = this.i6;
                                 this.i6 = this.i11;
                                 this.i11 = this.i13;
                                 loop34:
                                 while(true)
                                 {
                                    this.i13 = this.i11;
                                    this.i11 = this.i6;
                                    this.i15 = 0;
                                    this.i6 = this.i3;
                                    this.i16 = this.i13;
                                    loop35:
                                    while(true)
                                    {
                                       this.i13 = this.i15;
                                       this.i15 = this.i16;
                                       this.i18 = this.i6 + this.i13;
                                       if(this.i15 <= 87)
                                       {
                                          loop74:
                                          while(true)
                                          {
                                             loop75:
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   if(this.i15 <= 64)
                                                   {
                                                      if(this.i15 <= 42)
                                                      {
                                                         if(this.i15 > 34)
                                                         {
                                                            if(this.i15 != 35)
                                                            {
                                                               if(this.i15 == 39)
                                                               {
                                                                  mstate.esp -= 4;
                                                                  FSM_localeconv.start();
                                                                  addr2321:
                                                                  this.i3 = li32(cmodule.Box2D._ret_2E_1494_2E_1);
                                                                  this.i3 = li8(this.i3);
                                                                  si8(this.i3,mstate.ebp + -1745);
                                                                  mstate.esp -= 4;
                                                                  FSM_localeconv.start();
                                                                  addr235c:
                                                                  this.i15 = li32(cmodule.Box2D._ret_2E_1494_2E_2);
                                                                  this.i3 = this.i6 + this.i13;
                                                                  this.i6 = this.i10 | 0x0200;
                                                                  this.i10 = this.i6;
                                                                  this.i6 = this.i8;
                                                                  this.i8 = this.i11;
                                                                  this.i7 = this.i15;
                                                                  break loop85;
                                                               }
                                                               if(this.i15 != 42)
                                                               {
                                                                  addrfdd4:
                                                                  this.i12 = 0;
                                                                  this.i3 = li32(mstate.ebp + -2187);
                                                                  si8(this.i15,this.i3);
                                                                  si8(this.i12,mstate.ebp + -1746);
                                                                  this.i27 = 1;
                                                                  this.i15 = this.i3;
                                                                  this.i3 = this.i10;
                                                                  this.i16 = this.i11;
                                                                  this.i17 = this.i25;
                                                                  this.i10 = li32(mstate.ebp + -2295);
                                                                  this.i19 = this.i10;
                                                                  this.i10 = li32(mstate.ebp + -2286);
                                                                  this.i20 = this.i10;
                                                                  this.i10 = li32(mstate.ebp + -2268);
                                                                  this.i21 = this.i10;
                                                                  this.i10 = li32(mstate.ebp + -2313);
                                                                  this.i22 = this.i10;
                                                                  this.i10 = li32(mstate.ebp + -2304);
                                                                  this.i23 = this.i10;
                                                                  this.i10 = li32(mstate.ebp + -2457);
                                                                  this.i24 = this.i10;
                                                                  this.i10 = li32(mstate.ebp + -2448);
                                                                  this.i25 = this.i10;
                                                                  this.i10 = li32(mstate.ebp + -2439);
                                                                  this.i26 = this.i10;
                                                                  this.i11 = this.i12;
                                                                  this.i10 = this.i27;
                                                                  this.i12 = li32(mstate.ebp + -2475);
                                                                  this.i27 = li32(mstate.ebp + -2367);
                                                                  this.i28 = li32(mstate.ebp + -2322);
                                                                  addrff48:
                                                                  this.i29 = this.i20;
                                                                  this.i20 = this.i22;
                                                                  this.i22 = this.i23;
                                                                  this.i23 = this.i24;
                                                                  si32(this.i23,mstate.ebp + -2502);
                                                                  this.i23 = this.i25;
                                                                  si32(this.i23,mstate.ebp + -2511);
                                                                  this.i23 = this.i26;
                                                                  si32(this.i23,mstate.ebp + -2520);
                                                                  si32(this.i12,mstate.ebp + -2547);
                                                                  si32(this.i9,mstate.ebp + -2538);
                                                                  this.i25 = this.i27;
                                                                  this.i9 = this.i28;
                                                                  si32(this.i9,mstate.ebp + -2556);
                                                                  si32(this.i1,mstate.ebp + -2529);
                                                                  this.i1 = li8(mstate.ebp + -1746);
                                                                  §§push(this);
                                                                  if(this.i1 != 0)
                                                                  {
                                                                     break;
                                                                  }
                                                                  break loop75;
                                                               }
                                                               this.i15 = si8(li8(this.i18));
                                                               this.i15 += -48;
                                                               if(uint(this.i15) <= uint(9))
                                                               {
                                                                  this.i15 = 0;
                                                                  this.i8 = this.i15;
                                                                  while(true)
                                                                  {
                                                                     this.i12 = this.i8 + 1;
                                                                     this.i8 = this.i13 + this.i8;
                                                                     this.i16 = this.i13 + this.i12;
                                                                     this.i8 = this.i3 + this.i8;
                                                                     this.i8 = si8(li8(this.i8));
                                                                     this.i15 *= 10;
                                                                     this.i16 = this.i3 + this.i16;
                                                                     this.i17 = si8(li8(this.i16));
                                                                     this.i8 = this.i15 + this.i8;
                                                                     this.i15 = this.i8 + -48;
                                                                     this.i8 = this.i17 + -48;
                                                                     if(uint(this.i8) >= uint(10))
                                                                     {
                                                                        break;
                                                                     }
                                                                     this.i8 = this.i12;
                                                                  }
                                                                  this.i3 = this.i16;
                                                               }
                                                               else
                                                               {
                                                                  this.i15 = 0;
                                                                  this.i3 = this.i6 + this.i13;
                                                               }
                                                               this.i8 = this.i15;
                                                               this.i15 = li8(this.i3);
                                                               this.i12 = li32(mstate.ebp + -1540);
                                                               loop85:
                                                               while(true)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(this.i15 == 36)
                                                                     {
                                                                        if(this.i12 == 0)
                                                                        {
                                                                           this.i6 = mstate.ebp + -1540;
                                                                           this.i15 = li32(mstate.ebp + -2223);
                                                                           si32(this.i15,mstate.ebp + -1540);
                                                                           this.i15 = li32(mstate.ebp + -1460);
                                                                           mstate.esp -= 12;
                                                                           this.i12 = li32(mstate.ebp + -2232);
                                                                           si32(this.i12,mstate.esp);
                                                                           si32(this.i15,mstate.esp + 4);
                                                                           si32(this.i6,mstate.esp + 8);
                                                                           state = 7;
                                                                           mstate.esp -= 4;
                                                                           FSM___find_arguments.start();
                                                                           return;
                                                                        }
                                                                        addr2142:
                                                                        this.i6 = li32(mstate.ebp + -1540);
                                                                        this.i3 += 1;
                                                                        if(this.i6 != 0)
                                                                        {
                                                                           this.i8 <<= 3;
                                                                           this.i6 += this.i8;
                                                                           this.i6 = li32(this.i6);
                                                                           if(this.i6 <= -1)
                                                                           {
                                                                              this.i8 = this.i9;
                                                                              this.i15 = this.i1;
                                                                              break;
                                                                           }
                                                                           this.i8 = this.i11;
                                                                           break loop85;
                                                                        }
                                                                        this.i6 = this.i1 + 4;
                                                                        this.i8 = this.i1;
                                                                        this.i15 = this.i9;
                                                                     }
                                                                     else if(this.i12 != 0)
                                                                     {
                                                                        this.i3 = this.i9 << 3;
                                                                        this.i6 += this.i13;
                                                                        this.i15 = this.i9 + 1;
                                                                        this.i8 = this.i12 + this.i3;
                                                                        this.i3 = this.i6;
                                                                        this.i6 = this.i1;
                                                                     }
                                                                     else
                                                                     {
                                                                        this.i3 = this.i6 + this.i13;
                                                                        this.i6 = this.i9 + 1;
                                                                        this.i9 = this.i1 + 4;
                                                                        this.i8 = this.i1;
                                                                        this.i15 = this.i6;
                                                                        this.i6 = this.i9;
                                                                     }
                                                                     this.i1 = this.i6;
                                                                     this.i6 = li32(this.i8);
                                                                     if(this.i6 <= -1)
                                                                     {
                                                                        this.i8 = this.i15;
                                                                        this.i15 = this.i1;
                                                                        break;
                                                                     }
                                                                     this.i8 = this.i11;
                                                                     this.i9 = this.i15;
                                                                     break loop85;
                                                                  }
                                                                  this.i1 = this.i8;
                                                                  this.i8 = this.i10 | 4;
                                                                  this.i6 = 0 - this.i6;
                                                                  this.i10 = this.i8;
                                                                  this.i8 = this.i11;
                                                                  this.i9 = this.i1;
                                                                  this.i1 = this.i15;
                                                                  break;
                                                               }
                                                               break loop85;
                                                            }
                                                            this.i3 = this.i6 + this.i13;
                                                            this.i6 = this.i10 | 1;
                                                            this.i10 = this.i6;
                                                            this.i6 = this.i8;
                                                            this.i8 = this.i11;
                                                            break loop85;
                                                            break loop85;
                                                         }
                                                         if(this.i15 == 0)
                                                         {
                                                            addr133b9:
                                                            this.i3 = li32(this.i4);
                                                            if(this.i3 != 0)
                                                            {
                                                               this.i3 = mstate.ebp + -1728;
                                                               mstate.esp -= 8;
                                                               si32(this.i0,mstate.esp);
                                                               si32(this.i3,mstate.esp + 4);
                                                               state = 113;
                                                               mstate.esp -= 4;
                                                               FSM___sfvwrite.start();
                                                               return;
                                                            }
                                                            addr1349a:
                                                            this.i0 = 0;
                                                            si32(this.i0,this.i5);
                                                            this.i0 = li32(mstate.ebp + -2277);
                                                            this.i6 = this.i0;
                                                            this.i8 = this.i14;
                                                            this.i0 = li32(mstate.ebp + -2367);
                                                            break loop74;
                                                         }
                                                         if(this.i15 == 32)
                                                         {
                                                            this.i15 = li8(mstate.ebp + -1746);
                                                            if(this.i15 == 0)
                                                            {
                                                               continue loop35;
                                                            }
                                                            this.i6 += this.i13;
                                                            this.i3 = this.i6;
                                                            this.i6 = this.i8;
                                                            this.i8 = this.i11;
                                                            continue loop32;
                                                         }
                                                      }
                                                      else if(this.i15 <= 45)
                                                      {
                                                         if(this.i15 == 43)
                                                         {
                                                            this.i3 = 43;
                                                            si8(this.i3,mstate.ebp + -1746);
                                                            this.i3 = this.i6 + this.i13;
                                                            this.i6 = this.i8;
                                                            this.i8 = this.i11;
                                                            break loop85;
                                                         }
                                                         if(this.i15 == 45)
                                                         {
                                                            this.i3 = this.i6 + this.i13;
                                                            this.i6 = this.i10 | 4;
                                                            this.i10 = this.i6;
                                                            this.i6 = this.i8;
                                                            this.i8 = this.i11;
                                                            break loop85;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         if(this.i15 == 46)
                                                         {
                                                            this.i6 = this.i13 + this.i3;
                                                            this.i11 = li8(this.i18);
                                                            this.i6 += 1;
                                                            if(this.i11 == 42)
                                                            {
                                                               this.i11 = si8(li8(this.i6));
                                                               this.i11 += -48;
                                                               if(uint(this.i11) >= uint(10))
                                                               {
                                                                  this.i11 = 0;
                                                                  this.i3 = this.i6;
                                                               }
                                                               else
                                                               {
                                                                  this.i11 = 0;
                                                                  this.i15 = this.i11;
                                                                  while(true)
                                                                  {
                                                                     this.i12 = this.i15 + 1;
                                                                     this.i16 = this.i13 + this.i12;
                                                                     this.i15 += this.i13;
                                                                     this.i16 = this.i3 + this.i16;
                                                                     this.i15 += this.i3;
                                                                     this.i16 = si8(li8(this.i16));
                                                                     this.i11 *= 10;
                                                                     this.i17 = si8(li8(this.i15 + 2));
                                                                     this.i11 += this.i16;
                                                                     this.i11 += -48;
                                                                     this.i15 += 2;
                                                                     this.i16 = this.i17 + -48;
                                                                     if(uint(this.i16) >= uint(10))
                                                                     {
                                                                        break;
                                                                     }
                                                                     this.i15 = this.i12;
                                                                  }
                                                                  this.i3 = this.i15;
                                                               }
                                                               this.i15 = li8(this.i3);
                                                               this.i12 = li32(mstate.ebp + -1540);
                                                               if(this.i15 == 36)
                                                               {
                                                                  if(this.i12 == 0)
                                                                  {
                                                                     this.i6 = mstate.ebp + -1540;
                                                                     this.i15 = li32(mstate.ebp + -2223);
                                                                     si32(this.i15,mstate.ebp + -1540);
                                                                     this.i15 = li32(mstate.ebp + -1460);
                                                                     mstate.esp -= 12;
                                                                     this.i12 = li32(mstate.ebp + -2232);
                                                                     si32(this.i12,mstate.esp);
                                                                     si32(this.i15,mstate.esp + 4);
                                                                     si32(this.i6,mstate.esp + 8);
                                                                     state = 10;
                                                                     mstate.esp -= 4;
                                                                     FSM___find_arguments.start();
                                                                     return;
                                                                  }
                                                                  addr25c1:
                                                                  this.i6 = li32(mstate.ebp + -1540);
                                                                  this.i3 += 1;
                                                                  if(this.i6 != 0)
                                                                  {
                                                                     this.i11 <<= 3;
                                                                     this.i6 += this.i11;
                                                                     this.i11 = li32(this.i6);
                                                                     this.i6 = this.i8;
                                                                     this.i8 = this.i11;
                                                                     break loop85;
                                                                  }
                                                                  this.i11 = li32(this.i1);
                                                                  this.i15 = this.i1 + 4;
                                                                  this.i6 = this.i8;
                                                                  this.i8 = this.i11;
                                                                  this.i1 = this.i15;
                                                                  break loop85;
                                                               }
                                                               if(this.i12 != 0)
                                                               {
                                                                  this.i3 = this.i9 << 3;
                                                                  this.i3 = this.i12 + this.i3;
                                                                  this.i11 = li32(this.i3);
                                                                  this.i15 = this.i9 + 1;
                                                                  this.i3 = this.i6;
                                                                  this.i6 = this.i8;
                                                                  this.i8 = this.i11;
                                                                  this.i9 = this.i15;
                                                                  break loop85;
                                                               }
                                                               this.i11 = li32(this.i1);
                                                               this.i15 = this.i9 + 1;
                                                               this.i1 += 4;
                                                               this.i3 = this.i6;
                                                               this.i6 = this.i8;
                                                               this.i8 = this.i11;
                                                               this.i9 = this.i15;
                                                               break loop85;
                                                            }
                                                            this.i11 <<= 24;
                                                            this.i11 >>= 24;
                                                            this.i15 = this.i11 + -48;
                                                            if(uint(this.i15) >= uint(10))
                                                            {
                                                               this.i15 = 0;
                                                               this.i3 = this.i6;
                                                               this.i6 = this.i15;
                                                            }
                                                            else
                                                            {
                                                               this.i6 = 0;
                                                               this.i15 = this.i6;
                                                               this.i16 = this.i6;
                                                               this.i6 = this.i11;
                                                               while(true)
                                                               {
                                                                  this.i11 = this.i15;
                                                                  this.i15 = this.i11 + 1;
                                                                  this.i11 = this.i16 * 10;
                                                                  this.i16 = this.i13 + this.i15;
                                                                  this.i6 = this.i11 + this.i6;
                                                                  this.i11 = this.i3 + this.i16;
                                                                  this.i11 = si8(li8(this.i11));
                                                                  this.i6 += -48;
                                                                  this.i16 = this.i11 + -48;
                                                                  if(uint(this.i16) > uint(9))
                                                                  {
                                                                     break;
                                                                  }
                                                                  this.i16 = this.i6;
                                                                  this.i6 = this.i11;
                                                               }
                                                               this.i13 = this.i15 + this.i13;
                                                               this.i3 = this.i13 + this.i3;
                                                               this.i3 += 1;
                                                            }
                                                            continue loop34;
                                                         }
                                                         if(this.i15 == 48)
                                                         {
                                                            this.i3 = this.i6 + this.i13;
                                                            this.i6 = this.i10 | 0x80;
                                                            this.i10 = this.i6;
                                                            this.i6 = this.i8;
                                                            this.i8 = this.i11;
                                                            break loop85;
                                                         }
                                                         this.i16 = this.i15 + -49;
                                                         if(uint(this.i16) < uint(9))
                                                         {
                                                            this.i6 = 0;
                                                            this.i16 = this.i6;
                                                            while(true)
                                                            {
                                                               this.i17 = this.i13 + this.i16;
                                                               this.i17 = this.i3 + this.i17;
                                                               this.i17 = li8(this.i17);
                                                               this.i6 *= 10;
                                                               this.i18 = this.i17 << 24;
                                                               this.i6 = this.i15 + this.i6;
                                                               this.i15 = this.i18 >> 24;
                                                               this.i18 = this.i6 + -48;
                                                               this.i6 = this.i16 + 1;
                                                               this.i16 = this.i15 + -48;
                                                               if(uint(this.i16) > uint(9))
                                                               {
                                                                  break;
                                                               }
                                                               this.i16 = this.i6;
                                                               this.i6 = this.i18;
                                                            }
                                                            this.i6 = this.i13 + this.i6;
                                                            this.i3 += this.i6;
                                                            this.i6 = this.i17 & 0xFF;
                                                            if(this.i6 == 36)
                                                            {
                                                               this.i6 = li32(mstate.ebp + -1540);
                                                               if(this.i6 != 0)
                                                               {
                                                                  this.i6 = this.i8;
                                                                  this.i8 = this.i11;
                                                                  this.i9 = this.i18;
                                                                  break loop85;
                                                               }
                                                               this.i6 = mstate.ebp + -1540;
                                                               this.i9 = li32(mstate.ebp + -2223);
                                                               si32(this.i9,mstate.ebp + -1540);
                                                               this.i9 = li32(mstate.ebp + -1460);
                                                               mstate.esp -= 12;
                                                               this.i12 = li32(mstate.ebp + -2232);
                                                               si32(this.i12,mstate.esp);
                                                               si32(this.i9,mstate.esp + 4);
                                                               si32(this.i6,mstate.esp + 8);
                                                               state = 11;
                                                               mstate.esp -= 4;
                                                               FSM___find_arguments.start();
                                                               return;
                                                            }
                                                            continue loop33;
                                                         }
                                                      }
                                                      §§goto(addrfdd4);
                                                   }
                                                   loop87:
                                                   while(true)
                                                   {
                                                      if(this.i15 <= 70)
                                                      {
                                                         loop88:
                                                         while(true)
                                                         {
                                                            while(true)
                                                            {
                                                               if(this.i15 <= 67)
                                                               {
                                                                  if(this.i15 != 65)
                                                                  {
                                                                     if(this.i15 != 67)
                                                                     {
                                                                        §§goto(addrfdd4);
                                                                     }
                                                                     else
                                                                     {
                                                                        this.i3 = this.i10 | 0x10;
                                                                        addr1e1b:
                                                                        this.i10 = this.i3 & 0x10;
                                                                        if(this.i10 != 0)
                                                                        {
                                                                           this.i10 = cmodule.Box2D._initial_2E_2136;
                                                                           this.i12 = li32(mstate.ebp + -2151);
                                                                           this.i15 = 128;
                                                                           cmodule.Box2D.memcpy(this.i12,this.i10,this.i15);
                                                                           this.i10 = li32(mstate.ebp + -1540);
                                                                           if(this.i10 != 0)
                                                                           {
                                                                              this.i12 = mstate.ebp + -1456;
                                                                              this.i15 = this.i9 << 3;
                                                                              this.i10 += this.i15;
                                                                              this.i10 = li32(this.i10);
                                                                              mstate.esp -= 12;
                                                                              this.i15 = li32(mstate.ebp + -2187);
                                                                              si32(this.i15,mstate.esp);
                                                                              si32(this.i10,mstate.esp + 4);
                                                                              si32(this.i12,mstate.esp + 8);
                                                                              mstate.esp -= 4;
                                                                              FSM__UTF8_wcrtomb.start();
                                                                              addr1f1b:
                                                                              this.i10 = mstate.eax;
                                                                              mstate.esp += 12;
                                                                              if(this.i10 != -1)
                                                                              {
                                                                                 addr2cb7:
                                                                                 this.i12 = 0;
                                                                                 si8(this.i12,mstate.ebp + -1746);
                                                                                 this.i9 += 1;
                                                                                 this.i15 = li32(mstate.ebp + -2187);
                                                                                 this.i16 = this.i11;
                                                                                 this.i17 = this.i25;
                                                                                 this.i11 = li32(mstate.ebp + -2295);
                                                                                 this.i19 = this.i11;
                                                                                 this.i11 = li32(mstate.ebp + -2286);
                                                                                 this.i20 = this.i11;
                                                                                 this.i11 = li32(mstate.ebp + -2268);
                                                                                 this.i21 = this.i11;
                                                                                 this.i11 = li32(mstate.ebp + -2313);
                                                                                 this.i22 = this.i11;
                                                                                 this.i11 = li32(mstate.ebp + -2304);
                                                                                 this.i23 = this.i11;
                                                                                 this.i11 = li32(mstate.ebp + -2457);
                                                                                 this.i24 = this.i11;
                                                                                 this.i11 = li32(mstate.ebp + -2448);
                                                                                 this.i25 = this.i11;
                                                                                 this.i11 = li32(mstate.ebp + -2439);
                                                                                 this.i26 = this.i11;
                                                                                 this.i11 = this.i12;
                                                                                 this.i12 = li32(mstate.ebp + -2475);
                                                                                 this.i27 = li32(mstate.ebp + -2367);
                                                                                 this.i28 = li32(mstate.ebp + -2322);
                                                                                 break loop87;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              this.i10 = mstate.ebp + -1456;
                                                                              this.i12 = li32(this.i1);
                                                                              mstate.esp -= 12;
                                                                              this.i15 = li32(mstate.ebp + -2187);
                                                                              si32(this.i15,mstate.esp);
                                                                              si32(this.i12,mstate.esp + 4);
                                                                              si32(this.i10,mstate.esp + 8);
                                                                              mstate.esp -= 4;
                                                                              FSM__UTF8_wcrtomb.start();
                                                                              addr2b40:
                                                                              this.i10 = mstate.eax;
                                                                              mstate.esp += 12;
                                                                              this.i1 += 4;
                                                                              if(this.i10 != -1)
                                                                              {
                                                                                 §§goto(addr2cb7);
                                                                              }
                                                                           }
                                                                           this.i3 = li32(mstate.ebp + -1971);
                                                                           this.i3 = li16(this.i3);
                                                                           this.i3 |= 64;
                                                                           this.i0 = li32(mstate.ebp + -1971);
                                                                           si16(this.i3,this.i0);
                                                                           if(this.i14 != 0)
                                                                           {
                                                                              this.i3 = li32(mstate.ebp + -2277);
                                                                              this.i0 = this.i14;
                                                                              this.i1 = li32(mstate.ebp + -2367);
                                                                              §§goto(addr13514);
                                                                           }
                                                                           else
                                                                           {
                                                                              this.i3 = li32(mstate.ebp + -2277);
                                                                              this.i0 = li32(mstate.ebp + -2367);
                                                                           }
                                                                           §§goto(addr135bb);
                                                                        }
                                                                        else
                                                                        {
                                                                           this.i10 = li32(mstate.ebp + -1540);
                                                                           if(this.i10 != 0)
                                                                           {
                                                                              this.i12 = 1;
                                                                              this.i15 = this.i9 << 3;
                                                                              this.i10 += this.i15;
                                                                              this.i10 = li8(this.i10);
                                                                              this.i15 = li32(mstate.ebp + -2187);
                                                                              si8(this.i10,this.i15);
                                                                              this.i10 = this.i12;
                                                                           }
                                                                           else
                                                                           {
                                                                              this.i10 = 1;
                                                                              this.i12 = li8(this.i1);
                                                                              this.i15 = li32(mstate.ebp + -2187);
                                                                              si8(this.i12,this.i15);
                                                                              this.i1 += 4;
                                                                           }
                                                                        }
                                                                        §§goto(addr2cb7);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr1922:
                                                                     this.i3 = cmodule.Box2D._xdigs_lower_2E_4528;
                                                                     this.i12 = this.i11 >>> 31;
                                                                     this.i16 = cmodule.Box2D._xdigs_upper_2E_4529;
                                                                     this.i12 ^= 1;
                                                                     this.i17 = this.i15 == 97 ? 120 : 88;
                                                                     this.i19 = li32(mstate.ebp + -2178);
                                                                     si8(this.i17,this.i19);
                                                                     this.i3 = this.i15 == 97 ? this.i3 : this.i16;
                                                                     this.i16 = this.i15 == 97 ? 112 : 80;
                                                                     this.i11 = this.i12 + this.i11;
                                                                     if(this.i14 != 0)
                                                                     {
                                                                        this.i12 = 1;
                                                                        this.i17 = li32(this.i14 + -4);
                                                                        si32(this.i17,this.i14);
                                                                        this.i12 <<= this.i17;
                                                                        si32(this.i12,this.i14 + 4);
                                                                        this.i12 = this.i14 + -4;
                                                                        this.i14 = this.i12;
                                                                        if(this.i12 != 0)
                                                                        {
                                                                           this.i19 = cmodule.Box2D._freelist;
                                                                           this.i17 <<= 2;
                                                                           this.i17 = this.i19 + this.i17;
                                                                           this.i19 = li32(this.i17);
                                                                           si32(this.i19,this.i12);
                                                                           si32(this.i14,this.i17);
                                                                        }
                                                                     }
                                                                     this.i12 = li32(mstate.ebp + -1540);
                                                                     this.i14 = this.i10 & 8;
                                                                     while(true)
                                                                     {
                                                                        if(this.i14 != 0)
                                                                        {
                                                                           if(this.i12 != 0)
                                                                           {
                                                                              this.i14 = this.i9 << 3;
                                                                              this.i12 += this.i14;
                                                                           }
                                                                           else
                                                                           {
                                                                              this.i14 = this.i1 + 8;
                                                                              this.i12 = this.i1;
                                                                              this.i1 = this.i14;
                                                                           }
                                                                           this.i14 = 0;
                                                                           this.f0 = lf64(this.i12);
                                                                           this.i12 = li32(mstate.ebp + -2079);
                                                                           sf64(this.f0,this.i12);
                                                                           this.i12 = li32(mstate.ebp + -2007);
                                                                           this.i12 = li32(this.i12);
                                                                           sf64(this.f0,mstate.ebp + -1760);
                                                                           this.i17 = li32(mstate.ebp + -1756);
                                                                           this.i19 = this.i12 >>> 15;
                                                                           this.i20 = li32(mstate.ebp + -1760);
                                                                           this.i21 = this.i17 & 0x7FF00000;
                                                                           this.i19 &= 1;
                                                                           if(this.i21 != 0)
                                                                           {
                                                                              this.i21 ^= 2146435072;
                                                                              this.i14 |= this.i21;
                                                                              if(this.i14 != 0)
                                                                              {
                                                                                 this.i17 = 4;
                                                                              }
                                                                              else
                                                                              {
                                                                                 this.i17 &= 1048575;
                                                                                 this.i17 |= this.i20;
                                                                                 this.i17 = this.i17 == 0 ? 1 : 2;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              this.i17 &= 1048575;
                                                                              this.i17 |= this.i20;
                                                                              this.i17 = this.i17 == 0 ? 16 : 8;
                                                                           }
                                                                           this.i14 = this.i17;
                                                                           if(this.i14 <= 3)
                                                                           {
                                                                              if(this.i14 != 1)
                                                                              {
                                                                                 if(this.i14 != 2)
                                                                                 {
                                                                                    §§goto(addr3bcd);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr3afd:
                                                                                 }
                                                                                 this.i12 = 2147483647;
                                                                                 si32(this.i12,mstate.ebp + -1744);
                                                                                 this.i12 = li32(cmodule.Box2D._freelist);
                                                                                 if(this.i12 != 0)
                                                                                 {
                                                                                    this.i14 = li32(this.i12);
                                                                                    si32(this.i14,cmodule.Box2D._freelist);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    this.i12 = cmodule.Box2D._private_mem;
                                                                                    this.i14 = li32(cmodule.Box2D._pmem_next);
                                                                                    this.i12 = this.i14 - this.i12;
                                                                                    this.i12 >>= 3;
                                                                                    this.i12 += 3;
                                                                                    if(uint(this.i12) > uint(288))
                                                                                    {
                                                                                       this.i12 = 24;
                                                                                       mstate.esp -= 4;
                                                                                       si32(this.i12,mstate.esp);
                                                                                       state = 15;
                                                                                       mstate.esp -= 4;
                                                                                       FSM_malloc.start();
                                                                                       return;
                                                                                    }
                                                                                    this.i12 = 0;
                                                                                    this.i17 = this.i14 + 24;
                                                                                    si32(this.i17,cmodule.Box2D._pmem_next);
                                                                                    si32(this.i12,this.i14 + 4);
                                                                                    this.i12 = 1;
                                                                                    si32(this.i12,this.i14 + 8);
                                                                                    this.i12 = this.i14;
                                                                                 }
                                                                                 this.i14 = 0;
                                                                                 si32(this.i14,this.i12 + 16);
                                                                                 si32(this.i14,this.i12 + 12);
                                                                                 si32(this.i14,this.i12);
                                                                                 this.i17 = 78;
                                                                                 si8(this.i17,this.i12 + 4);
                                                                                 this.i12 += 4;
                                                                                 this.i17 = cmodule.Box2D.__2E_str260;
                                                                                 this.i20 = this.i12;
                                                                                 do
                                                                                 {
                                                                                    this.i21 = this.i17 + this.i14;
                                                                                    this.i21 = li8(this.i21 + 1);
                                                                                    this.i22 = this.i12 + this.i14;
                                                                                    si8(this.i21,this.i22 + 1);
                                                                                    this.i14 += 1;
                                                                                 }
                                                                                 while(this.i21 != 0);
                                                                                 this.i12 += this.i14;
                                                                                 si32(this.i12,mstate.ebp + -1740);
                                                                                 this.i12 = this.i20;
                                                                              }
                                                                              else
                                                                              {
                                                                                 this.i12 = 2147483647;
                                                                                 si32(this.i12,mstate.ebp + -1744);
                                                                                 this.i12 = li32(cmodule.Box2D._freelist);
                                                                                 if(this.i12 != 0)
                                                                                 {
                                                                                    this.i14 = li32(this.i12);
                                                                                    si32(this.i14,cmodule.Box2D._freelist);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    this.i12 = cmodule.Box2D._private_mem;
                                                                                    this.i14 = li32(cmodule.Box2D._pmem_next);
                                                                                    this.i12 = this.i14 - this.i12;
                                                                                    this.i12 >>= 3;
                                                                                    this.i12 += 3;
                                                                                    if(uint(this.i12) > uint(288))
                                                                                    {
                                                                                       this.i12 = 24;
                                                                                       mstate.esp -= 4;
                                                                                       si32(this.i12,mstate.esp);
                                                                                       state = 14;
                                                                                       mstate.esp -= 4;
                                                                                       FSM_malloc.start();
                                                                                       return;
                                                                                    }
                                                                                    this.i12 = 0;
                                                                                    this.i17 = this.i14 + 24;
                                                                                    si32(this.i17,cmodule.Box2D._pmem_next);
                                                                                    si32(this.i12,this.i14 + 4);
                                                                                    this.i12 = 1;
                                                                                    si32(this.i12,this.i14 + 8);
                                                                                    this.i12 = this.i14;
                                                                                 }
                                                                                 addr394d:
                                                                                 this.i14 = 0;
                                                                                 si32(this.i14,this.i12 + 16);
                                                                                 si32(this.i14,this.i12 + 12);
                                                                                 si32(this.i14,this.i12);
                                                                                 this.i17 = 73;
                                                                                 si8(this.i17,this.i12 + 4);
                                                                                 this.i12 += 4;
                                                                                 this.i17 = cmodule.Box2D.__2E_str159;
                                                                                 this.i20 = this.i12;
                                                                                 do
                                                                                 {
                                                                                    this.i21 = this.i17 + this.i14;
                                                                                    this.i21 = li8(this.i21 + 1);
                                                                                    this.i22 = this.i12 + this.i14;
                                                                                    si8(this.i21,this.i22 + 1);
                                                                                    this.i14 += 1;
                                                                                 }
                                                                                 while(this.i21 != 0);
                                                                                 this.i12 += this.i14;
                                                                                 si32(this.i12,mstate.ebp + -1740);
                                                                                 this.i12 = this.i20;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              if(this.i14 != 16)
                                                                              {
                                                                                 if(this.i14 != 8)
                                                                                 {
                                                                                    if(this.i14 != 4)
                                                                                    {
                                                                                       addr3bcd:
                                                                                       state = 16;
                                                                                       mstate.esp -= 4;
                                                                                       FSM_abort1.start();
                                                                                       return;
                                                                                    }
                                                                                    this.i12 &= 32767;
                                                                                    this.i12 += -16385;
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr3bed:
                                                                                    this.i12 &= 32767;
                                                                                    this.f0 *= 5.36312e+154;
                                                                                    this.i14 = li32(mstate.ebp + -2079);
                                                                                    sf64(this.f0,this.i14);
                                                                                    this.i12 += -16899;
                                                                                 }
                                                                                 this.i14 = this.i11 == 0 ? 1 : this.i11;
                                                                                 si32(this.i12,mstate.ebp + -1744);
                                                                                 this.i12 = this.i14 > 15 ? this.i14 : 16;
                                                                                 if(uint(this.i12) >= uint(20))
                                                                                 {
                                                                                    this.i17 = 4;
                                                                                    this.i20 = 0;
                                                                                    do
                                                                                    {
                                                                                       this.i17 <<= 1;
                                                                                       this.i20 += 1;
                                                                                       this.i21 = this.i17 + 16;
                                                                                    }
                                                                                    while(uint(this.i21) <= uint(this.i12));
                                                                                    this.i17 = this.i20;
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    this.i17 = 0;
                                                                                 }
                                                                                 mstate.esp -= 4;
                                                                                 si32(this.i17,mstate.esp);
                                                                                 state = 17;
                                                                                 mstate.esp -= 4;
                                                                                 FSM___Balloc_D2A.start();
                                                                                 return;
                                                                              }
                                                                              addr378e:
                                                                              this.i12 = 1;
                                                                              si32(this.i12,mstate.ebp + -1744);
                                                                              this.i12 = li32(cmodule.Box2D._freelist);
                                                                              if(this.i12 != 0)
                                                                              {
                                                                                 this.i14 = li32(this.i12);
                                                                                 si32(this.i14,cmodule.Box2D._freelist);
                                                                              }
                                                                              else
                                                                              {
                                                                                 this.i12 = cmodule.Box2D._private_mem;
                                                                                 this.i14 = li32(cmodule.Box2D._pmem_next);
                                                                                 this.i12 = this.i14 - this.i12;
                                                                                 this.i12 >>= 3;
                                                                                 this.i12 += 3;
                                                                                 if(uint(this.i12) > uint(288))
                                                                                 {
                                                                                    this.i12 = 24;
                                                                                    mstate.esp -= 4;
                                                                                    si32(this.i12,mstate.esp);
                                                                                    state = 13;
                                                                                    mstate.esp -= 4;
                                                                                    FSM_malloc.start();
                                                                                    return;
                                                                                 }
                                                                                 this.i12 = 0;
                                                                                 this.i17 = this.i14 + 24;
                                                                                 si32(this.i17,cmodule.Box2D._pmem_next);
                                                                                 si32(this.i12,this.i14 + 4);
                                                                                 this.i12 = 1;
                                                                                 si32(this.i12,this.i14 + 8);
                                                                                 this.i12 = this.i14;
                                                                              }
                                                                              this.i14 = 0;
                                                                              si32(this.i14,this.i12 + 16);
                                                                              si32(this.i14,this.i12 + 12);
                                                                              si32(this.i14,this.i12);
                                                                              this.i17 = 48;
                                                                              si8(this.i17,this.i12 + 4);
                                                                              si8(this.i14,this.i12 + 5);
                                                                              this.i14 = this.i12 + 5;
                                                                              si32(this.i14,mstate.ebp + -1740);
                                                                              this.i12 += 4;
                                                                           }
                                                                           addr42d4:
                                                                           this.i9 += 1;
                                                                           if(this.i11 >= 0)
                                                                           {
                                                                              this.i14 = this.i12;
                                                                              break;
                                                                           }
                                                                           this.i11 = this.i19;
                                                                           this.i14 = this.i12;
                                                                        }
                                                                        else
                                                                        {
                                                                           if(this.i12 != 0)
                                                                           {
                                                                              this.i14 = this.i9 << 3;
                                                                              this.i12 += this.i14;
                                                                           }
                                                                           else
                                                                           {
                                                                              this.i14 = this.i1 + 8;
                                                                              this.i12 = this.i1;
                                                                              this.i1 = this.i14;
                                                                           }
                                                                           this.i14 = 0;
                                                                           this.f0 = lf64(this.i12);
                                                                           sf64(this.f0,mstate.ebp + -1768);
                                                                           this.i12 = li32(mstate.ebp + -1764);
                                                                           this.i19 = li32(mstate.ebp + -1768);
                                                                           this.i17 = this.i12 & 0x7FF00000;
                                                                           this.i20 = this.i12 >>> 31;
                                                                           this.i21 = this.i12;
                                                                           if(this.i17 != 0)
                                                                           {
                                                                              this.i17 ^= 2146435072;
                                                                              this.i14 |= this.i17;
                                                                              if(this.i14 != 0)
                                                                              {
                                                                                 this.i14 = 4;
                                                                              }
                                                                              else
                                                                              {
                                                                                 this.i14 = this.i12 & 0x0FFFFF;
                                                                                 this.i14 |= this.i19;
                                                                                 this.i14 = this.i14 == 0 ? 1 : 2;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              this.i14 = this.i12 & 0x0FFFFF;
                                                                              this.i14 |= this.i19;
                                                                              this.i14 = this.i14 == 0 ? 16 : 8;
                                                                           }
                                                                           if(this.i14 <= 3)
                                                                           {
                                                                              if(this.i14 != 1)
                                                                              {
                                                                                 if(this.i14 != 2)
                                                                                 {
                                                                                    §§goto(addr4ac9);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr49f9:
                                                                                 }
                                                                                 this.i12 = 2147483647;
                                                                                 si32(this.i12,mstate.ebp + -1744);
                                                                                 this.i12 = li32(cmodule.Box2D._freelist);
                                                                                 if(this.i12 != 0)
                                                                                 {
                                                                                    this.i14 = li32(this.i12);
                                                                                    si32(this.i14,cmodule.Box2D._freelist);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    this.i12 = cmodule.Box2D._private_mem;
                                                                                    this.i14 = li32(cmodule.Box2D._pmem_next);
                                                                                    this.i12 = this.i14 - this.i12;
                                                                                    this.i12 >>= 3;
                                                                                    this.i12 += 3;
                                                                                    if(uint(this.i12) > uint(288))
                                                                                    {
                                                                                       this.i12 = 24;
                                                                                       mstate.esp -= 8;
                                                                                       this.i14 = 0;
                                                                                       si32(this.i14,mstate.esp);
                                                                                       si32(this.i12,mstate.esp + 4);
                                                                                       state = 21;
                                                                                       mstate.esp -= 4;
                                                                                       FSM_pubrealloc.start();
                                                                                       return;
                                                                                    }
                                                                                    this.i12 = 0;
                                                                                    this.i19 = this.i14 + 24;
                                                                                    si32(this.i19,cmodule.Box2D._pmem_next);
                                                                                    si32(this.i12,this.i14 + 4);
                                                                                    this.i12 = 1;
                                                                                    si32(this.i12,this.i14 + 8);
                                                                                    this.i12 = this.i14;
                                                                                 }
                                                                                 this.i14 = 0;
                                                                                 si32(this.i14,this.i12 + 16);
                                                                                 si32(this.i14,this.i12 + 12);
                                                                                 si32(this.i14,this.i12);
                                                                                 this.i19 = 78;
                                                                                 si8(this.i19,this.i12 + 4);
                                                                                 this.i12 += 4;
                                                                                 this.i19 = cmodule.Box2D.__2E_str260;
                                                                                 this.i17 = this.i12;
                                                                                 do
                                                                                 {
                                                                                    this.i21 = this.i19 + this.i14;
                                                                                    this.i21 = li8(this.i21 + 1);
                                                                                    this.i22 = this.i12 + this.i14;
                                                                                    si8(this.i21,this.i22 + 1);
                                                                                    this.i14 += 1;
                                                                                 }
                                                                                 while(this.i21 != 0);
                                                                                 this.i12 += this.i14;
                                                                                 si32(this.i12,mstate.ebp + -1740);
                                                                                 this.i12 = this.i17;
                                                                              }
                                                                              else
                                                                              {
                                                                                 this.i12 = 2147483647;
                                                                                 si32(this.i12,mstate.ebp + -1744);
                                                                                 this.i12 = li32(cmodule.Box2D._freelist);
                                                                                 if(this.i12 != 0)
                                                                                 {
                                                                                    this.i14 = li32(this.i12);
                                                                                    si32(this.i14,cmodule.Box2D._freelist);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    this.i12 = cmodule.Box2D._private_mem;
                                                                                    this.i14 = li32(cmodule.Box2D._pmem_next);
                                                                                    this.i12 = this.i14 - this.i12;
                                                                                    this.i12 >>= 3;
                                                                                    this.i12 += 3;
                                                                                    if(uint(this.i12) > uint(288))
                                                                                    {
                                                                                       this.i12 = 24;
                                                                                       mstate.esp -= 8;
                                                                                       this.i14 = 0;
                                                                                       si32(this.i14,mstate.esp);
                                                                                       si32(this.i12,mstate.esp + 4);
                                                                                       state = 20;
                                                                                       mstate.esp -= 4;
                                                                                       FSM_pubrealloc.start();
                                                                                       return;
                                                                                    }
                                                                                    this.i12 = 0;
                                                                                    this.i19 = this.i14 + 24;
                                                                                    si32(this.i19,cmodule.Box2D._pmem_next);
                                                                                    si32(this.i12,this.i14 + 4);
                                                                                    this.i12 = 1;
                                                                                    si32(this.i12,this.i14 + 8);
                                                                                    this.i12 = this.i14;
                                                                                 }
                                                                                 addr483b:
                                                                                 this.i14 = 0;
                                                                                 si32(this.i14,this.i12 + 16);
                                                                                 si32(this.i14,this.i12 + 12);
                                                                                 si32(this.i14,this.i12);
                                                                                 this.i19 = 73;
                                                                                 si8(this.i19,this.i12 + 4);
                                                                                 this.i12 += 4;
                                                                                 this.i19 = cmodule.Box2D.__2E_str159;
                                                                                 this.i17 = this.i12;
                                                                                 do
                                                                                 {
                                                                                    this.i21 = this.i19 + this.i14;
                                                                                    this.i21 = li8(this.i21 + 1);
                                                                                    this.i22 = this.i12 + this.i14;
                                                                                    si8(this.i21,this.i22 + 1);
                                                                                    this.i14 += 1;
                                                                                 }
                                                                                 while(this.i21 != 0);
                                                                                 this.i12 += this.i14;
                                                                                 si32(this.i12,mstate.ebp + -1740);
                                                                                 this.i12 = this.i17;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              if(this.i14 != 16)
                                                                              {
                                                                                 if(this.i14 != 8)
                                                                                 {
                                                                                    if(this.i14 != 4)
                                                                                    {
                                                                                       addr4ac9:
                                                                                       state = 22;
                                                                                       mstate.esp -= 4;
                                                                                       FSM_abort1.start();
                                                                                       return;
                                                                                    }
                                                                                    this.i12 >>>= 20;
                                                                                    this.i12 &= 2047;
                                                                                    this.i12 += -1022;
                                                                                    this.i14 = this.i19;
                                                                                    this.i19 = this.i21;
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr4ae9:
                                                                                    this.f0 *= 5.36312e+154;
                                                                                    sf64(this.f0,mstate.ebp + -1776);
                                                                                    this.i19 = li32(mstate.ebp + -1772);
                                                                                    this.i12 = this.i19 >>> 20;
                                                                                    this.i12 &= 2047;
                                                                                    this.i14 = li32(mstate.ebp + -1776);
                                                                                    this.i12 += -1536;
                                                                                 }
                                                                                 this.i17 = this.i11 == 0 ? 1 : this.i11;
                                                                                 si32(this.i12,mstate.ebp + -1744);
                                                                                 this.i12 = this.i17 > 13 ? this.i17 : 14;
                                                                                 if(uint(this.i12) >= uint(20))
                                                                                 {
                                                                                    this.i21 = 4;
                                                                                    this.i22 = 0;
                                                                                    do
                                                                                    {
                                                                                       this.i21 <<= 1;
                                                                                       this.i22 += 1;
                                                                                       this.i23 = this.i21 + 16;
                                                                                    }
                                                                                    while(uint(this.i23) <= uint(this.i12));
                                                                                    this.i21 = this.i22;
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    this.i21 = 0;
                                                                                 }
                                                                                 mstate.esp -= 4;
                                                                                 si32(this.i21,mstate.esp);
                                                                                 state = 23;
                                                                                 mstate.esp -= 4;
                                                                                 FSM___Balloc_D2A.start();
                                                                                 return;
                                                                              }
                                                                              addr466e:
                                                                              this.i12 = 1;
                                                                              si32(this.i12,mstate.ebp + -1744);
                                                                              this.i12 = li32(cmodule.Box2D._freelist);
                                                                              if(this.i12 != 0)
                                                                              {
                                                                                 this.i14 = li32(this.i12);
                                                                                 si32(this.i14,cmodule.Box2D._freelist);
                                                                              }
                                                                              else
                                                                              {
                                                                                 this.i12 = cmodule.Box2D._private_mem;
                                                                                 this.i14 = li32(cmodule.Box2D._pmem_next);
                                                                                 this.i12 = this.i14 - this.i12;
                                                                                 this.i12 >>= 3;
                                                                                 this.i12 += 3;
                                                                                 if(uint(this.i12) > uint(288))
                                                                                 {
                                                                                    this.i12 = 24;
                                                                                    mstate.esp -= 8;
                                                                                    this.i14 = 0;
                                                                                    si32(this.i14,mstate.esp);
                                                                                    si32(this.i12,mstate.esp + 4);
                                                                                    state = 19;
                                                                                    mstate.esp -= 4;
                                                                                    FSM_pubrealloc.start();
                                                                                    return;
                                                                                 }
                                                                                 this.i12 = 0;
                                                                                 this.i19 = this.i14 + 24;
                                                                                 si32(this.i19,cmodule.Box2D._pmem_next);
                                                                                 si32(this.i12,this.i14 + 4);
                                                                                 this.i12 = 1;
                                                                                 si32(this.i12,this.i14 + 8);
                                                                                 this.i12 = this.i14;
                                                                              }
                                                                              this.i14 = 0;
                                                                              si32(this.i14,this.i12 + 16);
                                                                              si32(this.i14,this.i12 + 12);
                                                                              si32(this.i14,this.i12);
                                                                              this.i19 = 48;
                                                                              si8(this.i19,this.i12 + 4);
                                                                              si8(this.i14,this.i12 + 5);
                                                                              this.i14 = this.i12 + 5;
                                                                              si32(this.i14,mstate.ebp + -1740);
                                                                              this.i12 += 4;
                                                                           }
                                                                           addr51d7:
                                                                           this.i9 += 1;
                                                                           if(this.i11 >= 0)
                                                                           {
                                                                              this.i19 = this.i20;
                                                                              this.i14 = this.i12;
                                                                              break;
                                                                           }
                                                                           this.i11 = this.i20;
                                                                           this.i14 = this.i12;
                                                                        }
                                                                        this.i19 = li32(mstate.ebp + -1740);
                                                                        this.i17 = this.i19 - this.i14;
                                                                        this.i19 = this.i11;
                                                                        this.i11 = this.i17;
                                                                        break;
                                                                     }
                                                                     this.i17 = this.i19;
                                                                     this.i19 = li32(mstate.ebp + -1744);
                                                                     if(this.i19 == 2147483647)
                                                                     {
                                                                        this.i20 = 0;
                                                                        this.i21 = li32(mstate.ebp + -2178);
                                                                        si8(this.i20,this.i21);
                                                                        if(this.i17 != 0)
                                                                        {
                                                                           break;
                                                                        }
                                                                        break loop88;
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  if(this.i15 == 68)
                                                                  {
                                                                     this.i3 = this.i10 | 0x10;
                                                                     addr2e19:
                                                                     this.i10 = this.i3 & 0x1C20;
                                                                     if(this.i10 != 0)
                                                                     {
                                                                        this.i10 = this.i3 & 0x1000;
                                                                        loop97:
                                                                        while(true)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(this.i10 != 0)
                                                                              {
                                                                                 this.i10 = li32(mstate.ebp + -1540);
                                                                                 if(this.i10 != 0)
                                                                                 {
                                                                                    this.i15 = this.i9 << 3;
                                                                                    this.i10 += this.i15;
                                                                                    this.i15 = li32(this.i10);
                                                                                    this.i10 = li32(this.i10 + 4);
                                                                                    this.i9 += 1;
                                                                                    if(this.i10 >= 0)
                                                                                    {
                                                                                       this.i16 = 10;
                                                                                       this.i17 = li32(mstate.ebp + -2457);
                                                                                       this.i19 = li32(mstate.ebp + -2475);
                                                                                       break;
                                                                                    }
                                                                                    break loop97;
                                                                                 }
                                                                                 this.i10 = li32(this.i1);
                                                                                 this.i15 = li32(this.i1 + 4);
                                                                                 this.i1 += 8;
                                                                              }
                                                                              else
                                                                              {
                                                                                 this.i10 = this.i3 & 0x0400;
                                                                                 if(this.i10 != 0)
                                                                                 {
                                                                                    this.i10 = li32(mstate.ebp + -1540);
                                                                                    if(this.i10 != 0)
                                                                                    {
                                                                                       this.i15 = 0;
                                                                                       this.i16 = this.i9 << 3;
                                                                                       this.i10 += this.i16;
                                                                                       this.i10 = li32(this.i10);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       this.i15 = 0;
                                                                                       this.i10 = li32(this.i1);
                                                                                       this.i1 += 4;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    this.i10 = li32(mstate.ebp + -1540);
                                                                                    this.i15 = this.i3 & 0x0800;
                                                                                    if(this.i15 != 0)
                                                                                    {
                                                                                       if(this.i10 != 0)
                                                                                       {
                                                                                          this.i15 = this.i9 << 3;
                                                                                          this.i10 += this.i15;
                                                                                          this.i10 = li32(this.i10);
                                                                                          this.i15 = this.i10 >> 31;
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          this.i10 = li32(this.i1);
                                                                                          this.i15 = this.i10 >> 31;
                                                                                          this.i1 += 4;
                                                                                       }
                                                                                    }
                                                                                    else if(this.i10 != 0)
                                                                                    {
                                                                                       this.i15 = this.i9 << 3;
                                                                                       this.i10 += this.i15;
                                                                                       this.i15 = li32(this.i10);
                                                                                       this.i16 = li32(this.i10 + 4);
                                                                                       this.i10 = this.i15;
                                                                                       this.i15 = this.i16;
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       this.i10 = li32(this.i1);
                                                                                       this.i15 = li32(this.i1 + 4);
                                                                                       this.i1 += 8;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              this.i16 = this.i15;
                                                                              this.i9 += 1;
                                                                              if(this.i16 >= 0)
                                                                              {
                                                                                 this.i19 = 10;
                                                                                 this.i15 = li32(mstate.ebp + -2457);
                                                                                 this.i17 = this.i15;
                                                                                 this.i15 = this.i10;
                                                                                 this.i10 = this.i16;
                                                                                 this.i16 = this.i19;
                                                                                 this.i19 = li32(mstate.ebp + -2475);
                                                                                 break;
                                                                              }
                                                                              this.i15 = this.i10;
                                                                              this.i10 = this.i16;
                                                                              break loop97;
                                                                           }
                                                                        }
                                                                        this.i16 = 45;
                                                                        this.i17 = 0;
                                                                        si8(this.i16,mstate.ebp + -1746);
                                                                        this.i15 = cmodule.Box2D.__subc(this.i17,this.i15);
                                                                        this.i10 = cmodule.Box2D.__sube(this.i17,this.i10);
                                                                        this.i16 = 10;
                                                                        this.i17 = li32(mstate.ebp + -2457);
                                                                        this.i19 = li32(mstate.ebp + -2475);
                                                                        break loop98;
                                                                     }
                                                                     this.i10 = this.i3 & 0x10;
                                                                     loop99:
                                                                     while(true)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(this.i10 != 0)
                                                                           {
                                                                              this.i10 = li32(mstate.ebp + -1540);
                                                                              if(this.i10 != 0)
                                                                              {
                                                                                 this.i15 = this.i9 << 3;
                                                                                 this.i10 += this.i15;
                                                                                 this.i10 = li32(this.i10);
                                                                                 this.i9 += 1;
                                                                                 if(this.i10 >= 0)
                                                                                 {
                                                                                    this.i16 = 10;
                                                                                    this.i17 = this.i10;
                                                                                    this.i10 = li32(mstate.ebp + -2448);
                                                                                    this.i15 = this.i10;
                                                                                    this.i10 = li32(mstate.ebp + -2439);
                                                                                    this.i19 = li32(mstate.ebp + -2475);
                                                                                    break;
                                                                                 }
                                                                                 break loop99;
                                                                              }
                                                                              this.i10 = li32(this.i1);
                                                                              this.i1 += 4;
                                                                           }
                                                                           else
                                                                           {
                                                                              this.i10 = this.i3 & 0x40;
                                                                              if(this.i10 != 0)
                                                                              {
                                                                                 this.i10 = li32(mstate.ebp + -1540);
                                                                                 if(this.i10 != 0)
                                                                                 {
                                                                                    this.i15 = this.i9 << 3;
                                                                                    this.i10 += this.i15;
                                                                                    this.i10 = si16(li16(this.i10));
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    this.i10 = si16(li16(this.i1));
                                                                                    this.i1 += 4;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 this.i10 = li32(mstate.ebp + -1540);
                                                                                 this.i15 = this.i3 & 0x2000;
                                                                                 if(this.i15 != 0)
                                                                                 {
                                                                                    if(this.i10 != 0)
                                                                                    {
                                                                                       this.i15 = this.i9 << 3;
                                                                                       this.i10 += this.i15;
                                                                                       this.i10 = si8(li8(this.i10));
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       this.i10 = si8(li8(this.i1));
                                                                                       this.i1 += 4;
                                                                                    }
                                                                                 }
                                                                                 else if(this.i10 != 0)
                                                                                 {
                                                                                    this.i15 = this.i9 << 3;
                                                                                    this.i10 += this.i15;
                                                                                    this.i10 = li32(this.i10);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    this.i10 = li32(this.i1);
                                                                                    this.i1 += 4;
                                                                                 }
                                                                              }
                                                                           }
                                                                           this.i9 += 1;
                                                                           if(this.i10 >= 0)
                                                                           {
                                                                              this.i16 = 10;
                                                                              this.i17 = this.i10;
                                                                              this.i10 = li32(mstate.ebp + -2448);
                                                                              this.i15 = this.i10;
                                                                              this.i10 = li32(mstate.ebp + -2439);
                                                                              this.i19 = li32(mstate.ebp + -2475);
                                                                              break;
                                                                           }
                                                                           break loop99;
                                                                        }
                                                                     }
                                                                     this.i15 = 45;
                                                                     si8(this.i15,mstate.ebp + -1746);
                                                                     this.i16 = 10;
                                                                     this.i10 = 0 - this.i10;
                                                                     this.i17 = this.i10;
                                                                     this.i10 = li32(mstate.ebp + -2448);
                                                                     this.i15 = this.i10;
                                                                     this.i10 = li32(mstate.ebp + -2439);
                                                                     this.i19 = li32(mstate.ebp + -2475);
                                                                     break loop100;
                                                                     §§goto(addrec21);
                                                                  }
                                                                  if(this.i15 != 69)
                                                                  {
                                                                     if(this.i15 != 70)
                                                                     {
                                                                        §§goto(addrfdd4);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr1850:
                                                                        this.i3 = 0;
                                                                        this.i11 = this.i11 < 0 ? 6 : this.i11;
                                                                        addr52db:
                                                                        if(this.i14 != 0)
                                                                        {
                                                                           addr5303:
                                                                           this.i12 = 1;
                                                                           this.i16 = li32(this.i14 + -4);
                                                                           si32(this.i16,this.i14);
                                                                           this.i12 <<= this.i16;
                                                                           si32(this.i12,this.i14 + 4);
                                                                           this.i12 = this.i14 + -4;
                                                                           this.i14 = this.i12;
                                                                           if(this.i12 != 0)
                                                                           {
                                                                              this.i19 = cmodule.Box2D._freelist;
                                                                              this.i16 <<= 2;
                                                                              this.i16 = this.i19 + this.i16;
                                                                              this.i19 = li32(this.i16);
                                                                              si32(this.i19,this.i12);
                                                                              si32(this.i14,this.i16);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr1ad8:
                                                                     this.i3 = this.i15;
                                                                     if(this.i11 <= -1)
                                                                     {
                                                                        this.i11 = 7;
                                                                        §§goto(addr52db);
                                                                     }
                                                                     else
                                                                     {
                                                                        this.i11 += 1;
                                                                        this.i11 = this.i11 < 0 ? 6 : this.i11;
                                                                        if(this.i14 != 0)
                                                                        {
                                                                           §§goto(addr5303);
                                                                        }
                                                                     }
                                                                  }
                                                                  si32(this.i3,mstate.ebp + -2385);
                                                                  this.i3 = this.i11;
                                                                  si32(this.i3,mstate.ebp + -2466);
                                                                  this.i3 = li32(mstate.ebp + -1540);
                                                                  this.i11 = this.i10 & 8;
                                                                  if(this.i11 != 0)
                                                                  {
                                                                     if(this.i3 != 0)
                                                                     {
                                                                        this.i11 = this.i9 << 3;
                                                                        this.i3 += this.i11;
                                                                     }
                                                                     else
                                                                     {
                                                                        this.i11 = this.i1 + 8;
                                                                        this.i3 = this.i1;
                                                                        this.i1 = this.i11;
                                                                     }
                                                                     this.i11 = 0;
                                                                     this.f0 = lf64(this.i3);
                                                                     this.i3 = li32(mstate.ebp + -2133);
                                                                     sf64(this.f0,this.i3);
                                                                     this.i3 = li32(mstate.ebp + -1998);
                                                                     this.i3 = li32(this.i3);
                                                                     this.i12 = li32(mstate.ebp + -2016);
                                                                     this.i12 = li32(this.i12);
                                                                     this.i14 = li32(mstate.ebp + -2169);
                                                                     si32(this.i12,this.i14);
                                                                     this.i12 = li32(mstate.ebp + -1989);
                                                                     this.i12 = li32(this.i12);
                                                                     this.i14 = li32(mstate.ebp + -1980);
                                                                     si32(this.i12,this.i14);
                                                                     this.i12 = li32(mstate.ebp + -2133);
                                                                     this.i12 = li32(this.i12 + 4);
                                                                     this.i14 = li32(mstate.ebp + -2133);
                                                                     this.i14 = li32(this.i14);
                                                                     this.i16 = li32(mstate.ebp + -2385);
                                                                     this.i16 &= 255;
                                                                     this.i19 = this.i3 & 0x7FFF;
                                                                     this.i3 >>>= 15;
                                                                     this.i17 = this.i12 & 0x7FF00000;
                                                                     this.i16 = this.i16 == 0 ? 3 : 2;
                                                                     this.i19 += -16446;
                                                                     this.i3 &= 1;
                                                                     this.i9 += 1;
                                                                     if(this.i17 != 0)
                                                                     {
                                                                        this.i17 ^= 2146435072;
                                                                        this.i11 |= this.i17;
                                                                        if(this.i11 != 0)
                                                                        {
                                                                           this.i12 = 4;
                                                                        }
                                                                        else
                                                                        {
                                                                           this.i12 &= 1048575;
                                                                           this.i12 |= this.i14;
                                                                           this.i12 = this.i12 == 0 ? 1 : 2;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        this.i12 &= 1048575;
                                                                        this.i12 |= this.i14;
                                                                        this.i12 = this.i12 == 0 ? 16 : 8;
                                                                     }
                                                                     this.i11 = this.i12;
                                                                     if(this.i11 <= 3)
                                                                     {
                                                                        if(this.i11 == 1)
                                                                        {
                                                                           this.i11 = 3;
                                                                           si32(this.i11,mstate.ebp + -36);
                                                                           mstate.esp -= 28;
                                                                           this.i11 = mstate.ebp + -1740;
                                                                           this.i12 = mstate.ebp + -1744;
                                                                           this.i14 = mstate.ebp + -36;
                                                                           si32(this.i19,mstate.esp);
                                                                           this.i19 = li32(mstate.ebp + -2169);
                                                                           si32(this.i19,mstate.esp + 4);
                                                                           si32(this.i14,mstate.esp + 8);
                                                                           si32(this.i16,mstate.esp + 12);
                                                                           this.i16 = li32(mstate.ebp + -2466);
                                                                           si32(this.i16,mstate.esp + 16);
                                                                           si32(this.i12,mstate.esp + 20);
                                                                           si32(this.i11,mstate.esp + 24);
                                                                           state = 29;
                                                                           mstate.esp -= 4;
                                                                           FSM___gdtoa.start();
                                                                           return;
                                                                        }
                                                                        if(this.i11 == 2)
                                                                        {
                                                                           this.i11 = 4;
                                                                           si32(this.i11,mstate.ebp + -36);
                                                                           mstate.esp -= 28;
                                                                           this.i11 = mstate.ebp + -1740;
                                                                           this.i12 = mstate.ebp + -1744;
                                                                           this.i14 = mstate.ebp + -36;
                                                                           si32(this.i19,mstate.esp);
                                                                           this.i19 = li32(mstate.ebp + -2169);
                                                                           si32(this.i19,mstate.esp + 4);
                                                                           si32(this.i14,mstate.esp + 8);
                                                                           si32(this.i16,mstate.esp + 12);
                                                                           this.i16 = li32(mstate.ebp + -2466);
                                                                           si32(this.i16,mstate.esp + 16);
                                                                           si32(this.i12,mstate.esp + 20);
                                                                           si32(this.i11,mstate.esp + 24);
                                                                           state = 25;
                                                                           mstate.esp -= 4;
                                                                           FSM___gdtoa.start();
                                                                           return;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        if(this.i11 == 16)
                                                                        {
                                                                           this.i11 = 0;
                                                                           si32(this.i11,mstate.ebp + -36);
                                                                           mstate.esp -= 28;
                                                                           this.i11 = mstate.ebp + -1740;
                                                                           this.i12 = mstate.ebp + -1744;
                                                                           this.i14 = mstate.ebp + -36;
                                                                           si32(this.i19,mstate.esp);
                                                                           this.i19 = li32(mstate.ebp + -2169);
                                                                           si32(this.i19,mstate.esp + 4);
                                                                           si32(this.i14,mstate.esp + 8);
                                                                           si32(this.i16,mstate.esp + 12);
                                                                           this.i16 = li32(mstate.ebp + -2466);
                                                                           si32(this.i16,mstate.esp + 16);
                                                                           si32(this.i12,mstate.esp + 20);
                                                                           si32(this.i11,mstate.esp + 24);
                                                                           state = 27;
                                                                           mstate.esp -= 4;
                                                                           FSM___gdtoa.start();
                                                                           return;
                                                                        }
                                                                        if(this.i11 == 8)
                                                                        {
                                                                           this.i11 = 2;
                                                                           si32(this.i11,mstate.ebp + -36);
                                                                           mstate.esp -= 28;
                                                                           this.i11 = mstate.ebp + -1740;
                                                                           this.i12 = mstate.ebp + -1744;
                                                                           this.i14 = mstate.ebp + -36;
                                                                           si32(this.i19,mstate.esp);
                                                                           this.i19 = li32(mstate.ebp + -2169);
                                                                           si32(this.i19,mstate.esp + 4);
                                                                           si32(this.i14,mstate.esp + 8);
                                                                           si32(this.i16,mstate.esp + 12);
                                                                           this.i16 = li32(mstate.ebp + -2466);
                                                                           si32(this.i16,mstate.esp + 16);
                                                                           si32(this.i12,mstate.esp + 20);
                                                                           si32(this.i11,mstate.esp + 24);
                                                                           state = 28;
                                                                           mstate.esp -= 4;
                                                                           FSM___gdtoa.start();
                                                                           return;
                                                                        }
                                                                        if(this.i11 == 4)
                                                                        {
                                                                           this.i11 = 1;
                                                                           si32(this.i11,mstate.ebp + -36);
                                                                           mstate.esp -= 28;
                                                                           this.i11 = mstate.ebp + -1740;
                                                                           this.i12 = mstate.ebp + -1744;
                                                                           this.i14 = mstate.ebp + -36;
                                                                           si32(this.i19,mstate.esp);
                                                                           this.i19 = li32(mstate.ebp + -2169);
                                                                           si32(this.i19,mstate.esp + 4);
                                                                           si32(this.i14,mstate.esp + 8);
                                                                           si32(this.i16,mstate.esp + 12);
                                                                           this.i16 = li32(mstate.ebp + -2466);
                                                                           si32(this.i16,mstate.esp + 16);
                                                                           si32(this.i12,mstate.esp + 20);
                                                                           si32(this.i11,mstate.esp + 24);
                                                                           state = 26;
                                                                           mstate.esp -= 4;
                                                                           FSM___gdtoa.start();
                                                                           return;
                                                                        }
                                                                     }
                                                                     state = 30;
                                                                     mstate.esp -= 4;
                                                                     FSM_abort1.start();
                                                                     return;
                                                                  }
                                                                  addra8fc:
                                                                  if(this.i3 != 0)
                                                                  {
                                                                     this.i11 = this.i9 << 3;
                                                                     this.i3 += this.i11;
                                                                  }
                                                                  else
                                                                  {
                                                                     this.i11 = this.i1 + 8;
                                                                     this.i3 = this.i1;
                                                                     this.i1 = this.i11;
                                                                  }
                                                                  si32(this.i1,mstate.ebp + -2331);
                                                                  this.i1 = li32(mstate.ebp + -2385);
                                                                  this.i1 &= 255;
                                                                  this.i11 = li32(this.i3);
                                                                  this.i3 = li32(this.i3 + 4);
                                                                  this.i1 = this.i1 == 0 ? 3 : 2;
                                                                  this.i9 += 1;
                                                                  si32(this.i9,mstate.ebp + -2340);
                                                                  while(true)
                                                                  {
                                                                     if(this.i3 <= -1)
                                                                     {
                                                                        this.i9 = this.i3 & 0x7FFFFFFF;
                                                                        this.i3 &= 2146435072;
                                                                        this.i3 ^= 2146435072;
                                                                        if(this.i3 != 0)
                                                                        {
                                                                           this.i3 = 1;
                                                                           this.i12 = this.i3;
                                                                           this.i3 = this.i9;
                                                                           §§goto(addr604c);
                                                                        }
                                                                        this.i3 = 1;
                                                                        this.i1 = this.i3;
                                                                        this.i3 = this.i9;
                                                                     }
                                                                     else
                                                                     {
                                                                        this.i9 = this.i3 & 0x7FF00000;
                                                                        this.i9 ^= 2146435072;
                                                                        if(this.i9 != 0)
                                                                        {
                                                                           this.i9 = 0;
                                                                           this.i12 = this.i9;
                                                                           addr604c:
                                                                           this.i9 = this.i12;
                                                                           si32(this.i9,mstate.ebp + -2349);
                                                                           this.i9 = this.i11;
                                                                           si32(this.i9,mstate.ebp + -2421);
                                                                           this.f0 = 0;
                                                                           si32(this.i9,mstate.ebp + -1784);
                                                                           si32(this.i3,mstate.ebp + -1780);
                                                                           this.f1 = lf64(mstate.ebp + -1784);
                                                                           if(this.f1 == this.f0)
                                                                           {
                                                                              this.i3 = 1;
                                                                              si32(this.i3,mstate.ebp + -1744);
                                                                              this.i3 = li32(cmodule.Box2D._freelist);
                                                                              if(this.i3 != 0)
                                                                              {
                                                                                 this.i1 = li32(this.i3);
                                                                                 si32(this.i1,cmodule.Box2D._freelist);
                                                                              }
                                                                              else
                                                                              {
                                                                                 this.i3 = cmodule.Box2D._private_mem;
                                                                                 this.i1 = li32(cmodule.Box2D._pmem_next);
                                                                                 this.i3 = this.i1 - this.i3;
                                                                                 this.i3 >>= 3;
                                                                                 this.i3 += 3;
                                                                                 if(uint(this.i3) > uint(288))
                                                                                 {
                                                                                    this.i3 = 24;
                                                                                    mstate.esp -= 4;
                                                                                    si32(this.i3,mstate.esp);
                                                                                    state = 33;
                                                                                    mstate.esp -= 4;
                                                                                    FSM_malloc.start();
                                                                                    return;
                                                                                 }
                                                                                 this.i3 = 0;
                                                                                 this.i9 = this.i1 + 24;
                                                                                 si32(this.i9,cmodule.Box2D._pmem_next);
                                                                                 si32(this.i3,this.i1 + 4);
                                                                                 this.i3 = 1;
                                                                                 si32(this.i3,this.i1 + 8);
                                                                                 this.i3 = this.i1;
                                                                              }
                                                                              addr66d3:
                                                                              this.i1 = 0;
                                                                              si32(this.i1,this.i3 + 16);
                                                                              si32(this.i1,this.i3 + 12);
                                                                              si32(this.i1,this.i3);
                                                                              this.i9 = 48;
                                                                              si8(this.i9,this.i3 + 4);
                                                                              si8(this.i1,this.i3 + 5);
                                                                              this.i1 = this.i3 + 5;
                                                                              si32(this.i1,mstate.ebp + -1740);
                                                                              this.i1 = this.i3 + 4;
                                                                              this.i3 = li32(mstate.ebp + -2349);
                                                                              break;
                                                                           }
                                                                           this.i9 = mstate.ebp + -8;
                                                                           mstate.esp -= 16;
                                                                           this.i11 = mstate.ebp + -4;
                                                                           sf64(this.f1,mstate.esp);
                                                                           si32(this.i11,mstate.esp + 8);
                                                                           si32(this.i9,mstate.esp + 12);
                                                                           this.i9 = this.i3 >>> 20;
                                                                           state = 34;
                                                                           mstate.esp -= 4;
                                                                           FSM___d2b_D2A.start();
                                                                           return;
                                                                        }
                                                                        this.i1 = 0;
                                                                     }
                                                                     this.i9 = this.i11;
                                                                     this.i11 = 9999;
                                                                     si32(this.i11,mstate.ebp + -1744);
                                                                     if(this.i9 == 0)
                                                                     {
                                                                        this.i3 &= 1048575;
                                                                        if(this.i3 == 0)
                                                                        {
                                                                           this.i3 = li32(cmodule.Box2D._freelist);
                                                                           if(this.i3 != 0)
                                                                           {
                                                                              this.i9 = li32(this.i3);
                                                                              si32(this.i9,cmodule.Box2D._freelist);
                                                                           }
                                                                           else
                                                                           {
                                                                              this.i3 = cmodule.Box2D._private_mem;
                                                                              this.i9 = li32(cmodule.Box2D._pmem_next);
                                                                              this.i3 = this.i9 - this.i3;
                                                                              this.i3 >>= 3;
                                                                              this.i3 += 3;
                                                                              if(uint(this.i3) > uint(288))
                                                                              {
                                                                                 this.i3 = 24;
                                                                                 mstate.esp -= 4;
                                                                                 si32(this.i3,mstate.esp);
                                                                                 state = 31;
                                                                                 mstate.esp -= 4;
                                                                                 FSM_malloc.start();
                                                                                 return;
                                                                              }
                                                                              this.i3 = 0;
                                                                              this.i11 = this.i9 + 24;
                                                                              si32(this.i11,cmodule.Box2D._pmem_next);
                                                                              si32(this.i3,this.i9 + 4);
                                                                              this.i3 = 1;
                                                                              si32(this.i3,this.i9 + 8);
                                                                              this.i3 = this.i9;
                                                                           }
                                                                           addr62e3:
                                                                           this.i9 = 0;
                                                                           si32(this.i9,this.i3 + 16);
                                                                           si32(this.i9,this.i3 + 12);
                                                                           si32(this.i9,this.i3);
                                                                           this.i11 = 73;
                                                                           si8(this.i11,this.i3 + 4);
                                                                           this.i3 += 4;
                                                                           this.i11 = cmodule.Box2D.__2E_str159;
                                                                           this.i12 = this.i3;
                                                                           do
                                                                           {
                                                                              this.i14 = this.i11 + this.i9;
                                                                              this.i14 = li8(this.i14 + 1);
                                                                              this.i16 = this.i3 + this.i9;
                                                                              si8(this.i14,this.i16 + 1);
                                                                              this.i9 += 1;
                                                                           }
                                                                           while(this.i14 != 0);
                                                                           this.i3 += this.i9;
                                                                           si32(this.i3,mstate.ebp + -1740);
                                                                           this.i3 = this.i1;
                                                                           this.i1 = this.i12;
                                                                           break;
                                                                        }
                                                                     }
                                                                     this.i3 = li32(cmodule.Box2D._freelist);
                                                                     if(this.i3 != 0)
                                                                     {
                                                                        this.i9 = li32(this.i3);
                                                                        si32(this.i9,cmodule.Box2D._freelist);
                                                                     }
                                                                     else
                                                                     {
                                                                        this.i3 = cmodule.Box2D._private_mem;
                                                                        this.i9 = li32(cmodule.Box2D._pmem_next);
                                                                        this.i3 = this.i9 - this.i3;
                                                                        this.i3 >>= 3;
                                                                        this.i3 += 3;
                                                                        if(uint(this.i3) > uint(288))
                                                                        {
                                                                           this.i3 = 24;
                                                                           mstate.esp -= 4;
                                                                           si32(this.i3,mstate.esp);
                                                                           state = 32;
                                                                           mstate.esp -= 4;
                                                                           FSM_malloc.start();
                                                                           return;
                                                                        }
                                                                        this.i3 = 0;
                                                                        this.i11 = this.i9 + 24;
                                                                        si32(this.i11,cmodule.Box2D._pmem_next);
                                                                        si32(this.i3,this.i9 + 4);
                                                                        this.i3 = 1;
                                                                        si32(this.i3,this.i9 + 8);
                                                                        this.i3 = this.i9;
                                                                     }
                                                                     addr64f0:
                                                                     this.i9 = 0;
                                                                     si32(this.i9,this.i3 + 16);
                                                                     si32(this.i9,this.i3 + 12);
                                                                     si32(this.i9,this.i3);
                                                                     this.i11 = 78;
                                                                     si8(this.i11,this.i3 + 4);
                                                                     this.i3 += 4;
                                                                     this.i11 = cmodule.Box2D.__2E_str260;
                                                                     this.i12 = this.i3;
                                                                     do
                                                                     {
                                                                        this.i14 = this.i11 + this.i9;
                                                                        this.i14 = li8(this.i14 + 1);
                                                                        this.i16 = this.i3 + this.i9;
                                                                        si8(this.i14,this.i16 + 1);
                                                                        this.i9 += 1;
                                                                     }
                                                                     while(this.i14 != 0);
                                                                     this.i3 += this.i9;
                                                                     si32(this.i3,mstate.ebp + -1740);
                                                                     this.i3 = this.i1;
                                                                     this.i1 = this.i12;
                                                                     break;
                                                                  }
                                                                  this.i9 = li32(mstate.ebp + -1744);
                                                                  if(this.i9 != 9999)
                                                                  {
                                                                     this.i19 = this.i9;
                                                                     this.i17 = this.i3;
                                                                     this.i14 = this.i1;
                                                                     this.i3 = li32(mstate.ebp + -2466);
                                                                     this.i11 = this.i3;
                                                                     this.i3 = li32(mstate.ebp + -2385);
                                                                     this.i16 = this.i3;
                                                                     this.i12 = this.i1;
                                                                     this.i3 = li32(mstate.ebp + -2475);
                                                                     this.i1 = li32(mstate.ebp + -2340);
                                                                     this.i9 = this.i1;
                                                                     this.i1 = li32(mstate.ebp + -2331);
                                                                  }
                                                                  else
                                                                  {
                                                                     this.i9 = 2147483647;
                                                                     si32(this.i9,mstate.ebp + -1744);
                                                                     this.i19 = this.i9;
                                                                     this.i17 = this.i3;
                                                                     this.i14 = this.i1;
                                                                     this.i3 = li32(mstate.ebp + -2466);
                                                                     this.i11 = this.i3;
                                                                     this.i3 = li32(mstate.ebp + -2385);
                                                                     this.i16 = this.i3;
                                                                     this.i12 = this.i1;
                                                                     this.i3 = li32(mstate.ebp + -2475);
                                                                     this.i1 = li32(mstate.ebp + -2340);
                                                                     this.i9 = this.i1;
                                                                     this.i1 = li32(mstate.ebp + -2331);
                                                                  }
                                                               }
                                                               addraa5b:
                                                               if(this.i17 != 0)
                                                               {
                                                                  break;
                                                               }
                                                               break loop88;
                                                            }
                                                            addraa6a:
                                                            this.i17 = 45;
                                                            si8(this.i17,mstate.ebp + -1746);
                                                            break;
                                                         }
                                                         this.i20 = this.i19;
                                                         this.i17 = this.i16;
                                                         this.i27 = this.i3;
                                                         if(this.i20 == 2147483647)
                                                         {
                                                            this.i3 = li8(this.i14);
                                                            if(this.i3 == 78)
                                                            {
                                                               this.i3 = cmodule.Box2D.__2E_str118283;
                                                               this.i14 = cmodule.Box2D.__2E_str219284;
                                                               this.i28 = 0;
                                                               si8(this.i28,mstate.ebp + -1746);
                                                               this.i3 = this.i15 > 96 ? this.i3 : this.i14;
                                                               this.i29 = 3;
                                                               this.i15 = this.i3;
                                                               this.i3 = this.i10;
                                                               this.i16 = this.i11;
                                                               this.i10 = li32(mstate.ebp + -2295);
                                                               this.i19 = this.i10;
                                                               this.i10 = li32(mstate.ebp + -2286);
                                                               this.i20 = this.i10;
                                                               this.i10 = li32(mstate.ebp + -2268);
                                                               this.i21 = this.i10;
                                                               this.i14 = this.i12;
                                                               this.i10 = li32(mstate.ebp + -2313);
                                                               this.i22 = this.i10;
                                                               this.i10 = li32(mstate.ebp + -2304);
                                                               this.i23 = this.i10;
                                                               this.i10 = li32(mstate.ebp + -2457);
                                                               this.i24 = this.i10;
                                                               this.i10 = li32(mstate.ebp + -2448);
                                                               this.i25 = this.i10;
                                                               this.i10 = li32(mstate.ebp + -2439);
                                                               this.i26 = this.i10;
                                                               this.i11 = this.i28;
                                                               this.i10 = this.i29;
                                                               this.i12 = this.i27;
                                                               this.i27 = li32(mstate.ebp + -2367);
                                                               this.i28 = li32(mstate.ebp + -2322);
                                                               break;
                                                            }
                                                            if(this.i15 >= 97)
                                                            {
                                                               this.i3 = cmodule.Box2D.__2E_str320285;
                                                               this.i28 = 3;
                                                               this.i29 = 0;
                                                               this.i15 = this.i3;
                                                               this.i3 = this.i10;
                                                               this.i16 = this.i11;
                                                               this.i10 = li32(mstate.ebp + -2295);
                                                               this.i19 = this.i10;
                                                               this.i10 = li32(mstate.ebp + -2286);
                                                               this.i20 = this.i10;
                                                               this.i10 = li32(mstate.ebp + -2268);
                                                               this.i21 = this.i10;
                                                               this.i14 = this.i12;
                                                               this.i10 = li32(mstate.ebp + -2313);
                                                               this.i22 = this.i10;
                                                               this.i10 = li32(mstate.ebp + -2304);
                                                               this.i23 = this.i10;
                                                               this.i10 = li32(mstate.ebp + -2457);
                                                               this.i24 = this.i10;
                                                               this.i10 = li32(mstate.ebp + -2448);
                                                               this.i25 = this.i10;
                                                               this.i10 = li32(mstate.ebp + -2439);
                                                               this.i26 = this.i10;
                                                               this.i11 = this.i29;
                                                               this.i10 = this.i28;
                                                               this.i12 = this.i27;
                                                               this.i27 = li32(mstate.ebp + -2367);
                                                               this.i28 = li32(mstate.ebp + -2322);
                                                               break;
                                                            }
                                                            this.i3 = cmodule.Box2D.__2E_str421;
                                                            this.i28 = 3;
                                                            this.i29 = 0;
                                                            this.i15 = this.i3;
                                                            this.i3 = this.i10;
                                                            this.i16 = this.i11;
                                                            this.i10 = li32(mstate.ebp + -2295);
                                                            this.i19 = this.i10;
                                                            this.i10 = li32(mstate.ebp + -2286);
                                                            this.i20 = this.i10;
                                                            this.i10 = li32(mstate.ebp + -2268);
                                                            this.i21 = this.i10;
                                                            this.i14 = this.i12;
                                                            this.i10 = li32(mstate.ebp + -2313);
                                                            this.i22 = this.i10;
                                                            this.i10 = li32(mstate.ebp + -2304);
                                                            this.i23 = this.i10;
                                                            this.i10 = li32(mstate.ebp + -2457);
                                                            this.i24 = this.i10;
                                                            this.i10 = li32(mstate.ebp + -2448);
                                                            this.i25 = this.i10;
                                                            this.i10 = li32(mstate.ebp + -2439);
                                                            this.i26 = this.i10;
                                                            this.i11 = this.i29;
                                                            this.i10 = this.i28;
                                                            this.i12 = this.i27;
                                                            this.i27 = li32(mstate.ebp + -2367);
                                                            this.i28 = li32(mstate.ebp + -2322);
                                                            break;
                                                         }
                                                         this.i3 = li32(mstate.ebp + -1740);
                                                         this.i21 = this.i3 - this.i14;
                                                         this.i3 = this.i10 | 0x0100;
                                                         loop90:
                                                         while(true)
                                                         {
                                                            if(this.i15 != 71)
                                                            {
                                                               if(this.i15 != 103)
                                                               {
                                                                  break;
                                                               }
                                                            }
                                                            this.i10 = this.i3 & 1;
                                                            while(true)
                                                            {
                                                               if(this.i20 >= -3)
                                                               {
                                                                  if(this.i20 <= this.i11)
                                                                  {
                                                                     this.i10 = this.i10 == 0 ? this.i21 : this.i11;
                                                                     this.i10 -= this.i20;
                                                                     if(this.i10 >= 0)
                                                                     {
                                                                        this.i11 = 0;
                                                                        break;
                                                                     }
                                                                     addrb542:
                                                                     this.i10 = 0;
                                                                     this.i11 = this.i10;
                                                                     this.i15 = this.i20 > 0 ? this.i20 : 1;
                                                                     while(true)
                                                                     {
                                                                        if(this.i10 == 0)
                                                                        {
                                                                           this.i16 = this.i3 & 1;
                                                                           if(this.i16 == 0)
                                                                           {
                                                                              break;
                                                                           }
                                                                        }
                                                                        this.i15 = this.i10 + this.i15;
                                                                        this.i15 += 1;
                                                                        break;
                                                                     }
                                                                     this.i28 = this.i15;
                                                                     if(this.i7 != 0)
                                                                     {
                                                                        if(this.i20 > 0)
                                                                        {
                                                                           this.i15 = li8(this.i7);
                                                                           if(this.i15 != 127)
                                                                           {
                                                                              this.i15 = 0;
                                                                              this.i16 = this.i20;
                                                                              this.i17 = this.i15;
                                                                              do
                                                                              {
                                                                                 this.i19 = si8(li8(this.i7));
                                                                                 if(this.i19 >= this.i16)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 this.i20 = li8(this.i7 + 1);
                                                                                 this.i22 = this.i20 == 0 ? 1 : 0;
                                                                                 this.i23 = this.i7 + 1;
                                                                                 this.i22 &= 1;
                                                                                 this.i7 = this.i20 == 0 ? this.i7 : this.i23;
                                                                                 this.i20 = li8(this.i7);
                                                                                 this.i23 = this.i22 ^ 1;
                                                                                 this.i15 += this.i22;
                                                                                 this.i17 += this.i23;
                                                                                 this.i16 -= this.i19;
                                                                              }
                                                                              while(this.i20 != 127);
                                                                           }
                                                                           else
                                                                           {
                                                                              this.i15 = 0;
                                                                              this.i16 = this.i20;
                                                                              this.i17 = this.i15;
                                                                           }
                                                                           this.i20 = this.i16;
                                                                           this.i22 = this.i17;
                                                                           this.i23 = this.i15;
                                                                           this.i29 = 0;
                                                                           this.i15 = this.i22 + this.i28;
                                                                           this.i28 = this.i15 + this.i23;
                                                                           this.i15 = this.i14;
                                                                           this.i16 = this.i10;
                                                                           this.i17 = this.i11;
                                                                           this.i10 = li32(mstate.ebp + -2295);
                                                                           this.i19 = this.i10;
                                                                           this.i14 = this.i12;
                                                                           this.i10 = li32(mstate.ebp + -2457);
                                                                           this.i24 = this.i10;
                                                                           this.i10 = li32(mstate.ebp + -2448);
                                                                           this.i25 = this.i10;
                                                                           this.i10 = li32(mstate.ebp + -2439);
                                                                           this.i26 = this.i10;
                                                                           this.i11 = this.i29;
                                                                           this.i10 = this.i28;
                                                                           this.i12 = this.i27;
                                                                           this.i27 = li32(mstate.ebp + -2367);
                                                                           this.i28 = li32(mstate.ebp + -2322);
                                                                           break loop87;
                                                                        }
                                                                     }
                                                                     this.i29 = 0;
                                                                     this.i15 = this.i14;
                                                                     this.i16 = this.i10;
                                                                     this.i17 = this.i11;
                                                                     this.i10 = li32(mstate.ebp + -2295);
                                                                     this.i19 = this.i10;
                                                                     this.i14 = this.i12;
                                                                     this.i10 = li32(mstate.ebp + -2313);
                                                                     this.i22 = this.i10;
                                                                     this.i10 = li32(mstate.ebp + -2304);
                                                                     this.i23 = this.i10;
                                                                     this.i10 = li32(mstate.ebp + -2457);
                                                                     this.i24 = this.i10;
                                                                     this.i10 = li32(mstate.ebp + -2448);
                                                                     this.i25 = this.i10;
                                                                     this.i10 = li32(mstate.ebp + -2439);
                                                                     this.i26 = this.i10;
                                                                     this.i11 = this.i29;
                                                                     this.i10 = this.i28;
                                                                     this.i12 = this.i27;
                                                                     this.i27 = li32(mstate.ebp + -2367);
                                                                     this.i28 = li32(mstate.ebp + -2322);
                                                                     break loop87;
                                                                  }
                                                               }
                                                               if(this.i10 == 0)
                                                               {
                                                                  this.i10 = this.i21;
                                                                  this.i11 = this.i17;
                                                                  break;
                                                               }
                                                               break loop90;
                                                            }
                                                            addrafa5:
                                                            this.i15 = this.i11 & 0xFF;
                                                            if(this.i15 != 0)
                                                            {
                                                               this.i15 = li32(mstate.ebp + -2124);
                                                               si8(this.i11,this.i15);
                                                               this.i15 = this.i20 + -1;
                                                               while(true)
                                                               {
                                                                  if(this.i15 <= -1)
                                                                  {
                                                                     this.i15 = 45;
                                                                     this.i16 = li32(mstate.ebp + -2106);
                                                                     si8(this.i15,this.i16);
                                                                     this.i15 = 1 - this.i20;
                                                                     if(this.i15 <= 9)
                                                                     {
                                                                        addrb032:
                                                                        this.i16 = this.i11 & 0xFF;
                                                                        while(true)
                                                                        {
                                                                           if(this.i16 != 69)
                                                                           {
                                                                              this.i16 = this.i11 & 0xFF;
                                                                              if(this.i16 != 101)
                                                                              {
                                                                                 this.i16 = li32(mstate.ebp + -2115);
                                                                                 break;
                                                                              }
                                                                           }
                                                                           this.i16 = 48;
                                                                           this.i17 = li32(mstate.ebp + -2115);
                                                                           si8(this.i16,this.i17);
                                                                           this.i16 = li32(mstate.ebp + -2025);
                                                                           break;
                                                                        }
                                                                        this.i15 += 48;
                                                                        si8(this.i15,this.i16);
                                                                        this.i15 = this.i16 + 1;
                                                                        break;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     this.i16 = 43;
                                                                     this.i17 = li32(mstate.ebp + -2106);
                                                                     si8(this.i16,this.i17);
                                                                     if(this.i15 <= 9)
                                                                     {
                                                                        §§goto(addrb032);
                                                                     }
                                                                  }
                                                                  this.i16 = -1;
                                                                  this.i17 = li32(mstate.ebp + -2052);
                                                                  this.i17 += 5;
                                                                  while(true)
                                                                  {
                                                                     this.i19 = this.i15 / 10;
                                                                     this.i20 = this.i19 * 10;
                                                                     this.i20 = this.i15 - this.i20;
                                                                     this.i20 += 48;
                                                                     si8(this.i20,this.i17);
                                                                     this.i17 += -1;
                                                                     this.i16 += 1;
                                                                     if(this.i15 < 100)
                                                                     {
                                                                        break;
                                                                     }
                                                                     this.i15 = this.i19;
                                                                  }
                                                                  this.i15 = mstate.ebp + -208;
                                                                  this.i17 = 4 - this.i16;
                                                                  this.i19 += 48;
                                                                  this.i15 += this.i17;
                                                                  si8(this.i19,this.i15);
                                                                  if(this.i17 >= 6)
                                                                  {
                                                                     this.i15 = li32(mstate.ebp + -2115);
                                                                     break;
                                                                  }
                                                                  this.i15 = 0;
                                                                  this.i17 = li32(mstate.ebp + -2052);
                                                                  this.i17 -= this.i16;
                                                                  this.i16 = 4 - this.i16;
                                                                  do
                                                                  {
                                                                     this.i19 = this.i17 + this.i15;
                                                                     this.i19 = li8(this.i19 + 4);
                                                                     this.i20 = li32(mstate.ebp + -2205);
                                                                     this.i20 += this.i15;
                                                                     si8(this.i19,this.i20 + 2);
                                                                     this.i15 += 1;
                                                                     this.i19 = this.i16 + this.i15;
                                                                  }
                                                                  while(this.i19 <= 5);
                                                                  this.i16 = mstate.ebp + -1736;
                                                                  this.i15 <<= 0;
                                                                  this.i15 += this.i16;
                                                                  this.i15 += 2;
                                                                  break;
                                                               }
                                                               this.i16 = li32(mstate.ebp + -2205);
                                                               this.i19 = this.i15 - this.i16;
                                                               this.i28 = this.i19 + this.i10;
                                                               if(this.i10 <= 1)
                                                               {
                                                                  this.i15 = this.i3 & 1;
                                                                  if(this.i15 == 0)
                                                                  {
                                                                     this.i29 = 0;
                                                                     this.i15 = this.i14;
                                                                     this.i16 = this.i10;
                                                                     this.i17 = this.i11;
                                                                     this.i10 = li32(mstate.ebp + -2286);
                                                                     this.i20 = this.i10;
                                                                     this.i14 = this.i12;
                                                                     this.i10 = li32(mstate.ebp + -2313);
                                                                     this.i22 = this.i10;
                                                                     this.i10 = li32(mstate.ebp + -2304);
                                                                     this.i23 = this.i10;
                                                                     this.i10 = li32(mstate.ebp + -2457);
                                                                     this.i24 = this.i10;
                                                                     this.i10 = li32(mstate.ebp + -2448);
                                                                     this.i25 = this.i10;
                                                                     this.i10 = li32(mstate.ebp + -2439);
                                                                     this.i26 = this.i10;
                                                                     this.i11 = this.i29;
                                                                     this.i10 = this.i28;
                                                                     this.i12 = this.i27;
                                                                     this.i27 = li32(mstate.ebp + -2367);
                                                                     this.i28 = li32(mstate.ebp + -2322);
                                                                     break loop87;
                                                                  }
                                                               }
                                                               this.i29 = 0;
                                                               this.i28 += 1;
                                                               this.i15 = this.i14;
                                                               this.i16 = this.i10;
                                                               this.i17 = this.i11;
                                                               this.i10 = li32(mstate.ebp + -2286);
                                                               this.i20 = this.i10;
                                                               this.i14 = this.i12;
                                                               this.i10 = li32(mstate.ebp + -2313);
                                                               this.i22 = this.i10;
                                                               this.i10 = li32(mstate.ebp + -2304);
                                                               this.i23 = this.i10;
                                                               this.i10 = li32(mstate.ebp + -2457);
                                                               this.i24 = this.i10;
                                                               this.i10 = li32(mstate.ebp + -2448);
                                                               this.i25 = this.i10;
                                                               this.i10 = li32(mstate.ebp + -2439);
                                                               this.i26 = this.i10;
                                                               this.i11 = this.i29;
                                                               this.i10 = this.i28;
                                                               this.i12 = this.i27;
                                                               this.i27 = li32(mstate.ebp + -2367);
                                                               this.i28 = li32(mstate.ebp + -2322);
                                                               break loop87;
                                                            }
                                                            §§goto(addrb542);
                                                         }
                                                         this.i10 = this.i11;
                                                         this.i11 = this.i17;
                                                         §§goto(addrafa5);
                                                      }
                                                      else
                                                      {
                                                         if(this.i15 <= 78)
                                                         {
                                                            if(this.i15 != 71)
                                                            {
                                                               if(this.i15 == 76)
                                                               {
                                                                  this.i3 = this.i6 + this.i13;
                                                                  this.i6 = this.i10 | 8;
                                                                  this.i10 = this.i6;
                                                                  this.i6 = this.i8;
                                                                  this.i8 = this.i11;
                                                                  break loop85;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr1b1e:
                                                               this.i3 = this.i15 + -2;
                                                               if(this.i11 == 0)
                                                               {
                                                                  this.i11 = 1;
                                                               }
                                                               §§goto(addr52db);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            if(this.i15 != 79)
                                                            {
                                                               if(this.i15 != 83)
                                                               {
                                                                  if(this.i15 != 85)
                                                                  {
                                                                     §§goto(addrfdd4);
                                                                  }
                                                                  else
                                                                  {
                                                                     this.i3 = this.i10 | 0x10;
                                                                     addr1cfe:
                                                                     this.i10 = this.i3 & 0x1C20;
                                                                     if(this.i10 != 0)
                                                                     {
                                                                        this.i10 = this.i3 & 0x1000;
                                                                        if(this.i10 != 0)
                                                                        {
                                                                           this.i10 = li32(mstate.ebp + -1540);
                                                                           if(this.i10 != 0)
                                                                           {
                                                                              this.i15 = 0;
                                                                              this.i16 = this.i9 << 3;
                                                                              this.i10 += this.i16;
                                                                              this.i16 = li32(this.i10);
                                                                              this.i10 = li32(this.i10 + 4);
                                                                              si8(this.i15,mstate.ebp + -1746);
                                                                              this.i19 = 10;
                                                                              this.i9 += 1;
                                                                              this.i15 = li32(mstate.ebp + -2457);
                                                                              this.i17 = this.i15;
                                                                              this.i15 = this.i16;
                                                                              this.i16 = this.i19;
                                                                              this.i19 = li32(mstate.ebp + -2475);
                                                                           }
                                                                           else
                                                                           {
                                                                              this.i10 = 0;
                                                                              this.i15 = li32(this.i1);
                                                                              this.i16 = li32(this.i1 + 4);
                                                                              si8(this.i10,mstate.ebp + -1746);
                                                                              this.i19 = 10;
                                                                              this.i9 += 1;
                                                                              this.i1 += 8;
                                                                              this.i10 = li32(mstate.ebp + -2457);
                                                                              this.i17 = this.i10;
                                                                              this.i10 = this.i16;
                                                                              this.i16 = this.i19;
                                                                              this.i19 = li32(mstate.ebp + -2475);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           this.i10 = this.i3 & 0x0400;
                                                                           if(this.i10 != 0)
                                                                           {
                                                                              this.i10 = li32(mstate.ebp + -1540);
                                                                              if(this.i10 != 0)
                                                                              {
                                                                                 this.i16 = 0;
                                                                                 this.i15 = this.i9 << 3;
                                                                                 this.i10 += this.i15;
                                                                                 this.i10 = li32(this.i10);
                                                                                 si8(this.i16,mstate.ebp + -1746);
                                                                                 this.i19 = 10;
                                                                                 this.i9 += 1;
                                                                                 this.i15 = li32(mstate.ebp + -2457);
                                                                                 this.i17 = this.i15;
                                                                                 this.i15 = this.i10;
                                                                                 this.i10 = this.i16;
                                                                                 this.i16 = this.i19;
                                                                                 this.i19 = li32(mstate.ebp + -2475);
                                                                              }
                                                                              else
                                                                              {
                                                                                 this.i10 = 0;
                                                                                 this.i15 = li32(this.i1);
                                                                                 si8(this.i10,mstate.ebp + -1746);
                                                                                 this.i16 = 10;
                                                                                 this.i9 += 1;
                                                                                 this.i1 += 4;
                                                                                 this.i17 = li32(mstate.ebp + -2457);
                                                                                 this.i19 = li32(mstate.ebp + -2475);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              this.i10 = li32(mstate.ebp + -1540);
                                                                              this.i15 = this.i3 & 0x0800;
                                                                              if(this.i15 != 0)
                                                                              {
                                                                                 if(this.i10 != 0)
                                                                                 {
                                                                                    this.i15 = 0;
                                                                                    this.i16 = this.i9 << 3;
                                                                                    this.i10 += this.i16;
                                                                                    this.i10 = li32(this.i10);
                                                                                    si8(this.i15,mstate.ebp + -1746);
                                                                                    this.i16 = this.i10 >> 31;
                                                                                    this.i19 = 10;
                                                                                    this.i9 += 1;
                                                                                    this.i15 = li32(mstate.ebp + -2457);
                                                                                    this.i17 = this.i15;
                                                                                    this.i15 = this.i10;
                                                                                    this.i10 = this.i16;
                                                                                    this.i16 = this.i19;
                                                                                    this.i19 = li32(mstate.ebp + -2475);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    this.i10 = 0;
                                                                                    this.i15 = li32(this.i1);
                                                                                    si8(this.i10,mstate.ebp + -1746);
                                                                                    this.i10 = this.i15 >> 31;
                                                                                    this.i16 = 10;
                                                                                    this.i9 += 1;
                                                                                    this.i1 += 4;
                                                                                    this.i17 = li32(mstate.ebp + -2457);
                                                                                    this.i19 = li32(mstate.ebp + -2475);
                                                                                 }
                                                                              }
                                                                              else if(this.i10 != 0)
                                                                              {
                                                                                 this.i15 = 0;
                                                                                 this.i16 = this.i9 << 3;
                                                                                 this.i10 += this.i16;
                                                                                 this.i16 = li32(this.i10);
                                                                                 this.i10 = li32(this.i10 + 4);
                                                                                 si8(this.i15,mstate.ebp + -1746);
                                                                                 this.i19 = 10;
                                                                                 this.i9 += 1;
                                                                                 this.i15 = li32(mstate.ebp + -2457);
                                                                                 this.i17 = this.i15;
                                                                                 this.i15 = this.i16;
                                                                                 this.i16 = this.i19;
                                                                                 this.i19 = li32(mstate.ebp + -2475);
                                                                              }
                                                                              else
                                                                              {
                                                                                 this.i10 = 0;
                                                                                 this.i15 = li32(this.i1);
                                                                                 this.i16 = li32(this.i1 + 4);
                                                                                 si8(this.i10,mstate.ebp + -1746);
                                                                                 this.i19 = 10;
                                                                                 this.i9 += 1;
                                                                                 this.i1 += 8;
                                                                                 this.i10 = li32(mstate.ebp + -2457);
                                                                                 this.i17 = this.i10;
                                                                                 this.i10 = this.i16;
                                                                                 this.i16 = this.i19;
                                                                                 this.i19 = li32(mstate.ebp + -2475);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        this.i10 = this.i3 & 0x10;
                                                                        if(this.i10 != 0)
                                                                        {
                                                                           this.i10 = li32(mstate.ebp + -1540);
                                                                           if(this.i10 != 0)
                                                                           {
                                                                              this.i15 = 0;
                                                                              this.i16 = this.i9 << 3;
                                                                              this.i10 += this.i16;
                                                                              this.i10 = li32(this.i10);
                                                                              si8(this.i15,mstate.ebp + -1746);
                                                                              this.i16 = 10;
                                                                              this.i9 += 1;
                                                                              this.i17 = this.i10;
                                                                              this.i10 = li32(mstate.ebp + -2448);
                                                                              this.i15 = this.i10;
                                                                              this.i10 = li32(mstate.ebp + -2439);
                                                                              this.i19 = li32(mstate.ebp + -2475);
                                                                           }
                                                                           else
                                                                           {
                                                                              this.i10 = 0;
                                                                              this.i15 = li32(this.i1);
                                                                              si8(this.i10,mstate.ebp + -1746);
                                                                              this.i16 = 10;
                                                                              this.i9 += 1;
                                                                              this.i1 += 4;
                                                                              this.i17 = this.i15;
                                                                              this.i10 = li32(mstate.ebp + -2448);
                                                                              this.i15 = this.i10;
                                                                              this.i10 = li32(mstate.ebp + -2439);
                                                                              this.i19 = li32(mstate.ebp + -2475);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           this.i10 = this.i3 & 0x40;
                                                                           if(this.i10 != 0)
                                                                           {
                                                                              this.i10 = li32(mstate.ebp + -1540);
                                                                              if(this.i10 != 0)
                                                                              {
                                                                                 this.i15 = 0;
                                                                                 this.i16 = this.i9 << 3;
                                                                                 this.i10 += this.i16;
                                                                                 this.i10 = li16(this.i10);
                                                                                 si8(this.i15,mstate.ebp + -1746);
                                                                                 this.i16 = 10;
                                                                                 this.i9 += 1;
                                                                                 this.i17 = this.i10;
                                                                                 this.i10 = li32(mstate.ebp + -2448);
                                                                                 this.i15 = this.i10;
                                                                                 this.i10 = li32(mstate.ebp + -2439);
                                                                                 this.i19 = li32(mstate.ebp + -2475);
                                                                              }
                                                                              else
                                                                              {
                                                                                 this.i10 = 0;
                                                                                 this.i15 = li16(this.i1);
                                                                                 si8(this.i10,mstate.ebp + -1746);
                                                                                 this.i16 = 10;
                                                                                 this.i9 += 1;
                                                                                 this.i1 += 4;
                                                                                 this.i17 = this.i15;
                                                                                 this.i10 = li32(mstate.ebp + -2448);
                                                                                 this.i15 = this.i10;
                                                                                 this.i10 = li32(mstate.ebp + -2439);
                                                                                 this.i19 = li32(mstate.ebp + -2475);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              this.i10 = li32(mstate.ebp + -1540);
                                                                              this.i15 = this.i3 & 0x2000;
                                                                              if(this.i15 != 0)
                                                                              {
                                                                                 if(this.i10 != 0)
                                                                                 {
                                                                                    this.i15 = 0;
                                                                                    this.i16 = this.i9 << 3;
                                                                                    this.i10 += this.i16;
                                                                                    this.i10 = li8(this.i10);
                                                                                    si8(this.i15,mstate.ebp + -1746);
                                                                                    this.i16 = 10;
                                                                                    this.i9 += 1;
                                                                                    this.i17 = this.i10;
                                                                                    this.i10 = li32(mstate.ebp + -2448);
                                                                                    this.i15 = this.i10;
                                                                                    this.i10 = li32(mstate.ebp + -2439);
                                                                                    this.i19 = li32(mstate.ebp + -2475);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    this.i10 = 0;
                                                                                    this.i15 = li8(this.i1);
                                                                                    si8(this.i10,mstate.ebp + -1746);
                                                                                    this.i16 = 10;
                                                                                    this.i9 += 1;
                                                                                    this.i1 += 4;
                                                                                    this.i17 = this.i15;
                                                                                    this.i10 = li32(mstate.ebp + -2448);
                                                                                    this.i15 = this.i10;
                                                                                    this.i10 = li32(mstate.ebp + -2439);
                                                                                    this.i19 = li32(mstate.ebp + -2475);
                                                                                 }
                                                                              }
                                                                              else if(this.i10 != 0)
                                                                              {
                                                                                 this.i15 = 0;
                                                                                 this.i16 = this.i9 << 3;
                                                                                 this.i10 += this.i16;
                                                                                 this.i10 = li32(this.i10);
                                                                                 si8(this.i15,mstate.ebp + -1746);
                                                                                 this.i16 = 10;
                                                                                 this.i9 += 1;
                                                                                 this.i17 = this.i10;
                                                                                 this.i10 = li32(mstate.ebp + -2448);
                                                                                 this.i15 = this.i10;
                                                                                 this.i10 = li32(mstate.ebp + -2439);
                                                                                 this.i19 = li32(mstate.ebp + -2475);
                                                                              }
                                                                              else
                                                                              {
                                                                                 this.i10 = 0;
                                                                                 this.i15 = li32(this.i1);
                                                                                 si8(this.i10,mstate.ebp + -1746);
                                                                                 this.i16 = 10;
                                                                                 this.i9 += 1;
                                                                                 this.i1 += 4;
                                                                                 this.i17 = this.i15;
                                                                                 this.i10 = li32(mstate.ebp + -2448);
                                                                                 this.i15 = this.i10;
                                                                                 this.i10 = li32(mstate.ebp + -2439);
                                                                                 this.i19 = li32(mstate.ebp + -2475);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  this.i3 = this.i10 | 0x10;
                                                                  addrd18d:
                                                                  this.i10 = this.i3 & 0x10;
                                                                  if(this.i10 != 0)
                                                                  {
                                                                     this.i10 = li32(mstate.ebp + -2367);
                                                                     if(this.i10 != 0)
                                                                     {
                                                                        this.i10 = 0;
                                                                        mstate.esp -= 8;
                                                                        this.i15 = li32(mstate.ebp + -2367);
                                                                        si32(this.i15,mstate.esp);
                                                                        si32(this.i10,mstate.esp + 4);
                                                                        state = 62;
                                                                        mstate.esp -= 4;
                                                                        FSM_pubrealloc.start();
                                                                        return;
                                                                     }
                                                                     addrd239:
                                                                     this.i10 = li32(mstate.ebp + -1540);
                                                                     if(this.i10 != 0)
                                                                     {
                                                                        this.i15 = this.i9 << 3;
                                                                        this.i10 += this.i15;
                                                                     }
                                                                     else
                                                                     {
                                                                        this.i15 = this.i1 + 4;
                                                                        this.i10 = this.i1;
                                                                        this.i1 = this.i15;
                                                                     }
                                                                     this.i10 = li32(this.i10);
                                                                     this.i9 += 1;
                                                                     if(this.i10 != 0)
                                                                     {
                                                                        this.i15 = cmodule.Box2D._initial_2E_2136;
                                                                        si32(this.i10,mstate.ebp + -196);
                                                                        this.i12 = li32(mstate.ebp + -2061);
                                                                        this.i16 = 128;
                                                                        cmodule.Box2D.memcpy(this.i12,this.i15,this.i16);
                                                                        if(this.i11 >= 0)
                                                                        {
                                                                           this.i15 = 0;
                                                                           while(true)
                                                                           {
                                                                              this.i12 = mstate.ebp + -176;
                                                                              this.i16 = li32(mstate.ebp + -196);
                                                                              this.i17 = li32(this.i16);
                                                                              this.i16 += 4;
                                                                              si32(this.i16,mstate.ebp + -196);
                                                                              mstate.esp -= 12;
                                                                              this.i16 = li32(mstate.ebp + -2196);
                                                                              si32(this.i16,mstate.esp);
                                                                              si32(this.i17,mstate.esp + 4);
                                                                              si32(this.i12,mstate.esp + 8);
                                                                              mstate.esp -= 4;
                                                                              FSM__UTF8_wcrtomb.start();
                                                                              addrd3e1:
                                                                              this.i12 = mstate.eax;
                                                                              mstate.esp += 12;
                                                                              this.i16 = this.i12 + -1;
                                                                              if(uint(this.i16) < uint(-2))
                                                                              {
                                                                                 this.i16 = this.i12 + this.i15;
                                                                                 if(uint(this.i16) <= uint(this.i11))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                              }
                                                                              this.i15 = this.i16;
                                                                           }
                                                                           break loop23;
                                                                        }
                                                                        addrd4ea:
                                                                        this.i15 = mstate.ebp + -176;
                                                                        mstate.esp -= 20;
                                                                        this.i12 = 0;
                                                                        this.i16 = -1;
                                                                        this.i17 = mstate.ebp + -196;
                                                                        si32(this.i12,mstate.esp);
                                                                        si32(this.i17,mstate.esp + 4);
                                                                        si32(this.i16,mstate.esp + 8);
                                                                        si32(this.i12,mstate.esp + 12);
                                                                        si32(this.i15,mstate.esp + 16);
                                                                        mstate.esp -= 4;
                                                                        FSM__UTF8_wcsnrtombs.start();
                                                                        this.i15 = mstate.eax;
                                                                        mstate.esp += 20;
                                                                        if(this.i15 == -1)
                                                                        {
                                                                           this.i10 = 0;
                                                                           this.i15 = li32(mstate.ebp + -2322);
                                                                           addrd809:
                                                                           this.i12 = this.i15;
                                                                           this.i15 = this.i10;
                                                                           if(this.i15 != 0)
                                                                           {
                                                                              this.i10 = this.i15;
                                                                              addrd96e:
                                                                              this.i27 = this.i15;
                                                                              this.i28 = this.i12;
                                                                              this.i15 = this.i10;
                                                                              while(true)
                                                                              {
                                                                                 if(this.i11 >= 0)
                                                                                 {
                                                                                    loop104:
                                                                                    while(true)
                                                                                    {
                                                                                       if(this.i11 != 0)
                                                                                       {
                                                                                          this.i12 = this.i11 + 1;
                                                                                          while(true)
                                                                                          {
                                                                                             this.i16 = li8(this.i15);
                                                                                             this.i17 = this.i15;
                                                                                             if(this.i16 == 0)
                                                                                             {
                                                                                                this.i15 = this.i17;
                                                                                                break loop104;
                                                                                             }
                                                                                             this.i12 += -1;
                                                                                             this.i15 += 1;
                                                                                             if(this.i12 != 1)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       this.i15 = 0;
                                                                                       break;
                                                                                    }
                                                                                    if(this.i15 != 0)
                                                                                    {
                                                                                       this.i15 -= this.i10;
                                                                                       if(this.i15 <= this.i11)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                    }
                                                                                    this.i15 = this.i11;
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    this.i12 = li8(this.i10);
                                                                                    if(this.i12 != 0)
                                                                                    {
                                                                                       this.i12 = this.i15;
                                                                                       while(true)
                                                                                       {
                                                                                          this.i16 = li8(this.i12 + 1);
                                                                                          this.i12 += 1;
                                                                                          this.i17 = this.i12;
                                                                                          if(this.i16 == 0)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          this.i12 = this.i17;
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       this.i12 = this.i10;
                                                                                    }
                                                                                    this.i15 = this.i12 - this.i15;
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              this.i12 = this.i15;
                                                                              this.i29 = 0;
                                                                              si8(this.i29,mstate.ebp + -1746);
                                                                              this.i15 = this.i10;
                                                                              this.i16 = this.i11;
                                                                              this.i17 = this.i25;
                                                                              this.i10 = li32(mstate.ebp + -2295);
                                                                              this.i19 = this.i10;
                                                                              this.i10 = li32(mstate.ebp + -2286);
                                                                              this.i20 = this.i10;
                                                                              this.i10 = li32(mstate.ebp + -2268);
                                                                              this.i21 = this.i10;
                                                                              this.i10 = li32(mstate.ebp + -2313);
                                                                              this.i22 = this.i10;
                                                                              this.i10 = li32(mstate.ebp + -2304);
                                                                              this.i23 = this.i10;
                                                                              this.i10 = li32(mstate.ebp + -2457);
                                                                              this.i24 = this.i10;
                                                                              this.i10 = li32(mstate.ebp + -2448);
                                                                              this.i25 = this.i10;
                                                                              this.i10 = li32(mstate.ebp + -2439);
                                                                              this.i26 = this.i10;
                                                                              this.i11 = this.i29;
                                                                              this.i10 = this.i12;
                                                                              this.i12 = li32(mstate.ebp + -2475);
                                                                              break;
                                                                           }
                                                                           addrd838:
                                                                           this.i3 = this.i15;
                                                                           this.i1 = li32(mstate.ebp + -1971);
                                                                           this.i1 = li16(this.i1);
                                                                           this.i1 |= 64;
                                                                           this.i0 = li32(mstate.ebp + -1971);
                                                                           si16(this.i1,this.i0);
                                                                           this.i1 = li32(mstate.ebp + -2277);
                                                                           this.i6 = this.i1;
                                                                           this.i8 = this.i14;
                                                                           this.i0 = this.i3;
                                                                           break loop74;
                                                                        }
                                                                        this.i12 = li32(mstate.ebp + -2322);
                                                                        this.i16 = 0;
                                                                        mstate.esp -= 8;
                                                                        this.i17 = this.i15 + 1;
                                                                        si32(this.i16,mstate.esp);
                                                                        si32(this.i17,mstate.esp + 4);
                                                                        state = 65;
                                                                        mstate.esp -= 4;
                                                                        FSM_pubrealloc.start();
                                                                        return;
                                                                     }
                                                                     this.i10 = cmodule.Box2D.__2E_str522;
                                                                     this.i15 = li32(mstate.ebp + -2367);
                                                                     this.i12 = li32(mstate.ebp + -2322);
                                                                  }
                                                                  else
                                                                  {
                                                                     this.i10 = li32(mstate.ebp + -1540);
                                                                     if(this.i10 != 0)
                                                                     {
                                                                        this.i15 = this.i9 << 3;
                                                                        this.i10 += this.i15;
                                                                     }
                                                                     else
                                                                     {
                                                                        this.i15 = this.i1 + 4;
                                                                        this.i10 = this.i1;
                                                                        this.i1 = this.i15;
                                                                     }
                                                                     this.i10 = li32(this.i10);
                                                                     this.i9 += 1;
                                                                     if(this.i10 != 0)
                                                                     {
                                                                        this.i15 = li32(mstate.ebp + -2367);
                                                                        this.i12 = li32(mstate.ebp + -2322);
                                                                     }
                                                                     else
                                                                     {
                                                                        this.i10 = cmodule.Box2D.__2E_str522;
                                                                        this.i15 = li32(mstate.ebp + -2367);
                                                                        this.i12 = li32(mstate.ebp + -2322);
                                                                     }
                                                                  }
                                                                  §§goto(addrd96e);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               this.i3 = this.i10 | 0x10;
                                                               addrc678:
                                                               this.i10 = this.i3 & 0x1C20;
                                                               if(this.i10 != 0)
                                                               {
                                                                  this.i10 = this.i3 & 0x1000;
                                                                  if(this.i10 != 0)
                                                                  {
                                                                     this.i10 = li32(mstate.ebp + -1540);
                                                                     if(this.i10 != 0)
                                                                     {
                                                                        this.i15 = 0;
                                                                        this.i16 = this.i9 << 3;
                                                                        this.i10 += this.i16;
                                                                        this.i16 = li32(this.i10);
                                                                        this.i10 = li32(this.i10 + 4);
                                                                        si8(this.i15,mstate.ebp + -1746);
                                                                        this.i19 = 8;
                                                                        this.i9 += 1;
                                                                        this.i15 = li32(mstate.ebp + -2457);
                                                                        this.i17 = this.i15;
                                                                        this.i15 = this.i16;
                                                                        this.i16 = this.i19;
                                                                        this.i19 = li32(mstate.ebp + -2475);
                                                                     }
                                                                     else
                                                                     {
                                                                        this.i10 = 0;
                                                                        this.i15 = li32(this.i1);
                                                                        this.i16 = li32(this.i1 + 4);
                                                                        si8(this.i10,mstate.ebp + -1746);
                                                                        this.i9 += 1;
                                                                        this.i1 += 8;
                                                                        this.i19 = 8;
                                                                        this.i10 = li32(mstate.ebp + -2457);
                                                                        this.i17 = this.i10;
                                                                        this.i10 = this.i16;
                                                                        this.i16 = this.i19;
                                                                        this.i19 = li32(mstate.ebp + -2475);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     this.i10 = this.i3 & 0x0400;
                                                                     if(this.i10 != 0)
                                                                     {
                                                                        this.i10 = li32(mstate.ebp + -1540);
                                                                        if(this.i10 != 0)
                                                                        {
                                                                           this.i16 = 0;
                                                                           this.i15 = this.i9 << 3;
                                                                           this.i10 += this.i15;
                                                                           this.i10 = li32(this.i10);
                                                                           si8(this.i16,mstate.ebp + -1746);
                                                                           this.i19 = 8;
                                                                           this.i9 += 1;
                                                                           this.i15 = li32(mstate.ebp + -2457);
                                                                           this.i17 = this.i15;
                                                                           this.i15 = this.i10;
                                                                           this.i10 = this.i16;
                                                                           this.i16 = this.i19;
                                                                           this.i19 = li32(mstate.ebp + -2475);
                                                                        }
                                                                        else
                                                                        {
                                                                           this.i10 = 0;
                                                                           this.i15 = li32(this.i1);
                                                                           si8(this.i10,mstate.ebp + -1746);
                                                                           this.i16 = 8;
                                                                           this.i9 += 1;
                                                                           this.i1 += 4;
                                                                           this.i17 = li32(mstate.ebp + -2457);
                                                                           this.i19 = li32(mstate.ebp + -2475);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        this.i10 = li32(mstate.ebp + -1540);
                                                                        this.i15 = this.i3 & 0x0800;
                                                                        if(this.i15 != 0)
                                                                        {
                                                                           if(this.i10 != 0)
                                                                           {
                                                                              this.i15 = 0;
                                                                              this.i16 = this.i9 << 3;
                                                                              this.i10 += this.i16;
                                                                              this.i10 = li32(this.i10);
                                                                              si8(this.i15,mstate.ebp + -1746);
                                                                              this.i16 = this.i10 >> 31;
                                                                              this.i19 = 8;
                                                                              this.i9 += 1;
                                                                              this.i15 = li32(mstate.ebp + -2457);
                                                                              this.i17 = this.i15;
                                                                              this.i15 = this.i10;
                                                                              this.i10 = this.i16;
                                                                              this.i16 = this.i19;
                                                                              this.i19 = li32(mstate.ebp + -2475);
                                                                           }
                                                                           else
                                                                           {
                                                                              this.i10 = 0;
                                                                              this.i15 = li32(this.i1);
                                                                              si8(this.i10,mstate.ebp + -1746);
                                                                              this.i10 = this.i15 >> 31;
                                                                              this.i16 = 8;
                                                                              this.i9 += 1;
                                                                              this.i1 += 4;
                                                                              this.i17 = li32(mstate.ebp + -2457);
                                                                              this.i19 = li32(mstate.ebp + -2475);
                                                                           }
                                                                        }
                                                                        else if(this.i10 != 0)
                                                                        {
                                                                           this.i15 = 0;
                                                                           this.i16 = this.i9 << 3;
                                                                           this.i10 += this.i16;
                                                                           this.i16 = li32(this.i10);
                                                                           this.i10 = li32(this.i10 + 4);
                                                                           si8(this.i15,mstate.ebp + -1746);
                                                                           this.i19 = 8;
                                                                           this.i9 += 1;
                                                                           this.i15 = li32(mstate.ebp + -2457);
                                                                           this.i17 = this.i15;
                                                                           this.i15 = this.i16;
                                                                           this.i16 = this.i19;
                                                                           this.i19 = li32(mstate.ebp + -2475);
                                                                        }
                                                                        else
                                                                        {
                                                                           this.i10 = 0;
                                                                           this.i15 = li32(this.i1);
                                                                           this.i16 = li32(this.i1 + 4);
                                                                           si8(this.i10,mstate.ebp + -1746);
                                                                           this.i9 += 1;
                                                                           this.i1 += 8;
                                                                           this.i19 = 8;
                                                                           this.i10 = li32(mstate.ebp + -2457);
                                                                           this.i17 = this.i10;
                                                                           this.i10 = this.i16;
                                                                           this.i16 = this.i19;
                                                                           this.i19 = li32(mstate.ebp + -2475);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  this.i10 = this.i3 & 0x10;
                                                                  if(this.i10 != 0)
                                                                  {
                                                                     this.i10 = li32(mstate.ebp + -1540);
                                                                     if(this.i10 != 0)
                                                                     {
                                                                        this.i15 = 0;
                                                                        this.i16 = this.i9 << 3;
                                                                        this.i10 += this.i16;
                                                                        this.i10 = li32(this.i10);
                                                                        si8(this.i15,mstate.ebp + -1746);
                                                                        this.i16 = 8;
                                                                        this.i9 += 1;
                                                                        this.i17 = this.i10;
                                                                        this.i10 = li32(mstate.ebp + -2448);
                                                                        this.i15 = this.i10;
                                                                        this.i10 = li32(mstate.ebp + -2439);
                                                                        this.i19 = li32(mstate.ebp + -2475);
                                                                     }
                                                                     else
                                                                     {
                                                                        this.i10 = 0;
                                                                        this.i15 = li32(this.i1);
                                                                        si8(this.i10,mstate.ebp + -1746);
                                                                        this.i16 = 8;
                                                                        this.i9 += 1;
                                                                        this.i1 += 4;
                                                                        this.i17 = this.i15;
                                                                        this.i10 = li32(mstate.ebp + -2448);
                                                                        this.i15 = this.i10;
                                                                        this.i10 = li32(mstate.ebp + -2439);
                                                                        this.i19 = li32(mstate.ebp + -2475);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     this.i10 = this.i3 & 0x40;
                                                                     if(this.i10 != 0)
                                                                     {
                                                                        this.i10 = li32(mstate.ebp + -1540);
                                                                        if(this.i10 != 0)
                                                                        {
                                                                           this.i15 = 0;
                                                                           this.i16 = this.i9 << 3;
                                                                           this.i10 += this.i16;
                                                                           this.i10 = li16(this.i10);
                                                                           si8(this.i15,mstate.ebp + -1746);
                                                                           this.i16 = 8;
                                                                           this.i9 += 1;
                                                                           this.i17 = this.i10;
                                                                           this.i10 = li32(mstate.ebp + -2448);
                                                                           this.i15 = this.i10;
                                                                           this.i10 = li32(mstate.ebp + -2439);
                                                                           this.i19 = li32(mstate.ebp + -2475);
                                                                        }
                                                                        else
                                                                        {
                                                                           this.i10 = 0;
                                                                           this.i15 = li16(this.i1);
                                                                           si8(this.i10,mstate.ebp + -1746);
                                                                           this.i16 = 8;
                                                                           this.i9 += 1;
                                                                           this.i1 += 4;
                                                                           this.i17 = this.i15;
                                                                           this.i10 = li32(mstate.ebp + -2448);
                                                                           this.i15 = this.i10;
                                                                           this.i10 = li32(mstate.ebp + -2439);
                                                                           this.i19 = li32(mstate.ebp + -2475);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        this.i10 = li32(mstate.ebp + -1540);
                                                                        this.i15 = this.i3 & 0x2000;
                                                                        if(this.i15 != 0)
                                                                        {
                                                                           if(this.i10 != 0)
                                                                           {
                                                                              this.i15 = 0;
                                                                              this.i16 = this.i9 << 3;
                                                                              this.i10 += this.i16;
                                                                              this.i10 = li8(this.i10);
                                                                              si8(this.i15,mstate.ebp + -1746);
                                                                              this.i16 = 8;
                                                                              this.i9 += 1;
                                                                              this.i17 = this.i10;
                                                                              this.i10 = li32(mstate.ebp + -2448);
                                                                              this.i15 = this.i10;
                                                                              this.i10 = li32(mstate.ebp + -2439);
                                                                              this.i19 = li32(mstate.ebp + -2475);
                                                                           }
                                                                           else
                                                                           {
                                                                              this.i10 = 0;
                                                                              this.i15 = li8(this.i1);
                                                                              si8(this.i10,mstate.ebp + -1746);
                                                                              this.i16 = 8;
                                                                              this.i9 += 1;
                                                                              this.i1 += 4;
                                                                              this.i17 = this.i15;
                                                                              this.i10 = li32(mstate.ebp + -2448);
                                                                              this.i15 = this.i10;
                                                                              this.i10 = li32(mstate.ebp + -2439);
                                                                              this.i19 = li32(mstate.ebp + -2475);
                                                                           }
                                                                        }
                                                                        else if(this.i10 != 0)
                                                                        {
                                                                           this.i15 = 0;
                                                                           this.i16 = this.i9 << 3;
                                                                           this.i10 += this.i16;
                                                                           this.i10 = li32(this.i10);
                                                                           si8(this.i15,mstate.ebp + -1746);
                                                                           this.i16 = 8;
                                                                           this.i9 += 1;
                                                                           this.i17 = this.i10;
                                                                           this.i10 = li32(mstate.ebp + -2448);
                                                                           this.i15 = this.i10;
                                                                           this.i10 = li32(mstate.ebp + -2439);
                                                                           this.i19 = li32(mstate.ebp + -2475);
                                                                        }
                                                                        else
                                                                        {
                                                                           this.i10 = 0;
                                                                           this.i15 = li32(this.i1);
                                                                           si8(this.i10,mstate.ebp + -1746);
                                                                           this.i16 = 8;
                                                                           this.i9 += 1;
                                                                           this.i1 += 4;
                                                                           this.i17 = this.i15;
                                                                           this.i10 = li32(mstate.ebp + -2448);
                                                                           this.i15 = this.i10;
                                                                           this.i10 = li32(mstate.ebp + -2439);
                                                                           this.i19 = li32(mstate.ebp + -2475);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addrec21);
                                                         }
                                                         §§goto(addrfdd4);
                                                      }
                                                   }
                                                   §§goto(addrff48);
                                                }
                                                §§goto(addr1002b);
                                             }
                                             addr1002b:
                                             §§pop().i9 = 0;
                                             this.i12 = li32(mstate.ebp + -2178);
                                             this.i12 = li8(this.i12);
                                             this.i23 = this.i10 >= this.i11 ? this.i10 : this.i11;
                                             this.i9 &= 1;
                                             this.i12 = this.i12 == 0 ? 0 : 2;
                                             this.i9 += this.i23;
                                             this.i9 += this.i12;
                                             this.i24 = this.i9 >= this.i8 ? this.i9 : this.i8;
                                             this.i26 = li32(mstate.ebp + -2277);
                                             this.i24 += this.i26;
                                             if(this.i24 > -1)
                                             {
                                                this.i26 = this.i3 & 0x84;
                                                while(true)
                                                {
                                                   if(this.i26 != 0)
                                                   {
                                                      break;
                                                   }
                                                   this.i27 = this.i8 - this.i9;
                                                   if(this.i27 >= 1)
                                                   {
                                                      this.i27 = this.i1 & 0xFF;
                                                      this.i27 = this.i27 != 0 ? 1 : 0;
                                                      this.i27 &= 1;
                                                      this.i28 = this.i12 + this.i23;
                                                      this.i27 = this.i28 + this.i27;
                                                      this.i27 = this.i8 - this.i27;
                                                      this.i28 = li32(mstate.ebp + -2259);
                                                      loop62:
                                                      while(true)
                                                      {
                                                         this.i30 = cmodule.Box2D._blanks_2E_4526;
                                                         si32(this.i30,this.i28);
                                                         this.i30 = this.i28 + 4;
                                                         if(this.i27 > 16)
                                                         {
                                                            this.i31 = 16;
                                                            si32(this.i31,this.i30);
                                                            this.i30 = li32(this.i4);
                                                            this.i30 += 16;
                                                            si32(this.i30,this.i4);
                                                            this.i31 = li32(this.i5);
                                                            this.i31 += 1;
                                                            si32(this.i31,this.i5);
                                                            this.i28 += 8;
                                                            if(this.i31 > 7)
                                                            {
                                                               if(this.i30 != 0)
                                                               {
                                                                  this.i28 = mstate.ebp + -1728;
                                                                  mstate.esp -= 8;
                                                                  si32(this.i0,mstate.esp);
                                                                  si32(this.i28,mstate.esp + 4);
                                                                  state = 82;
                                                                  mstate.esp -= 4;
                                                                  FSM___sfvwrite.start();
                                                                  return;
                                                               }
                                                               this.i28 = 0;
                                                               si32(this.i28,this.i5);
                                                               this.i28 = this.i2;
                                                            }
                                                            continue;
                                                         }
                                                         si32(this.i27,this.i30);
                                                         this.i30 = li32(this.i4);
                                                         this.i27 = this.i30 + this.i27;
                                                         si32(this.i27,this.i4);
                                                         this.i30 = li32(this.i5);
                                                         this.i30 += 1;
                                                         si32(this.i30,this.i5);
                                                         this.i28 += 8;
                                                         if(this.i30 <= 7)
                                                         {
                                                            this.i27 = this.i28;
                                                         }
                                                         else
                                                         {
                                                            if(this.i27 != 0)
                                                            {
                                                               this.i27 = mstate.ebp + -1728;
                                                               mstate.esp -= 8;
                                                               si32(this.i0,mstate.esp);
                                                               si32(this.i27,mstate.esp + 4);
                                                               state = 83;
                                                               mstate.esp -= 4;
                                                               FSM___sfvwrite.start();
                                                               return;
                                                            }
                                                            this.i27 = 0;
                                                            si32(this.i27,this.i5);
                                                            this.i27 = this.i2;
                                                         }
                                                         this.i28 = li8(mstate.ebp + -1746);
                                                         if(this.i28 != 0)
                                                         {
                                                            this.i28 = mstate.ebp + -1746;
                                                            si32(this.i28,this.i27);
                                                            this.i28 = 1;
                                                            si32(this.i28,this.i27 + 4);
                                                            this.i28 = li32(this.i4);
                                                            this.i28 += 1;
                                                            si32(this.i28,this.i4);
                                                            this.i30 = li32(this.i5);
                                                            this.i30 += 1;
                                                            si32(this.i30,this.i5);
                                                            this.i27 += 8;
                                                            if(this.i30 > 7)
                                                            {
                                                               if(this.i28 != 0)
                                                               {
                                                                  this.i27 = mstate.ebp + -1728;
                                                                  mstate.esp -= 8;
                                                                  si32(this.i0,mstate.esp);
                                                                  si32(this.i27,mstate.esp + 4);
                                                                  state = 84;
                                                                  mstate.esp -= 4;
                                                                  FSM___sfvwrite.start();
                                                                  return;
                                                               }
                                                               this.i27 = 0;
                                                               si32(this.i27,this.i5);
                                                               this.i27 = this.i2;
                                                            }
                                                         }
                                                         this.i28 = li32(mstate.ebp + -2178);
                                                         this.i28 = li8(this.i28);
                                                         if(this.i28 != 0)
                                                         {
                                                            this.i28 = 48;
                                                            this.i30 = li32(mstate.ebp + -2088);
                                                            si8(this.i28,this.i30);
                                                            si32(this.i30,this.i27);
                                                            this.i28 = 2;
                                                            si32(this.i28,this.i27 + 4);
                                                            this.i28 = li32(this.i4);
                                                            this.i28 += 2;
                                                            si32(this.i28,this.i4);
                                                            this.i30 = li32(this.i5);
                                                            this.i30 += 1;
                                                            si32(this.i30,this.i5);
                                                            this.i27 += 8;
                                                            if(this.i30 > 7)
                                                            {
                                                               if(this.i28 != 0)
                                                               {
                                                                  this.i27 = mstate.ebp + -1728;
                                                                  mstate.esp -= 8;
                                                                  si32(this.i0,mstate.esp);
                                                                  si32(this.i27,mstate.esp + 4);
                                                                  state = 85;
                                                                  mstate.esp -= 4;
                                                                  FSM___sfvwrite.start();
                                                                  return;
                                                               }
                                                               this.i27 = 0;
                                                               si32(this.i27,this.i5);
                                                               this.i27 = this.i2;
                                                            }
                                                         }
                                                         loop78:
                                                         while(true)
                                                         {
                                                            if(this.i26 == 128)
                                                            {
                                                               this.i26 = this.i8 - this.i9;
                                                               if(this.i26 >= 1)
                                                               {
                                                                  this.i26 = this.i1 & 0xFF;
                                                                  this.i26 = this.i26 != 0 ? 1 : 0;
                                                                  this.i26 &= 1;
                                                                  this.i28 = this.i12 + this.i23;
                                                                  this.i26 = this.i28 + this.i26;
                                                                  this.i26 = this.i8 - this.i26;
                                                                  loop63:
                                                                  while(true)
                                                                  {
                                                                     this.i28 = this.i27;
                                                                     this.i27 = cmodule.Box2D._zeroes_2E_4527;
                                                                     si32(this.i27,this.i28);
                                                                     this.i27 = this.i28 + 4;
                                                                     if(this.i26 > 16)
                                                                     {
                                                                        this.i30 = 16;
                                                                        si32(this.i30,this.i27);
                                                                        this.i27 = li32(this.i4);
                                                                        this.i27 += 16;
                                                                        si32(this.i27,this.i4);
                                                                        this.i30 = li32(this.i5);
                                                                        this.i30 += 1;
                                                                        si32(this.i30,this.i5);
                                                                        this.i28 += 8;
                                                                        if(this.i30 <= 7)
                                                                        {
                                                                           this.i27 = this.i28;
                                                                        }
                                                                        else
                                                                        {
                                                                           if(this.i27 != 0)
                                                                           {
                                                                              this.i27 = mstate.ebp + -1728;
                                                                              mstate.esp -= 8;
                                                                              si32(this.i0,mstate.esp);
                                                                              si32(this.i27,mstate.esp + 4);
                                                                              state = 86;
                                                                              mstate.esp -= 4;
                                                                              FSM___sfvwrite.start();
                                                                              return;
                                                                           }
                                                                           this.i27 = 0;
                                                                           si32(this.i27,this.i5);
                                                                           this.i27 = this.i2;
                                                                        }
                                                                        continue;
                                                                     }
                                                                     si32(this.i26,this.i27);
                                                                     this.i27 = li32(this.i4);
                                                                     this.i27 += this.i26;
                                                                     si32(this.i27,this.i4);
                                                                     this.i26 = li32(this.i5);
                                                                     this.i26 += 1;
                                                                     si32(this.i26,this.i5);
                                                                     this.i28 += 8;
                                                                     if(this.i26 <= 7)
                                                                     {
                                                                        this.i27 = this.i28;
                                                                        break loop78;
                                                                     }
                                                                     if(this.i27 != 0)
                                                                     {
                                                                        this.i27 = mstate.ebp + -1728;
                                                                        mstate.esp -= 8;
                                                                        si32(this.i0,mstate.esp);
                                                                        si32(this.i27,mstate.esp + 4);
                                                                        state = 87;
                                                                        mstate.esp -= 4;
                                                                        FSM___sfvwrite.start();
                                                                        return;
                                                                     }
                                                                     this.i27 = 0;
                                                                     si32(this.i27,this.i5);
                                                                     this.i11 -= this.i10;
                                                                     if(this.i11 > 0)
                                                                     {
                                                                        this.i27 = this.i2;
                                                                        while(true)
                                                                        {
                                                                           this.i26 = this.i11;
                                                                           this.i11 = cmodule.Box2D._zeroes_2E_4527;
                                                                           si32(this.i11,this.i27);
                                                                           this.i11 = this.i27 + 4;
                                                                           if(this.i26 > 16)
                                                                           {
                                                                              this.i28 = 16;
                                                                              si32(this.i28,this.i11);
                                                                              this.i11 = li32(this.i4);
                                                                              this.i11 += 16;
                                                                              si32(this.i11,this.i4);
                                                                              this.i28 = li32(this.i5);
                                                                              this.i28 += 1;
                                                                              si32(this.i28,this.i5);
                                                                              this.i27 += 8;
                                                                              if(this.i28 <= 7)
                                                                              {
                                                                                 this.i11 = this.i27;
                                                                              }
                                                                              else
                                                                              {
                                                                                 if(this.i11 != 0)
                                                                                 {
                                                                                    this.i11 = mstate.ebp + -1728;
                                                                                    mstate.esp -= 8;
                                                                                    si32(this.i0,mstate.esp);
                                                                                    si32(this.i11,mstate.esp + 4);
                                                                                    state = 88;
                                                                                    mstate.esp -= 4;
                                                                                    FSM___sfvwrite.start();
                                                                                    return;
                                                                                 }
                                                                                 this.i11 = 0;
                                                                                 si32(this.i11,this.i5);
                                                                                 this.i11 = this.i2;
                                                                              }
                                                                              continue;
                                                                           }
                                                                           si32(this.i26,this.i11);
                                                                           this.i11 = li32(this.i4);
                                                                           this.i11 += this.i26;
                                                                           si32(this.i11,this.i4);
                                                                           this.i26 = li32(this.i5);
                                                                           this.i26 += 1;
                                                                           si32(this.i26,this.i5);
                                                                           this.i27 += 8;
                                                                           if(this.i26 <= 7)
                                                                           {
                                                                              this.i11 = this.i27;
                                                                           }
                                                                           else
                                                                           {
                                                                              if(this.i11 != 0)
                                                                              {
                                                                                 this.i11 = mstate.ebp + -1728;
                                                                                 mstate.esp -= 8;
                                                                                 si32(this.i0,mstate.esp);
                                                                                 si32(this.i11,mstate.esp + 4);
                                                                                 state = 116;
                                                                                 mstate.esp -= 4;
                                                                                 FSM___sfvwrite.start();
                                                                                 return;
                                                                              }
                                                                              this.i11 = 0;
                                                                              si32(this.i11,this.i5);
                                                                              this.i11 = this.i2;
                                                                           }
                                                                           this.i27 = this.i11;
                                                                           this.i11 = this.i26 + -16;
                                                                        }
                                                                        break;
                                                                        addr10c16:
                                                                     }
                                                                     this.i11 = this.i2;
                                                                     this.i26 = this.i3 & 0x0100;
                                                                     if(this.i26 == 0)
                                                                     {
                                                                        si32(this.i15,this.i11);
                                                                        si32(this.i10,this.i11 + 4);
                                                                        this.i15 = li32(this.i4);
                                                                        this.i15 += this.i10;
                                                                        si32(this.i15,this.i4);
                                                                        this.i16 = li32(this.i5);
                                                                        this.i16 += 1;
                                                                        si32(this.i16,this.i5);
                                                                        this.i11 += 8;
                                                                        if(this.i16 <= 7)
                                                                        {
                                                                           this.i15 = this.i11;
                                                                           this.i11 = this.i20;
                                                                           this.i16 = this.i22;
                                                                           break loop35;
                                                                        }
                                                                        if(this.i15 == 0)
                                                                        {
                                                                           this.i11 = 0;
                                                                           si32(this.i11,this.i5);
                                                                           addr10e23:
                                                                           this.i3 &= 4;
                                                                           if(this.i3 != 0)
                                                                           {
                                                                              this.i3 = this.i2;
                                                                              this.i11 = this.i20;
                                                                              this.i15 = this.i22;
                                                                              while(true)
                                                                              {
                                                                                 this.i10 = this.i15;
                                                                                 this.i9 = this.i8 - this.i9;
                                                                                 loop79:
                                                                                 while(true)
                                                                                 {
                                                                                    if(this.i9 > 0)
                                                                                    {
                                                                                       this.i1 &= 255;
                                                                                       this.i1 = this.i1 != 0 ? 1 : 0;
                                                                                       this.i1 &= 1;
                                                                                       this.i9 = this.i12 + this.i23;
                                                                                       this.i1 = this.i9 + this.i1;
                                                                                       this.i1 = this.i8 - this.i1;
                                                                                       while(true)
                                                                                       {
                                                                                          this.i8 = cmodule.Box2D._blanks_2E_4526;
                                                                                          si32(this.i8,this.i3);
                                                                                          this.i8 = this.i3 + 4;
                                                                                          if(this.i1 > 16)
                                                                                          {
                                                                                             this.i9 = 16;
                                                                                             si32(this.i9,this.i8);
                                                                                             this.i8 = li32(this.i4);
                                                                                             this.i8 += 16;
                                                                                             si32(this.i8,this.i4);
                                                                                             this.i9 = li32(this.i5);
                                                                                             this.i9 += 1;
                                                                                             si32(this.i9,this.i5);
                                                                                             this.i3 += 8;
                                                                                             if(this.i9 > 7)
                                                                                             {
                                                                                                if(this.i8 != 0)
                                                                                                {
                                                                                                   §§goto(addr130d3);
                                                                                                }
                                                                                                this.i3 = 0;
                                                                                                si32(this.i3,this.i5);
                                                                                                this.i3 = this.i2;
                                                                                             }
                                                                                             continue;
                                                                                          }
                                                                                          si32(this.i1,this.i8);
                                                                                          this.i3 = li32(this.i4);
                                                                                          this.i3 += this.i1;
                                                                                          si32(this.i3,this.i4);
                                                                                          this.i1 = li32(this.i5);
                                                                                          this.i1 += 1;
                                                                                          si32(this.i1,this.i5);
                                                                                          if(this.i1 >= 8)
                                                                                          {
                                                                                             if(this.i3 == 0)
                                                                                             {
                                                                                                this.i3 = 0;
                                                                                                si32(this.i3,this.i5);
                                                                                                this.i3 = this.i7;
                                                                                                this.i7 = this.i11;
                                                                                                this.i11 = this.i10;
                                                                                                break loop79;
                                                                                             }
                                                                                             this.i3 = mstate.ebp + -1728;
                                                                                             mstate.esp -= 8;
                                                                                             si32(this.i0,mstate.esp);
                                                                                             si32(this.i3,mstate.esp + 4);
                                                                                             state = 111;
                                                                                             mstate.esp -= 4;
                                                                                             FSM___sfvwrite.start();
                                                                                             return;
                                                                                          }
                                                                                          addr12fd3:
                                                                                          this.i1 += -16;
                                                                                       }
                                                                                       break loop63;
                                                                                       addr1317c:
                                                                                    }
                                                                                    this.i3 = this.i7;
                                                                                    this.i7 = this.i11;
                                                                                    this.i11 = this.i10;
                                                                                    break;
                                                                                 }
                                                                                 this.i3 = this.i2;
                                                                                 this.i11 = this.i20;
                                                                                 this.i15 = this.i22;
                                                                              }
                                                                              addr102e5:
                                                                              this.i0 = li32(mstate.ebp + -2277);
                                                                              this.i6 = this.i0;
                                                                              this.i8 = this.i14;
                                                                              this.i0 = this.i25;
                                                                              break loop74;
                                                                           }
                                                                           this.i3 = this.i7;
                                                                           this.i7 = this.i20;
                                                                           this.i11 = this.i22;
                                                                           while(true)
                                                                           {
                                                                              this.i1 = this.i7;
                                                                              this.i9 = this.i11;
                                                                              this.i8 = li32(this.i4);
                                                                              if(this.i8 != 0)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              addr08bc:
                                                                              this.i8 = 0;
                                                                              si32(this.i8,this.i5);
                                                                              this.i8 = this.i2;
                                                                              this.i20 = this.i24;
                                                                              this.i16 = this.i3;
                                                                              this.i24 = this.i17;
                                                                              this.i17 = this.i19;
                                                                              this.i3 = this.i29;
                                                                              this.i7 = this.i21;
                                                                              this.i10 = this.i14;
                                                                              this.i12 = this.i1;
                                                                              this.i19 = this.i9;
                                                                              this.i1 = li32(mstate.ebp + -2502);
                                                                              this.i22 = this.i1;
                                                                              this.i1 = li32(mstate.ebp + -2511);
                                                                              this.i14 = this.i1;
                                                                              this.i1 = li32(mstate.ebp + -2520);
                                                                              this.i15 = this.i1;
                                                                              this.i1 = li32(mstate.ebp + -2547);
                                                                              this.i23 = this.i1;
                                                                              this.i1 = li32(mstate.ebp + -2538);
                                                                              this.i9 = this.i1;
                                                                              this.i21 = this.i25;
                                                                              this.i1 = li32(mstate.ebp + -2556);
                                                                              this.i11 = this.i1;
                                                                              this.i1 = li32(mstate.ebp + -2529);
                                                                              while(true)
                                                                              {
                                                                                 this.i25 = this.i16;
                                                                                 this.i26 = this.i17;
                                                                                 this.i27 = this.i3;
                                                                                 this.i28 = this.i7;
                                                                                 this.i29 = this.i10;
                                                                                 this.i10 = this.i14;
                                                                                 this.i30 = this.i15;
                                                                                 this.i17 = this.i21;
                                                                                 this.i3 = li8(this.i18);
                                                                                 while(true)
                                                                                 {
                                                                                    if(this.i3 != 0)
                                                                                    {
                                                                                       this.i7 = this.i3 & 0xFF;
                                                                                       if(this.i7 != 37)
                                                                                       {
                                                                                          this.i3 = this.i6 + this.i13;
                                                                                          this.i13 = this.i3;
                                                                                          this.i14 = this.i8;
                                                                                          this.i7 = this.i20;
                                                                                          this.i15 = this.i3;
                                                                                          this.i3 = this.i1;
                                                                                          this.i16 = this.i11;
                                                                                          this.i1 = this.i9;
                                                                                          this.i11 = this.i23;
                                                                                          this.i9 = this.i30;
                                                                                          this.i18 = this.i22;
                                                                                          this.i20 = this.i12;
                                                                                          this.i21 = this.i29;
                                                                                          this.i22 = this.i28;
                                                                                          this.i23 = this.i27;
                                                                                          this.i6 = this.i26;
                                                                                          this.i8 = this.i24;
                                                                                          this.i12 = this.i25;
                                                                                          §§goto(addr0b2d);
                                                                                       }
                                                                                    }
                                                                                    this.i6 += this.i13;
                                                                                    this.i7 = this.i25;
                                                                                    this.i13 = this.i24;
                                                                                    this.i14 = this.i26;
                                                                                    this.i15 = this.i27;
                                                                                    this.i16 = this.i28;
                                                                                    this.i18 = this.i29;
                                                                                    this.i21 = this.i30;
                                                                                    this.i24 = this.i6;
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr1113);
                                                                              }
                                                                              break loop63;
                                                                              this.i3 = this.i7;
                                                                              this.i7 = this.i20;
                                                                              this.i11 = this.i22;
                                                                           }
                                                                           this.i8 = mstate.ebp + -1728;
                                                                           mstate.esp -= 8;
                                                                           si32(this.i0,mstate.esp);
                                                                           si32(this.i8,mstate.esp + 4);
                                                                           state = 112;
                                                                           mstate.esp -= 4;
                                                                           FSM___sfvwrite.start();
                                                                           return;
                                                                           addr132e4:
                                                                        }
                                                                        this.i11 = mstate.ebp + -1728;
                                                                        mstate.esp -= 8;
                                                                        si32(this.i0,mstate.esp);
                                                                        si32(this.i11,mstate.esp + 4);
                                                                        state = 89;
                                                                        mstate.esp -= 4;
                                                                        FSM___sfvwrite.start();
                                                                        return;
                                                                     }
                                                                     this.i10 = this.i17 & 0xFF;
                                                                     if(this.i10 != 0)
                                                                     {
                                                                        if(this.i16 <= 1)
                                                                        {
                                                                           this.i10 = this.i3 & 1;
                                                                           if(this.i10 == 0)
                                                                           {
                                                                              this.i16 = 1;
                                                                              si32(this.i15,this.i11);
                                                                              si32(this.i16,this.i11 + 4);
                                                                              this.i15 = li32(this.i4);
                                                                              this.i15 += 1;
                                                                              si32(this.i15,this.i4);
                                                                              this.i16 = li32(this.i5);
                                                                              this.i16 += 1;
                                                                              si32(this.i16,this.i5);
                                                                              this.i11 += 8;
                                                                              if(this.i16 <= 7)
                                                                              {
                                                                                 break loop34;
                                                                              }
                                                                              if(this.i15 == 0)
                                                                              {
                                                                                 this.i11 = 0;
                                                                                 si32(this.i11,this.i5);
                                                                                 this.i11 = this.i2;
                                                                                 break loop34;
                                                                              }
                                                                              this.i11 = mstate.ebp + -1728;
                                                                              mstate.esp -= 8;
                                                                              si32(this.i0,mstate.esp);
                                                                              si32(this.i11,mstate.esp + 4);
                                                                              state = 117;
                                                                              mstate.esp -= 4;
                                                                              FSM___sfvwrite.start();
                                                                              return;
                                                                           }
                                                                        }
                                                                        this.i10 = 2;
                                                                        this.i26 = li8(this.i15);
                                                                        this.i27 = li32(mstate.ebp + -2187);
                                                                        si8(this.i26,this.i27);
                                                                        this.i26 = li32(mstate.ebp + -2097);
                                                                        this.i26 = li8(this.i26);
                                                                        this.i27 = li32(mstate.ebp + -2043);
                                                                        si8(this.i26,this.i27);
                                                                        this.i26 = li32(mstate.ebp + -2187);
                                                                        si32(this.i26,this.i11);
                                                                        si32(this.i10,this.i11 + 4);
                                                                        this.i10 = li32(this.i4);
                                                                        this.i10 += 2;
                                                                        si32(this.i10,this.i4);
                                                                        this.i26 = li32(this.i5);
                                                                        this.i26 += 1;
                                                                        si32(this.i26,this.i5);
                                                                        this.i11 += 8;
                                                                        this.i15 += 1;
                                                                        if(this.i26 > 7)
                                                                        {
                                                                           if(this.i10 != 0)
                                                                           {
                                                                              this.i11 = mstate.ebp + -1728;
                                                                              mstate.esp -= 8;
                                                                              si32(this.i0,mstate.esp);
                                                                              si32(this.i11,mstate.esp + 4);
                                                                              state = 105;
                                                                              mstate.esp -= 4;
                                                                              FSM___sfvwrite.start();
                                                                              return;
                                                                           }
                                                                           this.i11 = 0;
                                                                           si32(this.i11,this.i5);
                                                                           this.i11 = this.i2;
                                                                        }
                                                                        addr1296f:
                                                                        si32(this.i15,this.i11);
                                                                        this.i15 = this.i21 + -1;
                                                                        si32(this.i15,this.i11 + 4);
                                                                        this.i10 = li32(this.i4);
                                                                        this.i15 += this.i10;
                                                                        si32(this.i15,this.i4);
                                                                        this.i10 = li32(this.i5);
                                                                        this.i10 += 1;
                                                                        si32(this.i10,this.i5);
                                                                        this.i11 += 8;
                                                                        if(this.i10 >= 8)
                                                                        {
                                                                           if(this.i15 != 0)
                                                                           {
                                                                              this.i11 = mstate.ebp + -1728;
                                                                              mstate.esp -= 8;
                                                                              si32(this.i0,mstate.esp);
                                                                              si32(this.i11,mstate.esp + 4);
                                                                              state = 106;
                                                                              mstate.esp -= 4;
                                                                              FSM___sfvwrite.start();
                                                                              return;
                                                                           }
                                                                           this.i11 = 0;
                                                                           si32(this.i11,this.i5);
                                                                           this.i11 = this.i16 - this.i21;
                                                                           if(this.i11 <= 0)
                                                                           {
                                                                              break loop33;
                                                                           }
                                                                           this.i15 = this.i11;
                                                                           this.i11 = this.i2;
                                                                        }
                                                                        else
                                                                        {
                                                                           this.i15 = this.i16 - this.i21;
                                                                           if(this.i15 <= 0)
                                                                           {
                                                                              break loop34;
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           this.i16 = cmodule.Box2D._zeroes_2E_4527;
                                                                           si32(this.i16,this.i11);
                                                                           this.i16 = this.i11 + 4;
                                                                           if(this.i15 <= 16)
                                                                           {
                                                                              si32(this.i15,this.i16);
                                                                              this.i16 = li32(this.i4);
                                                                              this.i15 = this.i16 + this.i15;
                                                                              si32(this.i15,this.i4);
                                                                              this.i16 = li32(this.i5);
                                                                              this.i16 += 1;
                                                                              si32(this.i16,this.i5);
                                                                              this.i11 += 8;
                                                                              if(this.i16 <= 7)
                                                                              {
                                                                                 break loop34;
                                                                              }
                                                                              if(this.i15 == 0)
                                                                              {
                                                                                 this.i11 = 0;
                                                                                 si32(this.i11,this.i5);
                                                                                 this.i11 = this.i2;
                                                                                 break loop34;
                                                                              }
                                                                              this.i11 = mstate.ebp + -1728;
                                                                              mstate.esp -= 8;
                                                                              si32(this.i0,mstate.esp);
                                                                              si32(this.i11,mstate.esp + 4);
                                                                              state = 108;
                                                                              mstate.esp -= 4;
                                                                              FSM___sfvwrite.start();
                                                                              return;
                                                                           }
                                                                           this.i10 = 16;
                                                                           si32(this.i10,this.i16);
                                                                           this.i16 = li32(this.i4);
                                                                           this.i16 += 16;
                                                                           si32(this.i16,this.i4);
                                                                           this.i10 = li32(this.i5);
                                                                           this.i10 += 1;
                                                                           si32(this.i10,this.i5);
                                                                           this.i11 += 8;
                                                                           if(this.i10 > 7)
                                                                           {
                                                                              if(this.i16 != 0)
                                                                              {
                                                                                 this.i11 = mstate.ebp + -1728;
                                                                                 mstate.esp -= 8;
                                                                                 si32(this.i0,mstate.esp);
                                                                                 si32(this.i11,mstate.esp + 4);
                                                                                 state = 107;
                                                                                 mstate.esp -= 4;
                                                                                 FSM___sfvwrite.start();
                                                                                 return;
                                                                              }
                                                                              this.i11 = 0;
                                                                              si32(this.i11,this.i5);
                                                                              this.i11 = this.i2;
                                                                           }
                                                                           this.i15 += -16;
                                                                        }
                                                                        break;
                                                                        addr12c27:
                                                                     }
                                                                     this.i10 = li32(mstate.ebp + -1744);
                                                                     if(this.i10 <= 0)
                                                                     {
                                                                        this.i10 = cmodule.Box2D._zeroes_2E_4527;
                                                                        si32(this.i10,this.i11);
                                                                        this.i10 = 1;
                                                                        si32(this.i10,this.i11 + 4);
                                                                        this.i10 = li32(this.i4);
                                                                        this.i10 += 1;
                                                                        si32(this.i10,this.i4);
                                                                        this.i26 = li32(this.i5);
                                                                        this.i26 += 1;
                                                                        si32(this.i26,this.i5);
                                                                        this.i11 += 8;
                                                                        if(this.i26 > 7)
                                                                        {
                                                                           if(this.i10 != 0)
                                                                           {
                                                                              this.i11 = mstate.ebp + -1728;
                                                                              mstate.esp -= 8;
                                                                              si32(this.i0,mstate.esp);
                                                                              si32(this.i11,mstate.esp + 4);
                                                                              state = 90;
                                                                              mstate.esp -= 4;
                                                                              FSM___sfvwrite.start();
                                                                              return;
                                                                           }
                                                                           this.i11 = 0;
                                                                           si32(this.i11,this.i5);
                                                                           this.i11 = this.i2;
                                                                        }
                                                                        loop81:
                                                                        while(true)
                                                                        {
                                                                           loop82:
                                                                           while(true)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(this.i16 == 0)
                                                                                 {
                                                                                    this.i10 = this.i3 & 1;
                                                                                    if(this.i10 == 0)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                 }
                                                                                 this.i10 = 1;
                                                                                 this.i26 = li32(mstate.ebp + -2097);
                                                                                 si32(this.i26,this.i11);
                                                                                 si32(this.i10,this.i11 + 4);
                                                                                 this.i10 = li32(this.i4);
                                                                                 this.i10 += 1;
                                                                                 si32(this.i10,this.i4);
                                                                                 this.i26 = li32(this.i5);
                                                                                 this.i26 += 1;
                                                                                 si32(this.i26,this.i5);
                                                                                 this.i11 += 8;
                                                                                 if(this.i26 <= 7)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(this.i10 == 0)
                                                                                 {
                                                                                    this.i11 = 0;
                                                                                    si32(this.i11,this.i5);
                                                                                    addr11168:
                                                                                    this.i11 = li32(mstate.ebp + -1744);
                                                                                    this.i11 = 0 - this.i11;
                                                                                    if(this.i11 <= 0)
                                                                                    {
                                                                                       this.i11 = this.i2;
                                                                                       break loop82;
                                                                                    }
                                                                                    this.i10 = this.i2;
                                                                                    break loop81;
                                                                                 }
                                                                                 this.i11 = mstate.ebp + -1728;
                                                                                 mstate.esp -= 8;
                                                                                 si32(this.i0,mstate.esp);
                                                                                 si32(this.i11,mstate.esp + 4);
                                                                                 state = 91;
                                                                                 mstate.esp -= 4;
                                                                                 FSM___sfvwrite.start();
                                                                                 return;
                                                                              }
                                                                              this.i10 = this.i11;
                                                                              this.i11 = li32(mstate.ebp + -1744);
                                                                              this.i11 = 0 - this.i11;
                                                                              if(this.i11 <= 0)
                                                                              {
                                                                                 this.i11 = this.i10;
                                                                                 break;
                                                                              }
                                                                              break loop81;
                                                                           }
                                                                           this.i10 = li32(mstate.ebp + -1744);
                                                                           this.i16 = this.i10 + this.i16;
                                                                           this.i10 = this.i11;
                                                                           this.i11 = this.i16;
                                                                           this.i16 = this.i20;
                                                                           this.i20 = this.i22;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           this.i26 = this.i11;
                                                                           this.i11 = cmodule.Box2D._zeroes_2E_4527;
                                                                           si32(this.i11,this.i10);
                                                                           this.i11 = this.i10 + 4;
                                                                           if(this.i26 > 16)
                                                                           {
                                                                              this.i27 = 16;
                                                                              si32(this.i27,this.i11);
                                                                              this.i11 = li32(this.i4);
                                                                              this.i11 += 16;
                                                                              si32(this.i11,this.i4);
                                                                              this.i27 = li32(this.i5);
                                                                              this.i27 += 1;
                                                                              si32(this.i27,this.i5);
                                                                              this.i10 += 8;
                                                                              if(this.i27 <= 7)
                                                                              {
                                                                                 this.i11 = this.i10;
                                                                              }
                                                                              else
                                                                              {
                                                                                 if(this.i11 != 0)
                                                                                 {
                                                                                    this.i11 = mstate.ebp + -1728;
                                                                                    mstate.esp -= 8;
                                                                                    si32(this.i0,mstate.esp);
                                                                                    si32(this.i11,mstate.esp + 4);
                                                                                    state = 92;
                                                                                    mstate.esp -= 4;
                                                                                    FSM___sfvwrite.start();
                                                                                    return;
                                                                                 }
                                                                                 this.i11 = 0;
                                                                                 si32(this.i11,this.i5);
                                                                                 this.i11 = this.i2;
                                                                              }
                                                                              continue;
                                                                           }
                                                                           si32(this.i26,this.i11);
                                                                           this.i11 = li32(this.i4);
                                                                           this.i11 += this.i26;
                                                                           si32(this.i11,this.i4);
                                                                           this.i26 = li32(this.i5);
                                                                           this.i26 += 1;
                                                                           si32(this.i26,this.i5);
                                                                           this.i10 += 8;
                                                                           if(this.i26 <= 7)
                                                                           {
                                                                              this.i11 = this.i10;
                                                                              break loop82;
                                                                           }
                                                                           if(this.i11 != 0)
                                                                           {
                                                                              this.i11 = mstate.ebp + -1728;
                                                                              mstate.esp -= 8;
                                                                              si32(this.i0,mstate.esp);
                                                                              si32(this.i11,mstate.esp + 4);
                                                                              state = 93;
                                                                              mstate.esp -= 4;
                                                                              FSM___sfvwrite.start();
                                                                              return;
                                                                           }
                                                                           this.i11 = 0;
                                                                           si32(this.i11,this.i5);
                                                                           this.i11 = li32(mstate.ebp + -1744);
                                                                           this.i11 += this.i16;
                                                                           this.i10 = this.i2;
                                                                           this.i16 = this.i20;
                                                                           this.i20 = this.i22;
                                                                           this.i10 = this.i11;
                                                                           this.i11 = this.i26 + -16;
                                                                        }
                                                                        break;
                                                                     }
                                                                     this.i10 = li32(mstate.ebp + -1740);
                                                                     this.i10 -= this.i15;
                                                                     this.i10 = this.i10 > this.i29 ? this.i29 : this.i10;
                                                                     if(this.i10 <= 0)
                                                                     {
                                                                        addr1150f:
                                                                        this.i26 = this.i11;
                                                                        this.i11 = this.i29 - this.i10;
                                                                        this.i11 = this.i10 < 0 ? this.i29 : this.i11;
                                                                        if(this.i11 <= 0)
                                                                        {
                                                                           this.i11 = this.i26;
                                                                           addr116c0:
                                                                           this.i10 = this.i11;
                                                                           this.i11 = this.i15 + this.i29;
                                                                           if(this.i7 != 0)
                                                                           {
                                                                              this.i15 = this.i10;
                                                                              addr119bb:
                                                                              this.i10 = 0;
                                                                              loop68:
                                                                              while(true)
                                                                              {
                                                                                 this.i26 = this.i15;
                                                                                 this.i15 = this.i11 + this.i10;
                                                                                 if(this.i22 <= 0)
                                                                                 {
                                                                                    if(this.i20 <= 0)
                                                                                    {
                                                                                       this.i11 = li32(mstate.ebp + -1740);
                                                                                       if(uint(this.i15) <= uint(this.i11))
                                                                                       {
                                                                                          this.i11 = this.i15;
                                                                                          this.i15 = this.i26;
                                                                                          this.i10 = this.i22;
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          this.i15 = this.i26;
                                                                                          this.i10 = this.i22;
                                                                                       }
                                                                                       addr120a2:
                                                                                       this.i22 = this.i15;
                                                                                       this.i26 = this.i10;
                                                                                       while(true)
                                                                                       {
                                                                                          if(this.i16 == 0)
                                                                                          {
                                                                                             this.i15 = this.i3 & 1;
                                                                                             if(this.i15 == 0)
                                                                                             {
                                                                                                this.i15 = this.i11;
                                                                                                this.i10 = this.i22;
                                                                                                this.i11 = this.i16;
                                                                                                this.i16 = this.i20;
                                                                                                this.i20 = this.i26;
                                                                                                break;
                                                                                             }
                                                                                          }
                                                                                          this.i15 = 1;
                                                                                          this.i10 = li32(mstate.ebp + -2097);
                                                                                          si32(this.i10,this.i22);
                                                                                          si32(this.i15,this.i22 + 4);
                                                                                          this.i15 = li32(this.i4);
                                                                                          this.i15 += 1;
                                                                                          si32(this.i15,this.i4);
                                                                                          this.i10 = li32(this.i5);
                                                                                          this.i10 += 1;
                                                                                          si32(this.i10,this.i5);
                                                                                          this.i22 += 8;
                                                                                          if(this.i10 <= 7)
                                                                                          {
                                                                                             this.i15 = this.i11;
                                                                                             this.i10 = this.i22;
                                                                                             this.i11 = this.i16;
                                                                                             this.i16 = this.i20;
                                                                                             this.i20 = this.i26;
                                                                                             break;
                                                                                          }
                                                                                          if(this.i15 == 0)
                                                                                          {
                                                                                             this.i15 = 0;
                                                                                             si32(this.i15,this.i5);
                                                                                             this.i15 = this.i11;
                                                                                             this.i10 = this.i2;
                                                                                             this.i11 = this.i16;
                                                                                             this.i16 = this.i20;
                                                                                             this.i20 = this.i26;
                                                                                             break;
                                                                                          }
                                                                                          this.i15 = mstate.ebp + -1728;
                                                                                          mstate.esp -= 8;
                                                                                          si32(this.i0,mstate.esp);
                                                                                          si32(this.i15,mstate.esp + 4);
                                                                                          state = 101;
                                                                                          mstate.esp -= 4;
                                                                                          FSM___sfvwrite.start();
                                                                                          return;
                                                                                       }
                                                                                       addr122af:
                                                                                       this.i22 = this.i10;
                                                                                       this.i10 = li32(mstate.ebp + -1740);
                                                                                       this.i10 -= this.i15;
                                                                                       this.i10 = this.i10 > this.i11 ? this.i11 : this.i10;
                                                                                       if(this.i10 <= 0)
                                                                                       {
                                                                                          this.i15 = this.i22;
                                                                                          addr12310:
                                                                                          this.i22 = this.i11 - this.i10;
                                                                                          this.i11 = this.i10 < 0 ? this.i11 : this.i22;
                                                                                          if(this.i11 <= 0)
                                                                                          {
                                                                                             this.i11 = this.i16;
                                                                                             this.i16 = this.i20;
                                                                                             break loop35;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          si32(this.i15,this.i22);
                                                                                          si32(this.i10,this.i22 + 4);
                                                                                          this.i15 = li32(this.i4);
                                                                                          this.i15 += this.i10;
                                                                                          si32(this.i15,this.i4);
                                                                                          this.i26 = li32(this.i5);
                                                                                          this.i26 += 1;
                                                                                          si32(this.i26,this.i5);
                                                                                          this.i22 += 8;
                                                                                          if(this.i26 <= 7)
                                                                                          {
                                                                                             this.i15 = this.i22;
                                                                                             §§goto(addr12310);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             if(this.i15 != 0)
                                                                                             {
                                                                                                this.i15 = mstate.ebp + -1728;
                                                                                                mstate.esp -= 8;
                                                                                                si32(this.i0,mstate.esp);
                                                                                                si32(this.i15,mstate.esp + 4);
                                                                                                state = 102;
                                                                                                mstate.esp -= 4;
                                                                                                FSM___sfvwrite.start();
                                                                                                return;
                                                                                             }
                                                                                             this.i15 = 0;
                                                                                             si32(this.i15,this.i5);
                                                                                             this.i15 = this.i11 - this.i10;
                                                                                             this.i11 = this.i10 < 0 ? this.i11 : this.i15;
                                                                                             if(this.i11 <= 0)
                                                                                             {
                                                                                                addr124bd:
                                                                                                this.i15 = this.i2;
                                                                                                this.i11 = this.i16;
                                                                                                this.i16 = this.i20;
                                                                                                break loop35;
                                                                                             }
                                                                                             this.i15 = this.i2;
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          this.i22 = this.i11;
                                                                                          this.i11 = this.i15;
                                                                                          this.i15 = cmodule.Box2D._zeroes_2E_4527;
                                                                                          si32(this.i15,this.i11);
                                                                                          this.i15 = this.i11 + 4;
                                                                                          if(this.i22 <= 16)
                                                                                          {
                                                                                             si32(this.i22,this.i15);
                                                                                             this.i15 = li32(this.i4);
                                                                                             this.i15 += this.i22;
                                                                                             si32(this.i15,this.i4);
                                                                                             this.i22 = li32(this.i5);
                                                                                             this.i22 += 1;
                                                                                             si32(this.i22,this.i5);
                                                                                             this.i11 += 8;
                                                                                             if(this.i22 <= 7)
                                                                                             {
                                                                                                this.i15 = this.i11;
                                                                                                this.i11 = this.i16;
                                                                                                this.i16 = this.i20;
                                                                                                break loop35;
                                                                                             }
                                                                                             if(this.i15 == 0)
                                                                                             {
                                                                                                this.i11 = 0;
                                                                                                si32(this.i11,this.i5);
                                                                                                this.i15 = this.i2;
                                                                                                this.i11 = this.i16;
                                                                                                this.i16 = this.i20;
                                                                                                break loop35;
                                                                                             }
                                                                                             this.i11 = mstate.ebp + -1728;
                                                                                             mstate.esp -= 8;
                                                                                             si32(this.i0,mstate.esp);
                                                                                             si32(this.i11,mstate.esp + 4);
                                                                                             state = 104;
                                                                                             mstate.esp -= 4;
                                                                                             FSM___sfvwrite.start();
                                                                                             return;
                                                                                          }
                                                                                          this.i10 = 16;
                                                                                          si32(this.i10,this.i15);
                                                                                          this.i15 = li32(this.i4);
                                                                                          this.i15 += 16;
                                                                                          si32(this.i15,this.i4);
                                                                                          this.i10 = li32(this.i5);
                                                                                          this.i10 += 1;
                                                                                          si32(this.i10,this.i5);
                                                                                          this.i11 += 8;
                                                                                          if(this.i10 > 7)
                                                                                          {
                                                                                             if(this.i15 != 0)
                                                                                             {
                                                                                                this.i11 = mstate.ebp + -1728;
                                                                                                mstate.esp -= 8;
                                                                                                si32(this.i0,mstate.esp);
                                                                                                si32(this.i11,mstate.esp + 4);
                                                                                                state = 103;
                                                                                                mstate.esp -= 4;
                                                                                                FSM___sfvwrite.start();
                                                                                                return;
                                                                                             }
                                                                                             this.i11 = 0;
                                                                                             si32(this.i11,this.i5);
                                                                                             this.i11 = this.i2;
                                                                                          }
                                                                                          this.i15 = this.i11;
                                                                                          this.i11 = this.i22 + -16;
                                                                                       }
                                                                                       break;
                                                                                       addr12625:
                                                                                    }
                                                                                 }
                                                                                 if(this.i22 >= 1)
                                                                                 {
                                                                                    this.i22 += -1;
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    this.i20 += -1;
                                                                                    this.i7 += -1;
                                                                                 }
                                                                                 this.i27 = mstate.ebp + -1745;
                                                                                 si32(this.i27,this.i26);
                                                                                 this.i27 = 1;
                                                                                 si32(this.i27,this.i26 + 4);
                                                                                 this.i27 = li32(this.i4);
                                                                                 this.i27 += 1;
                                                                                 si32(this.i27,this.i4);
                                                                                 this.i28 = li32(this.i5);
                                                                                 this.i28 += 1;
                                                                                 si32(this.i28,this.i5);
                                                                                 this.i26 += 8;
                                                                                 if(this.i28 > 7)
                                                                                 {
                                                                                    if(this.i27 != 0)
                                                                                    {
                                                                                       this.i26 = mstate.ebp + -1728;
                                                                                       mstate.esp -= 8;
                                                                                       si32(this.i0,mstate.esp);
                                                                                       si32(this.i26,mstate.esp + 4);
                                                                                       state = 97;
                                                                                       mstate.esp -= 4;
                                                                                       FSM___sfvwrite.start();
                                                                                       return;
                                                                                    }
                                                                                    this.i26 = 0;
                                                                                    si32(this.i26,this.i5);
                                                                                    this.i26 = this.i2;
                                                                                 }
                                                                                 addr11b63:
                                                                                 this.i27 = li32(mstate.ebp + -1740);
                                                                                 this.i28 = si8(li8(this.i7));
                                                                                 this.i27 -= this.i15;
                                                                                 this.i27 = this.i28 < this.i27 ? this.i28 : this.i27;
                                                                                 addr11cf9:
                                                                                 if(this.i27 <= 0)
                                                                                 {
                                                                                    this.i15 = this.i26;
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    si32(this.i15,this.i26);
                                                                                    si32(this.i27,this.i26 + 4);
                                                                                    this.i15 = li32(this.i4);
                                                                                    this.i15 += this.i27;
                                                                                    si32(this.i15,this.i4);
                                                                                    this.i28 = li32(this.i5);
                                                                                    this.i28 += 1;
                                                                                    si32(this.i28,this.i5);
                                                                                    this.i26 += 8;
                                                                                    if(this.i28 <= 7)
                                                                                    {
                                                                                       this.i15 = this.i26;
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       if(this.i15 != 0)
                                                                                       {
                                                                                          this.i15 = mstate.ebp + -1728;
                                                                                          mstate.esp -= 8;
                                                                                          si32(this.i0,mstate.esp);
                                                                                          si32(this.i15,mstate.esp + 4);
                                                                                          state = 98;
                                                                                          mstate.esp -= 4;
                                                                                          FSM___sfvwrite.start();
                                                                                          return;
                                                                                       }
                                                                                       this.i15 = 0;
                                                                                       si32(this.i15,this.i5);
                                                                                       this.i15 = this.i2;
                                                                                    }
                                                                                 }
                                                                                 this.i26 = li8(this.i7);
                                                                                 this.i28 = this.i26 << 24;
                                                                                 this.i27 = this.i27 > -1 ? this.i27 : 0;
                                                                                 this.i28 >>= 24;
                                                                                 this.i28 -= this.i27;
                                                                                 if(this.i28 > 0)
                                                                                 {
                                                                                    this.i26 <<= 24;
                                                                                    this.i26 >>= 24;
                                                                                    this.i26 -= this.i27;
                                                                                    while(true)
                                                                                    {
                                                                                       this.i27 = this.i15;
                                                                                       this.i15 = cmodule.Box2D._zeroes_2E_4527;
                                                                                       si32(this.i15,this.i27);
                                                                                       this.i15 = this.i27 + 4;
                                                                                       if(this.i26 <= 16)
                                                                                       {
                                                                                          si32(this.i26,this.i15);
                                                                                          this.i15 = li32(this.i4);
                                                                                          this.i15 += this.i26;
                                                                                          si32(this.i15,this.i4);
                                                                                          this.i26 = li32(this.i5);
                                                                                          this.i26 += 1;
                                                                                          si32(this.i26,this.i5);
                                                                                          this.i27 += 8;
                                                                                          if(this.i26 <= 7)
                                                                                          {
                                                                                             this.i15 = this.i27;
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             if(this.i15 != 0)
                                                                                             {
                                                                                                this.i15 = mstate.ebp + -1728;
                                                                                                mstate.esp -= 8;
                                                                                                si32(this.i0,mstate.esp);
                                                                                                si32(this.i15,mstate.esp + 4);
                                                                                                state = 100;
                                                                                                mstate.esp -= 4;
                                                                                                FSM___sfvwrite.start();
                                                                                                return;
                                                                                             }
                                                                                             this.i15 = 0;
                                                                                             si32(this.i15,this.i5);
                                                                                             this.i15 = this.i2;
                                                                                          }
                                                                                          continue loop68;
                                                                                       }
                                                                                       this.i28 = 16;
                                                                                       si32(this.i28,this.i15);
                                                                                       this.i15 = li32(this.i4);
                                                                                       this.i15 += 16;
                                                                                       si32(this.i15,this.i4);
                                                                                       this.i28 = li32(this.i5);
                                                                                       this.i28 += 1;
                                                                                       si32(this.i28,this.i5);
                                                                                       this.i27 += 8;
                                                                                       if(this.i28 <= 7)
                                                                                       {
                                                                                          this.i15 = this.i27;
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          if(this.i15 != 0)
                                                                                          {
                                                                                             this.i15 = mstate.ebp + -1728;
                                                                                             mstate.esp -= 8;
                                                                                             si32(this.i0,mstate.esp);
                                                                                             si32(this.i15,mstate.esp + 4);
                                                                                             state = 99;
                                                                                             mstate.esp -= 4;
                                                                                             FSM___sfvwrite.start();
                                                                                             return;
                                                                                          }
                                                                                          this.i15 = 0;
                                                                                          si32(this.i15,this.i5);
                                                                                          this.i15 = this.i2;
                                                                                       }
                                                                                       this.i26 += -16;
                                                                                    }
                                                                                    break loop32;
                                                                                    addr11eb0:
                                                                                 }
                                                                                 this.i26 = si8(li8(this.i7));
                                                                                 this.i10 += this.i26;
                                                                              }
                                                                              break;
                                                                              addr12022:
                                                                           }
                                                                           this.i15 = this.i10;
                                                                           this.i10 = this.i22;
                                                                        }
                                                                        else
                                                                        {
                                                                           this.i10 = this.i26;
                                                                           while(true)
                                                                           {
                                                                              this.i26 = this.i11;
                                                                              this.i11 = cmodule.Box2D._zeroes_2E_4527;
                                                                              si32(this.i11,this.i10);
                                                                              this.i11 = this.i10 + 4;
                                                                              if(this.i26 > 16)
                                                                              {
                                                                                 this.i27 = 16;
                                                                                 si32(this.i27,this.i11);
                                                                                 this.i11 = li32(this.i4);
                                                                                 this.i11 += 16;
                                                                                 si32(this.i11,this.i4);
                                                                                 this.i27 = li32(this.i5);
                                                                                 this.i27 += 1;
                                                                                 si32(this.i27,this.i5);
                                                                                 this.i10 += 8;
                                                                                 if(this.i27 <= 7)
                                                                                 {
                                                                                    this.i11 = this.i10;
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    if(this.i11 != 0)
                                                                                    {
                                                                                       this.i11 = mstate.ebp + -1728;
                                                                                       mstate.esp -= 8;
                                                                                       si32(this.i0,mstate.esp);
                                                                                       si32(this.i11,mstate.esp + 4);
                                                                                       state = 95;
                                                                                       mstate.esp -= 4;
                                                                                       FSM___sfvwrite.start();
                                                                                       return;
                                                                                    }
                                                                                    this.i11 = 0;
                                                                                    si32(this.i11,this.i5);
                                                                                    this.i11 = this.i2;
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              si32(this.i26,this.i11);
                                                                              this.i11 = li32(this.i4);
                                                                              this.i11 += this.i26;
                                                                              si32(this.i11,this.i4);
                                                                              this.i26 = li32(this.i5);
                                                                              this.i26 += 1;
                                                                              si32(this.i26,this.i5);
                                                                              this.i10 += 8;
                                                                              if(this.i26 <= 7)
                                                                              {
                                                                                 this.i11 = this.i10;
                                                                                 §§goto(addr116c0);
                                                                              }
                                                                              else
                                                                              {
                                                                                 if(this.i11 != 0)
                                                                                 {
                                                                                    this.i11 = mstate.ebp + -1728;
                                                                                    mstate.esp -= 8;
                                                                                    si32(this.i0,mstate.esp);
                                                                                    si32(this.i11,mstate.esp + 4);
                                                                                    state = 96;
                                                                                    mstate.esp -= 4;
                                                                                    FSM___sfvwrite.start();
                                                                                    return;
                                                                                 }
                                                                                 this.i11 = 0;
                                                                                 si32(this.i11,this.i5);
                                                                                 this.i11 = this.i15 + this.i29;
                                                                                 if(this.i7 != 0)
                                                                                 {
                                                                                    this.i15 = this.i2;
                                                                                    §§goto(addr119bb);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    this.i15 = this.i2;
                                                                                    this.i10 = this.i22;
                                                                                 }
                                                                              }
                                                                              this.i10 = this.i11;
                                                                              this.i11 = this.i26 + -16;
                                                                           }
                                                                           break;
                                                                           addr1184c:
                                                                        }
                                                                        §§goto(addr120a2);
                                                                     }
                                                                     else
                                                                     {
                                                                        si32(this.i15,this.i11);
                                                                        si32(this.i10,this.i11 + 4);
                                                                        this.i26 = li32(this.i4);
                                                                        this.i26 += this.i10;
                                                                        si32(this.i26,this.i4);
                                                                        this.i27 = li32(this.i5);
                                                                        this.i27 += 1;
                                                                        si32(this.i27,this.i5);
                                                                        this.i11 += 8;
                                                                        if(this.i27 <= 7)
                                                                        {
                                                                           §§goto(addr1150f);
                                                                        }
                                                                        else
                                                                        {
                                                                           if(this.i26 != 0)
                                                                           {
                                                                              this.i11 = mstate.ebp + -1728;
                                                                              mstate.esp -= 8;
                                                                              si32(this.i0,mstate.esp);
                                                                              si32(this.i11,mstate.esp + 4);
                                                                              state = 94;
                                                                              mstate.esp -= 4;
                                                                              FSM___sfvwrite.start();
                                                                              return;
                                                                           }
                                                                           this.i11 = 0;
                                                                           si32(this.i11,this.i5);
                                                                           this.i11 = this.i29 - this.i10;
                                                                           this.i11 = this.i10 < 0 ? this.i29 : this.i11;
                                                                           if(this.i11 <= 0)
                                                                           {
                                                                              this.i11 = this.i2;
                                                                              §§goto(addr116c0);
                                                                           }
                                                                           else
                                                                           {
                                                                              this.i10 = this.i2;
                                                                              §§goto(addr1184c);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr1184c);
                                                                     §§goto(addr122af);
                                                                     this.i26 += -16;
                                                                  }
                                                                  break loop62;
                                                                  addr1094e:
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         this.i11 -= this.i10;
                                                         if(this.i11 <= 0)
                                                         {
                                                            this.i11 = this.i27;
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr10c16);
                                                         }
                                                         §§goto(addr10cd3);
                                                         this.i27 += -16;
                                                      }
                                                      break loop23;
                                                      addr10326:
                                                   }
                                                   break;
                                                }
                                                this.i27 = li32(mstate.ebp + -2259);
                                                §§goto(addr10479);
                                             }
                                             this.i0 = -1;
                                             this.i6 = this.i0;
                                             this.i8 = this.i14;
                                             this.i0 = this.i25;
                                             break;
                                          }
                                          this.i3 = this.i6;
                                          this.i1 = this.i8;
                                          this.i2 = this.i0;
                                          if(this.i1 != 0)
                                          {
                                             this.i0 = this.i1;
                                             this.i1 = this.i2;
                                             addr13514:
                                             this.i2 = 1;
                                             this.i4 = li32(this.i0 + -4);
                                             si32(this.i4,this.i0);
                                             this.i2 <<= this.i4;
                                             si32(this.i2,this.i0 + 4);
                                             this.i0 += -4;
                                             this.i2 = this.i0;
                                             if(this.i0 == 0)
                                             {
                                                this.i0 = this.i1;
                                             }
                                             else
                                             {
                                                this.i5 = cmodule.Box2D._freelist;
                                                this.i4 <<= 2;
                                                this.i4 = this.i5 + this.i4;
                                                this.i5 = li32(this.i4);
                                                si32(this.i5,this.i0);
                                                si32(this.i2,this.i4);
                                                this.i0 = this.i1;
                                             }
                                          }
                                          else
                                          {
                                             this.i0 = this.i2;
                                          }
                                          addr135bb:
                                          this.i1 = this.i3;
                                          if(this.i0 != 0)
                                          {
                                             this.i2 = 0;
                                             mstate.esp -= 8;
                                             si32(this.i0,mstate.esp);
                                             si32(this.i2,mstate.esp + 4);
                                             state = 114;
                                             mstate.esp -= 4;
                                             FSM_pubrealloc.start();
                                             return;
                                          }
                                          addr13635:
                                          this.i0 = li32(mstate.ebp + -1971);
                                          this.i0 = li16(this.i0);
                                          this.i2 = li32(mstate.ebp + -1540);
                                          this.i0 &= 64;
                                          this.i0 = this.i0 == 0 ? this.i1 : -1;
                                          if(this.i2 != 0)
                                          {
                                             this.i1 = li32(mstate.ebp + -2223);
                                             if(this.i1 != this.i2)
                                             {
                                                this.i1 = 0;
                                                mstate.esp -= 8;
                                                si32(this.i2,mstate.esp);
                                                si32(this.i1,mstate.esp + 4);
                                                state = 115;
                                                mstate.esp -= 4;
                                                FSM_pubrealloc.start();
                                                return;
                                             }
                                          }
                                          break loop71;
                                       }
                                       while(true)
                                       {
                                          loop106:
                                          while(true)
                                          {
                                             if(this.i15 <= 107)
                                             {
                                                if(this.i15 <= 101)
                                                {
                                                   while(true)
                                                   {
                                                      if(this.i15 <= 98)
                                                      {
                                                         if(this.i15 == 88)
                                                         {
                                                            this.i3 = cmodule.Box2D._xdigs_upper_2E_4529;
                                                            this.i19 = this.i3;
                                                            this.i3 = this.i10 & 0x1C20;
                                                            loop108:
                                                            while(true)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(this.i3 != 0)
                                                                  {
                                                                     this.i16 = this.i10 & 0x1000;
                                                                     if(this.i16 != 0)
                                                                     {
                                                                        this.i16 = li32(mstate.ebp + -1540);
                                                                        if(this.i16 != 0)
                                                                        {
                                                                           this.i17 = this.i9 << 3;
                                                                           this.i16 += this.i17;
                                                                           this.i17 = li32(this.i16);
                                                                           this.i16 = li32(this.i16 + 4);
                                                                           this.i20 = this.i10 & 1;
                                                                           if(this.i20 != 0)
                                                                           {
                                                                              this.i20 = li32(mstate.ebp + -2457);
                                                                              break;
                                                                           }
                                                                           this.i3 = li32(mstate.ebp + -2457);
                                                                           this.i15 = this.i17;
                                                                           break loop108;
                                                                        }
                                                                        this.i16 = li32(this.i1);
                                                                        this.i17 = li32(this.i1 + 4);
                                                                        this.i1 += 8;
                                                                        this.i20 = li32(mstate.ebp + -2457);
                                                                     }
                                                                     else
                                                                     {
                                                                        this.i16 = this.i10 & 0x0400;
                                                                        if(this.i16 != 0)
                                                                        {
                                                                           this.i16 = li32(mstate.ebp + -1540);
                                                                           if(this.i16 != 0)
                                                                           {
                                                                              this.i17 = 0;
                                                                              this.i20 = this.i9 << 3;
                                                                              this.i16 += this.i20;
                                                                              this.i16 = li32(this.i16);
                                                                              this.i20 = li32(mstate.ebp + -2457);
                                                                           }
                                                                           else
                                                                           {
                                                                              this.i17 = 0;
                                                                              this.i16 = li32(this.i1);
                                                                              this.i1 += 4;
                                                                              this.i20 = li32(mstate.ebp + -2457);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           this.i16 = li32(mstate.ebp + -1540);
                                                                           this.i17 = this.i10 & 0x0800;
                                                                           if(this.i17 != 0)
                                                                           {
                                                                              if(this.i16 != 0)
                                                                              {
                                                                                 this.i17 = this.i9 << 3;
                                                                                 this.i16 += this.i17;
                                                                                 this.i16 = li32(this.i16);
                                                                                 this.i17 = this.i16 >> 31;
                                                                                 this.i20 = li32(mstate.ebp + -2457);
                                                                              }
                                                                              else
                                                                              {
                                                                                 this.i16 = li32(this.i1);
                                                                                 this.i17 = this.i16 >> 31;
                                                                                 this.i1 += 4;
                                                                                 this.i20 = li32(mstate.ebp + -2457);
                                                                              }
                                                                           }
                                                                           else if(this.i16 != 0)
                                                                           {
                                                                              this.i17 = this.i9 << 3;
                                                                              this.i16 += this.i17;
                                                                              this.i17 = li32(this.i16);
                                                                              this.i21 = li32(this.i16 + 4);
                                                                              this.i16 = li32(mstate.ebp + -2457);
                                                                              this.i20 = this.i16;
                                                                              this.i16 = this.i17;
                                                                              this.i17 = this.i21;
                                                                           }
                                                                           else
                                                                           {
                                                                              this.i16 = li32(this.i1);
                                                                              this.i17 = li32(this.i1 + 4);
                                                                              this.i1 += 8;
                                                                              this.i20 = li32(mstate.ebp + -2457);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     this.i16 = this.i10 & 0x10;
                                                                     if(this.i16 != 0)
                                                                     {
                                                                        this.i16 = li32(mstate.ebp + -1540);
                                                                        if(this.i16 != 0)
                                                                        {
                                                                           this.i17 = this.i9 << 3;
                                                                           this.i16 += this.i17;
                                                                           this.i16 = li32(this.i16);
                                                                           this.i20 = this.i16;
                                                                           this.i16 = li32(mstate.ebp + -2448);
                                                                           this.i17 = li32(mstate.ebp + -2439);
                                                                        }
                                                                        else
                                                                        {
                                                                           this.i16 = li32(this.i1);
                                                                           this.i1 += 4;
                                                                           this.i20 = this.i16;
                                                                           this.i16 = li32(mstate.ebp + -2448);
                                                                           this.i17 = li32(mstate.ebp + -2439);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        this.i16 = this.i10 & 0x40;
                                                                        if(this.i16 != 0)
                                                                        {
                                                                           this.i16 = li32(mstate.ebp + -1540);
                                                                           if(this.i16 != 0)
                                                                           {
                                                                              this.i17 = this.i9 << 3;
                                                                              this.i16 += this.i17;
                                                                              this.i16 = li16(this.i16);
                                                                              this.i20 = this.i16;
                                                                              this.i16 = li32(mstate.ebp + -2448);
                                                                              this.i17 = li32(mstate.ebp + -2439);
                                                                           }
                                                                           else
                                                                           {
                                                                              this.i16 = li16(this.i1);
                                                                              this.i1 += 4;
                                                                              this.i20 = this.i16;
                                                                              this.i16 = li32(mstate.ebp + -2448);
                                                                              this.i17 = li32(mstate.ebp + -2439);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           this.i16 = li32(mstate.ebp + -1540);
                                                                           this.i17 = this.i10 & 0x2000;
                                                                           if(this.i17 != 0)
                                                                           {
                                                                              if(this.i16 != 0)
                                                                              {
                                                                                 this.i17 = this.i9 << 3;
                                                                                 this.i16 += this.i17;
                                                                                 this.i16 = li8(this.i16);
                                                                                 this.i20 = this.i16;
                                                                                 this.i16 = li32(mstate.ebp + -2448);
                                                                                 this.i17 = li32(mstate.ebp + -2439);
                                                                              }
                                                                              else
                                                                              {
                                                                                 this.i16 = li8(this.i1);
                                                                                 this.i1 += 4;
                                                                                 this.i20 = this.i16;
                                                                                 this.i16 = li32(mstate.ebp + -2448);
                                                                                 this.i17 = li32(mstate.ebp + -2439);
                                                                              }
                                                                           }
                                                                           else if(this.i16 != 0)
                                                                           {
                                                                              this.i17 = this.i9 << 3;
                                                                              this.i16 += this.i17;
                                                                              this.i16 = li32(this.i16);
                                                                              this.i20 = this.i16;
                                                                              this.i16 = li32(mstate.ebp + -2448);
                                                                              this.i17 = li32(mstate.ebp + -2439);
                                                                           }
                                                                           else
                                                                           {
                                                                              this.i16 = li32(this.i1);
                                                                              this.i1 += 4;
                                                                              this.i20 = this.i16;
                                                                              this.i16 = li32(mstate.ebp + -2448);
                                                                              this.i17 = li32(mstate.ebp + -2439);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  this.i21 = this.i17;
                                                                  this.i17 = this.i10 & 1;
                                                                  if(this.i17 != 0)
                                                                  {
                                                                     this.i17 = this.i16;
                                                                     this.i16 = this.i21;
                                                                     break;
                                                                  }
                                                                  this.i3 = this.i20;
                                                                  this.i15 = this.i16;
                                                                  this.i16 = this.i21;
                                                                  break loop108;
                                                               }
                                                               this.i21 = this.i17 | this.i16;
                                                               this.i22 = this.i20 != 0 ? 1 : 0;
                                                               this.i21 = this.i21 != 0 ? 1 : 0;
                                                               this.i3 = this.i3 == 0 ? this.i22 : this.i21;
                                                               this.i3 &= 1;
                                                               if(this.i3 == 0)
                                                               {
                                                                  this.i3 = this.i20;
                                                                  this.i15 = this.i17;
                                                                  break;
                                                               }
                                                               this.i3 = li32(mstate.ebp + -2178);
                                                               si8(this.i15,this.i3);
                                                               this.i3 = this.i20;
                                                               this.i15 = this.i17;
                                                               break;
                                                            }
                                                            this.i17 = this.i3;
                                                            this.i3 = 0;
                                                            si8(this.i3,mstate.ebp + -1746);
                                                            this.i20 = 16;
                                                            this.i9 += 1;
                                                            this.i3 = this.i10 & -513;
                                                            this.i10 = this.i16;
                                                            this.i16 = this.i20;
                                                            break loop106;
                                                         }
                                                         if(this.i15 != 97)
                                                         {
                                                            §§goto(addrfdd4);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr1922);
                                                         }
                                                      }
                                                      else if(this.i15 != 99)
                                                      {
                                                         if(this.i15 != 100)
                                                         {
                                                            if(this.i15 != 101)
                                                            {
                                                               §§goto(addrfdd4);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr1ad8);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr1e03:
                                                            this.i3 = this.i10;
                                                            §§goto(addr2e19);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         this.i3 = this.i10;
                                                         §§goto(addr1e1b);
                                                      }
                                                      §§goto(addraa5b);
                                                   }
                                                   §§goto(addraa6a);
                                                }
                                                else
                                                {
                                                   if(this.i15 <= 103)
                                                   {
                                                      if(this.i15 != 102)
                                                      {
                                                         if(this.i15 != 103)
                                                         {
                                                            §§goto(addrfdd4);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr1b1e);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr1850);
                                                      }
                                                      §§goto(addr52db);
                                                   }
                                                   else
                                                   {
                                                      if(this.i15 == 104)
                                                      {
                                                         this.i3 = this.i10 & 0x40;
                                                         if(this.i3 != 0)
                                                         {
                                                            this.i3 = this.i10 | 0x2000;
                                                            this.i6 += this.i13;
                                                            this.i10 = this.i3 & -65;
                                                            this.i3 = this.i6;
                                                            this.i6 = this.i8;
                                                            this.i8 = this.i11;
                                                            break loop85;
                                                         }
                                                         this.i3 = this.i6 + this.i13;
                                                         this.i6 = this.i10 | 0x40;
                                                         this.i10 = this.i6;
                                                         this.i6 = this.i8;
                                                         this.i8 = this.i11;
                                                         break loop85;
                                                      }
                                                      if(this.i15 != 105)
                                                      {
                                                         if(this.i15 == 106)
                                                         {
                                                            this.i3 = this.i6 + this.i13;
                                                            this.i6 = this.i10 | 0x1000;
                                                            this.i10 = this.i6;
                                                            this.i6 = this.i8;
                                                            this.i8 = this.i11;
                                                            break loop85;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr1e03);
                                                      }
                                                   }
                                                   §§goto(addrfdd4);
                                                }
                                             }
                                             else
                                             {
                                                if(this.i15 <= 114)
                                                {
                                                   if(this.i15 <= 110)
                                                   {
                                                      if(this.i15 == 108)
                                                      {
                                                         this.i3 = this.i10 & 0x10;
                                                         if(this.i3 != 0)
                                                         {
                                                            this.i3 = this.i10 | 0x20;
                                                            this.i6 += this.i13;
                                                            this.i10 = this.i3 & -17;
                                                            this.i3 = this.i6;
                                                            this.i6 = this.i8;
                                                            this.i8 = this.i11;
                                                            break loop85;
                                                         }
                                                         this.i3 = this.i6 + this.i13;
                                                         this.i6 = this.i10 | 0x10;
                                                         this.i10 = this.i6;
                                                         this.i6 = this.i8;
                                                         this.i8 = this.i11;
                                                         break loop85;
                                                      }
                                                      if(this.i15 == 110)
                                                      {
                                                         this.i3 = this.i10 & 0x20;
                                                         if(this.i3 != 0)
                                                         {
                                                            this.i3 = li32(mstate.ebp + -1540);
                                                            if(this.i3 != 0)
                                                            {
                                                               this.i10 = this.i9 << 3;
                                                               this.i3 += this.i10;
                                                            }
                                                            else
                                                            {
                                                               this.i10 = this.i1 + 4;
                                                               this.i3 = this.i1;
                                                               this.i1 = this.i10;
                                                            }
                                                            this.i3 = li32(this.i3);
                                                            this.i10 = li32(mstate.ebp + -2277);
                                                            this.i10 >>= 31;
                                                            this.i15 = li32(mstate.ebp + -2277);
                                                            si32(this.i15,this.i3);
                                                            si32(this.i10,this.i3 + 4);
                                                            this.i9 += 1;
                                                            this.i3 = li32(mstate.ebp + -2259);
                                                            this.i8 = this.i3;
                                                            this.i20 = this.i15;
                                                            this.i16 = this.i7;
                                                            this.i24 = this.i25;
                                                            this.i3 = li32(mstate.ebp + -2295);
                                                            this.i17 = this.i3;
                                                            this.i3 = li32(mstate.ebp + -2286);
                                                            this.i10 = li32(mstate.ebp + -2268);
                                                            this.i7 = this.i10;
                                                            this.i10 = this.i14;
                                                            this.i15 = li32(mstate.ebp + -2313);
                                                            this.i12 = this.i15;
                                                            this.i15 = li32(mstate.ebp + -2304);
                                                            this.i19 = this.i15;
                                                            this.i15 = li32(mstate.ebp + -2457);
                                                            this.i22 = this.i15;
                                                            this.i15 = li32(mstate.ebp + -2448);
                                                            this.i14 = this.i15;
                                                            this.i15 = li32(mstate.ebp + -2439);
                                                            this.i11 = li32(mstate.ebp + -2475);
                                                            this.i23 = this.i11;
                                                            this.i11 = li32(mstate.ebp + -2367);
                                                            this.i21 = this.i11;
                                                            this.i11 = li32(mstate.ebp + -2322);
                                                         }
                                                         else
                                                         {
                                                            this.i3 = this.i10 & 0x0400;
                                                            if(this.i3 != 0)
                                                            {
                                                               this.i3 = li32(mstate.ebp + -1540);
                                                               if(this.i3 != 0)
                                                               {
                                                                  this.i10 = this.i9 << 3;
                                                                  this.i3 += this.i10;
                                                               }
                                                               else
                                                               {
                                                                  this.i10 = this.i1 + 4;
                                                                  this.i3 = this.i1;
                                                                  this.i1 = this.i10;
                                                               }
                                                               this.i3 = li32(this.i3);
                                                               this.i10 = li32(mstate.ebp + -2277);
                                                               si32(this.i10,this.i3);
                                                               this.i9 += 1;
                                                               this.i3 = li32(mstate.ebp + -2259);
                                                               this.i8 = this.i3;
                                                               this.i20 = this.i10;
                                                               this.i16 = this.i7;
                                                               this.i24 = this.i25;
                                                               this.i3 = li32(mstate.ebp + -2295);
                                                               this.i17 = this.i3;
                                                               this.i3 = li32(mstate.ebp + -2286);
                                                               this.i10 = li32(mstate.ebp + -2268);
                                                               this.i7 = this.i10;
                                                               this.i10 = this.i14;
                                                               this.i15 = li32(mstate.ebp + -2313);
                                                               this.i12 = this.i15;
                                                               this.i15 = li32(mstate.ebp + -2304);
                                                               this.i19 = this.i15;
                                                               this.i15 = li32(mstate.ebp + -2457);
                                                               this.i22 = this.i15;
                                                               this.i15 = li32(mstate.ebp + -2448);
                                                               this.i14 = this.i15;
                                                               this.i15 = li32(mstate.ebp + -2439);
                                                               this.i11 = li32(mstate.ebp + -2475);
                                                               this.i23 = this.i11;
                                                               this.i11 = li32(mstate.ebp + -2367);
                                                               this.i21 = this.i11;
                                                               this.i11 = li32(mstate.ebp + -2322);
                                                            }
                                                            else
                                                            {
                                                               this.i3 = this.i10 & 0x0800;
                                                               if(this.i3 != 0)
                                                               {
                                                                  this.i3 = li32(mstate.ebp + -1540);
                                                                  if(this.i3 != 0)
                                                                  {
                                                                     this.i10 = this.i9 << 3;
                                                                     this.i3 += this.i10;
                                                                  }
                                                                  else
                                                                  {
                                                                     this.i10 = this.i1 + 4;
                                                                     this.i3 = this.i1;
                                                                     this.i1 = this.i10;
                                                                  }
                                                                  this.i3 = li32(this.i3);
                                                                  this.i10 = li32(mstate.ebp + -2277);
                                                                  si32(this.i10,this.i3);
                                                                  this.i9 += 1;
                                                                  this.i3 = li32(mstate.ebp + -2259);
                                                                  this.i8 = this.i3;
                                                                  this.i20 = this.i10;
                                                                  this.i16 = this.i7;
                                                                  this.i24 = this.i25;
                                                                  this.i3 = li32(mstate.ebp + -2295);
                                                                  this.i17 = this.i3;
                                                                  this.i3 = li32(mstate.ebp + -2286);
                                                                  this.i10 = li32(mstate.ebp + -2268);
                                                                  this.i7 = this.i10;
                                                                  this.i10 = this.i14;
                                                                  this.i15 = li32(mstate.ebp + -2313);
                                                                  this.i12 = this.i15;
                                                                  this.i15 = li32(mstate.ebp + -2304);
                                                                  this.i19 = this.i15;
                                                                  this.i15 = li32(mstate.ebp + -2457);
                                                                  this.i22 = this.i15;
                                                                  this.i15 = li32(mstate.ebp + -2448);
                                                                  this.i14 = this.i15;
                                                                  this.i15 = li32(mstate.ebp + -2439);
                                                                  this.i11 = li32(mstate.ebp + -2475);
                                                                  this.i23 = this.i11;
                                                                  this.i11 = li32(mstate.ebp + -2367);
                                                                  this.i21 = this.i11;
                                                                  this.i11 = li32(mstate.ebp + -2322);
                                                               }
                                                               else
                                                               {
                                                                  this.i3 = this.i10 & 0x1000;
                                                                  if(this.i3 != 0)
                                                                  {
                                                                     this.i3 = li32(mstate.ebp + -1540);
                                                                     if(this.i3 != 0)
                                                                     {
                                                                        this.i10 = this.i9 << 3;
                                                                        this.i3 += this.i10;
                                                                     }
                                                                     else
                                                                     {
                                                                        this.i10 = this.i1 + 4;
                                                                        this.i3 = this.i1;
                                                                        this.i1 = this.i10;
                                                                     }
                                                                     this.i3 = li32(this.i3);
                                                                     this.i10 = li32(mstate.ebp + -2277);
                                                                     this.i10 >>= 31;
                                                                     this.i15 = li32(mstate.ebp + -2277);
                                                                     si32(this.i15,this.i3);
                                                                     si32(this.i10,this.i3 + 4);
                                                                     this.i9 += 1;
                                                                     this.i3 = li32(mstate.ebp + -2259);
                                                                     this.i8 = this.i3;
                                                                     this.i20 = this.i15;
                                                                     this.i16 = this.i7;
                                                                     this.i24 = this.i25;
                                                                     this.i3 = li32(mstate.ebp + -2295);
                                                                     this.i17 = this.i3;
                                                                     this.i3 = li32(mstate.ebp + -2286);
                                                                     this.i10 = li32(mstate.ebp + -2268);
                                                                     this.i7 = this.i10;
                                                                     this.i10 = this.i14;
                                                                     this.i15 = li32(mstate.ebp + -2313);
                                                                     this.i12 = this.i15;
                                                                     this.i15 = li32(mstate.ebp + -2304);
                                                                     this.i19 = this.i15;
                                                                     this.i15 = li32(mstate.ebp + -2457);
                                                                     this.i22 = this.i15;
                                                                     this.i15 = li32(mstate.ebp + -2448);
                                                                     this.i14 = this.i15;
                                                                     this.i15 = li32(mstate.ebp + -2439);
                                                                     this.i11 = li32(mstate.ebp + -2475);
                                                                     this.i23 = this.i11;
                                                                     this.i11 = li32(mstate.ebp + -2367);
                                                                     this.i21 = this.i11;
                                                                     this.i11 = li32(mstate.ebp + -2322);
                                                                  }
                                                                  else
                                                                  {
                                                                     this.i3 = this.i10 & 0x10;
                                                                     if(this.i3 != 0)
                                                                     {
                                                                        this.i3 = li32(mstate.ebp + -1540);
                                                                        if(this.i3 != 0)
                                                                        {
                                                                           this.i10 = this.i9 << 3;
                                                                           this.i3 += this.i10;
                                                                        }
                                                                        else
                                                                        {
                                                                           this.i10 = this.i1 + 4;
                                                                           this.i3 = this.i1;
                                                                           this.i1 = this.i10;
                                                                        }
                                                                        this.i3 = li32(this.i3);
                                                                        this.i10 = li32(mstate.ebp + -2277);
                                                                        si32(this.i10,this.i3);
                                                                        this.i9 += 1;
                                                                        this.i3 = li32(mstate.ebp + -2259);
                                                                        this.i8 = this.i3;
                                                                        this.i20 = this.i10;
                                                                        this.i16 = this.i7;
                                                                        this.i24 = this.i25;
                                                                        this.i3 = li32(mstate.ebp + -2295);
                                                                        this.i17 = this.i3;
                                                                        this.i3 = li32(mstate.ebp + -2286);
                                                                        this.i10 = li32(mstate.ebp + -2268);
                                                                        this.i7 = this.i10;
                                                                        this.i10 = this.i14;
                                                                        this.i15 = li32(mstate.ebp + -2313);
                                                                        this.i12 = this.i15;
                                                                        this.i15 = li32(mstate.ebp + -2304);
                                                                        this.i19 = this.i15;
                                                                        this.i15 = li32(mstate.ebp + -2457);
                                                                        this.i22 = this.i15;
                                                                        this.i15 = li32(mstate.ebp + -2448);
                                                                        this.i14 = this.i15;
                                                                        this.i15 = li32(mstate.ebp + -2439);
                                                                        this.i11 = li32(mstate.ebp + -2475);
                                                                        this.i23 = this.i11;
                                                                        this.i11 = li32(mstate.ebp + -2367);
                                                                        this.i21 = this.i11;
                                                                        this.i11 = li32(mstate.ebp + -2322);
                                                                     }
                                                                     else
                                                                     {
                                                                        this.i3 = this.i10 & 0x40;
                                                                        if(this.i3 != 0)
                                                                        {
                                                                           this.i3 = li32(mstate.ebp + -1540);
                                                                           if(this.i3 != 0)
                                                                           {
                                                                              this.i10 = this.i9 << 3;
                                                                              this.i3 += this.i10;
                                                                           }
                                                                           else
                                                                           {
                                                                              this.i10 = this.i1 + 4;
                                                                              this.i3 = this.i1;
                                                                              this.i1 = this.i10;
                                                                           }
                                                                           this.i3 = li32(this.i3);
                                                                           this.i10 = li32(mstate.ebp + -2277);
                                                                           si16(this.i10,this.i3);
                                                                           this.i9 += 1;
                                                                           this.i3 = li32(mstate.ebp + -2259);
                                                                           this.i8 = this.i3;
                                                                           this.i20 = this.i10;
                                                                           this.i16 = this.i7;
                                                                           this.i24 = this.i25;
                                                                           this.i3 = li32(mstate.ebp + -2295);
                                                                           this.i17 = this.i3;
                                                                           this.i3 = li32(mstate.ebp + -2286);
                                                                           this.i10 = li32(mstate.ebp + -2268);
                                                                           this.i7 = this.i10;
                                                                           this.i10 = this.i14;
                                                                           this.i15 = li32(mstate.ebp + -2313);
                                                                           this.i12 = this.i15;
                                                                           this.i15 = li32(mstate.ebp + -2304);
                                                                           this.i19 = this.i15;
                                                                           this.i15 = li32(mstate.ebp + -2457);
                                                                           this.i22 = this.i15;
                                                                           this.i15 = li32(mstate.ebp + -2448);
                                                                           this.i14 = this.i15;
                                                                           this.i15 = li32(mstate.ebp + -2439);
                                                                           this.i11 = li32(mstate.ebp + -2475);
                                                                           this.i23 = this.i11;
                                                                           this.i11 = li32(mstate.ebp + -2367);
                                                                           this.i21 = this.i11;
                                                                           this.i11 = li32(mstate.ebp + -2322);
                                                                        }
                                                                        else
                                                                        {
                                                                           this.i3 = li32(mstate.ebp + -1540);
                                                                           this.i10 &= 8192;
                                                                           if(this.i10 != 0)
                                                                           {
                                                                              if(this.i3 != 0)
                                                                              {
                                                                                 this.i10 = this.i9 << 3;
                                                                                 this.i3 += this.i10;
                                                                              }
                                                                              else
                                                                              {
                                                                                 this.i10 = this.i1 + 4;
                                                                                 this.i3 = this.i1;
                                                                                 this.i1 = this.i10;
                                                                              }
                                                                              this.i3 = li32(this.i3);
                                                                              this.i10 = li32(mstate.ebp + -2277);
                                                                              si8(this.i10,this.i3);
                                                                              this.i9 += 1;
                                                                              this.i3 = li32(mstate.ebp + -2259);
                                                                              this.i8 = this.i3;
                                                                              this.i20 = this.i10;
                                                                              this.i16 = this.i7;
                                                                              this.i24 = this.i25;
                                                                              this.i3 = li32(mstate.ebp + -2295);
                                                                              this.i17 = this.i3;
                                                                              this.i3 = li32(mstate.ebp + -2286);
                                                                              this.i10 = li32(mstate.ebp + -2268);
                                                                              this.i7 = this.i10;
                                                                              this.i10 = this.i14;
                                                                              this.i15 = li32(mstate.ebp + -2313);
                                                                              this.i12 = this.i15;
                                                                              this.i15 = li32(mstate.ebp + -2304);
                                                                              this.i19 = this.i15;
                                                                              this.i15 = li32(mstate.ebp + -2457);
                                                                              this.i22 = this.i15;
                                                                              this.i15 = li32(mstate.ebp + -2448);
                                                                              this.i14 = this.i15;
                                                                              this.i15 = li32(mstate.ebp + -2439);
                                                                              this.i11 = li32(mstate.ebp + -2475);
                                                                              this.i23 = this.i11;
                                                                              this.i11 = li32(mstate.ebp + -2367);
                                                                              this.i21 = this.i11;
                                                                              this.i11 = li32(mstate.ebp + -2322);
                                                                           }
                                                                           else
                                                                           {
                                                                              if(this.i3 != 0)
                                                                              {
                                                                                 this.i10 = this.i9 << 3;
                                                                                 this.i3 += this.i10;
                                                                              }
                                                                              else
                                                                              {
                                                                                 this.i10 = this.i1 + 4;
                                                                                 this.i3 = this.i1;
                                                                                 this.i1 = this.i10;
                                                                              }
                                                                              this.i3 = li32(this.i3);
                                                                              this.i10 = li32(mstate.ebp + -2277);
                                                                              si32(this.i10,this.i3);
                                                                              this.i9 += 1;
                                                                              this.i3 = li32(mstate.ebp + -2259);
                                                                              this.i8 = this.i3;
                                                                              this.i20 = this.i10;
                                                                              this.i16 = this.i7;
                                                                              this.i24 = this.i25;
                                                                              this.i3 = li32(mstate.ebp + -2295);
                                                                              this.i17 = this.i3;
                                                                              this.i3 = li32(mstate.ebp + -2286);
                                                                              this.i10 = li32(mstate.ebp + -2268);
                                                                              this.i7 = this.i10;
                                                                              this.i10 = this.i14;
                                                                              this.i15 = li32(mstate.ebp + -2313);
                                                                              this.i12 = this.i15;
                                                                              this.i15 = li32(mstate.ebp + -2304);
                                                                              this.i19 = this.i15;
                                                                              this.i15 = li32(mstate.ebp + -2457);
                                                                              this.i22 = this.i15;
                                                                              this.i15 = li32(mstate.ebp + -2448);
                                                                              this.i14 = this.i15;
                                                                              this.i15 = li32(mstate.ebp + -2439);
                                                                              this.i11 = li32(mstate.ebp + -2475);
                                                                              this.i23 = this.i11;
                                                                              this.i11 = li32(mstate.ebp + -2367);
                                                                              this.i21 = this.i11;
                                                                              this.i11 = li32(mstate.ebp + -2322);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         continue loop23;
                                                      }
                                                   }
                                                   else if(this.i15 != 111)
                                                   {
                                                      if(this.i15 == 112)
                                                      {
                                                         this.i3 = li32(mstate.ebp + -1540);
                                                         if(this.i3 != 0)
                                                         {
                                                            this.i15 = this.i9 << 3;
                                                            this.i3 += this.i15;
                                                         }
                                                         else
                                                         {
                                                            this.i15 = this.i1 + 4;
                                                            this.i3 = this.i1;
                                                            this.i1 = this.i15;
                                                         }
                                                         this.i15 = 120;
                                                         this.i16 = li32(this.i3);
                                                         this.i3 = li32(mstate.ebp + -2178);
                                                         si8(this.i15,this.i3);
                                                         this.i19 = 0;
                                                         si8(this.i19,mstate.ebp + -1746);
                                                         this.i20 = cmodule.Box2D._xdigs_lower_2E_4528;
                                                         this.i21 = 16;
                                                         this.i9 += 1;
                                                         this.i3 = this.i10 | 0x1000;
                                                         this.i10 = li32(mstate.ebp + -2457);
                                                         this.i17 = this.i10;
                                                         this.i15 = this.i16;
                                                         this.i10 = this.i19;
                                                         this.i16 = this.i21;
                                                         this.i19 = this.i20;
                                                         break;
                                                      }
                                                      if(this.i15 == 113)
                                                      {
                                                         this.i3 = this.i6 + this.i13;
                                                         this.i6 = this.i10 | 0x20;
                                                         this.i10 = this.i6;
                                                         this.i6 = this.i8;
                                                         this.i8 = this.i11;
                                                         break loop85;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      this.i3 = this.i10;
                                                      §§goto(addrc678);
                                                   }
                                                }
                                                else if(this.i15 <= 116)
                                                {
                                                   if(this.i15 != 115)
                                                   {
                                                      if(this.i15 == 116)
                                                      {
                                                         this.i3 = this.i6 + this.i13;
                                                         this.i6 = this.i10 | 0x0800;
                                                         this.i10 = this.i6;
                                                         this.i6 = this.i8;
                                                         this.i8 = this.i11;
                                                         break loop85;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      this.i3 = this.i10;
                                                      §§goto(addrd18d);
                                                   }
                                                }
                                                else
                                                {
                                                   if(this.i15 == 122)
                                                   {
                                                      this.i3 = this.i6 + this.i13;
                                                      this.i6 = this.i10 | 0x0400;
                                                      this.i10 = this.i6;
                                                      this.i6 = this.i8;
                                                      this.i8 = this.i11;
                                                      break loop85;
                                                   }
                                                   if(this.i15 == 120)
                                                   {
                                                      this.i3 = cmodule.Box2D._xdigs_lower_2E_4528;
                                                      continue loop108;
                                                   }
                                                   if(this.i15 == 117)
                                                   {
                                                      this.i3 = this.i10;
                                                      §§goto(addr1cfe);
                                                   }
                                                }
                                                §§goto(addrfdd4);
                                             }
                                             continue loop108;
                                          }
                                          addrec21:
                                          this.i24 = this.i17;
                                          this.i26 = this.i15;
                                          this.i15 = this.i16;
                                          this.i27 = this.i19;
                                          this.i16 = this.i11 > -1 ? -129 : -1;
                                          this.i3 &= this.i16;
                                          this.i16 = this.i3 & 0x1C20;
                                          loop101:
                                          while(true)
                                          {
                                             if(this.i16 != 0)
                                             {
                                                this.i16 = this.i26 | this.i10;
                                                if(this.i16 == 0)
                                                {
                                                   if(this.i11 == 0)
                                                   {
                                                      this.i16 = this.i3 & 1;
                                                      if(this.i15 == 8)
                                                      {
                                                         if(this.i16 != 0)
                                                         {
                                                            addrece2:
                                                            this.i16 = li8(mstate.ebp + -1745);
                                                            this.i17 = this.i3 & 1;
                                                            this.i19 = this.i3 & 0x0200;
                                                            this.i20 = this.i10 != 0 ? 1 : 0;
                                                            if(this.i20 == 0)
                                                            {
                                                               this.i12 = this.i16 << 24;
                                                               mstate.esp -= 32;
                                                               this.i12 >>= 24;
                                                               si32(this.i26,mstate.esp);
                                                               this.i16 = li32(mstate.ebp + -2160);
                                                               si32(this.i16,mstate.esp + 4);
                                                               si32(this.i15,mstate.esp + 8);
                                                               si32(this.i17,mstate.esp + 12);
                                                               si32(this.i27,mstate.esp + 16);
                                                               si32(this.i19,mstate.esp + 20);
                                                               si32(this.i12,mstate.esp + 24);
                                                               si32(this.i7,mstate.esp + 28);
                                                               state = 68;
                                                               mstate.esp -= 4;
                                                               FSM___ultoa.start();
                                                               return;
                                                            }
                                                            if(this.i15 != 8)
                                                            {
                                                               if(this.i15 != 10)
                                                               {
                                                                  if(this.i15 == 16)
                                                                  {
                                                                     this.i15 = li32(mstate.ebp + -2034);
                                                                     this.i12 = this.i26;
                                                                     this.i16 = this.i10;
                                                                     while(true)
                                                                     {
                                                                        this.i17 = this.i12 & 0x0F;
                                                                        this.i17 = this.i27 + this.i17;
                                                                        this.i17 = li8(this.i17);
                                                                        this.i19 = this.i12 >>> 4;
                                                                        this.i20 = this.i16 << 28;
                                                                        si8(this.i17,this.i15 + 99);
                                                                        this.i17 = this.i16 >>> 4;
                                                                        this.i19 |= this.i20;
                                                                        this.i15 += -1;
                                                                        this.i12 = uint(this.i12) < uint(16) ? 1 : 0;
                                                                        this.i16 = this.i16 == 0 ? 1 : 0;
                                                                        this.i12 = this.i16 != 0 ? this.i12 : 0;
                                                                        if(this.i12 != 0)
                                                                        {
                                                                           break;
                                                                        }
                                                                        this.i12 = this.i19;
                                                                        this.i16 = this.i17;
                                                                     }
                                                                     this.i15 += 100;
                                                                     break;
                                                                  }
                                                                  state = 79;
                                                                  mstate.esp -= 4;
                                                                  FSM_abort1.start();
                                                                  return;
                                                               }
                                                               this.i15 = this.i10 != 0 ? 1 : 0;
                                                               this.i17 = uint(this.i26) > uint(9) ? 1 : 0;
                                                               this.i20 = this.i10 == 0 ? 1 : 0;
                                                               this.i15 = this.i20 != 0 ? this.i17 : this.i15;
                                                               if(this.i15 == 0)
                                                               {
                                                                  this.i15 = 0;
                                                                  mstate.esp -= 16;
                                                                  this.i12 = 10;
                                                                  si32(this.i26,mstate.esp);
                                                                  si32(this.i10,mstate.esp + 4);
                                                                  si32(this.i12,mstate.esp + 8);
                                                                  si32(this.i15,mstate.esp + 12);
                                                                  mstate.esp -= 4;
                                                                  mstate.funcs[cmodule.Box2D.___udivdi3]();
                                                                  addrf018:
                                                                  this.i16 = mstate.eax;
                                                                  this.i19 = mstate.edx;
                                                                  mstate.esp += 16;
                                                                  mstate.esp -= 16;
                                                                  si32(this.i16,mstate.esp);
                                                                  si32(this.i19,mstate.esp + 4);
                                                                  si32(this.i12,mstate.esp + 8);
                                                                  si32(this.i15,mstate.esp + 12);
                                                                  mstate.esp -= 4;
                                                                  mstate.funcs[cmodule.Box2D.___muldi3]();
                                                                  addrf09f:
                                                                  this.i15 = mstate.eax;
                                                                  this.i12 = mstate.edx;
                                                                  this.i15 = cmodule.Box2D.__subc(this.i26,this.i15);
                                                                  this.i15 += 48;
                                                                  this.i12 = li32(mstate.ebp + -2142);
                                                                  si8(this.i15,this.i12);
                                                                  mstate.esp += 16;
                                                                  this.i15 = this.i12;
                                                                  break;
                                                               }
                                                               if(this.i10 >= 0)
                                                               {
                                                                  this.i15 = 0;
                                                                  this.i17 = this.i26;
                                                                  this.i20 = this.i10;
                                                                  this.i21 = li32(mstate.ebp + -2160);
                                                               }
                                                               else
                                                               {
                                                                  this.i15 = 10;
                                                                  mstate.esp -= 16;
                                                                  this.i17 = 0;
                                                                  si32(this.i26,mstate.esp);
                                                                  si32(this.i10,mstate.esp + 4);
                                                                  si32(this.i15,mstate.esp + 8);
                                                                  si32(this.i17,mstate.esp + 12);
                                                                  mstate.esp -= 4;
                                                                  mstate.funcs[cmodule.Box2D.___udivdi3]();
                                                                  addrf1ae:
                                                                  this.i20 = mstate.eax;
                                                                  this.i21 = mstate.edx;
                                                                  mstate.esp += 16;
                                                                  mstate.esp -= 16;
                                                                  si32(this.i20,mstate.esp);
                                                                  si32(this.i21,mstate.esp + 4);
                                                                  si32(this.i15,mstate.esp + 8);
                                                                  si32(this.i17,mstate.esp + 12);
                                                                  mstate.esp -= 4;
                                                                  mstate.funcs[cmodule.Box2D.___muldi3]();
                                                                  addrf235:
                                                                  this.i15 = mstate.eax;
                                                                  this.i15 = cmodule.Box2D.__subc(this.i26,this.i15);
                                                                  this.i15 += 48;
                                                                  this.i17 = li32(mstate.ebp + -2142);
                                                                  si8(this.i15,this.i17);
                                                                  this.i15 = 1;
                                                                  this.i17 = this.i20;
                                                                  this.i20 = this.i21;
                                                                  this.i21 = li32(mstate.ebp + -2142);
                                                               }
                                                               loop55:
                                                               while(true)
                                                               {
                                                                  this.i22 = this.i12 + 1;
                                                                  this.i23 = this.i12;
                                                                  if(this.i19 != 0)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.i28 = 0;
                                                                        mstate.esp -= 16;
                                                                        this.i29 = 10;
                                                                        si32(this.i17,mstate.esp);
                                                                        si32(this.i20,mstate.esp + 4);
                                                                        si32(this.i29,mstate.esp + 8);
                                                                        si32(this.i28,mstate.esp + 12);
                                                                        mstate.esp -= 4;
                                                                        mstate.funcs[cmodule.Box2D.___divdi3]();
                                                                        addrf33c:
                                                                        this.i30 = mstate.eax;
                                                                        this.i31 = mstate.edx;
                                                                        mstate.esp += 16;
                                                                        mstate.esp -= 16;
                                                                        si32(this.i30,mstate.esp);
                                                                        si32(this.i31,mstate.esp + 4);
                                                                        si32(this.i29,mstate.esp + 8);
                                                                        si32(this.i28,mstate.esp + 12);
                                                                        mstate.esp -= 4;
                                                                        addrf3c3:
                                                                        mstate.funcs[cmodule.Box2D.___muldi3]();
                                                                        this.i28 = mstate.eax;
                                                                        this.i29 = mstate.edx;
                                                                        this.i28 = cmodule.Box2D.__subc(this.i17,this.i28);
                                                                        this.i28 += 48;
                                                                        si8(this.i28,this.i21 + -1);
                                                                        this.i28 = li8(this.i23);
                                                                        this.i15 += 1;
                                                                        this.i29 = this.i21 + -1;
                                                                        mstate.esp += 16;
                                                                        while(true)
                                                                        {
                                                                           if(this.i28 != 127)
                                                                           {
                                                                              this.i28 <<= 24;
                                                                              this.i28 >>= 24;
                                                                              if(this.i28 == this.i15)
                                                                              {
                                                                                 this.i28 = this.i20 < 0 ? 1 : 0;
                                                                                 this.i30 = uint(this.i17) < uint(10) ? 1 : 0;
                                                                                 this.i31 = this.i20 == 0 ? 1 : 0;
                                                                                 this.i28 = this.i31 != 0 ? this.i30 : this.i28;
                                                                                 if(this.i28 == 0)
                                                                                 {
                                                                                    si8(this.i16,this.i21 + -2);
                                                                                    this.i15 = li8(this.i22);
                                                                                    this.i21 += -2;
                                                                                    if(this.i15 == 0)
                                                                                    {
                                                                                       this.i15 = 0;
                                                                                       break;
                                                                                    }
                                                                                    addrf92e:
                                                                                    this.i15 = 10;
                                                                                    mstate.esp -= 16;
                                                                                    this.i22 = 0;
                                                                                    si32(this.i17,mstate.esp);
                                                                                    si32(this.i20,mstate.esp + 4);
                                                                                    si32(this.i15,mstate.esp + 8);
                                                                                    si32(this.i22,mstate.esp + 12);
                                                                                    this.i15 = 9;
                                                                                    this.i15 = cmodule.Box2D.__addc(this.i17,this.i15);
                                                                                    this.i17 = cmodule.Box2D.__adde(this.i20,this.i22);
                                                                                    mstate.esp -= 4;
                                                                                    mstate.funcs[cmodule.Box2D.___divdi3]();
                                                                                    this.i20 = mstate.eax;
                                                                                    this.i22 = mstate.edx;
                                                                                    this.i12 += 1;
                                                                                    mstate.esp += 16;
                                                                                    this.i23 = this.i17 != 0 ? 1 : 0;
                                                                                    this.i15 = uint(this.i15) > uint(18) ? 1 : 0;
                                                                                    this.i17 = this.i17 == 0 ? 1 : 0;
                                                                                    this.i15 = this.i17 != 0 ? this.i15 : this.i23;
                                                                                    if(this.i15 == 0)
                                                                                    {
                                                                                       this.i15 = this.i21;
                                                                                       break loop101;
                                                                                    }
                                                                                    continue loop55;
                                                                                 }
                                                                              }
                                                                           }
                                                                           this.i21 = this.i29;
                                                                           break;
                                                                        }
                                                                        this.i28 = 10;
                                                                        mstate.esp -= 16;
                                                                        this.i29 = 0;
                                                                        si32(this.i17,mstate.esp);
                                                                        si32(this.i20,mstate.esp + 4);
                                                                        si32(this.i28,mstate.esp + 8);
                                                                        si32(this.i29,mstate.esp + 12);
                                                                        this.i28 = 9;
                                                                        this.i17 = cmodule.Box2D.__addc(this.i17,this.i28);
                                                                        this.i20 = cmodule.Box2D.__adde(this.i20,this.i29);
                                                                        addrf4f1:
                                                                        mstate.esp -= 4;
                                                                        mstate.funcs[cmodule.Box2D.___divdi3]();
                                                                        this.i28 = mstate.eax;
                                                                        this.i29 = mstate.edx;
                                                                        mstate.esp += 16;
                                                                        this.i30 = this.i20 != 0 ? 1 : 0;
                                                                        this.i17 = uint(this.i17) > uint(18) ? 1 : 0;
                                                                        this.i20 = this.i20 == 0 ? 1 : 0;
                                                                        this.i17 = this.i20 != 0 ? this.i17 : this.i30;
                                                                        if(this.i17 == 0)
                                                                        {
                                                                           this.i15 = this.i21;
                                                                           break loop101;
                                                                        }
                                                                        this.i17 = this.i28;
                                                                        this.i20 = this.i29;
                                                                     }
                                                                     break loop32;
                                                                  }
                                                                  this.i15 = this.i17;
                                                                  this.i12 = this.i20;
                                                                  this.i16 = this.i21;
                                                                  while(true)
                                                                  {
                                                                     this.i17 = 10;
                                                                     mstate.esp -= 16;
                                                                     this.i19 = 0;
                                                                     si32(this.i15,mstate.esp);
                                                                     si32(this.i12,mstate.esp + 4);
                                                                     si32(this.i17,mstate.esp + 8);
                                                                     si32(this.i19,mstate.esp + 12);
                                                                     mstate.esp -= 4;
                                                                     mstate.funcs[cmodule.Box2D.___divdi3]();
                                                                     addrf625:
                                                                     this.i20 = mstate.eax;
                                                                     this.i21 = mstate.edx;
                                                                     mstate.esp += 16;
                                                                     mstate.esp -= 16;
                                                                     si32(this.i20,mstate.esp);
                                                                     si32(this.i21,mstate.esp + 4);
                                                                     si32(this.i17,mstate.esp + 8);
                                                                     si32(this.i19,mstate.esp + 12);
                                                                     mstate.esp -= 4;
                                                                     addrf6ac:
                                                                     mstate.funcs[cmodule.Box2D.___muldi3]();
                                                                     this.i17 = mstate.eax;
                                                                     this.i22 = mstate.edx;
                                                                     this.i17 = cmodule.Box2D.__subc(this.i15,this.i17);
                                                                     this.i22 = 9;
                                                                     this.i17 += 48;
                                                                     this.i15 = cmodule.Box2D.__addc(this.i15,this.i22);
                                                                     this.i12 = cmodule.Box2D.__adde(this.i12,this.i19);
                                                                     si8(this.i17,this.i16 + -1);
                                                                     this.i16 += -1;
                                                                     mstate.esp += 16;
                                                                     this.i17 = this.i12 != 0 ? 1 : 0;
                                                                     this.i15 = uint(this.i15) > uint(18) ? 1 : 0;
                                                                     this.i12 = this.i12 == 0 ? 1 : 0;
                                                                     this.i15 = this.i12 != 0 ? this.i15 : this.i17;
                                                                     if(this.i15 == 0)
                                                                     {
                                                                        this.i15 = this.i16;
                                                                        break loop101;
                                                                     }
                                                                     this.i15 = this.i20;
                                                                     this.i12 = this.i21;
                                                                  }
                                                                  break;
                                                                  this.i15 = 0;
                                                                  this.i17 = this.i20;
                                                                  this.i20 = this.i22;
                                                               }
                                                               break loop23;
                                                            }
                                                            this.i15 = -1;
                                                            this.i12 = li32(mstate.ebp + -2034);
                                                            this.i16 = this.i26;
                                                            this.i19 = this.i10;
                                                            while(true)
                                                            {
                                                               this.i20 = this.i16 | 0x30;
                                                               this.i20 &= 55;
                                                               this.i21 = this.i16 >>> 3;
                                                               this.i22 = this.i19 << 29;
                                                               si8(this.i20,this.i12 + 99);
                                                               this.i23 = this.i19 >>> 3;
                                                               this.i21 |= this.i22;
                                                               this.i12 += -1;
                                                               this.i15 += 1;
                                                               this.i16 = uint(this.i16) < uint(8) ? 1 : 0;
                                                               this.i19 = this.i19 == 0 ? 1 : 0;
                                                               this.i16 = this.i19 != 0 ? this.i16 : 0;
                                                               if(this.i16 != 0)
                                                               {
                                                                  break;
                                                               }
                                                               this.i16 = this.i21;
                                                               this.i19 = this.i23;
                                                            }
                                                            if(this.i17 != 0)
                                                            {
                                                               this.i16 = this.i20 & 0xFF;
                                                               if(this.i16 != 48)
                                                               {
                                                                  this.i12 = mstate.ebp + -1648;
                                                                  this.i15 = 98 - this.i15;
                                                                  this.i16 = 48;
                                                                  this.i15 = this.i12 + this.i15;
                                                                  si8(this.i16,this.i15);
                                                                  break;
                                                               }
                                                            }
                                                            this.i15 = this.i12 + 100;
                                                            break;
                                                         }
                                                      }
                                                      addreccc:
                                                      this.i15 = li32(mstate.ebp + -2160);
                                                      break;
                                                   }
                                                }
                                                §§goto(addrece2);
                                             }
                                             else
                                             {
                                                §§goto(addrfb9e);
                                             }
                                          }
                                          §§goto(addrfcd8);
                                       }
                                       §§goto(addrff48);
                                       break loop85;
                                       this.i15 = 32;
                                       si8(this.i15,mstate.ebp + -1746);
                                       this.i16 = si8(li8(this.i18));
                                       this.i15 = this.i13 + 1;
                                    }
                                    §§goto(addr12f7d);
                                 }
                                 addr12e03:
                                 while(true)
                                 {
                                    this.i15 = li32(mstate.ebp + -2124);
                                    si32(this.i15,this.i11);
                                    si32(this.i19,this.i11 + 4);
                                    this.i15 = li32(this.i4);
                                    this.i15 += this.i19;
                                    si32(this.i15,this.i4);
                                    this.i16 = li32(this.i5);
                                    this.i16 += 1;
                                    si32(this.i16,this.i5);
                                    this.i11 += 8;
                                    if(this.i16 <= 7)
                                    {
                                       this.i15 = this.i11;
                                       this.i11 = this.i20;
                                       this.i16 = this.i22;
                                    }
                                    else
                                    {
                                       if(this.i15 != 0)
                                       {
                                          this.i11 = mstate.ebp + -1728;
                                          mstate.esp -= 8;
                                          si32(this.i0,mstate.esp);
                                          si32(this.i11,mstate.esp + 4);
                                          state = 109;
                                          mstate.esp -= 4;
                                          FSM___sfvwrite.start();
                                          return;
                                       }
                                       this.i11 = 0;
                                       si32(this.i11,this.i5);
                                       this.i15 = this.i2;
                                       this.i11 = this.i20;
                                       this.i16 = this.i22;
                                    }
                                    §§goto(addr12f7d);
                                 }
                                 break loop72;
                                 this.i13 = this.i15;
                                 this.i6 = this.i18;
                              }
                              addr12ab3:
                              while(true)
                              {
                                 this.i11 = this.i2;
                                 §§goto(addr12e03);
                              }
                              break loop12;
                           }
                           while(true)
                           {
                              this.i17 = mstate.eax;
                              mstate.esp += 12;
                              this.i20 = this.i17 + -1;
                              if(uint(this.i20) >= uint(-2))
                              {
                                 this.i10 = this.i19;
                                 this.i15 = this.i17;
                              }
                              else
                              {
                                 this.i12 += this.i17;
                                 this.i19 = this.i16 + this.i12;
                                 this.i20 = this.i19 - this.i10;
                                 if(uint(this.i20) < uint(this.i15))
                                 {
                                    continue;
                                 }
                                 this.i10 = this.i19;
                                 this.i15 = this.i17;
                              }
                              addrd776:
                              if(this.i15 == -1)
                              {
                                 this.i3 = 0;
                                 mstate.esp -= 8;
                                 si32(this.i16,mstate.esp);
                                 si32(this.i3,mstate.esp + 4);
                                 state = 67;
                                 mstate.esp -= 4;
                                 FSM_pubrealloc.start();
                                 return;
                              }
                              this.i12 = 0;
                              si8(this.i12,this.i10);
                              this.i10 = this.i16;
                              §§goto(addrd809);
                              this.i17 = mstate.ebp + -176;
                              this.i19 = li32(mstate.ebp + -196);
                              this.i20 = li32(this.i19);
                              this.i19 += 4;
                              si32(this.i19,mstate.ebp + -196);
                              mstate.esp -= 12;
                              this.i19 = this.i16 + this.i12;
                              si32(this.i19,mstate.esp);
                              si32(this.i20,mstate.esp + 4);
                              si32(this.i17,mstate.esp + 8);
                              mstate.esp -= 4;
                              FSM__UTF8_wcrtomb.start();
                           }
                           break loop23;
                           addrd6bf:
                        }
                        §§goto(addr133b9);
                     }
                     this.i13 = this.i12 + this.i11;
                     if(this.i13 <= -1)
                     {
                        this.i6 = -1;
                        this.i8 = this.i14;
                        this.i0 = li32(mstate.ebp + -2367);
                        break loop74;
                     }
                     si32(this.i6,this.i8);
                     si32(this.i12,this.i8 + 4);
                     this.i6 = li32(this.i4);
                     this.i6 += this.i12;
                     si32(this.i6,this.i4);
                     this.i12 = li32(this.i5);
                     this.i12 += 1;
                     si32(this.i12,this.i5);
                     this.i8 += 8;
                     if(this.i12 <= 7)
                     {
                        this.i6 = this.i8;
                        this.i8 = this.i13;
                     }
                     else
                     {
                        if(this.i6 != 0)
                        {
                           this.i6 = mstate.ebp + -1728;
                           mstate.esp -= 8;
                           si32(this.i0,mstate.esp);
                           si32(this.i6,mstate.esp + 4);
                           state = 5;
                           mstate.esp -= 4;
                           FSM___sfvwrite.start();
                           return;
                        }
                        this.i6 = 0;
                        si32(this.i6,this.i5);
                        this.i6 = this.i2;
                        this.i8 = this.i13;
                     }
                     §§goto(addr1421);
                  }
                  break;
               }
               mstate.esp -= 4;
               si32(this.i0,mstate.esp);
               state = 2;
               mstate.esp -= 4;
               FSM___swsetup.start();
               return;
            case 2:
               this.i1 = mstate.eax;
               mstate.esp += 4;
               if(this.i1 != 0)
               {
                  this.i0 = -1;
                  break;
               }
               §§goto(addr039f);
               break;
            case 5:
               this.i6 = mstate.eax;
               mstate.esp += 8;
               this.i8 = 0;
               si32(this.i8,this.i4);
               si32(this.i8,this.i5);
               if(this.i6 != 0)
               {
                  this.i6 = this.i11;
                  this.i8 = this.i14;
                  this.i0 = li32(mstate.ebp + -2367);
                  break loop74;
               }
               this.i6 = this.i2;
               this.i8 = this.i13;
               §§goto(addr1421);
               break;
            case 7:
               mstate.esp += 12;
               §§goto(addr2142);
            case 10:
               mstate.esp += 12;
               §§goto(addr25c1);
            case 11:
               mstate.esp += 12;
               this.i6 = this.i8;
               this.i8 = this.i11;
               this.i9 = this.i18;
               break loop85;
            case 13:
               this.i12 = mstate.eax;
               mstate.esp += 4;
               this.i14 = 0;
               si32(this.i14,this.i12 + 4);
               this.i14 = 1;
               si32(this.i14,this.i12 + 8);
               §§goto(addr378e);
            case 14:
               this.i12 = mstate.eax;
               mstate.esp += 4;
               this.i14 = 0;
               si32(this.i14,this.i12 + 4);
               this.i14 = 1;
               si32(this.i14,this.i12 + 8);
               §§goto(addr394d);
            case 15:
               this.i12 = mstate.eax;
               mstate.esp += 4;
               this.i14 = 0;
               si32(this.i14,this.i12 + 4);
               this.i14 = 1;
               si32(this.i14,this.i12 + 8);
               §§goto(addr3afd);
            case 8:
               §§goto(addr2321);
            case 17:
               this.i20 = mstate.eax;
               mstate.esp += 4;
               this.i21 = this.i12 + -1;
               this.i22 = this.i20 + 4;
               si32(this.i17,this.i20);
               this.i17 = this.i22 + this.i21;
               this.i20 = this.i22;
               if(this.i21 <= 15)
               {
                  this.i12 = this.i17;
               }
               else
               {
                  this.i17 = 0;
                  this.i12 += this.i22;
                  this.i12 += -1;
                  do
                  {
                     this.i23 = 0;
                     this.i24 = this.i17 ^ -1;
                     si8(this.i23,this.i12);
                     this.i12 += -1;
                     this.i17 += 1;
                     this.i23 = this.i21 + this.i24;
                  }
                  while(this.i23 >= 16);
                  this.i12 = this.i20 + this.i23;
               }
               this.i21 = this.i12;
               this.i23 = this.i20 + 7;
               this.i12 = this.i21;
               while(true)
               {
                  if(uint(this.i23) < uint(this.i21))
                  {
                     if(uint(this.i21) > uint(this.i20))
                     {
                        this.i17 = 0;
                        do
                        {
                           this.i24 = li32(mstate.ebp + -2241);
                           this.i24 = li8(this.i24);
                           this.i24 &= 15;
                           si8(this.i24,this.i12);
                           this.i24 = li32(mstate.ebp + -2241);
                           this.i24 = li32(this.i24);
                           this.i24 >>>= 4;
                           this.i25 = this.i17 ^ -1;
                           this.i26 = li32(mstate.ebp + -2241);
                           si32(this.i24,this.i26);
                           this.i12 += -1;
                           this.i17 += 1;
                           this.i24 = this.i21 + this.i25;
                           if(uint(this.i23) >= uint(this.i24))
                           {
                              break;
                           }
                        }
                        while(uint(this.i24) > uint(this.i20));
                        this.i12 = this.i24;
                        break;
                     }
                  }
                  this.i12 = this.i21;
                  break;
               }
               this.i23 = this.i12;
               this.i12 = li32(mstate.ebp + -2214);
               this.i17 = li8(this.i12);
               this.i12 = this.i23;
               if(uint(this.i23) <= uint(this.i20))
               {
                  this.i12 = this.i17;
                  this.i17 = this.i23;
               }
               else
               {
                  this.i21 = 0;
                  do
                  {
                     this.i17 &= 15;
                     si8(this.i17,this.i12);
                     this.i17 = li32(mstate.ebp + -2214);
                     this.i17 = li32(this.i17);
                     this.i17 >>>= 4;
                     this.i24 = this.i21 ^ -1;
                     this.i25 = li32(mstate.ebp + -2214);
                     si32(this.i17,this.i25);
                     this.i12 += -1;
                     this.i21 += 1;
                     this.i24 = this.i23 + this.i24;
                  }
                  while(uint(this.i24) > uint(this.i20));
                  this.i12 = this.i17;
                  this.i17 = this.i24;
               }
               this.i12 |= 8;
               si8(this.i12,this.i17);
               if(this.i14 >= 0)
               {
                  this.i12 = this.i14;
               }
               else
               {
                  this.i12 = li8(this.i20 + 15);
                  if(this.i12 != 0)
                  {
                     this.i12 = 16;
                  }
                  else
                  {
                     this.i12 = -1;
                     this.i14 = this.i22 + 14;
                     do
                     {
                        this.i17 = li8(this.i14);
                        this.i14 += -1;
                        this.i12 += 1;
                     }
                     while(this.i17 == 0);
                     this.i12 = 15 - this.i12;
                  }
               }
               if(this.i12 <= 15)
               {
                  this.i14 = this.i20 + this.i12;
                  this.i14 = li8(this.i14);
                  if(this.i14 != 0)
                  {
                     this.i14 = mstate.ebp + -1744;
                     mstate.esp -= 12;
                     si32(this.i20,mstate.esp);
                     si32(this.i12,mstate.esp + 4);
                     si32(this.i14,mstate.esp + 8);
                     mstate.esp -= 4;
                     FSM_dorounding.start();
                     addr4182:
                     mstate.esp += 12;
                  }
               }
               this.i14 = 0;
               this.i17 = this.i20 + this.i12;
               si32(this.i17,mstate.ebp + -1740);
               this.i21 = this.i12 + -1;
               si8(this.i14,this.i17);
               this.i14 = this.i20 + this.i21;
               if(uint(this.i14) >= uint(this.i20))
               {
                  this.i14 = 0;
                  this.i12 = this.i22 + this.i12;
                  this.i12 += -1;
                  while(true)
                  {
                     this.i17 = si8(li8(this.i12));
                     this.i17 = this.i3 + this.i17;
                     this.i17 = li8(this.i17);
                     si8(this.i17,this.i12);
                     this.i12 += -1;
                     this.i17 = this.i14 + 1;
                     this.i14 ^= -1;
                     this.i14 = this.i21 + this.i14;
                     this.i14 = this.i20 + this.i14;
                     if(uint(this.i14) < uint(this.i20))
                     {
                        break;
                     }
                     this.i14 = this.i17;
                  }
               }
               this.i12 = this.i20;
               §§goto(addr42d4);
            case 18:
               §§goto(addr4182);
            case 19:
               this.i12 = mstate.eax;
               mstate.esp += 8;
               si32(this.i14,this.i12 + 4);
               this.i14 = 1;
               si32(this.i14,this.i12 + 8);
               §§goto(addr466e);
            case 20:
               this.i12 = mstate.eax;
               mstate.esp += 8;
               si32(this.i14,this.i12 + 4);
               this.i14 = 1;
               si32(this.i14,this.i12 + 8);
               §§goto(addr483b);
            case 21:
               this.i12 = mstate.eax;
               mstate.esp += 8;
               si32(this.i14,this.i12 + 4);
               this.i14 = 1;
               si32(this.i14,this.i12 + 8);
               §§goto(addr49f9);
            case 6:
               §§goto(addr1f1b);
            case 9:
               §§goto(addr235c);
            case 12:
               §§goto(addr2b40);
            case 23:
               this.i22 = mstate.eax;
               mstate.esp += 4;
               this.i23 = this.i12 + -1;
               this.i24 = this.i22 + 4;
               si32(this.i21,this.i22);
               this.i21 = this.i24 + this.i23;
               this.i22 = this.i24;
               if(this.i23 <= 13)
               {
                  this.i12 = this.i21;
               }
               else
               {
                  this.i21 = 0;
                  this.i12 += this.i24;
                  this.i12 += -1;
                  do
                  {
                     this.i25 = 0;
                     this.i26 = this.i21 ^ -1;
                     si8(this.i25,this.i12);
                     this.i12 += -1;
                     this.i21 += 1;
                     this.i25 = this.i23 + this.i26;
                  }
                  while(this.i25 >= 14);
                  this.i12 = this.i22 + this.i25;
               }
               this.i21 = this.i12;
               this.i25 = this.i22 + 5;
               this.i12 = this.i21;
               while(true)
               {
                  if(uint(this.i25) < uint(this.i21))
                  {
                     if(uint(this.i21) > uint(this.i22))
                     {
                        this.i23 = 0;
                        this.i26 = this.i12;
                        this.i12 = this.i14;
                        this.i14 = this.i19;
                        while(true)
                        {
                           this.i19 = this.i26;
                           this.i26 = this.i12 & 0x0F;
                           this.i27 = this.i23 ^ -1;
                           si8(this.i26,this.i19);
                           this.i19 += -1;
                           this.i23 += 1;
                           this.i26 = this.i21 + this.i27;
                           this.i12 >>>= 4;
                           if(uint(this.i25) >= uint(this.i26))
                           {
                              break;
                           }
                           if(uint(this.i26) <= uint(this.i22))
                           {
                              break;
                           }
                           this.i26 = this.i19;
                        }
                        this.i19 = this.i26;
                        break;
                     }
                  }
                  this.i12 = this.i14;
                  this.i14 = this.i19;
                  this.i19 = this.i21;
                  break;
               }
               this.i23 = this.i12;
               this.i25 = this.i14;
               this.i12 = this.i19;
               this.i19 = this.i25;
               this.i14 = this.i12;
               if(uint(this.i12) <= uint(this.i22))
               {
                  this.i14 = this.i19;
               }
               else
               {
                  this.i26 = 0;
                  this.i21 = this.i14;
                  this.i14 = this.i26;
                  while(true)
                  {
                     this.i26 = this.i25 >>> 4;
                     this.i19 &= 15;
                     this.i27 = this.i14 ^ -1;
                     this.i25 &= -1048576;
                     this.i26 &= 65535;
                     si8(this.i19,this.i21);
                     this.i25 = this.i26 | this.i25;
                     this.i19 = this.i21 + -1;
                     this.i14 += 1;
                     this.i21 = this.i12 + this.i27;
                     this.i26 = this.i25;
                     if(uint(this.i21) <= uint(this.i22))
                     {
                        break;
                     }
                     this.i21 = this.i19;
                     this.i19 = this.i26;
                  }
                  this.i14 = this.i26;
                  this.i12 = this.i21;
               }
               this.i14 |= 1;
               si8(this.i14,this.i12);
               if(this.i17 >= 0)
               {
                  this.i12 = this.i17;
               }
               else
               {
                  this.i12 = li8(this.i22 + 13);
                  if(this.i12 != 0)
                  {
                     this.i12 = 14;
                  }
                  else
                  {
                     this.i12 = -1;
                     this.i14 = this.i24 + 12;
                     do
                     {
                        this.i19 = li8(this.i14);
                        this.i14 += -1;
                        this.i12 += 1;
                     }
                     while(this.i19 == 0);
                     this.i12 = 13 - this.i12;
                  }
               }
               if(this.i12 <= 13)
               {
                  this.i14 = this.i22 + this.i12;
                  this.i14 = li8(this.i14);
                  if(this.i14 != 0)
                  {
                     this.i14 = mstate.ebp + -1744;
                     mstate.esp -= 12;
                     si32(this.i22,mstate.esp);
                     si32(this.i12,mstate.esp + 4);
                     si32(this.i14,mstate.esp + 8);
                     mstate.esp -= 4;
                     FSM_dorounding.start();
                     addr5085:
                     mstate.esp += 12;
                  }
               }
               this.i14 = 0;
               this.i19 = this.i22 + this.i12;
               si32(this.i19,mstate.ebp + -1740);
               this.i17 = this.i12 + -1;
               si8(this.i14,this.i19);
               this.i14 = this.i22 + this.i17;
               if(uint(this.i14) >= uint(this.i22))
               {
                  this.i14 = 0;
                  this.i12 = this.i24 + this.i12;
                  this.i12 += -1;
                  while(true)
                  {
                     this.i19 = si8(li8(this.i12));
                     this.i19 = this.i3 + this.i19;
                     this.i19 = li8(this.i19);
                     si8(this.i19,this.i12);
                     this.i12 += -1;
                     this.i19 = this.i14 + 1;
                     this.i14 ^= -1;
                     this.i14 = this.i17 + this.i14;
                     this.i14 = this.i22 + this.i14;
                     if(uint(this.i14) < uint(this.i22))
                     {
                        break;
                     }
                     this.i14 = this.i19;
                  }
               }
               this.i12 = this.i22;
               §§goto(addr51d7);
            case 24:
               §§goto(addr5085);
            case 25:
               this.i12 = mstate.eax;
               mstate.esp += 28;
               this.i16 = li32(mstate.ebp + -1744);
               if(this.i16 != -32768)
               {
                  this.i19 = this.i16;
                  this.i17 = this.i3;
                  this.i14 = this.i12;
                  this.i3 = li32(mstate.ebp + -2466);
                  this.i11 = this.i3;
                  this.i3 = li32(mstate.ebp + -2385);
                  this.i16 = this.i3;
                  this.i3 = li32(mstate.ebp + -2475);
               }
               else
               {
                  this.i16 = this.i12;
                  addr5eb6:
                  this.i12 = this.i16;
                  this.i11 = 2147483647;
                  si32(this.i11,mstate.ebp + -1744);
                  this.i19 = this.i11;
                  this.i17 = this.i3;
                  this.i14 = this.i12;
                  this.i3 = li32(mstate.ebp + -2466);
                  this.i11 = this.i3;
                  this.i3 = li32(mstate.ebp + -2385);
                  this.i16 = this.i3;
                  this.i3 = li32(mstate.ebp + -2475);
               }
               §§goto(addraa5b);
            case 26:
               this.i12 = mstate.eax;
               mstate.esp += 28;
               this.i16 = li32(mstate.ebp + -1744);
               if(this.i16 == -32768)
               {
                  break loop23;
               }
               this.i19 = this.i16;
               this.i17 = this.i3;
               this.i14 = this.i12;
               this.i3 = li32(mstate.ebp + -2466);
               this.i11 = this.i3;
               this.i3 = li32(mstate.ebp + -2385);
               this.i16 = this.i3;
               this.i3 = li32(mstate.ebp + -2475);
               §§goto(addraa5b);
               break;
            case 27:
               this.i12 = mstate.eax;
               mstate.esp += 28;
               this.i16 = li32(mstate.ebp + -1744);
               if(this.i16 != -32768)
               {
                  this.i19 = this.i16;
                  this.i17 = this.i3;
                  this.i14 = this.i12;
                  this.i3 = li32(mstate.ebp + -2466);
                  this.i11 = this.i3;
                  this.i3 = li32(mstate.ebp + -2385);
                  this.i16 = this.i3;
                  this.i3 = li32(mstate.ebp + -2475);
               }
               else
               {
                  this.i16 = this.i12;
                  §§goto(addr5eb6);
               }
               §§goto(addraa5b);
            case 28:
               this.i12 = mstate.eax;
               mstate.esp += 28;
               this.i16 = li32(mstate.ebp + -1744);
               if(this.i16 != -32768)
               {
                  this.i19 = this.i16;
                  this.i17 = this.i3;
                  this.i14 = this.i12;
                  this.i3 = li32(mstate.ebp + -2466);
                  this.i11 = this.i3;
                  this.i3 = li32(mstate.ebp + -2385);
                  this.i16 = this.i3;
                  this.i3 = li32(mstate.ebp + -2475);
               }
               else
               {
                  this.i16 = this.i12;
                  §§goto(addr5eb6);
               }
               §§goto(addraa5b);
            case 29:
               this.i12 = mstate.eax;
               mstate.esp += 28;
               this.i16 = li32(mstate.ebp + -1744);
               if(this.i16 != -32768)
               {
                  this.i19 = this.i16;
                  this.i17 = this.i3;
                  this.i14 = this.i12;
                  this.i3 = li32(mstate.ebp + -2466);
                  this.i11 = this.i3;
                  this.i3 = li32(mstate.ebp + -2385);
                  this.i16 = this.i3;
                  this.i3 = li32(mstate.ebp + -2475);
               }
               else
               {
                  this.i16 = this.i12;
                  §§goto(addr5eb6);
               }
               §§goto(addraa5b);
            case 30:
               break loop23;
            case 31:
               this.i3 = mstate.eax;
               mstate.esp += 4;
               this.i9 = 0;
               si32(this.i9,this.i3 + 4);
               this.i9 = 1;
               si32(this.i9,this.i3 + 8);
               §§goto(addr62e3);
            case 32:
               this.i3 = mstate.eax;
               mstate.esp += 4;
               this.i9 = 0;
               si32(this.i9,this.i3 + 4);
               this.i9 = 1;
               si32(this.i9,this.i3 + 8);
               §§goto(addr64f0);
            case 33:
               this.i3 = mstate.eax;
               mstate.esp += 4;
               this.i1 = 0;
               si32(this.i1,this.i3 + 4);
               this.i1 = 1;
               si32(this.i1,this.i3 + 8);
               §§goto(addr66d3);
            case 35:
               this.i16 = mstate.eax;
               mstate.esp += 4;
               si32(this.i9,this.i16);
               this.i9 = this.i16 + 4;
               si32(this.i9,mstate.ebp + -2493);
               loop112:
               while(true)
               {
                  loop113:
                  while(true)
                  {
                     while(true)
                     {
                        loop115:
                        while(true)
                        {
                           loop116:
                           while(true)
                           {
                              while(true)
                              {
                                 loop118:
                                 while(true)
                                 {
                                    if(uint(this.i21) <= uint(14))
                                    {
                                       loop119:
                                       while(true)
                                       {
                                          if(this.i12 >= 1)
                                          {
                                             this.i16 = cmodule.Box2D.___tens_D2A;
                                             this.i17 = this.i12 & 0x0F;
                                             this.i17 <<= 3;
                                             this.i16 += this.i17;
                                             this.f0 = lf64(this.i16);
                                             this.i16 = this.i12 >> 4;
                                             this.i17 = this.i16 & 0x10;
                                             if(this.i17 == 0)
                                             {
                                                this.i17 = 0;
                                                this.i22 = 2;
                                                this.i23 = li32(mstate.ebp + -2421);
                                                this.i24 = this.i3;
                                                while(true)
                                                {
                                                   this.i25 = this.i22;
                                                   this.i26 = this.i17;
                                                   if(this.i16 != 0)
                                                   {
                                                      this.i17 = this.i23;
                                                      this.i22 = this.i24;
                                                      this.i24 = this.i25;
                                                      this.i23 = this.i26;
                                                      addr7286:
                                                      this.i25 = this.i16 & 1;
                                                      if(this.i25 != 0)
                                                      {
                                                         this.i25 = cmodule.Box2D.___bigtens_D2A;
                                                         this.i26 = this.i23 << 3;
                                                         this.i25 += this.i26;
                                                         this.f2 = lf64(this.i25);
                                                         this.f0 = this.f2 * this.f0;
                                                         this.i24 += 1;
                                                      }
                                                      this.i25 = this.i24;
                                                      this.i26 = this.i23 + 1;
                                                      this.i16 >>= 1;
                                                      this.i23 = this.i17;
                                                      this.i24 = this.i22;
                                                      this.i22 = this.i25;
                                                      this.i17 = this.i26;
                                                      continue;
                                                   }
                                                   this.i17 = this.i23;
                                                   this.i22 = this.i24;
                                                   this.i16 = this.i25;
                                                }
                                                break loop23;
                                             }
                                             this.f2 = this.f1 / 1e+256;
                                             sf64(this.f2,mstate.ebp + -1816);
                                             this.i17 = li32(mstate.ebp + -1816);
                                             this.i22 = li32(mstate.ebp + -1812);
                                             this.i16 &= 15;
                                             if(this.i16 != 0)
                                             {
                                                this.i23 = 0;
                                                this.i24 = 3;
                                                §§goto(addr7286);
                                             }
                                             else
                                             {
                                                this.i16 = 3;
                                             }
                                             si32(this.i17,mstate.ebp + -1824);
                                             si32(this.i22,mstate.ebp + -1820);
                                             this.f2 = lf64(mstate.ebp + -1824);
                                             this.f0 = this.f2 / this.f0;
                                             sf64(this.f0,mstate.ebp + -1832);
                                             this.i17 = li32(mstate.ebp + -1832);
                                             this.i22 = li32(mstate.ebp + -1828);
                                             this.i23 = li32(mstate.ebp + -2376);
                                             if(this.i23 != 0)
                                             {
                                                addr7628:
                                                this.f0 = 1;
                                                si32(this.i17,mstate.ebp + -1864);
                                                si32(this.i22,mstate.ebp + -1860);
                                                this.f2 = lf64(mstate.ebp + -1864);
                                                while(true)
                                                {
                                                   if(this.f2 < this.f0)
                                                   {
                                                      if(this.i21 > 0)
                                                      {
                                                         this.i17 = li32(mstate.ebp + -2403);
                                                         if(this.i17 >= 1)
                                                         {
                                                            this.f0 = this.f2 * 10;
                                                            sf64(this.f0,mstate.ebp + -1872);
                                                            this.i17 = li32(mstate.ebp + -1872);
                                                            this.i22 = li32(mstate.ebp + -1868);
                                                            this.i16 += 1;
                                                            this.i24 = this.i12 + -1;
                                                            this.i23 = li32(mstate.ebp + -2403);
                                                            break;
                                                         }
                                                         break loop119;
                                                      }
                                                   }
                                                   this.i23 = this.i21;
                                                   this.i24 = this.i12;
                                                   break;
                                                }
                                             }
                                             else
                                             {
                                                this.i23 = this.i21;
                                                this.i24 = this.i12;
                                             }
                                          }
                                          else
                                          {
                                             this.i16 = 0 - this.i12;
                                             if(this.i12 == 0)
                                             {
                                                this.i16 = 2;
                                                this.i17 = li32(mstate.ebp + -2421);
                                                this.i22 = this.i3;
                                             }
                                             else
                                             {
                                                this.i17 = cmodule.Box2D.___tens_D2A;
                                                this.i22 = this.i16 & 0x0F;
                                                this.i22 <<= 3;
                                                this.i17 += this.i22;
                                                this.f0 = lf64(this.i17);
                                                this.f0 = this.f1 * this.f0;
                                                sf64(this.f0,mstate.ebp + -1840);
                                                this.i17 = li32(mstate.ebp + -1840);
                                                this.i22 = li32(mstate.ebp + -1836);
                                                this.i23 = this.i16 >> 4;
                                                if(uint(this.i16) >= uint(16))
                                                {
                                                   this.i16 = cmodule.Box2D.___bigtens_D2A;
                                                   this.i24 = 2;
                                                   while(true)
                                                   {
                                                      this.i25 = this.i16;
                                                      this.i26 = this.i23 & 1;
                                                      if(this.i26 != 0)
                                                      {
                                                         si32(this.i17,mstate.ebp + -1848);
                                                         si32(this.i22,mstate.ebp + -1844);
                                                         this.f0 = lf64(this.i25);
                                                         this.f2 = lf64(mstate.ebp + -1848);
                                                         this.f0 = this.f2 * this.f0;
                                                         sf64(this.f0,mstate.ebp + -1856);
                                                         this.i17 = li32(mstate.ebp + -1856);
                                                         this.i22 = li32(mstate.ebp + -1852);
                                                         this.i24 += 1;
                                                      }
                                                      this.i16 += 8;
                                                      this.i25 = this.i23 >> 1;
                                                      if(uint(this.i23) < uint(2))
                                                      {
                                                         break;
                                                      }
                                                      this.i23 = this.i25;
                                                   }
                                                   this.i16 = this.i24;
                                                }
                                                else
                                                {
                                                   this.i16 = 2;
                                                }
                                             }
                                             this.i23 = li32(mstate.ebp + -2376);
                                             if(this.i23 != 0)
                                             {
                                                §§goto(addr7628);
                                             }
                                             else
                                             {
                                                this.i23 = this.i21;
                                                this.i24 = this.i12;
                                             }
                                          }
                                          si32(this.i17,mstate.ebp + -1880);
                                          si32(this.i22,mstate.ebp + -1876);
                                          this.f0 = lf64(mstate.ebp + -1880);
                                          this.f2 = Number(this.i16);
                                          this.f2 *= this.f0;
                                          this.f2 += 7;
                                          sf64(this.f2,mstate.ebp + -1888);
                                          this.i16 = li32(mstate.ebp + -1884);
                                          this.i25 = li32(mstate.ebp + -1888);
                                          this.i16 += -54525952;
                                          if(this.i23 == 0)
                                          {
                                             si32(this.i25,mstate.ebp + -1896);
                                             si32(this.i16,mstate.ebp + -1892);
                                             this.f2 = lf64(mstate.ebp + -1896);
                                             this.f0 += -5;
                                             if(this.f0 > this.f2)
                                             {
                                                this.i3 = 0;
                                                this.i1 = this.i24;
                                                this.i9 = this.i11;
                                                this.i11 = this.i3;
                                                break loop118;
                                             }
                                             this.f2 = -this.f2;
                                             if(this.f0 < this.f2)
                                             {
                                                break loop115;
                                             }
                                             break;
                                          }
                                          this.i26 = li32(mstate.ebp + -2430);
                                          if(this.i26 == 0)
                                          {
                                             this.i26 = cmodule.Box2D.___tens_D2A;
                                             this.i27 = this.i23 << 3;
                                             si32(this.i25,mstate.ebp + -1928);
                                             si32(this.i16,mstate.ebp + -1924);
                                             this.i16 = this.i27 + this.i26;
                                             this.f0 = lf64(mstate.ebp + -1928);
                                             this.f2 = lf64(this.i16 + -8);
                                             this.i16 = 0;
                                             this.f0 *= this.f2;
                                             while(true)
                                             {
                                                this.f2 = 0;
                                                si32(this.i17,mstate.ebp + -1936);
                                                si32(this.i22,mstate.ebp + -1932);
                                                this.f3 = lf64(mstate.ebp + -1936);
                                                this.i17 = int(this.f3);
                                                this.f4 = Number(this.i17);
                                                this.i17 += 48;
                                                this.f3 -= this.f4;
                                                this.i22 = this.i16 + 1;
                                                this.i25 = this.i9 + this.i16;
                                                si8(this.i17,this.i25);
                                                this.i23 = this.f3 == this.f2 ? this.i22 : this.i23;
                                                if(this.i22 == this.i23)
                                                {
                                                   break;
                                                }
                                                this.f2 = this.f3 * 10;
                                                sf64(this.f2,mstate.ebp + -1944);
                                                this.i17 = li32(mstate.ebp + -1944);
                                                this.i22 = li32(mstate.ebp + -1940);
                                                this.i16 += 1;
                                             }
                                             this.i16 = li32(mstate.ebp + -2493);
                                             this.i16 += this.i22;
                                             this.f2 = this.f0 + 0.5;
                                             if(this.f3 > this.f2)
                                             {
                                                this.i3 = this.i24;
                                                this.i1 = this.i16;
                                                break loop116;
                                             }
                                             this.f0 = 0.5 - this.f0;
                                             if(this.f3 < this.f0)
                                             {
                                                this.i3 = 0;
                                                do
                                                {
                                                   this.i1 = this.i3 ^ -1;
                                                   this.i1 = this.i22 + this.i1;
                                                   this.i9 = li32(mstate.ebp + -2493);
                                                   this.i1 = this.i9 + this.i1;
                                                   this.i1 = li8(this.i1);
                                                   this.i3 += 1;
                                                }
                                                while(this.i1 == 48);
                                                this.i3 += -1;
                                                this.i3 = this.i22 - this.i3;
                                                this.i1 = li32(mstate.ebp + -2493);
                                                this.i1 += this.i3;
                                                this.i3 = this.i24;
                                                this.i9 = this.i11;
                                                break loop112;
                                             }
                                             break;
                                          }
                                          this.i26 = cmodule.Box2D.___tens_D2A;
                                          this.i27 = this.i23 << 3;
                                          si32(this.i25,mstate.ebp + -1904);
                                          si32(this.i16,mstate.ebp + -1900);
                                          this.i16 = this.i27 + this.i26;
                                          this.f0 = lf64(this.i16 + -8);
                                          this.f2 = lf64(mstate.ebp + -1904);
                                          this.f0 = 0.5 / this.f0;
                                          this.i16 = 0;
                                          this.f0 -= this.f2;
                                          while(true)
                                          {
                                             si32(this.i17,mstate.ebp + -1912);
                                             si32(this.i22,mstate.ebp + -1908);
                                             this.f2 = lf64(mstate.ebp + -1912);
                                             this.i17 = int(this.f2);
                                             this.f3 = Number(this.i17);
                                             this.i17 += 48;
                                             this.i22 = this.i9 + this.i16;
                                             si8(this.i17,this.i22);
                                             this.f2 -= this.f3;
                                             this.i17 = this.i16 + 1;
                                             if(this.f2 < this.f0)
                                             {
                                                this.i3 = li32(mstate.ebp + -2493);
                                                this.i1 = this.i3 + this.i17;
                                                this.i3 = this.i24;
                                                this.i9 = this.i11;
                                                break loop112;
                                             }
                                             this.f3 = 1 - this.f2;
                                             if(this.f3 < this.f0)
                                             {
                                                this.i3 = li32(mstate.ebp + -2493);
                                                this.i1 = this.i3 + this.i17;
                                                this.i3 = this.i24;
                                                break loop116;
                                             }
                                             if(this.i17 >= this.i23)
                                             {
                                                break loop119;
                                             }
                                             this.f2 *= 10;
                                             sf64(this.f2,mstate.ebp + -1920);
                                             this.i17 = li32(mstate.ebp + -1920);
                                             this.i22 = li32(mstate.ebp + -1916);
                                             this.i16 += 1;
                                             this.f0 *= 10;
                                          }
                                          §§goto(addr12ab3);
                                       }
                                    }
                                    this.i16 = li32(mstate.ebp + -4);
                                    if(this.i16 >= 0)
                                    {
                                       if(this.i12 <= 14)
                                       {
                                          this.i1 = cmodule.Box2D.___tens_D2A;
                                          this.i14 = this.i12 << 3;
                                          this.i1 += this.i14;
                                          this.f0 = lf64(this.i1);
                                          this.i1 = li32(mstate.ebp + -2394);
                                          if(this.i1 <= -1)
                                          {
                                             if(this.i21 < 1)
                                             {
                                                if(this.i21 >= 0)
                                                {
                                                   this.f0 *= 5;
                                                   if(this.f1 > this.f0)
                                                   {
                                                      this.i3 = 0;
                                                      this.i1 = this.i12;
                                                      this.i9 = this.i11;
                                                      this.i11 = this.i3;
                                                      addr7838:
                                                      break;
                                                   }
                                                }
                                                break loop115;
                                             }
                                          }
                                          this.i1 = 0;
                                          this.i14 = li32(mstate.ebp + -2421);
                                          while(true)
                                          {
                                             this.f1 = 0;
                                             si32(this.i14,mstate.ebp + -1952);
                                             si32(this.i3,mstate.ebp + -1948);
                                             this.f2 = lf64(mstate.ebp + -1952);
                                             this.f3 = this.f2 / this.f0;
                                             this.i3 = int(this.f3);
                                             this.f3 = Number(this.i3);
                                             this.f3 *= this.f0;
                                             this.f2 -= this.f3;
                                             this.i14 = this.i3 + -1;
                                             this.i3 = this.f2 >= this.f1 ? this.i3 : this.i14;
                                             this.f3 = this.f2 + this.f0;
                                             this.i14 = this.i3 + 48;
                                             this.i16 = this.i9 + this.i1;
                                             si8(this.i14,this.i16);
                                             this.f2 = this.f2 < this.f1 ? this.f3 : this.f2;
                                             this.i14 = this.i1 + 1;
                                             if(this.f2 == this.f1)
                                             {
                                                this.i3 = li32(mstate.ebp + -2493);
                                                this.i1 = this.i3 + this.i14;
                                                this.i3 = this.i12;
                                                this.i9 = this.i11;
                                                break loop112;
                                             }
                                             if(this.i14 != this.i21)
                                             {
                                                continue;
                                             }
                                             this.f2 += this.f2;
                                             this.i1 = li32(mstate.ebp + -2493);
                                             this.i1 += this.i14;
                                             if(this.f2 <= this.f0)
                                             {
                                                if(this.f2 == this.f0)
                                                {
                                                   this.i3 &= 1;
                                                   if(this.i3 != 0)
                                                   {
                                                      addr7ebd:
                                                      this.i3 = this.i12;
                                                      break loop116;
                                                   }
                                                }
                                                this.i3 = this.i12;
                                                this.i9 = this.i11;
                                                break loop112;
                                             }
                                             §§goto(addr7ebd);
                                             this.f1 = this.f2 * 10;
                                             sf64(this.f1,mstate.ebp + -1960);
                                             this.i3 = li32(mstate.ebp + -1960);
                                             this.i16 = li32(mstate.ebp + -1956);
                                             this.i1 += 1;
                                             this.i14 = this.i3;
                                             this.i3 = this.i16;
                                          }
                                          §§goto(addr12ab3);
                                       }
                                    }
                                    this.i17 = li32(mstate.ebp + -2430);
                                    loop121:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          if(this.i17 == 0)
                                          {
                                             this.i16 = 0;
                                             this.i17 = this.i14;
                                          }
                                          else
                                          {
                                             this.i17 = li32(mstate.ebp + -2358);
                                             this.i17 ^= 1;
                                             this.i17 &= 1;
                                             if(this.i17 == 0)
                                             {
                                                this.i16 += 1075;
                                                this.i17 = li32(cmodule.Box2D._freelist + 4);
                                                this.i19 = this.i16 + this.i19;
                                                this.i16 += this.i14;
                                                if(this.i17 != 0)
                                                {
                                                   this.i22 = li32(this.i17);
                                                   si32(this.i22,cmodule.Box2D._freelist + 4);
                                                }
                                                else
                                                {
                                                   this.i17 = cmodule.Box2D._private_mem;
                                                   this.i22 = li32(cmodule.Box2D._pmem_next);
                                                   this.i17 = this.i22 - this.i17;
                                                   this.i17 >>= 3;
                                                   this.i17 += 4;
                                                   if(uint(this.i17) > uint(288))
                                                   {
                                                      this.i17 = 32;
                                                      mstate.esp -= 4;
                                                      si32(this.i17,mstate.esp);
                                                      state = 36;
                                                      mstate.esp -= 4;
                                                      FSM_malloc.start();
                                                      return;
                                                   }
                                                   this.i17 = 1;
                                                   this.i24 = this.i22 + 32;
                                                   si32(this.i24,cmodule.Box2D._pmem_next);
                                                   si32(this.i17,this.i22 + 4);
                                                   this.i17 = 2;
                                                   si32(this.i17,this.i22 + 8);
                                                   this.i17 = this.i22;
                                                }
                                                addr82db:
                                                this.i22 = 0;
                                                si32(this.i22,this.i17 + 12);
                                                this.i22 = 1;
                                                si32(this.i22,this.i17 + 20);
                                                si32(this.i22,this.i17 + 16);
                                                if(this.i19 >= 1)
                                                {
                                                   if(this.i14 > 0)
                                                   {
                                                      break;
                                                   }
                                                }
                                                break loop121;
                                             }
                                             addr8497:
                                             this.i16 = li32(mstate.ebp + -8);
                                             this.i17 = li32(cmodule.Box2D._freelist + 4);
                                             this.i16 = 54 - this.i16;
                                             this.i19 = this.i16 + this.i19;
                                             this.i16 += this.i14;
                                             if(this.i17 != 0)
                                             {
                                                this.i22 = li32(this.i17);
                                                si32(this.i22,cmodule.Box2D._freelist + 4);
                                             }
                                             else
                                             {
                                                this.i17 = cmodule.Box2D._private_mem;
                                                this.i22 = li32(cmodule.Box2D._pmem_next);
                                                this.i17 = this.i22 - this.i17;
                                                this.i17 >>= 3;
                                                this.i17 += 4;
                                                if(uint(this.i17) > uint(288))
                                                {
                                                   this.i17 = 32;
                                                   mstate.esp -= 4;
                                                   si32(this.i17,mstate.esp);
                                                   state = 37;
                                                   mstate.esp -= 4;
                                                   FSM_malloc.start();
                                                   return;
                                                }
                                                this.i17 = 1;
                                                this.i24 = this.i22 + 32;
                                                si32(this.i24,cmodule.Box2D._pmem_next);
                                                si32(this.i17,this.i22 + 4);
                                                this.i17 = 2;
                                                si32(this.i17,this.i22 + 8);
                                                this.i17 = this.i22;
                                             }
                                             this.i22 = this.i17;
                                             this.i17 = 0;
                                             si32(this.i17,this.i22 + 12);
                                             this.i17 = 1;
                                             si32(this.i17,this.i22 + 20);
                                             si32(this.i17,this.i22 + 16);
                                             this.i17 = this.i16;
                                             this.i16 = this.i22;
                                          }
                                          this.i22 = this.i17;
                                          this.i17 = this.i16;
                                          if(this.i19 >= 1)
                                          {
                                             if(this.i14 > 0)
                                             {
                                                this.i16 = this.i22;
                                                break;
                                             }
                                          }
                                          this.i16 = this.i22;
                                          break loop121;
                                       }
                                       this.i22 = this.i19 <= this.i14 ? this.i19 : this.i14;
                                       this.i19 -= this.i22;
                                       this.i14 -= this.i22;
                                       this.i16 -= this.i22;
                                       break;
                                    }
                                    if(this.i20 > 0)
                                    {
                                       this.i22 = li32(mstate.ebp + -2430);
                                       if(this.i22 == 0)
                                       {
                                          mstate.esp -= 8;
                                          si32(this.i11,mstate.esp);
                                          si32(this.i20,mstate.esp + 4);
                                          state = 41;
                                          mstate.esp -= 4;
                                          FSM___pow5mult_D2A.start();
                                          return;
                                       }
                                       if(this.i20 >= 1)
                                       {
                                          mstate.esp -= 8;
                                          si32(this.i17,mstate.esp);
                                          si32(this.i20,mstate.esp + 4);
                                          state = 38;
                                          mstate.esp -= 4;
                                          FSM___pow5mult_D2A.start();
                                          return;
                                       }
                                    }
                                    §§goto(addr889f);
                                 }
                                 this.i12 = 49;
                                 this.i14 = li32(mstate.ebp + -2493);
                                 si8(this.i12,this.i14);
                                 this.i12 = 0;
                                 this.i1 += 1;
                                 this.i14 += 1;
                                 this.i16 = this.i11;
                                 this.i11 = this.i14;
                                 break;
                              }
                              this.i14 = this.i16;
                              this.i16 = this.i11;
                              if(this.i3 != 0)
                              {
                                 this.i11 = cmodule.Box2D._freelist;
                                 this.i19 = li32(this.i3 + 4);
                                 this.i19 <<= 2;
                                 this.i11 += this.i19;
                                 this.i19 = li32(this.i11);
                                 si32(this.i19,this.i3);
                                 si32(this.i3,this.i11);
                              }
                              if(this.i14 != 0)
                              {
                                 this.i11 = this.i1;
                                 this.i1 = this.i9;
                                 this.i3 = this.i12;
                                 this.i9 = this.i14;
                                 this.i12 = this.i16;
                                 break loop113;
                              }
                              this.i3 = this.i1;
                              this.i1 = this.i16;
                              break loop112;
                           }
                           this.i9 = 0;
                           while(true)
                           {
                              this.i14 = this.i9;
                              this.i9 = this.i14 ^ -1;
                              this.i9 = this.i1 + this.i9;
                              this.i12 = li8(this.i9);
                              if(this.i12 != 57)
                              {
                                 this.i12 += 1;
                                 si8(this.i12,this.i9);
                                 this.i1 -= this.i14;
                                 this.i9 = this.i11;
                                 break loop112;
                              }
                              this.i14 += 1;
                              this.i12 = li32(mstate.ebp + -2493);
                              if(this.i9 == this.i12)
                              {
                                 this.i12 = 49;
                                 this.i14 += -1;
                                 si8(this.i12,this.i9);
                                 this.i1 -= this.i14;
                                 if(this.i11 != 0)
                                 {
                                    this.i9 = cmodule.Box2D._freelist;
                                    this.i14 = li32(this.i11 + 4);
                                    this.i14 <<= 2;
                                    this.i9 += this.i14;
                                    this.i14 = li32(this.i9);
                                    si32(this.i14,this.i11);
                                    si32(this.i11,this.i9);
                                 }
                                 this.i9 = 0;
                                 si8(this.i9,this.i1);
                                 this.i3 += 2;
                                 break;
                              }
                              this.i9 = this.i14;
                           }
                           §§goto(addra8b4);
                        }
                        this.i3 = 0;
                        this.i1 = this.i11;
                        this.i9 = this.i3;
                        break;
                     }
                     this.i11 = li32(mstate.ebp + -2394);
                     this.i11 ^= -1;
                     if(this.i3 != 0)
                     {
                        this.i12 = cmodule.Box2D._freelist;
                        this.i14 = li32(this.i3 + 4);
                        this.i14 <<= 2;
                        this.i12 += this.i14;
                        this.i14 = li32(this.i12);
                        si32(this.i14,this.i3);
                        si32(this.i3,this.i12);
                     }
                     if(this.i9 != 0)
                     {
                        this.i3 = 0;
                        this.i12 = li32(mstate.ebp + -2493);
                        break;
                     }
                     this.i3 = this.i11;
                     this.i9 = this.i1;
                     this.i1 = li32(mstate.ebp + -2493);
                     break loop112;
                  }
                  if(this.i3 != this.i9)
                  {
                     if(this.i3 != 0)
                     {
                        this.i14 = cmodule.Box2D._freelist;
                        this.i16 = li32(this.i3 + 4);
                        this.i16 <<= 2;
                        this.i14 += this.i16;
                        this.i16 = li32(this.i14);
                        si32(this.i16,this.i3);
                        si32(this.i3,this.i14);
                     }
                  }
                  if(this.i9 == 0)
                  {
                     this.i3 = this.i11;
                     this.i9 = this.i1;
                     this.i1 = this.i12;
                     break;
                  }
                  this.i3 = cmodule.Box2D._freelist;
                  this.i14 = li32(this.i9 + 4);
                  this.i14 <<= 2;
                  this.i3 += this.i14;
                  this.i14 = li32(this.i3);
                  si32(this.i14,this.i9);
                  si32(this.i9,this.i3);
                  this.i3 = this.i11;
                  this.i9 = this.i1;
                  this.i1 = this.i12;
                  break;
               }
               if(this.i9 != 0)
               {
                  this.i11 = cmodule.Box2D._freelist;
                  this.i12 = li32(this.i9 + 4);
                  this.i12 <<= 2;
                  this.i11 += this.i12;
                  this.i12 = li32(this.i11);
                  si32(this.i12,this.i9);
                  si32(this.i9,this.i11);
               }
               this.i9 = 0;
               si8(this.i9,this.i1);
               this.i3 += 1;
               addra8b4:
               si32(this.i3,mstate.ebp + -1744);
               si32(this.i1,mstate.ebp + -1740);
               this.i3 = li32(mstate.ebp + -2349);
               this.i1 = li32(mstate.ebp + -2493);
               §§goto(addra8fc);
            case 36:
               this.i17 = mstate.eax;
               mstate.esp += 4;
               this.i22 = 1;
               si32(this.i22,this.i17 + 4);
               this.i22 = 2;
               si32(this.i22,this.i17 + 8);
               §§goto(addr82db);
            case 37:
               this.i17 = mstate.eax;
               mstate.esp += 4;
               this.i22 = 1;
               si32(this.i22,this.i17 + 4);
               this.i22 = 2;
               si32(this.i22,this.i17 + 8);
               §§goto(addr8497);
            case 39:
               this.i20 = mstate.eax;
               mstate.esp += 8;
               if(this.i11 != 0)
               {
                  this.i22 = cmodule.Box2D._freelist;
                  this.i24 = li32(this.i11 + 4);
                  this.i24 <<= 2;
                  this.i22 += this.i24;
                  this.i24 = li32(this.i22);
                  si32(this.i24,this.i11);
                  si32(this.i11,this.i22);
               }
               this.i11 = li32(cmodule.Box2D._freelist + 4);
               if(this.i11 != 0)
               {
                  this.i22 = li32(this.i11);
                  si32(this.i22,cmodule.Box2D._freelist + 4);
               }
               else
               {
                  this.i11 = cmodule.Box2D._private_mem;
                  this.i22 = li32(cmodule.Box2D._pmem_next);
                  this.i11 = this.i22 - this.i11;
                  this.i11 >>= 3;
                  this.i11 += 4;
                  if(uint(this.i11) > uint(288))
                  {
                     this.i11 = 32;
                     mstate.esp -= 4;
                     si32(this.i11,mstate.esp);
                     state = 40;
                     mstate.esp -= 4;
                     FSM_malloc.start();
                     return;
                  }
                  this.i11 = 1;
                  this.i24 = this.i22 + 32;
                  si32(this.i24,cmodule.Box2D._pmem_next);
                  si32(this.i11,this.i22 + 4);
                  this.i11 = 2;
                  si32(this.i11,this.i22 + 8);
                  this.i11 = this.i22;
               }
               addr87e9:
               this.i22 = 0;
               si32(this.i22,this.i11 + 12);
               this.i22 = 1;
               si32(this.i22,this.i11 + 20);
               si32(this.i22,this.i11 + 16);
               this.i22 = li32(mstate.ebp + -2412);
               if(this.i22 <= 0)
               {
                  §§goto(addr8ac6);
               }
               else
               {
                  §§goto(addr8a53);
               }
            case 40:
               this.i11 = mstate.eax;
               mstate.esp += 4;
               this.i22 = 1;
               si32(this.i22,this.i11 + 4);
               this.i22 = 2;
               si32(this.i22,this.i11 + 8);
               §§goto(addr87e9);
            case 41:
               this.i11 = mstate.eax;
               mstate.esp += 8;
               addr889f:
               this.i20 = li32(cmodule.Box2D._freelist + 4);
               if(this.i20 != 0)
               {
                  this.i22 = li32(this.i20);
                  si32(this.i22,cmodule.Box2D._freelist + 4);
               }
               else
               {
                  this.i20 = cmodule.Box2D._private_mem;
                  this.i22 = li32(cmodule.Box2D._pmem_next);
                  this.i20 = this.i22 - this.i20;
                  this.i20 >>= 3;
                  this.i20 += 4;
                  if(uint(this.i20) > uint(288))
                  {
                     this.i20 = 32;
                     mstate.esp -= 4;
                     si32(this.i20,mstate.esp);
                     state = 42;
                     mstate.esp -= 4;
                     FSM_malloc.start();
                     return;
                  }
                  this.i20 = 1;
                  this.i24 = this.i22 + 32;
                  si32(this.i24,cmodule.Box2D._pmem_next);
                  si32(this.i20,this.i22 + 4);
                  this.i20 = 2;
                  si32(this.i20,this.i22 + 8);
                  this.i20 = this.i22;
               }
               §§goto(addr89da);
            case 42:
               this.i20 = mstate.eax;
               mstate.esp += 4;
               this.i22 = 1;
               si32(this.i22,this.i20 + 4);
               this.i22 = 2;
               si32(this.i22,this.i20 + 8);
               addr89da:
               this.i22 = this.i20;
               this.i20 = 0;
               si32(this.i20,this.i22 + 12);
               this.i20 = 1;
               si32(this.i20,this.i22 + 20);
               si32(this.i20,this.i22 + 16);
               this.i20 = li32(mstate.ebp + -2412);
               if(this.i20 > 0)
               {
                  this.i20 = this.i11;
                  this.i11 = this.i22;
                  addr8a53:
                  mstate.esp -= 8;
                  si32(this.i11,mstate.esp);
                  this.i11 = li32(mstate.ebp + -2412);
                  si32(this.i11,mstate.esp + 4);
                  state = 43;
                  mstate.esp -= 4;
                  FSM___pow5mult_D2A.start();
                  return;
               }
               this.i20 = this.i11;
               this.i11 = this.i22;
               this.i22 = this.i20;
               this.i24 = li32(mstate.ebp + -2430);
               while(true)
               {
                  if(this.i24 == 0)
                  {
                     if(this.i1 >= 2)
                     {
                        break;
                     }
                  }
                  this.i24 = li32(mstate.ebp + -2421);
                  if(this.i24 == 0)
                  {
                     this.i24 = this.i3 & 0x0FFFFF;
                     if(this.i24 == 0)
                     {
                        this.i3 &= 2145386496;
                        if(this.i3 != 0)
                        {
                           this.i3 = 1;
                           this.i19 += 1;
                           this.i16 += 1;
                           §§goto(addr8b6f);
                        }
                     }
                  }
                  break;
               }
               this.i3 = 0;
               addr8b6f:
               this.i24 = li32(mstate.ebp + -2412);
               if(this.i24 == 0)
               {
                  this.i24 = 1;
               }
               else
               {
                  this.i24 = li32(this.i11 + 16);
                  this.i24 <<= 2;
                  this.i24 += this.i11;
                  this.i24 = li32(this.i24 + 16);
                  this.i20 = uint(this.i24) < uint(65536) ? 16 : 0;
                  this.i24 <<= this.i20;
                  this.i23 = uint(this.i24) < uint(16777216) ? 8 : 0;
                  this.i24 <<= this.i23;
                  this.i25 = uint(this.i24) < uint(268435456) ? 4 : 0;
                  this.i20 = this.i23 | this.i20;
                  this.i24 <<= this.i25;
                  this.i23 = uint(this.i24) < uint(1073741824) ? 2 : 0;
                  this.i20 |= this.i25;
                  this.i20 |= this.i23;
                  this.i24 <<= this.i23;
                  if(this.i24 <= -1)
                  {
                     this.i24 = this.i20;
                  }
                  else
                  {
                     this.i24 &= 1073741824;
                     this.i20 += 1;
                     this.i24 = this.i24 == 0 ? 32 : this.i20;
                  }
                  this.i24 = 32 - this.i24;
               }
               this.i24 += this.i19;
               this.i24 &= 31;
               this.i20 = 32 - this.i24;
               this.i24 = this.i24 == 0 ? this.i24 : this.i20;
               if(this.i24 >= 5)
               {
                  this.i24 += -4;
                  this.i19 = this.i24 + this.i19;
                  this.i14 = this.i24 + this.i14;
                  this.i16 = this.i24 + this.i16;
                  if(this.i16 <= 0)
                  {
                     this.i16 = this.i19;
                     this.i19 = this.i22;
                     §§goto(addr8e71);
                  }
               }
               else
               {
                  if(this.i24 < 4)
                  {
                     this.i24 += 28;
                     this.i19 = this.i24 + this.i19;
                     this.i14 = this.i24 + this.i14;
                     this.i16 = this.i24 + this.i16;
                  }
                  if(this.i16 <= 0)
                  {
                     this.i16 = this.i19;
                     this.i19 = this.i22;
                     §§goto(addr8e71);
                  }
               }
               mstate.esp -= 8;
               si32(this.i22,mstate.esp);
               si32(this.i16,mstate.esp + 4);
               state = 44;
               mstate.esp -= 4;
               FSM___lshift_D2A.start();
               return;
            case 43:
               this.i11 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr8ac6);
            case 44:
               this.i22 = mstate.eax;
               mstate.esp += 8;
               this.i16 = this.i19;
               this.i19 = this.i22;
               addr8e71:
               if(this.i16 > 0)
               {
                  mstate.esp -= 8;
                  si32(this.i11,mstate.esp);
                  si32(this.i16,mstate.esp + 4);
                  state = 45;
                  mstate.esp -= 4;
                  FSM___lshift_D2A.start();
                  return;
               }
               this.i16 = li32(mstate.ebp + -2376);
               if(this.i16 != 0)
               {
                  this.i16 = li32(this.i19 + 16);
                  this.i22 = li32(this.i11 + 16);
                  this.i24 = this.i16 - this.i22;
                  if(this.i16 != this.i22)
                  {
                     this.i16 = this.i24;
                  }
                  else
                  {
                     this.i16 = 0;
                     while(true)
                     {
                        this.i24 = this.i16 ^ -1;
                        this.i24 = this.i22 + this.i24;
                        this.i20 = this.i24 << 2;
                        this.i23 = this.i19 + this.i20;
                        this.i20 = this.i11 + this.i20;
                        this.i23 = li32(this.i23 + 20);
                        this.i20 = li32(this.i20 + 20);
                        if(this.i23 != this.i20)
                        {
                           this.i16 = uint(this.i23) < uint(this.i20) ? -1 : 1;
                           break;
                        }
                        this.i16 += 1;
                        if(this.i24 <= 0)
                        {
                           this.i16 = 0;
                           break;
                        }
                     }
                  }
                  if(this.i16 <= -1)
                  {
                     this.i16 = 10;
                     mstate.esp -= 12;
                     this.i22 = 0;
                     si32(this.i19,mstate.esp);
                     si32(this.i16,mstate.esp + 4);
                     si32(this.i22,mstate.esp + 8);
                     state = 46;
                     mstate.esp -= 4;
                     FSM___multadd_D2A.start();
                     return;
                  }
               }
               this.i16 = this.i21;
               si32(this.i12,mstate.ebp + -2484);
               this.i12 = this.i19;
               this.i19 = this.i17;
               if(this.i16 <= 0)
               {
                  if(this.i1 != 3)
                  {
                     if(this.i1 != 5)
                     {
                        §§goto(addr9427);
                     }
                  }
                  if(this.i16 <= -1)
                  {
                     this.i1 = this.i12;
                     this.i9 = this.i19;
                     this.i3 = this.i11;
                     break loop114;
                  }
                  this.i3 = 0;
                  mstate.esp -= 12;
                  this.i1 = 5;
                  si32(this.i11,mstate.esp);
                  si32(this.i1,mstate.esp + 4);
                  si32(this.i3,mstate.esp + 8);
                  state = 48;
                  mstate.esp -= 4;
                  FSM___multadd_D2A.start();
                  return;
               }
               addr9427:
               this.i1 = li32(mstate.ebp + -2430);
               if(this.i1 == 0)
               {
                  this.i3 = 0;
                  this.i1 = this.i12;
                  addr945c:
                  this.i12 = this.i1;
                  mstate.esp -= 8;
                  si32(this.i12,mstate.esp);
                  si32(this.i11,mstate.esp + 4);
                  mstate.esp -= 4;
                  FSM___quorem_D2A.start();
                  §§goto(addr94a3);
               }
               if(this.i14 <= 0)
               {
                  this.i1 = this.i19;
                  §§goto(addr9632);
               }
               mstate.esp -= 8;
               si32(this.i19,mstate.esp);
               si32(this.i14,mstate.esp + 4);
               state = 51;
               mstate.esp -= 4;
               FSM___lshift_D2A.start();
               return;
            case 45:
               this.i11 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr8ee1);
            case 46:
               this.i19 = mstate.eax;
               mstate.esp += 12;
               this.i12 += -1;
               this.i16 = li32(mstate.ebp + -2430);
               if(this.i16 != 0)
               {
                  this.i16 = 0;
                  mstate.esp -= 12;
                  this.i22 = 10;
                  si32(this.i17,mstate.esp);
                  si32(this.i22,mstate.esp + 4);
                  si32(this.i16,mstate.esp + 8);
                  state = 47;
                  mstate.esp -= 4;
                  FSM___multadd_D2A.start();
                  return;
               }
               this.i16 = li32(mstate.ebp + -2403);
               §§goto(addr9153);
               break;
            case 47:
               this.i17 = mstate.eax;
               mstate.esp += 12;
               this.i16 = li32(mstate.ebp + -2403);
               §§goto(addr9153);
            case 48:
               this.i3 = mstate.eax;
               mstate.esp += 12;
               this.i1 = li32(this.i12 + 16);
               this.i9 = li32(this.i3 + 16);
               this.i11 = this.i1 - this.i9;
               if(this.i1 != this.i9)
               {
                  this.i1 = this.i11;
               }
               else
               {
                  this.i1 = 0;
                  while(true)
                  {
                     this.i11 = this.i1 ^ -1;
                     this.i11 = this.i9 + this.i11;
                     this.i14 = this.i11 << 2;
                     this.i16 = this.i12 + this.i14;
                     this.i14 = this.i3 + this.i14;
                     this.i16 = li32(this.i16 + 20);
                     this.i14 = li32(this.i14 + 20);
                     if(this.i16 != this.i14)
                     {
                        this.i1 = uint(this.i16) < uint(this.i14) ? -1 : 1;
                        break;
                     }
                     this.i1 += 1;
                     if(this.i11 <= 0)
                     {
                        this.i1 = 0;
                        break;
                     }
                  }
               }
               if(this.i1 < 1)
               {
                  this.i1 = this.i12;
                  this.i9 = this.i19;
                  break loop114;
               }
               this.i1 = li32(mstate.ebp + -2484);
               this.i9 = this.i12;
               this.i11 = this.i19;
               §§goto(addr7838);
               break;
            case 49:
               addr94a3:
               this.i1 = mstate.eax;
               mstate.esp += 8;
               this.i1 += 48;
               this.i14 = this.i9 + this.i3;
               si8(this.i1,this.i14);
               this.i14 = li32(this.i12 + 20);
               this.i17 = this.i3 + 1;
               if(this.i14 == 0)
               {
                  this.i14 = li32(this.i12 + 16);
                  if(this.i14 < 2)
                  {
                     this.i3 = 0;
                     this.i1 = li32(mstate.ebp + -2493);
                     this.i14 = this.i1 + this.i17;
                     this.i1 = li32(mstate.ebp + -2484);
                     this.i9 = this.i12;
                     this.i12 = this.i3;
                     this.i16 = this.i19;
                     this.i3 = this.i11;
                     this.i11 = this.i14;
                     break loop117;
                  }
               }
               if(this.i17 < this.i16)
               {
                  this.i1 = 0;
                  mstate.esp -= 12;
                  this.i14 = 10;
                  si32(this.i12,mstate.esp);
                  si32(this.i14,mstate.esp + 4);
                  si32(this.i1,mstate.esp + 8);
                  state = 50;
                  mstate.esp -= 4;
                  FSM___multadd_D2A.start();
                  return;
               }
               addra25c:
               this.i3 = 0;
               this.i9 = li32(mstate.ebp + -2493);
               this.i9 += this.i17;
               this.i14 = this.i3;
               this.i3 = this.i19;
               this.i16 = 1;
               mstate.esp -= 8;
               si32(this.i12,mstate.esp);
               si32(this.i16,mstate.esp + 4);
               state = 61;
               mstate.esp -= 4;
               FSM___lshift_D2A.start();
               return;
            case 50:
               this.i1 = mstate.eax;
               mstate.esp += 12;
               this.i3 += 1;
               §§goto(addr945c);
            case 55:
               this.i20 = mstate.eax;
               mstate.esp += 8;
               this.i21 = li32(this.i20 + 12);
               if(this.i21 != 0)
               {
                  this.i21 = 1;
               }
               else
               {
                  this.i21 = li32(this.i23);
                  this.i28 = li32(this.i20 + 16);
                  this.i29 = this.i21 - this.i28;
                  if(this.i21 != this.i28)
                  {
                     this.i21 = this.i29;
                  }
                  else
                  {
                     this.i21 = 0;
                     while(true)
                     {
                        this.i29 = this.i21 ^ -1;
                        this.i29 = this.i28 + this.i29;
                        this.i30 = this.i29 << 2;
                        this.i31 = this.i12 + this.i30;
                        this.i30 = this.i20 + this.i30;
                        this.i31 = li32(this.i31 + 20);
                        this.i30 = li32(this.i30 + 20);
                        if(this.i31 != this.i30)
                        {
                           this.i21 = uint(this.i31) < uint(this.i30) ? -1 : 1;
                           break;
                        }
                        this.i21 += 1;
                        if(this.i29 <= 0)
                        {
                           this.i21 = 0;
                           break;
                        }
                     }
                  }
               }
               if(this.i20 != 0)
               {
                  this.i28 = cmodule.Box2D._freelist;
                  this.i29 = li32(this.i20 + 4);
                  this.i29 <<= 2;
                  this.i28 += this.i29;
                  this.i29 = li32(this.i28);
                  si32(this.i29,this.i20);
                  si32(this.i20,this.i28);
               }
               while(true)
               {
                  if(this.i21 == 0)
                  {
                     this.i20 = this.i19 | this.i14;
                     if(this.i20 == 0)
                     {
                        if(this.i25 == 57)
                        {
                           break;
                        }
                        this.i1 += 49;
                        this.i1 = this.i24 > 0 ? this.i1 : this.i25;
                        si8(this.i1,this.i26);
                        this.i1 = li32(mstate.ebp + -2493);
                        this.i14 = this.i1 + this.i27;
                        this.i1 = li32(mstate.ebp + -2484);
                        this.i9 = this.i12;
                        this.i12 = this.i22;
                        this.i16 = this.i3;
                        this.i3 = this.i11;
                        this.i11 = this.i14;
                        break loop117;
                     }
                  }
                  if(this.i24 >= 0)
                  {
                     if(this.i24 == 0)
                     {
                        this.i24 = this.i19 | this.i14;
                        if(this.i24 == 0)
                        {
                           §§goto(addr9bee);
                        }
                     }
                     if(this.i21 >= 1)
                     {
                        if(this.i25 != 57)
                        {
                           this.i1 = this.i25 + 1;
                           si8(this.i1,this.i26);
                           this.i1 = li32(mstate.ebp + -2493);
                           this.i14 = this.i1 + this.i27;
                           this.i1 = li32(mstate.ebp + -2484);
                           this.i9 = this.i12;
                           this.i12 = this.i22;
                           this.i16 = this.i3;
                           this.i3 = this.i11;
                           this.i11 = this.i14;
                           break loop117;
                        }
                        break;
                     }
                     si8(this.i25,this.i26);
                     if(this.i27 != this.i16)
                     {
                        this.i1 = 0;
                        mstate.esp -= 12;
                        this.i24 = 10;
                        si32(this.i12,mstate.esp);
                        si32(this.i24,mstate.esp + 4);
                        si32(this.i1,mstate.esp + 8);
                        state = 57;
                        mstate.esp -= 4;
                        FSM___multadd_D2A.start();
                        return;
                     }
                     this.i1 = li32(mstate.ebp + -2493);
                     this.i9 = this.i1 + this.i27;
                     this.i1 = this.i25;
                     this.i14 = this.i22;
                     §§goto(addra25c);
                  }
                  addr9bee:
                  this.i14 = li32(this.i12 + 20);
                  if(this.i14 == 0)
                  {
                     this.i14 = li32(this.i23);
                     if(this.i21 >= 1)
                     {
                        if(this.i14 > 1)
                        {
                           §§goto(addr9c49);
                        }
                     }
                     addr9c2a:
                     this.i1 = this.i25;
                     this.i9 = this.i12;
                     addr9e20:
                     si8(this.i1,this.i26);
                     this.i1 = li32(mstate.ebp + -2493);
                     this.i14 = this.i1 + this.i27;
                     this.i1 = li32(mstate.ebp + -2484);
                     this.i12 = this.i22;
                     this.i16 = this.i3;
                     this.i3 = this.i11;
                     this.i11 = this.i14;
                     break loop117;
                  }
                  if(this.i21 < 1)
                  {
                     §§goto(addr9c2a);
                  }
                  addr9c49:
                  this.i14 = 1;
                  mstate.esp -= 8;
                  si32(this.i12,mstate.esp);
                  si32(this.i14,mstate.esp + 4);
                  state = 56;
                  mstate.esp -= 4;
                  FSM___lshift_D2A.start();
                  return;
               }
               this.i1 = this.i12;
               addr9f15:
               this.i12 = 57;
               si8(this.i12,this.i26);
               this.i9 += this.i17;
               this.i12 = li32(mstate.ebp + -2493);
               this.i12 += this.i27;
               this.i14 = this.i22;
               addr9f61:
               this.i16 = this.i1;
               this.i19 = this.i12;
               this.i1 = li32(mstate.ebp + -2493);
               if(this.i9 != this.i1)
               {
                  this.i1 = this.i16;
                  this.i12 = this.i14;
                  while(true)
                  {
                     this.i14 = this.i1;
                     this.i19 = this.i9;
                     this.i1 = li8(this.i19 + -1);
                     this.i9 = this.i19 + -1;
                     if(this.i1 != 57)
                     {
                        this.i1 += 1;
                        si8(this.i1,this.i9);
                        this.i1 = li32(mstate.ebp + -2484);
                        this.i9 = this.i14;
                        this.i16 = this.i3;
                        this.i3 = this.i11;
                        this.i11 = this.i19;
                        break loop117;
                     }
                     this.i1 = this.i14;
                     this.i14 = this.i12;
                     this.i12 = this.i19;
                     §§goto(addr9f61);
                     this.i1 = this.i16;
                     this.i12 = this.i14;
                  }
                  break loop23;
                  addra3f0:
               }
               this.i1 = 49;
               si8(this.i1,this.i9);
               this.i1 = li32(mstate.ebp + -2484);
               this.i1 += 1;
               this.i9 = this.i16;
               this.i12 = this.i14;
               this.i16 = this.i3;
               this.i3 = this.i11;
               this.i11 = this.i19;
               break loop117;
            case 56:
               this.i12 = mstate.eax;
               mstate.esp += 8;
               this.i14 = li32(this.i12 + 16);
               this.i16 = li32(this.i11 + 16);
               this.i19 = this.i14 - this.i16;
               if(this.i14 != this.i16)
               {
                  this.i16 = this.i19;
               }
               else
               {
                  this.i14 = 0;
                  while(true)
                  {
                     this.i19 = this.i14 ^ -1;
                     this.i19 = this.i16 + this.i19;
                     this.i21 = this.i19 << 2;
                     this.i24 = this.i12 + this.i21;
                     this.i21 = this.i11 + this.i21;
                     this.i24 = li32(this.i24 + 20);
                     this.i21 = li32(this.i21 + 20);
                     if(this.i24 != this.i21)
                     {
                        this.i14 = uint(this.i24) < uint(this.i21) ? -1 : 1;
                        this.i16 = this.i14;
                        break;
                     }
                     this.i14 += 1;
                     if(this.i19 <= 0)
                     {
                        this.i14 = 0;
                        this.i16 = this.i14;
                        break;
                     }
                  }
               }
               this.i14 = this.i16;
               while(true)
               {
                  if(this.i14 <= 0)
                  {
                     if(this.i14 == 0)
                     {
                        this.i14 = this.i25 & 1;
                        if(this.i14 != 0)
                        {
                           addr9dfe:
                           this.i1 += 49;
                           if(this.i1 != 58)
                           {
                              this.i9 = this.i12;
                              break;
                           }
                           this.i1 = this.i12;
                           §§goto(addr9f15);
                        }
                     }
                     this.i1 = this.i25;
                     this.i9 = this.i12;
                     break;
                  }
                  §§goto(addr9dfe);
               }
               §§goto(addr9e20);
            case 61:
               this.i12 = mstate.eax;
               mstate.esp += 8;
               this.i16 = li32(this.i12 + 16);
               this.i19 = li32(this.i11 + 16);
               this.i17 = this.i16 - this.i19;
               if(this.i16 != this.i19)
               {
                  this.i19 = this.i17;
               }
               else
               {
                  this.i16 = 0;
                  while(true)
                  {
                     this.i17 = this.i16 ^ -1;
                     this.i17 = this.i19 + this.i17;
                     this.i22 = this.i17 << 2;
                     this.i24 = this.i12 + this.i22;
                     this.i22 = this.i11 + this.i22;
                     this.i24 = li32(this.i24 + 20);
                     this.i22 = li32(this.i22 + 20);
                     if(this.i24 != this.i22)
                     {
                        this.i16 = uint(this.i24) < uint(this.i22) ? -1 : 1;
                        this.i19 = this.i16;
                        break;
                     }
                     this.i16 += 1;
                     if(this.i17 <= 0)
                     {
                        this.i16 = 0;
                        this.i19 = this.i16;
                        break;
                     }
                  }
               }
               this.i16 = this.i19;
               if(this.i16 < 1)
               {
                  if(this.i16 == 0)
                  {
                     this.i1 &= 1;
                     if(this.i1 != 0)
                     {
                        addra3dc:
                        this.i1 = this.i12;
                        this.i12 = this.i14;
                        §§goto(addra3f0);
                     }
                  }
                  this.i1 = 0;
                  do
                  {
                     this.i16 = this.i1 ^ -1;
                     this.i16 = this.i9 + this.i16;
                     this.i16 = li8(this.i16);
                     this.i1 += 1;
                  }
                  while(this.i16 == 48);
                  this.i1 += -1;
                  this.i19 = this.i9 - this.i1;
                  this.i1 = li32(mstate.ebp + -2484);
                  this.i9 = this.i12;
                  this.i12 = this.i14;
                  this.i16 = this.i3;
                  this.i3 = this.i11;
                  this.i11 = this.i19;
                  break loop117;
               }
               §§goto(addra3dc);
            case 62:
               this.i10 = mstate.eax;
               mstate.esp += 8;
               §§goto(addrd239);
            case 64:
               §§goto(addrd4ea);
            case 65:
               this.i16 = mstate.eax;
               mstate.esp += 8;
               if(this.i16 == 0)
               {
                  this.i10 = 0;
                  this.i15 = this.i12;
               }
               else
               {
                  this.i17 = cmodule.Box2D._initial_2E_2136;
                  si32(this.i10,mstate.ebp + -196);
                  this.i10 = li32(mstate.ebp + -2061);
                  this.i19 = 128;
                  cmodule.Box2D.memcpy(this.i10,this.i17,this.i19);
                  this.i10 = this.i16;
                  if(this.i15 != 0)
                  {
                     this.i12 = 0;
                     this.i17 = mstate.ebp + -176;
                     this.i19 = li32(mstate.ebp + -196);
                     this.i20 = li32(this.i19);
                     this.i19 += 4;
                     si32(this.i19,mstate.ebp + -196);
                     mstate.esp -= 12;
                     this.i19 = this.i16 + this.i12;
                     si32(this.i19,mstate.esp);
                     si32(this.i20,mstate.esp + 4);
                     si32(this.i17,mstate.esp + 8);
                     mstate.esp -= 4;
                     FSM__UTF8_wcrtomb.start();
                     §§goto(addrd6bf);
                  }
                  else
                  {
                     this.i10 = this.i16;
                     this.i15 = this.i12;
                  }
                  §§goto(addrd776);
               }
               §§goto(addrd809);
            case 66:
               §§goto(addrd6bf);
            case 68:
               this.i15 = mstate.eax;
               mstate.esp += 32;
               §§goto(addrfcd8);
            case 69:
               §§goto(addrf018);
            case 70:
               §§goto(addrf09f);
            case 71:
               §§goto(addrf1ae);
            case 72:
               §§goto(addrf235);
            case 73:
               §§goto(addrf33c);
            case 74:
               §§goto(addrf3c3);
            case 75:
               §§goto(addrf4f1);
            case 76:
               §§goto(addrf625);
            case 77:
               §§goto(addrf6ac);
            case 78:
               §§goto(addrf92e);
            case 79:
               addrfb9e:
               if(this.i24 == 0)
               {
                  if(this.i11 == 0)
                  {
                     this.i12 = this.i3 & 1;
                     if(this.i15 == 8)
                     {
                        if(this.i12 != 0)
                        {
                           §§goto(addrfbd8);
                        }
                     }
                     §§goto(addreccc);
                  }
               }
               addrfbd8:
               this.i12 = si8(li8(mstate.ebp + -1745));
               mstate.esp -= 32;
               this.i16 = this.i3 & 1;
               this.i17 = this.i3 & 0x0200;
               si32(this.i24,mstate.esp);
               this.i19 = li32(mstate.ebp + -2160);
               si32(this.i19,mstate.esp + 4);
               si32(this.i15,mstate.esp + 8);
               si32(this.i16,mstate.esp + 12);
               si32(this.i27,mstate.esp + 16);
               si32(this.i17,mstate.esp + 20);
               si32(this.i12,mstate.esp + 24);
               si32(this.i7,mstate.esp + 28);
               state = 80;
               mstate.esp -= 4;
               FSM___ultoa.start();
               return;
            case 80:
               this.i15 = mstate.eax;
               mstate.esp += 32;
               addrfcd8:
               this.i12 = li32(mstate.ebp + -2070);
               this.i12 -= this.i15;
               if(this.i12 <= 100)
               {
                  this.i16 = this.i11;
                  this.i17 = this.i25;
                  this.i19 = li32(mstate.ebp + -2295);
                  this.i20 = li32(mstate.ebp + -2286);
                  this.i21 = li32(mstate.ebp + -2268);
                  this.i22 = li32(mstate.ebp + -2313);
                  this.i23 = li32(mstate.ebp + -2304);
                  this.i25 = this.i26;
                  this.i26 = this.i10;
                  this.i10 = this.i12;
                  this.i12 = this.i27;
                  this.i27 = li32(mstate.ebp + -2367);
                  this.i28 = li32(mstate.ebp + -2322);
                  break loop87;
               }
               state = 81;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 81:
               §§goto(addrfdd4);
            case 82:
               this.i28 = mstate.eax;
               mstate.esp += 8;
               this.i30 = 0;
               si32(this.i30,this.i4);
               si32(this.i30,this.i5);
               if(this.i28 != 0)
               {
                  §§goto(addr102e5);
               }
               else
               {
                  this.i28 = this.i2;
                  this.i27 += -16;
                  §§goto(addr10326);
               }
            case 83:
               this.i27 = mstate.eax;
               mstate.esp += 8;
               this.i28 = 0;
               si32(this.i28,this.i4);
               si32(this.i28,this.i5);
               if(this.i27 != 0)
               {
                  break loop12;
               }
               this.i27 = this.i2;
               §§goto(addr10479);
               break;
            case 84:
               this.i27 = mstate.eax;
               mstate.esp += 8;
               this.i28 = 0;
               si32(this.i28,this.i4);
               si32(this.i28,this.i5);
               if(this.i27 != 0)
               {
                  break loop12;
               }
               this.i27 = this.i2;
               §§goto(addr105e0);
               break;
            case 85:
               this.i27 = mstate.eax;
               mstate.esp += 8;
               this.i28 = 0;
               si32(this.i28,this.i4);
               si32(this.i28,this.i5);
               if(this.i27 != 0)
               {
                  break loop12;
               }
               this.i27 = this.i2;
               §§goto(addr10760);
               break;
            case 86:
               this.i27 = mstate.eax;
               mstate.esp += 8;
               this.i28 = 0;
               si32(this.i28,this.i4);
               si32(this.i28,this.i5);
               if(this.i27 != 0)
               {
                  break loop12;
               }
               this.i27 = this.i2;
               this.i26 += -16;
               §§goto(addr1094e);
               break;
            case 87:
               this.i27 = mstate.eax;
               mstate.esp += 8;
               this.i26 = 0;
               si32(this.i26,this.i4);
               si32(this.i26,this.i5);
               if(this.i27 != 0)
               {
                  break loop12;
               }
               §§goto(addr10a99);
               break;
            case 88:
               this.i11 = mstate.eax;
               mstate.esp += 8;
               this.i27 = 0;
               si32(this.i27,this.i4);
               si32(this.i27,this.i5);
               if(this.i11 != 0)
               {
                  break loop12;
               }
               this.i11 = this.i2;
               this.i27 = this.i11;
               this.i11 = this.i26 + -16;
               §§goto(addr10c16);
               break;
            case 89:
               this.i11 = mstate.eax;
               mstate.esp += 8;
               this.i15 = 0;
               si32(this.i15,this.i4);
               si32(this.i15,this.i5);
               if(this.i11 != 0)
               {
                  break loop12;
               }
               §§goto(addr10e23);
               break;
            case 90:
               this.i11 = mstate.eax;
               mstate.esp += 8;
               this.i10 = 0;
               si32(this.i10,this.i4);
               si32(this.i10,this.i5);
               if(this.i11 != 0)
               {
                  break loop12;
               }
               this.i11 = this.i2;
               continue loop82;
            case 91:
               this.i11 = mstate.eax;
               mstate.esp += 8;
               this.i10 = 0;
               si32(this.i10,this.i4);
               si32(this.i10,this.i5);
               if(this.i11 != 0)
               {
                  break loop12;
               }
               §§goto(addr11168);
               break;
            case 92:
               this.i11 = mstate.eax;
               mstate.esp += 8;
               this.i10 = 0;
               si32(this.i10,this.i4);
               si32(this.i10,this.i5);
               if(this.i11 == 0)
               {
                  this.i11 = this.i2;
                  this.i10 = this.i11;
                  this.i11 = this.i26 + -16;
                  break loop81;
               }
               break loop12;
            case 93:
               this.i11 = mstate.eax;
               mstate.esp += 8;
               this.i10 = 0;
               si32(this.i10,this.i4);
               si32(this.i10,this.i5);
               if(this.i11 != 0)
               {
                  break loop12;
               }
               §§goto(addr11483);
               break;
            case 94:
               this.i11 = mstate.eax;
               mstate.esp += 8;
               this.i26 = 0;
               si32(this.i26,this.i4);
               si32(this.i26,this.i5);
               if(this.i11 != 0)
               {
                  break loop12;
               }
               §§goto(addr1167b);
               break;
            case 95:
               this.i11 = mstate.eax;
               mstate.esp += 8;
               this.i10 = 0;
               si32(this.i10,this.i4);
               si32(this.i10,this.i5);
               if(this.i11 != 0)
               {
                  break loop12;
               }
               this.i11 = this.i2;
               this.i10 = this.i11;
               this.i11 = this.i26 + -16;
               §§goto(addr1184c);
               break;
            case 96:
               this.i11 = mstate.eax;
               mstate.esp += 8;
               this.i10 = 0;
               si32(this.i10,this.i4);
               si32(this.i10,this.i5);
               if(this.i11 != 0)
               {
                  break loop12;
               }
               §§goto(addr11997);
               break;
            case 97:
               this.i26 = mstate.eax;
               mstate.esp += 8;
               this.i27 = 0;
               si32(this.i27,this.i4);
               si32(this.i27,this.i5);
               if(this.i26 != 0)
               {
                  break loop12;
               }
               this.i26 = this.i2;
               §§goto(addr11b63);
               break;
            case 98:
               this.i15 = mstate.eax;
               mstate.esp += 8;
               this.i26 = 0;
               si32(this.i26,this.i4);
               si32(this.i26,this.i5);
               if(this.i15 != 0)
               {
                  break loop12;
               }
               this.i15 = this.i2;
               §§goto(addr11cf9);
               break;
            case 99:
               this.i15 = mstate.eax;
               mstate.esp += 8;
               this.i27 = 0;
               si32(this.i27,this.i4);
               si32(this.i27,this.i5);
               if(this.i15 != 0)
               {
                  break loop12;
               }
               this.i15 = this.i2;
               this.i26 += -16;
               §§goto(addr11eb0);
               break;
            case 100:
               this.i15 = mstate.eax;
               mstate.esp += 8;
               this.i26 = 0;
               si32(this.i26,this.i4);
               si32(this.i26,this.i5);
               if(this.i15 != 0)
               {
                  break loop12;
               }
               this.i15 = this.i2;
               this.i26 = si8(li8(this.i7));
               this.i10 += this.i26;
               §§goto(addr12022);
               break;
            case 101:
               this.i15 = mstate.eax;
               mstate.esp += 8;
               this.i10 = 0;
               si32(this.i10,this.i4);
               si32(this.i10,this.i5);
               if(this.i15 != 0)
               {
                  break loop12;
               }
               this.i15 = this.i11;
               this.i10 = this.i2;
               this.i11 = this.i16;
               this.i16 = this.i20;
               this.i20 = this.i26;
               §§goto(addr122af);
               break;
            case 102:
               this.i15 = mstate.eax;
               mstate.esp += 8;
               this.i22 = 0;
               si32(this.i22,this.i4);
               si32(this.i22,this.i5);
               if(this.i15 != 0)
               {
                  break loop12;
               }
               §§goto(addr12484);
               break;
            case 103:
               this.i11 = mstate.eax;
               mstate.esp += 8;
               this.i15 = 0;
               si32(this.i15,this.i4);
               si32(this.i15,this.i5);
               if(this.i11 != 0)
               {
                  break loop12;
               }
               this.i11 = this.i2;
               this.i15 = this.i11;
               this.i11 = this.i22 + -16;
               §§goto(addr12625);
               break;
            case 104:
               this.i11 = mstate.eax;
               mstate.esp += 8;
               this.i15 = 0;
               si32(this.i15,this.i4);
               si32(this.i15,this.i5);
               if(this.i11 != 0)
               {
                  break loop12;
               }
               §§goto(addr124bd);
               break;
            case 105:
               this.i11 = mstate.eax;
               mstate.esp += 8;
               this.i10 = 0;
               si32(this.i10,this.i4);
               si32(this.i10,this.i5);
               if(this.i11 != 0)
               {
                  break loop12;
               }
               this.i11 = this.i2;
               §§goto(addr1296f);
               break;
            case 106:
               this.i11 = mstate.eax;
               mstate.esp += 8;
               this.i15 = 0;
               si32(this.i15,this.i4);
               si32(this.i15,this.i5);
               if(this.i11 != 0)
               {
                  break loop12;
               }
               §§goto(addr12a96);
               break;
            case 107:
               this.i11 = mstate.eax;
               mstate.esp += 8;
               this.i16 = 0;
               si32(this.i16,this.i4);
               si32(this.i16,this.i5);
               if(this.i11 != 0)
               {
                  break loop12;
               }
               this.i11 = this.i2;
               this.i15 += -16;
               §§goto(addr12c27);
               break;
            case 108:
               this.i11 = mstate.eax;
               mstate.esp += 8;
               this.i15 = 0;
               si32(this.i15,this.i4);
               si32(this.i15,this.i5);
               if(this.i11 != 0)
               {
                  break loop12;
               }
               addr12ab2:
               §§goto(addr12ab3);
               break;
            case 109:
               this.i11 = mstate.eax;
               mstate.esp += 8;
               this.i15 = 0;
               si32(this.i15,this.i4);
               si32(this.i15,this.i5);
               if(this.i11 == 0)
               {
                  this.i15 = this.i2;
                  this.i11 = this.i20;
                  this.i16 = this.i22;
                  addr12f7d:
                  while(true)
                  {
                     this.i10 = this.i16;
                     this.i3 &= 4;
                     if(this.i3 != 0)
                     {
                        this.i3 = this.i15;
                        this.i15 = this.i10;
                        continue loop12;
                     }
                     this.i3 = this.i7;
                     this.i7 = this.i11;
                     this.i11 = this.i10;
                     §§goto(addr132e4);
                  }
                  addr130d3:
                  this.i3 = mstate.ebp + -1728;
                  mstate.esp -= 8;
                  si32(this.i0,mstate.esp);
                  si32(this.i3,mstate.esp + 4);
                  state = 110;
                  mstate.esp -= 4;
                  FSM___sfvwrite.start();
                  return;
               }
               break loop12;
            case 110:
               this.i3 = mstate.eax;
               mstate.esp += 8;
               this.i8 = 0;
               si32(this.i8,this.i4);
               si32(this.i8,this.i5);
               if(this.i3 != 0)
               {
                  break loop12;
               }
               this.i3 = this.i2;
               this.i1 += -16;
               §§goto(addr1317c);
               break;
            case 111:
               this.i3 = mstate.eax;
               mstate.esp += 8;
               this.i1 = 0;
               si32(this.i1,this.i4);
               si32(this.i1,this.i5);
               if(this.i3 != 0)
               {
                  break loop12;
               }
               §§goto(addr12fd3);
               break;
            case 112:
               this.i8 = mstate.eax;
               mstate.esp += 8;
               this.i7 = 0;
               si32(this.i7,this.i4);
               si32(this.i7,this.i5);
               if(this.i8 != 0)
               {
                  this.i6 = this.i24;
                  this.i8 = this.i14;
                  this.i0 = this.i25;
                  break loop74;
               }
               §§goto(addr08bc);
               break;
            case 116:
               this.i11 = mstate.eax;
               mstate.esp += 8;
               this.i26 = 0;
               si32(this.i26,this.i4);
               si32(this.i26,this.i5);
               if(this.i11 != 0)
               {
                  break loop12;
               }
               §§goto(addr10ab6);
               break;
            case 117:
               this.i11 = mstate.eax;
               mstate.esp += 8;
               this.i15 = 0;
               si32(this.i15,this.i4);
               si32(this.i15,this.i5);
               if(this.i11 != 0)
               {
                  break loop12;
               }
               §§goto(addr12ab2);
               break;
            case 22:
               §§goto(addr4ae9);
            case 16:
               §§goto(addr3bed);
            case 3:
               this.i3 = mstate.eax;
               mstate.esp += 12;
               this.i0 += 12;
               if(this.i3 > -1)
               {
                  this.i1 = mstate.ebp + -304;
                  mstate.esp -= 4;
                  si32(this.i1,mstate.esp);
                  state = 4;
                  mstate.esp -= 4;
                  FSM___fflush.start();
                  return;
               }
               addr0614:
               this.i0 = li16(this.i0);
               this.i0 &= 64;
               if(this.i0 == 0)
               {
                  this.i0 = this.i3;
                  break;
               }
               this.i0 = li32(mstate.ebp + -1971);
               this.i0 = li16(this.i0);
               this.i0 |= 64;
               this.i1 = li32(mstate.ebp + -1971);
               si16(this.i0,this.i1);
               mstate.eax = this.i3;
               §§goto(addr13726);
               addr059b:
               break;
            case 4:
               this.i1 = mstate.eax;
               mstate.esp += 4;
               if(this.i1 != 0)
               {
                  this.i3 = -1;
               }
               else
               {
                  §§goto(addr059b);
               }
               §§goto(addr0614);
            case 34:
               this.i11 = mstate.eax;
               mstate.esp += 16;
               this.i9 &= 2047;
               this.i12 = this.i3;
               if(this.i9 != 0)
               {
                  this.i12 = 0;
                  this.i14 = this.i3 | 0x3FF00000;
                  this.i14 &= 1073741823;
                  this.i9 += -1023;
                  this.i16 = this.i12;
                  this.i19 = li32(mstate.ebp + -2421);
                  this.i17 = this.i3;
               }
               else
               {
                  this.i9 = li32(mstate.ebp + -8);
                  this.i14 = li32(mstate.ebp + -4);
                  this.i9 = this.i14 + this.i9;
                  this.i16 = this.i9 + -1;
                  this.i14 = this.i9 + 1074;
                  if(this.i14 >= 33)
                  {
                     this.i20 = 1;
                     this.i14 = this.i9 + 1042;
                     this.i9 = -1010 - this.i9;
                     this.i19 = li32(mstate.ebp + -2421);
                     this.i14 = this.i19 >>> this.i14;
                     this.i9 = this.i12 << this.i9;
                     this.i9 |= this.i14;
                     this.f0 = Number(uint(this.i9));
                     sf64(this.f0,mstate.ebp + -1792);
                     this.i9 = li32(mstate.ebp + -1788);
                     this.i12 = li32(mstate.ebp + -1792);
                     this.i14 = this.i9 + -32505856;
                     this.i21 = 0;
                     this.i19 = this.i12;
                     this.i17 = this.i9;
                     this.i12 = this.i21;
                     this.i9 = this.i16;
                     this.i16 = this.i20;
                  }
                  else
                  {
                     this.i20 = 1;
                     this.i9 = -1042 - this.i9;
                     this.i12 = li32(mstate.ebp + -2421);
                     this.i9 = this.i12 << this.i9;
                     this.f0 = Number(uint(this.i9));
                     sf64(this.f0,mstate.ebp + -1800);
                     this.i9 = li32(mstate.ebp + -1796);
                     this.i12 = li32(mstate.ebp + -1800);
                     this.i14 = this.i9 + -32505856;
                     this.i21 = 0;
                     this.i19 = this.i12;
                     this.i17 = this.i9;
                     this.i12 = this.i21;
                     this.i9 = this.i16;
                     this.i16 = this.i20;
                  }
               }
               si32(this.i16,mstate.ebp + -2358);
               this.f0 = 0;
               this.i12 = this.i19 | this.i12;
               si32(this.i12,mstate.ebp + -1808);
               si32(this.i14,mstate.ebp + -1804);
               this.f2 = lf64(mstate.ebp + -1808);
               this.f2 += -1.5;
               this.f3 = Number(this.i9);
               this.f2 *= 0.28953;
               this.f3 *= 0.30103;
               this.f2 += 0.176091;
               this.f2 += this.f3;
               this.i12 = int(this.f2);
               while(true)
               {
                  if(this.f2 < this.f0)
                  {
                     this.f0 = Number(this.i12);
                     if(this.f0 != this.f2)
                     {
                        this.i12 += -1;
                        break;
                     }
                  }
                  break;
               }
               if(uint(this.i12) >= uint(23))
               {
                  this.i14 = 1;
               }
               else
               {
                  this.i14 = cmodule.Box2D.___tens_D2A;
                  this.i16 = this.i12 << 3;
                  this.i14 += this.i16;
                  this.f0 = lf64(this.i14);
                  if(this.f1 >= this.f0)
                  {
                     this.i14 = 0;
                  }
                  else
                  {
                     this.i14 = 0;
                     this.i12 += -1;
                  }
               }
               si32(this.i14,mstate.ebp + -2376);
               this.i14 = li32(mstate.ebp + -8);
               this.i14 -= this.i9;
               this.i16 = this.i14 + -1;
               this.i14 = 1 - this.i14;
               this.i19 = this.i16 > -1 ? this.i16 : 0;
               this.i14 = this.i16 > -1 ? 0 : this.i14;
               loop127:
               while(true)
               {
                  if(this.i12 >= 0)
                  {
                     this.i19 += this.i12;
                     while(true)
                     {
                        if(this.i1 <= 2)
                        {
                           if(uint(this.i1) < uint(2))
                           {
                              this.i9 = 0;
                              this.i16 = this.i12;
                              addr6eb5:
                              this.i23 = 0;
                              this.i24 = 1;
                              this.i25 = 18;
                              this.i17 = -1;
                              this.i21 = this.i16;
                              this.i20 = this.i9;
                              this.i22 = this.i17;
                              this.i9 = this.i25;
                              this.i16 = this.i24;
                              break;
                           }
                           if(this.i1 != 2)
                           {
                              addr6d50:
                              this.i16 = 1;
                              this.i20 = 0;
                              this.i21 = this.i12;
                              this.i22 = this.i17;
                              this.i23 = li32(mstate.ebp + -2466);
                              break;
                           }
                           addr6c68:
                           this.i9 = 0;
                           this.i16 = this.i12;
                           this.i20 = 0;
                           this.i17 = this.i16;
                           this.i16 = this.i9;
                           this.i9 = this.i20;
                        }
                        else
                        {
                           if(this.i1 == 3)
                           {
                              this.i9 = 0;
                              this.i16 = this.i12;
                              addr6f4d:
                              this.i20 = 0;
                              this.i17 = this.i16;
                              this.i16 = this.i9;
                              this.i9 = this.i20;
                              break loop127;
                           }
                           if(this.i1 != 4)
                           {
                              if(this.i1 == 5)
                              {
                                 this.i9 = 1;
                                 this.i16 = 0;
                                 this.i17 = this.i12;
                                 break loop127;
                              }
                              §§goto(addr6d50);
                           }
                           else
                           {
                              this.i9 = 1;
                              this.i16 = 0;
                              this.i17 = this.i12;
                           }
                        }
                        addr6ce1:
                        this.i23 = this.i9;
                        this.i9 = li32(mstate.ebp + -2466);
                        if(this.i9 >= 1)
                        {
                           this.i21 = this.i17;
                           this.i20 = this.i16;
                           this.i9 = li32(mstate.ebp + -2466);
                           this.i22 = this.i9;
                           this.i17 = this.i9;
                           this.i16 = this.i23;
                           this.i23 = this.i9;
                           break;
                        }
                        this.i24 = 1;
                        this.i21 = this.i17;
                        this.i20 = this.i16;
                        this.i22 = this.i24;
                        this.i17 = this.i24;
                        this.i9 = this.i24;
                        this.i16 = this.i23;
                        this.i23 = this.i24;
                        break;
                     }
                     §§goto(addr7036);
                  }
                  this.i20 = 0 - this.i12;
                  this.i14 -= this.i12;
                  while(true)
                  {
                     if(this.i1 <= 2)
                     {
                        if(uint(this.i1) >= uint(2))
                        {
                           if(this.i1 != 2)
                           {
                              addr6e79:
                              this.i16 = 1;
                              this.i21 = 0;
                              this.i22 = this.i17;
                              this.i23 = li32(mstate.ebp + -2466);
                              break;
                           }
                           this.i9 = 0;
                           this.i16 = this.i9;
                           this.i9 = this.i20;
                           §§goto(addr6c68);
                        }
                        else
                        {
                           this.i9 = 0;
                           this.i16 = this.i9;
                           this.i9 = this.i20;
                           §§goto(addr6eb5);
                        }
                     }
                     else if(this.i1 != 3)
                     {
                        if(this.i1 != 4)
                        {
                           if(this.i1 == 5)
                           {
                              this.i9 = 1;
                              this.i16 = 0;
                              this.i17 = this.i16;
                              this.i16 = this.i20;
                              break loop127;
                           }
                           §§goto(addr6e79);
                        }
                        else
                        {
                           this.i9 = 1;
                           this.i16 = 0;
                           this.i17 = this.i16;
                           this.i16 = this.i20;
                        }
                     }
                     else
                     {
                        this.i9 = 0;
                        this.i16 = this.i9;
                        this.i9 = this.i20;
                        §§goto(addr6f4d);
                     }
                     §§goto(addr6ce1);
                  }
                  addr7036:
                  si32(this.i21,mstate.ebp + -2412);
                  this.i21 = this.i22;
                  si32(this.i17,mstate.ebp + -2403);
                  si32(this.i16,mstate.ebp + -2430);
                  this.i16 = this.i23;
                  si32(this.i16,mstate.ebp + -2394);
                  if(uint(this.i9) >= uint(20))
                  {
                     this.i16 = 4;
                     this.i17 = 0;
                     do
                     {
                        this.i16 <<= 1;
                        this.i17 += 1;
                        this.i22 = this.i16 + 16;
                     }
                     while(uint(this.i22) <= uint(this.i9));
                     this.i9 = this.i17;
                  }
                  else
                  {
                     this.i9 = 0;
                  }
                  mstate.esp -= 4;
                  si32(this.i9,mstate.esp);
                  state = 35;
                  mstate.esp -= 4;
                  FSM___Balloc_D2A.start();
                  return;
                  §§goto(addr6f4d);
               }
               this.i23 = this.i9;
               this.i9 = li32(mstate.ebp + -2466);
               this.i9 = this.i12 + this.i9;
               this.i24 = this.i9 + 1;
               if(this.i24 >= 1)
               {
                  this.i21 = this.i17;
                  this.i20 = this.i16;
                  this.i22 = this.i24;
                  this.i17 = this.i9;
                  this.i9 = this.i24;
                  this.i16 = this.i23;
                  this.i23 = li32(mstate.ebp + -2466);
               }
               else
               {
                  this.i25 = 1;
                  this.i21 = this.i17;
                  this.i20 = this.i16;
                  this.i22 = this.i24;
                  this.i17 = this.i9;
                  this.i9 = this.i25;
                  this.i16 = this.i23;
                  this.i23 = li32(mstate.ebp + -2466);
               }
               §§goto(addr7036);
            case 38:
               this.i17 = mstate.eax;
               mstate.esp += 8;
               mstate.esp -= 8;
               si32(this.i17,mstate.esp);
               si32(this.i11,mstate.esp + 4);
               state = 39;
               mstate.esp -= 4;
               FSM___mult_D2A.start();
               return;
            case 51:
               this.i1 = mstate.eax;
               mstate.esp += 8;
               addr9632:
               this.i3 &= 1;
               if(this.i3 == 0)
               {
                  this.i3 = this.i1;
                  §§goto(addr9766);
               }
               this.i3 = 1;
               this.i14 = li32(this.i1 + 4);
               mstate.esp -= 4;
               si32(this.i14,mstate.esp);
               state = 52;
               mstate.esp -= 4;
               FSM___Balloc_D2A.start();
               return;
            case 53:
               this.i3 = mstate.eax;
               mstate.esp += 8;
               addr9766:
               this.i14 = 0;
               this.i19 = li32(mstate.ebp + -2421);
               this.i19 &= 1;
               this.i17 = this.i14;
               §§goto(addr9796);
            case 58:
               this.i3 = mstate.eax;
               mstate.esp += 12;
               this.i12 = this.i3;
               §§goto(addra0cf);
            case 60:
               this.i3 = mstate.eax;
               mstate.esp += 12;
               this.i12 = this.i22;
               addra0cf:
               this.i22 = this.i12;
               this.i12 = this.i17 + 1;
               this.i17 = this.i12;
               this.i12 = this.i1;
               this.i1 = this.i22;
               addr9796:
               this.i22 = this.i1;
               mstate.esp -= 8;
               si32(this.i12,mstate.esp);
               si32(this.i11,mstate.esp + 4);
               mstate.esp -= 4;
               FSM___quorem_D2A.start();
               §§goto(addr97dd);
            case 54:
               addr97dd:
               this.i1 = mstate.eax;
               mstate.esp += 8;
               this.i24 = li32(this.i12 + 16);
               this.i20 = li32(this.i22 + 16);
               this.i21 = this.i24 - this.i20;
               this.i23 = this.i12 + 16;
               this.i25 = this.i1 + 48;
               this.i26 = this.i9 + this.i17;
               this.i27 = this.i17 + 1;
               if(this.i24 != this.i20)
               {
                  this.i20 = this.i21;
               }
               else
               {
                  this.i24 = 0;
                  while(true)
                  {
                     this.i21 = this.i24 ^ -1;
                     this.i21 = this.i20 + this.i21;
                     this.i28 = this.i21 << 2;
                     this.i29 = this.i12 + this.i28;
                     this.i28 = this.i22 + this.i28;
                     this.i29 = li32(this.i29 + 20);
                     this.i28 = li32(this.i28 + 20);
                     if(this.i29 != this.i28)
                     {
                        this.i24 = uint(this.i29) < uint(this.i28) ? -1 : 1;
                        this.i20 = this.i24;
                        break;
                     }
                     this.i24 += 1;
                     if(this.i21 <= 0)
                     {
                        this.i24 = 0;
                        this.i20 = this.i24;
                        break;
                     }
                  }
               }
               this.i24 = this.i20;
               mstate.esp -= 8;
               si32(this.i11,mstate.esp);
               si32(this.i3,mstate.esp + 4);
               state = 55;
               mstate.esp -= 4;
               FSM___diff_D2A.start();
               return;
            case 52:
               this.i14 = mstate.eax;
               mstate.esp += 4;
               this.i19 = li32(this.i1 + 16);
               this.i17 = this.i14 + 12;
               this.i19 <<= 2;
               this.i22 = this.i1 + 12;
               this.i19 += 8;
               cmodule.Box2D.memcpy(this.i17,this.i22,this.i19);
               mstate.esp -= 8;
               si32(this.i14,mstate.esp);
               si32(this.i3,mstate.esp + 4);
               state = 53;
               mstate.esp -= 4;
               FSM___lshift_D2A.start();
               return;
            case 57:
               this.i1 = mstate.eax;
               mstate.esp += 12;
               if(this.i22 == this.i3)
               {
                  this.i12 = 0;
                  mstate.esp -= 12;
                  this.i22 = 10;
                  si32(this.i3,mstate.esp);
                  si32(this.i22,mstate.esp + 4);
                  si32(this.i12,mstate.esp + 8);
                  state = 58;
                  mstate.esp -= 4;
                  FSM___multadd_D2A.start();
                  return;
               }
               this.i12 = 0;
               mstate.esp -= 12;
               this.i24 = 10;
               si32(this.i22,mstate.esp);
               si32(this.i24,mstate.esp + 4);
               si32(this.i12,mstate.esp + 8);
               state = 59;
               mstate.esp -= 4;
               FSM___multadd_D2A.start();
               return;
               break;
            case 59:
               this.i22 = mstate.eax;
               mstate.esp += 12;
               mstate.esp -= 12;
               si32(this.i3,mstate.esp);
               si32(this.i24,mstate.esp + 4);
               si32(this.i12,mstate.esp + 8);
               state = 60;
               mstate.esp -= 4;
               FSM___multadd_D2A.start();
               return;
            case 63:
               §§goto(addrd3e1);
            case 67:
               this.i1 = mstate.eax;
               mstate.esp += 8;
               §§goto(addrd838);
            case 113:
               this.i0 = mstate.eax;
               mstate.esp += 8;
               this.i3 = 0;
               si32(this.i3,this.i4);
               si32(this.i3,this.i5);
               if(this.i0 != 0)
               {
                  this.i0 = li32(mstate.ebp + -2277);
                  this.i6 = this.i0;
                  this.i8 = this.i14;
                  this.i0 = li32(mstate.ebp + -2367);
                  break loop74;
               }
               §§goto(addr1349a);
               break;
            case 114:
               this.i0 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr13635);
            case 115:
               this.i1 = mstate.eax;
               mstate.esp += 8;
               break;
            default:
               throw "Invalid state in ___vfprintf";
         }
         mstate.eax = this.i0;
         addr13726:
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp += 4;
         mstate.esp += 4;
         mstate.gworker = caller;
      }
   }
}

