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
   
   public final class FSM__Z10b2DistanceP16b2DistanceOutputP14b2SimplexCachePK15b2DistanceInput extends Machine
   {
      
      public static const intRegCount:int = 32;
      
      public static const NumberRegCount:int = 32;
      
      public var f10:Number;
      
      public var f11:Number;
      
      public var f12:Number;
      
      public var f13:Number;
      
      public var f14:Number;
      
      public var f16:Number;
      
      public var f18:Number;
      
      public var f15:Number;
      
      public var f21:Number;
      
      public var f23:Number;
      
      public var f24:Number;
      
      public var f25:Number;
      
      public var f26:Number;
      
      public var f20:Number;
      
      public var f28:Number;
      
      public var f22:Number;
      
      public var f17:Number;
      
      public var f19:Number;
      
      public var f27:Number;
      
      public var f29:Number;
      
      public var f30:Number;
      
      public var f31:Number;
      
      public var i10:int;
      
      public var i11:int;
      
      public var i12:int;
      
      public var i13:int;
      
      public var i14:int;
      
      public var i15:int;
      
      public var i16:int;
      
      public var i17:int;
      
      public var i18:int;
      
      public var i19:int;
      
      public var i20:int;
      
      public var i21:int;
      
      public var i22:int;
      
      public var i23:int;
      
      public var i24:int;
      
      public var i25:int;
      
      public var i26:int;
      
      public var i27:int;
      
      public var i28:int;
      
      public var i29:int;
      
      public var i30:int;
      
      public var i31:int;
      
      public var f0:Number;
      
      public var f1:Number;
      
      public var f2:Number;
      
      public var f3:Number;
      
      public var f4:Number;
      
      public var f5:Number;
      
      public var f7:Number;
      
      public var f9:Number;
      
      public var f6:Number;
      
      public var f8:Number;
      
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
      
      public function FSM__Z10b2DistanceP16b2DistanceOutputP14b2SimplexCachePK15b2DistanceInput()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__Z10b2DistanceP16b2DistanceOutputP14b2SimplexCachePK15b2DistanceInput = null;
         _loc1_ = new FSM__Z10b2DistanceP16b2DistanceOutputP14b2SimplexCachePK15b2DistanceInput();
         cmodule.Box2D.gstate.gworker = _loc1_;
      }
      
      final override public function work() : void
      {
         loop7:
         switch(state)
         {
            case 0:
               mstate.esp -= 4;
               si32(mstate.ebp,mstate.esp);
               mstate.ebp = mstate.esp;
               mstate.esp -= 208;
               this.i0 = mstate.ebp + -144;
               this.i1 = li32(cmodule.Box2D._b2_gjkCalls);
               this.i1 += 1;
               this.i2 = li32(mstate.ebp + 12);
               si32(this.i2,mstate.ebp + -198);
               si32(this.i1,cmodule.Box2D._b2_gjkCalls);
               this.i1 = li32(mstate.ebp + 16);
               this.f0 = lf32(this.i1 + 56);
               sf32(this.f0,mstate.ebp + -160);
               this.f0 = lf32(this.i1 + 60);
               sf32(this.f0,mstate.ebp + -168);
               this.f0 = lf32(this.i1 + 64);
               sf32(this.f0,mstate.ebp + -192);
               this.f0 = lf32(this.i1 + 68);
               this.f1 = lf32(this.i1 + 72);
               this.f2 = lf32(this.i1 + 76);
               this.f3 = lf32(this.i1 + 80);
               sf32(this.f3,mstate.ebp + -176);
               this.f3 = lf32(this.i1 + 84);
               sf32(this.f3,mstate.ebp + -184);
               this.f3 = lf32(this.i1 + 88);
               this.f4 = lf32(this.i1 + 92);
               this.f5 = lf32(this.i1 + 96);
               this.f6 = lf32(this.i1 + 100);
               this.i2 = li16(this.i2 + 4);
               this.i3 = li32(mstate.ebp + -198);
               this.i3 += 4;
               si32(this.i3,mstate.ebp + -153);
               this.i3 = mstate.ebp + -128;
               this.i4 = li32(mstate.ebp + 8);
               this.i5 = li32(mstate.ebp + -198);
               if(uint(this.i2) >= uint(4))
               {
                  this.i0 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i1 = cmodule.Box2D.__2E_str1670;
                  this.i3 = cmodule.Box2D.__2E_str124316;
                  this.i4 = cmodule.Box2D.__ZZN9b2Simplex9ReadCacheEPK14b2SimplexCachePK15b2DistanceProxyRK11b2TransformS5_S8_E8__func__;
                  this.i5 = cmodule.Box2D.__2E_str45252;
                  this.i2 = 102;
                  this.i0 += 176;
                  si32(this.i0,mstate.esp);
                  si32(this.i1,mstate.esp + 4);
                  si32(this.i3,mstate.esp + 8);
                  si32(this.i4,mstate.esp + 12);
                  si32(this.i5,mstate.esp + 16);
                  si32(this.i2,mstate.esp + 20);
               }
               else
               {
                  this.i2 = mstate.ebp + -112;
                  si32(this.i2,mstate.ebp + -207);
                  this.i2 = li32(mstate.ebp + -153);
                  this.i2 = li16(this.i2);
                  si32(this.i2,mstate.ebp + -4);
                  this.i6 = li32(mstate.ebp + -207);
                  this.i6 += 108;
                  this.i7 = li32(mstate.ebp + -207);
                  loop8:
                  while(true)
                  {
                     if(this.i2 <= 0)
                     {
                        addr0831:
                        loop9:
                        while(true)
                        {
                           if(this.i2 >= 2)
                           {
                              this.i8 = li32(mstate.ebp + -198);
                              this.f7 = lf32(this.i8);
                              while(true)
                              {
                                 if(this.i2 <= 1)
                                 {
                                    if(this.i2 != 0)
                                    {
                                       if(this.i2 == 1)
                                       {
                                          this.f8 = 0.5;
                                          this.f8 = this.f8;
                                          this.f8 = this.f8;
                                          this.f9 = this.f7;
                                          this.f8 = this.f9 * this.f8;
                                          this.f9 = 0;
                                          this.f8 = this.f8;
                                          this.f9 = this.f9;
                                          this.f9 = this.f9;
                                          this.f8 = this.f8;
                                          if(this.f8 <= this.f9)
                                          {
                                             this.f8 = 0;
                                             this.f8 = this.f8;
                                             addr0c63:
                                             this.f7 = this.f7;
                                             this.f7 += this.f7;
                                             this.f7 = this.f7;
                                             this.f9 = this.f8;
                                             this.f7 = this.f7;
                                             if(this.f7 >= this.f9)
                                             {
                                                this.f7 = 1.19209e-7;
                                                this.f7 = this.f7;
                                                this.f7 = this.f7;
                                                this.f8 = this.f8;
                                                if(this.f8 >= this.f7)
                                                {
                                                   break;
                                                }
                                             }
                                          }
                                          addr0cc8:
                                          this.i2 = 0;
                                          si32(this.i2,this.i6);
                                          break;
                                       }
                                       addr0881:
                                       this.i0 = cmodule.Box2D.___sF;
                                       mstate.esp -= 24;
                                       this.i1 = cmodule.Box2D.__2E_str1670;
                                       this.i3 = cmodule.Box2D.__2E_str46253;
                                       this.i4 = cmodule.Box2D.__ZZNK9b2Simplex9GetMetricEvE8__func__;
                                       this.i5 = cmodule.Box2D.__2E_str45252;
                                       this.i6 = 259;
                                    }
                                    else
                                    {
                                       this.i0 = cmodule.Box2D.___sF;
                                       mstate.esp -= 24;
                                       this.i1 = cmodule.Box2D.__2E_str1670;
                                       this.i3 = cmodule.Box2D.__2E_str46253;
                                       this.i4 = cmodule.Box2D.__ZZNK9b2Simplex9GetMetricEvE8__func__;
                                       this.i5 = cmodule.Box2D.__2E_str45252;
                                       this.i6 = 246;
                                    }
                                    this.i0 += 176;
                                    si32(this.i0,mstate.esp);
                                    si32(this.i1,mstate.esp + 4);
                                    break loop9;
                                 }
                                 if(this.i2 != 2)
                                 {
                                    if(this.i2 != 3)
                                    {
                                       §§goto(addr0881);
                                    }
                                    else
                                    {
                                       this.f8 = 0.5;
                                       this.f9 = lf32(mstate.ebp + -20);
                                       this.f10 = lf32(mstate.ebp + -92);
                                       this.f11 = lf32(mstate.ebp + -56);
                                       this.f12 = lf32(mstate.ebp + -24);
                                       this.f13 = lf32(mstate.ebp + -96);
                                       this.f14 = lf32(mstate.ebp + -60);
                                       this.f9 -= this.f10;
                                       this.f10 = this.f11 - this.f10;
                                       this.f11 = this.f12 - this.f13;
                                       this.f12 = this.f14 - this.f13;
                                       this.f9 = this.f9;
                                       this.f10 = this.f10;
                                       this.f11 = this.f11;
                                       this.f12 = this.f12;
                                       this.f9 = this.f9;
                                       this.f12 = this.f12;
                                       this.f11 = this.f11;
                                       this.f10 = this.f10;
                                       this.f9 = this.f12 * this.f9;
                                       this.f10 *= this.f11;
                                       this.f9 = this.f9;
                                       this.f10 = this.f10;
                                       this.f8 = this.f8;
                                       this.f10 = this.f10;
                                       this.f9 = this.f9;
                                       this.f8 = this.f8;
                                       this.f11 = this.f7;
                                       this.f9 -= this.f10;
                                       this.f8 = this.f11 * this.f8;
                                       this.f9 = this.f9;
                                       this.f8 = this.f8;
                                       this.f10 = this.f9;
                                       this.f8 = this.f8;
                                       if(this.f8 <= this.f10)
                                       {
                                          this.f8 = this.f9;
                                          §§goto(addr0c63);
                                       }
                                    }
                                 }
                                 else
                                 {
                                    this.f8 = 0.5;
                                    this.f9 = lf32(mstate.ebp + -92);
                                    this.f10 = lf32(mstate.ebp + -56);
                                    this.f11 = lf32(mstate.ebp + -96);
                                    this.f12 = lf32(mstate.ebp + -60);
                                    this.f9 -= this.f10;
                                    this.f10 = this.f11 - this.f12;
                                    this.f9 = this.f9;
                                    this.f10 = this.f10;
                                    this.f9 = this.f9;
                                    this.f10 = this.f10;
                                    this.f9 *= this.f9;
                                    this.f10 *= this.f10;
                                    this.f9 = this.f9;
                                    this.f10 = this.f10;
                                    this.f9 = this.f9;
                                    this.f10 = this.f10;
                                    this.f9 = this.f10 + this.f9;
                                    this.f9 = this.f9;
                                    this.f8 = this.f8;
                                    this.f9 = this.f9;
                                    this.f8 = this.f8;
                                    this.f10 = this.f7;
                                    this.f9 = Math.sqrt(this.f9);
                                    this.f8 = this.f10 * this.f8;
                                    this.f9 = this.f9;
                                    this.f8 = this.f8;
                                    this.f10 = this.f9;
                                    this.f8 = this.f8;
                                    if(this.f8 <= this.f10)
                                    {
                                       this.f8 = this.f9;
                                       §§goto(addr0c63);
                                    }
                                 }
                                 §§goto(addr0cc8);
                              }
                           }
                           this.i2 = li32(this.i6);
                           if(this.i2 != 0)
                           {
                              this.i8 = this.i2 + -1;
                              if(uint(this.i8) > uint(2))
                              {
                                 this.i0 = cmodule.Box2D.___sF;
                                 mstate.esp -= 24;
                                 this.i1 = cmodule.Box2D.__2E_str1670;
                                 this.i2 = cmodule.Box2D.__2E_str46253;
                                 this.i3 = cmodule.Box2D.__ZZNK9b2Simplex15GetClosestPointEvE8__func__;
                                 this.i4 = cmodule.Box2D.__2E_str45252;
                                 this.i5 = 207;
                                 addr0d8f:
                                 this.i0 += 176;
                                 si32(this.i0,mstate.esp);
                                 si32(this.i1,mstate.esp + 4);
                                 si32(this.i2,mstate.esp + 8);
                                 si32(this.i3,mstate.esp + 12);
                                 si32(this.i4,mstate.esp + 16);
                                 si32(this.i5,mstate.esp + 20);
                                 break loop8;
                              }
                           }
                           else
                           {
                              this.i2 = 0;
                              si32(this.i2,mstate.ebp + -84);
                              si32(this.i2,mstate.ebp + -80);
                              this.i2 = li32(this.i1 + 20);
                              if(this.i2 > 0)
                              {
                                 this.i2 = li32(this.i1 + 16);
                                 this.f7 = lf32(this.i2);
                                 this.f8 = lf32(this.i2 + 4);
                                 this.i2 = li32(this.i1 + 48);
                                 if(this.i2 > 0)
                                 {
                                    this.i2 = 1;
                                    this.i8 = li32(this.i1 + 44);
                                    this.f9 = lf32(mstate.ebp + -192);
                                    this.f9 = this.f9;
                                    this.f7 = this.f7;
                                    this.f9 *= this.f7;
                                    this.f10 = this.f0;
                                    this.f11 = lf32(this.i8);
                                    this.f12 = this.f3;
                                    this.f12 *= this.f11;
                                    this.f13 = this.f4;
                                    this.f9 = this.f9;
                                    this.f7 = this.f10 * this.f7;
                                    this.f10 = this.f12;
                                    this.f11 = this.f13 * this.f11;
                                    this.f7 = this.f7;
                                    this.f9 = this.f9;
                                    this.f12 = lf32(mstate.ebp + -160);
                                    this.f12 = this.f12;
                                    this.f13 = this.f1;
                                    this.f8 = this.f8;
                                    this.f14 = lf32(this.i8 + 4);
                                    this.f11 = this.f11;
                                    this.f15 = this.f5;
                                    this.f9 = this.f12 + this.f9;
                                    this.f12 = this.f13 * this.f8;
                                    this.f13 = this.f2;
                                    this.f10 = this.f10;
                                    this.f16 = lf32(mstate.ebp + -176);
                                    this.f16 = this.f16;
                                    this.f7 = this.f7;
                                    this.f17 = lf32(mstate.ebp + -168);
                                    this.f17 = this.f17;
                                    this.f10 = this.f16 + this.f10;
                                    this.f15 *= this.f14;
                                    this.f16 = this.f6;
                                    this.f9 = this.f9;
                                    this.f7 = this.f17 + this.f7;
                                    this.f12 = this.f12;
                                    this.f8 = this.f13 * this.f8;
                                    this.f11 = this.f11;
                                    this.f13 = lf32(mstate.ebp + -184);
                                    this.f13 = this.f13;
                                    this.f10 = this.f10;
                                    this.f11 = this.f13 + this.f11;
                                    this.f13 = this.f15;
                                    this.f14 = this.f16 * this.f14;
                                    this.f7 = this.f7;
                                    this.f8 = this.f8;
                                    this.f12 = this.f12;
                                    this.f9 = this.f9;
                                    this.f11 = this.f11;
                                    this.f14 = this.f14;
                                    this.f9 += this.f12;
                                    this.f12 = this.f13;
                                    this.f10 = this.f10;
                                    this.f8 = this.f8;
                                    this.f7 = this.f7;
                                    this.f10 += this.f12;
                                    this.f9 = this.f9;
                                    this.f7 += this.f8;
                                    this.f8 = this.f14;
                                    this.f11 = this.f11;
                                    this.f10 = this.f10;
                                    this.f8 = this.f11 + this.f8;
                                    this.f7 = this.f7;
                                    sf32(this.f9,mstate.ebp + -112);
                                    sf32(this.f7,mstate.ebp + -108);
                                    this.f8 = this.f8;
                                    this.f9 = this.f9;
                                    this.f11 = this.f10;
                                    sf32(this.f10,mstate.ebp + -104);
                                    this.f9 = this.f11 - this.f9;
                                    this.f7 = this.f7;
                                    this.f10 = this.f8;
                                    this.f7 = this.f10 - this.f7;
                                    sf32(this.f8,mstate.ebp + -100);
                                    this.f8 = this.f9;
                                    sf32(this.f8,mstate.ebp + -96);
                                    this.f7 = this.f7;
                                    sf32(this.f7,mstate.ebp + -92);
                                    si32(this.i2,this.i6);
                                    addr1174:
                                    this.i8 = mstate.ebp + -112;
                                    this.i9 = this.i8 + 20;
                                    this.i10 = this.i8 + 52;
                                    this.i11 = this.i8 + 56;
                                    this.i12 = this.i8 + 60;
                                    this.i13 = this.i8 + 88;
                                    this.i14 = this.i8 + 92;
                                    this.i15 = this.i8 + 96;
                                    this.i16 = this.i1 + 44;
                                    this.i17 = this.i1 + 48;
                                    this.i18 = 0;
                                    this.i19 = this.i1 + 20;
                                    this.i20 = this.i1 + 16;
                                    this.i21 = this.i8 + 72;
                                    this.i22 = this.i8 + 24;
                                    this.i23 = this.i8 + 36;
                                    this.i24 = this.i8 + 16;
                                    addr2f8f:
                                    if(this.i18 < 20)
                                    {
                                       if(this.i2 >= 1)
                                       {
                                          this.i25 = 0;
                                          this.i26 = li32(mstate.ebp + -207);
                                          this.i27 = this.i25;
                                          do
                                          {
                                             this.i28 = li32(this.i26 + 28);
                                             this.i29 = this.i3 + this.i27;
                                             si32(this.i28,this.i29);
                                             this.i28 = li32(this.i26 + 32);
                                             this.i29 = this.i0 + this.i27;
                                             si32(this.i28,this.i29);
                                             this.i26 += 36;
                                             this.i27 += 4;
                                             this.i25 += 1;
                                          }
                                          while(this.i25 != this.i2);
                                       }
                                       if(this.i2 != 3)
                                       {
                                          if(this.i2 != 2)
                                          {
                                             if(this.i2 == 1)
                                             {
                                                this.i25 = this.i2;
                                                this.i26 = this.i2;
                                                addr21bf:
                                                this.i27 = this.i26 + -1;
                                                if(uint(this.i27) >= uint(3))
                                                {
                                                   if(this.i26 == 0)
                                                   {
                                                      this.i2 = cmodule.Box2D.___sF;
                                                      mstate.esp -= 24;
                                                      this.i18 = cmodule.Box2D.__2E_str1670;
                                                      this.i0 = cmodule.Box2D.__2E_str46253;
                                                      this.i1 = cmodule.Box2D.__ZZNK9b2Simplex15GetClosestPointEvE8__func__;
                                                      this.i3 = cmodule.Box2D.__2E_str45252;
                                                      this.i4 = 194;
                                                   }
                                                   else
                                                   {
                                                      this.i2 = cmodule.Box2D.___sF;
                                                      mstate.esp -= 24;
                                                      this.i18 = cmodule.Box2D.__2E_str1670;
                                                      this.i0 = cmodule.Box2D.__2E_str46253;
                                                      this.i1 = cmodule.Box2D.__ZZNK9b2Simplex15GetClosestPointEvE8__func__;
                                                      this.i3 = cmodule.Box2D.__2E_str45252;
                                                      this.i4 = 207;
                                                   }
                                                   addr2270:
                                                   this.i2 += 176;
                                                   si32(this.i2,mstate.esp);
                                                   si32(this.i18,mstate.esp + 4);
                                                   addr2295:
                                                   si32(this.i0,mstate.esp + 8);
                                                   si32(this.i1,mstate.esp + 12);
                                                   si32(this.i3,mstate.esp + 16);
                                                   si32(this.i4,mstate.esp + 20);
                                                   break loop8;
                                                }
                                                break loop7;
                                             }
                                             this.i2 = cmodule.Box2D.___sF;
                                             mstate.esp -= 24;
                                             this.i18 = cmodule.Box2D.__2E_str1670;
                                             this.i0 = cmodule.Box2D.__2E_str46253;
                                             this.i1 = cmodule.Box2D.__ZZ10b2DistanceP16b2DistanceOutputP14b2SimplexCachePK15b2DistanceInputE8__func__;
                                             this.i3 = cmodule.Box2D.__2E_str45252;
                                             this.i4 = 498;
                                             addr226f:
                                             §§goto(addr2270);
                                          }
                                          this.f7 = 0;
                                          this.f8 = lf32(this.i10);
                                          this.f9 = lf32(this.i11);
                                          this.f10 = lf32(this.i24);
                                          this.f11 = lf32(this.i9);
                                          this.f12 = this.f8;
                                          this.f13 = this.f9;
                                          this.f12 -= this.f10;
                                          this.f13 -= this.f11;
                                          this.f12 = this.f12;
                                          this.f13 = this.f13;
                                          this.f14 = this.f12;
                                          this.f15 = this.f13;
                                          this.f10 *= this.f14;
                                          this.f11 *= this.f15;
                                          this.f10 = this.f10;
                                          this.f11 = this.f11;
                                          this.f11 = this.f11;
                                          this.f10 = this.f10;
                                          this.f10 += this.f11;
                                          this.f10 = this.f10;
                                          this.f11 = this.f10;
                                          this.f11 = -this.f11;
                                          this.f11 = this.f11;
                                          this.f7 = this.f7;
                                          this.f7 = this.f7;
                                          this.f14 = this.f11;
                                          if(this.f14 <= this.f7)
                                          {
                                             this.i25 = 1065353216;
                                             si32(this.i25,this.i22);
                                             this.i25 = 1;
                                             si32(this.i25,this.i6);
                                             §§goto(addr160c);
                                          }
                                          this.f7 = 0;
                                          this.f12 = this.f12;
                                          this.f8 = this.f8;
                                          this.f13 = this.f13;
                                          this.f9 = this.f9;
                                          this.f8 *= this.f12;
                                          this.f9 *= this.f13;
                                          this.f8 = this.f8;
                                          this.f9 = this.f9;
                                          this.f9 = this.f9;
                                          this.f8 = this.f8;
                                          this.f8 += this.f9;
                                          this.f8 = this.f8;
                                          this.f7 = this.f7;
                                          this.f7 = this.f7;
                                          this.f9 = this.f8;
                                          if(this.f9 <= this.f7)
                                          {
                                             this.i25 = 1065353216;
                                             si32(this.i25,this.i12);
                                             this.i25 = 1;
                                             si32(this.i25,this.i6);
                                             this.i25 = this.i8;
                                             this.i26 = this.i23;
                                             this.i27 = 36;
                                             cmodule.Box2D.memcpy(this.i25,this.i26,this.i27);
                                             §§goto(addr160c);
                                          }
                                          this.f7 = 1;
                                          this.f9 = this.f10;
                                          this.f8 = this.f8;
                                          this.f9 = this.f8 - this.f9;
                                          this.f9 = this.f9;
                                          this.f7 = this.f7;
                                          this.f9 = this.f9;
                                          this.f7 = this.f7;
                                          this.f7 /= this.f9;
                                          this.f7 = this.f7;
                                          this.f7 = this.f7;
                                          this.f8 *= this.f7;
                                          this.f9 = this.f11;
                                          this.f7 *= this.f9;
                                          this.f8 = this.f8;
                                          sf32(this.f8,this.i22);
                                          this.f7 = this.f7;
                                          sf32(this.f7,this.i12);
                                          this.i25 = 2;
                                          si32(this.i25,this.i6);
                                          addr160c:
                                          this.i26 = li32(this.i6);
                                          while(true)
                                          {
                                             if(this.i26 != 3)
                                             {
                                                this.i25 = this.i26;
                                                §§goto(addr21bf);
                                             }
                                             addr2f9e:
                                             this.i2 = this.i18;
                                             break;
                                          }
                                          §§goto(addr2fb5);
                                       }
                                       this.f7 = 0;
                                       this.f8 = lf32(this.i24);
                                       this.f9 = lf32(this.i10);
                                       this.f10 = lf32(this.i13);
                                       this.f11 = lf32(this.i9);
                                       this.f12 = lf32(this.i11);
                                       this.f13 = lf32(this.i14);
                                       this.f14 = this.f9 - this.f8;
                                       this.f15 = this.f10 - this.f8;
                                       this.f16 = this.f12 - this.f11;
                                       this.f17 = this.f13 - this.f11;
                                       this.f18 = this.f10 - this.f9;
                                       this.f19 = this.f13 - this.f12;
                                       this.f14 = this.f14;
                                       this.f15 = this.f15;
                                       this.f16 = this.f16;
                                       this.f17 = this.f17;
                                       this.f18 = this.f18;
                                       this.f19 = this.f19;
                                       this.f14 = this.f14;
                                       this.f17 = this.f17;
                                       this.f15 = this.f15;
                                       this.f16 = this.f16;
                                       this.f18 = this.f18;
                                       this.f19 = this.f19;
                                       this.f20 = this.f8 * this.f14;
                                       this.f21 = this.f14 * this.f17;
                                       this.f22 = this.f8 * this.f15;
                                       this.f23 = this.f16 * this.f15;
                                       this.f24 = this.f13 * this.f8;
                                       this.f8 *= this.f12;
                                       this.f25 = this.f11 * this.f16;
                                       this.f26 = this.f11 * this.f17;
                                       this.f27 = this.f10 * this.f11;
                                       this.f11 *= this.f9;
                                       this.f28 = this.f9 * this.f18;
                                       this.f29 = this.f9 * this.f13;
                                       this.f30 = this.f12 * this.f19;
                                       this.f31 = this.f12 * this.f10;
                                       this.f20 = this.f20;
                                       this.f21 = this.f21;
                                       this.f22 = this.f22;
                                       this.f23 = this.f23;
                                       this.f24 = this.f24;
                                       this.f8 = this.f8;
                                       this.f25 = this.f25;
                                       this.f26 = this.f26;
                                       this.f27 = this.f27;
                                       this.f11 = this.f11;
                                       this.f28 = this.f28;
                                       this.f29 = this.f29;
                                       this.f30 = this.f30;
                                       this.f31 = this.f31;
                                       this.f25 = this.f25;
                                       this.f20 = this.f20;
                                       this.f23 = this.f23;
                                       this.f21 = this.f21;
                                       this.f26 = this.f26;
                                       this.f22 = this.f22;
                                       this.f24 = this.f24;
                                       this.f27 = this.f27;
                                       this.f11 = this.f11;
                                       this.f8 = this.f8;
                                       this.f30 = this.f30;
                                       this.f28 = this.f28;
                                       this.f31 = this.f31;
                                       this.f29 = this.f29;
                                       this.f20 += this.f25;
                                       this.f9 *= this.f14;
                                       this.f14 = this.f21 - this.f23;
                                       this.f21 = this.f22 + this.f26;
                                       this.f15 = this.f10 * this.f15;
                                       this.f22 = this.f27 - this.f24;
                                       this.f8 -= this.f11;
                                       this.f11 = this.f12 * this.f16;
                                       this.f12 = this.f13 * this.f17;
                                       this.f16 = this.f28 + this.f30;
                                       this.f10 *= this.f18;
                                       this.f17 = this.f29 - this.f31;
                                       this.f13 *= this.f19;
                                       this.f18 = this.f20;
                                       this.f9 = this.f9;
                                       this.f14 = this.f14;
                                       this.f19 = this.f21;
                                       this.f15 = this.f15;
                                       this.f20 = this.f22;
                                       this.f8 = this.f8;
                                       this.f11 = this.f11;
                                       this.f12 = this.f12;
                                       this.f16 = this.f16;
                                       this.f10 = this.f10;
                                       this.f17 = this.f17;
                                       this.f13 = this.f13;
                                       this.f21 = this.f18;
                                       this.f22 = this.f19;
                                       this.f23 = this.f16;
                                       this.f11 = this.f11;
                                       this.f9 = this.f9;
                                       this.f17 = this.f17;
                                       this.f14 = this.f14;
                                       this.f20 = this.f20;
                                       this.f8 = this.f8;
                                       this.f12 = this.f12;
                                       this.f15 = this.f15;
                                       this.f13 = this.f13;
                                       this.f10 = this.f10;
                                       this.f21 = -this.f21;
                                       this.f9 += this.f11;
                                       this.f11 = this.f17 * this.f14;
                                       this.f17 = this.f20 * this.f14;
                                       this.f8 *= this.f14;
                                       this.f14 = -this.f22;
                                       this.f12 = this.f15 + this.f12;
                                       this.f15 = -this.f23;
                                       this.f10 += this.f13;
                                       this.f13 = this.f14;
                                       this.f14 = this.f21;
                                       this.f9 = this.f9;
                                       this.f11 = this.f11;
                                       this.f17 = this.f17;
                                       this.f8 = this.f8;
                                       this.f12 = this.f12;
                                       this.f15 = this.f15;
                                       this.f10 = this.f10;
                                       this.f7 = this.f7;
                                       this.f7 = this.f7;
                                       this.f20 = this.f13;
                                       if(this.f20 <= this.f7)
                                       {
                                          this.f7 = 0;
                                          this.f7 = this.f7;
                                          this.f7 = this.f7;
                                          this.f20 = this.f14;
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      while(true)
                                                      {
                                                         loop18:
                                                         while(true)
                                                         {
                                                            while(true)
                                                            {
                                                               if(this.f20 <= this.f7)
                                                               {
                                                                  this.i25 = 1065353216;
                                                                  si32(this.i25,this.i22);
                                                                  this.i25 = 1;
                                                                  si32(this.i25,this.i6);
                                                                  addr219f:
                                                                  this.i26 = li32(this.i6);
                                                                  if(this.i26 == 3)
                                                                  {
                                                                     break loop18;
                                                                  }
                                                                  this.i25 = this.i26;
                                                                  §§goto(addr21bf);
                                                               }
                                                            }
                                                            addr246d:
                                                            this.i2 = cmodule.Box2D.___sF;
                                                            mstate.esp -= 24;
                                                            this.i18 = cmodule.Box2D.__2E_str1670;
                                                            this.i0 = cmodule.Box2D.__2E_str46253;
                                                            this.i1 = cmodule.Box2D.__ZZNK9b2Simplex18GetSearchDirectionEvE8__func__;
                                                            this.i3 = cmodule.Box2D.__2E_str45252;
                                                            this.i4 = 184;
                                                            §§goto(addr226f);
                                                         }
                                                         §§goto(addr2f9e);
                                                      }
                                                      §§goto(addr283e);
                                                   }
                                                   break loop17;
                                                }
                                                addr283e:
                                                this.i2 = cmodule.Box2D.___sF;
                                                mstate.esp -= 24;
                                                this.i18 = cmodule.Box2D.__2E_str1670;
                                                this.i0 = cmodule.Box2D.__2E_str1208;
                                                this.i1 = cmodule.Box2D.__ZZNK11b2LoopShape9GetVertexEiE8__func__;
                                                this.i3 = cmodule.Box2D.__2E_str4211;
                                                this.i4 = 103;
                                                §§goto(addr226f);
                                             }
                                             this.i2 = this.i18 + 1;
                                             §§goto(addr2fb5);
                                          }
                                          §§goto(addr2f9e);
                                       }
                                       this.f7 = 0;
                                       this.f7 = this.f7;
                                       this.f20 = this.f9;
                                       this.f7 = this.f7;
                                       this.f21 = this.f14;
                                       §§push(this);
                                       if(this.f20 <= this.f7)
                                       {
                                          addr1b84:
                                          §§pop().i25 = 1;
                                          §§push(this);
                                          if(this.f21 <= this.f7)
                                          {
                                             addr1b9c:
                                             §§pop().i26 = 1;
                                             this.i25 = this.i26 | this.i25;
                                             this.f20 = this.f8;
                                             if(this.f20 <= this.f7)
                                             {
                                                this.i25 &= 1;
                                                while(true)
                                                {
                                                   if(this.i25 == 0)
                                                   {
                                                      this.f7 = 1;
                                                      this.f8 = this.f18;
                                                      this.f9 = this.f9;
                                                      this.f8 = this.f9 - this.f8;
                                                      this.f8 = this.f8;
                                                      this.f10 = this.f7;
                                                      this.f7 = this.f8;
                                                      this.f8 = this.f10;
                                                      this.f7 = this.f8 / this.f7;
                                                      this.f8 = this.f7;
                                                      this.f7 = this.f8;
                                                      this.f8 = this.f9 * this.f7;
                                                      this.f9 = this.f14;
                                                      this.f7 *= this.f9;
                                                      this.f8 = this.f8;
                                                      sf32(this.f8,this.i22);
                                                      this.f8 = this.f7;
                                                      sf32(this.f8,this.i12);
                                                      this.i25 = 2;
                                                      si32(this.i25,this.i6);
                                                      §§goto(addr219f);
                                                   }
                                                }
                                                §§goto(addr246d);
                                             }
                                             this.f7 = 0;
                                             this.f7 = this.f7;
                                             this.f14 = this.f12;
                                             this.f7 = this.f7;
                                             this.f18 = this.f13;
                                             §§push(this);
                                             if(this.f14 <= this.f7)
                                             {
                                                addr1cca:
                                                §§pop().i25 = 1;
                                                §§push(this);
                                                if(this.f18 <= this.f7)
                                                {
                                                   addr1ce2:
                                                   §§pop().i26 = 1;
                                                   this.i25 = this.i26 | this.i25;
                                                   this.f14 = this.f17;
                                                   if(this.f14 <= this.f7)
                                                   {
                                                      this.i25 &= 1;
                                                      while(true)
                                                      {
                                                         if(this.i25 == 0)
                                                         {
                                                            this.f7 = 1;
                                                            this.f8 = this.f19;
                                                            this.f9 = this.f12;
                                                            this.f8 = this.f9 - this.f8;
                                                            this.f8 = this.f8;
                                                            this.f10 = this.f7;
                                                            this.f7 = this.f8;
                                                            this.f8 = this.f10;
                                                            this.f7 = this.f8 / this.f7;
                                                            this.f8 = this.f7;
                                                            this.f7 = this.f8;
                                                            this.f8 = this.f9 * this.f7;
                                                            this.f9 = this.f13;
                                                            this.f7 *= this.f9;
                                                            this.f8 = this.f8;
                                                            sf32(this.f8,this.i22);
                                                            this.f8 = this.f7;
                                                            sf32(this.f8,this.i15);
                                                            this.i25 = 2;
                                                            si32(this.i25,this.i6);
                                                            this.i25 = this.i23;
                                                            this.i26 = this.i21;
                                                            this.i27 = 36;
                                                            cmodule.Box2D.memcpy(this.i25,this.i26,this.i27);
                                                            §§goto(addr219f);
                                                         }
                                                      }
                                                      §§goto(addr246d);
                                                   }
                                                   this.f7 = 0;
                                                   this.f7 = this.f7;
                                                   this.f7 = this.f7;
                                                   this.f13 = this.f15;
                                                   if(this.f13 <= this.f7)
                                                   {
                                                      this.f7 = 0;
                                                      this.f7 = this.f7;
                                                      this.f7 = this.f7;
                                                      this.f9 = this.f9;
                                                      while(true)
                                                      {
                                                         if(this.f9 <= this.f7)
                                                         {
                                                            this.i25 = 1065353216;
                                                            si32(this.i25,this.i12);
                                                            this.i25 = 1;
                                                            si32(this.i25,this.i6);
                                                            this.i25 = this.i8;
                                                            this.i26 = this.i23;
                                                            this.i27 = 36;
                                                            cmodule.Box2D.memcpy(this.i25,this.i26,this.i27);
                                                            §§goto(addr219f);
                                                         }
                                                      }
                                                      §§goto(addr246d);
                                                   }
                                                   this.f7 = 0;
                                                   this.f7 = this.f7;
                                                   this.f7 = this.f7;
                                                   this.f9 = this.f12;
                                                   if(this.f9 <= this.f7)
                                                   {
                                                      this.f7 = 0;
                                                      this.f7 = this.f7;
                                                      this.f7 = this.f7;
                                                      this.f9 = this.f10;
                                                      while(true)
                                                      {
                                                         if(this.f9 <= this.f7)
                                                         {
                                                            this.i25 = 1065353216;
                                                            si32(this.i25,this.i15);
                                                            this.i25 = 1;
                                                            si32(this.i25,this.i6);
                                                            this.i25 = this.i8;
                                                            this.i26 = this.i21;
                                                            this.i27 = 36;
                                                            cmodule.Box2D.memcpy(this.i25,this.i26,this.i27);
                                                            §§goto(addr219f);
                                                         }
                                                      }
                                                      §§goto(addr246d);
                                                   }
                                                   this.f7 = 0;
                                                   this.f7 = this.f7;
                                                   this.f9 = this.f10;
                                                   this.f7 = this.f7;
                                                   this.f12 = this.f15;
                                                   §§push(this);
                                                   if(this.f9 <= this.f7)
                                                   {
                                                      addr1f7d:
                                                      §§pop().i25 = 1;
                                                      §§push(this);
                                                      if(this.f12 <= this.f7)
                                                      {
                                                         addr1f95:
                                                         §§pop().i26 = 1;
                                                         this.i25 = this.i26 | this.i25;
                                                         this.f9 = this.f11;
                                                         if(this.f9 <= this.f7)
                                                         {
                                                            this.i25 &= 1;
                                                            while(true)
                                                            {
                                                               if(this.i25 == 0)
                                                               {
                                                                  this.f7 = 1;
                                                                  this.f8 = this.f16;
                                                                  this.f9 = this.f10;
                                                                  this.f8 = this.f9 - this.f8;
                                                                  this.f8 = this.f8;
                                                                  this.f11 = this.f7;
                                                                  this.f7 = this.f8;
                                                                  this.f8 = this.f11;
                                                                  this.f7 = this.f8 / this.f7;
                                                                  this.f8 = this.f7;
                                                                  this.f7 = this.f8;
                                                                  this.f8 = this.f9 * this.f7;
                                                                  this.f9 = this.f15;
                                                                  this.f7 *= this.f9;
                                                                  this.f8 = this.f8;
                                                                  sf32(this.f8,this.i12);
                                                                  this.f8 = this.f7;
                                                                  sf32(this.f8,this.i15);
                                                                  this.i25 = 2;
                                                                  si32(this.i25,this.i6);
                                                                  this.i25 = this.i8;
                                                                  this.i26 = this.i21;
                                                                  this.i27 = 36;
                                                                  cmodule.Box2D.memcpy(this.i25,this.i26,this.i27);
                                                                  §§goto(addr219f);
                                                               }
                                                            }
                                                            §§goto(addr246d);
                                                         }
                                                         this.f7 = 1;
                                                         this.f9 = this.f17;
                                                         this.f10 = this.f11;
                                                         this.f11 = this.f10 + this.f9;
                                                         this.f11 = this.f11;
                                                         this.f8 = this.f8;
                                                         this.f11 = this.f11;
                                                         this.f11 += this.f8;
                                                         this.f11 = this.f11;
                                                         this.f7 = this.f7;
                                                         this.f11 = this.f11;
                                                         this.f7 = this.f7;
                                                         this.f7 /= this.f11;
                                                         this.f7 = this.f7;
                                                         this.f7 = this.f7;
                                                         this.f10 *= this.f7;
                                                         this.f9 *= this.f7;
                                                         this.f10 = this.f10;
                                                         this.f7 = this.f8 * this.f7;
                                                         sf32(this.f10,this.i22);
                                                         this.f8 = this.f9;
                                                         sf32(this.f8,this.i12);
                                                         this.f7 = this.f7;
                                                         sf32(this.f7,this.i15);
                                                         this.i25 = 3;
                                                         si32(this.i25,this.i6);
                                                         §§goto(addr219f);
                                                      }
                                                      §§goto(addr1f95);
                                                      §§push(0);
                                                   }
                                                   §§goto(addr1f7d);
                                                   §§push(0);
                                                }
                                                §§goto(addr1ce2);
                                                §§push(0);
                                             }
                                             §§goto(addr1cca);
                                             §§push(0);
                                          }
                                          §§goto(addr1b9c);
                                          §§push(0);
                                       }
                                       §§goto(addr1b84);
                                       §§push(0);
                                    }
                                    break loop13;
                                 }
                              }
                              this.i0 = cmodule.Box2D.___sF;
                              mstate.esp -= 24;
                              this.i1 = cmodule.Box2D.__2E_str1670;
                              this.i2 = cmodule.Box2D.__2E_str1208;
                              this.i3 = cmodule.Box2D.__ZZNK11b2LoopShape9GetVertexEiE8__func__;
                              this.i4 = cmodule.Box2D.__2E_str4211;
                              this.i5 = 103;
                              §§goto(addr0d8f);
                           }
                           §§goto(addr1174);
                        }
                        si32(this.i3,mstate.esp + 8);
                        si32(this.i4,mstate.esp + 12);
                        si32(this.i5,mstate.esp + 16);
                        si32(this.i6,mstate.esp + 20);
                        §§goto(addr22d1);
                     }
                     else
                     {
                        this.i2 = 0;
                        this.i8 = this.i1 + 48;
                        this.i9 = this.i1 + 44;
                        this.i10 = this.i1 + 16;
                        this.i11 = this.i1 + 20;
                        this.i12 = li32(mstate.ebp + -207);
                        while(true)
                        {
                           this.i13 = this.i5 + this.i2;
                           this.i14 = li8(this.i13 + 6);
                           si32(this.i14,this.i12 + 28);
                           this.i13 = li8(this.i13 + 9);
                           si32(this.i13,this.i12 + 32);
                           this.i15 = this.i12;
                           if(this.i14 >= 0)
                           {
                              this.i16 = li32(this.i11);
                              if(this.i16 <= this.i14)
                              {
                                 break;
                              }
                              addr04a4:
                              this.i16 = li32(this.i10);
                              this.i14 <<= 3;
                              this.i14 = this.i16 + this.i14;
                              this.f7 = lf32(this.i14);
                              this.f8 = lf32(this.i14 + 4);
                              if(this.i13 >= 0)
                              {
                                 this.i14 = li32(this.i8);
                                 if(this.i14 > this.i13)
                                 {
                                    this.i14 = 0;
                                    this.i16 = li32(this.i9);
                                    this.i13 <<= 3;
                                    this.f9 = lf32(mstate.ebp + -192);
                                    this.f9 = this.f9;
                                    this.f7 = this.f7;
                                    this.i13 = this.i16 + this.i13;
                                    this.f9 *= this.f7;
                                    this.f10 = this.f0;
                                    this.f11 = lf32(this.i13);
                                    this.f12 = this.f3;
                                    this.f12 *= this.f11;
                                    this.f13 = this.f4;
                                    this.f9 = this.f9;
                                    this.f7 = this.f10 * this.f7;
                                    this.f10 = this.f12;
                                    this.f11 = this.f13 * this.f11;
                                    this.f7 = this.f7;
                                    this.f9 = this.f9;
                                    this.f12 = lf32(mstate.ebp + -160);
                                    this.f12 = this.f12;
                                    this.f13 = this.f1;
                                    this.f8 = this.f8;
                                    this.f14 = lf32(this.i13 + 4);
                                    this.f11 = this.f11;
                                    this.f15 = this.f5;
                                    this.f9 = this.f12 + this.f9;
                                    this.f12 = this.f13 * this.f8;
                                    this.f13 = this.f2;
                                    this.f10 = this.f10;
                                    this.f16 = lf32(mstate.ebp + -176);
                                    this.f16 = this.f16;
                                    this.f7 = this.f7;
                                    this.f17 = lf32(mstate.ebp + -168);
                                    this.f17 = this.f17;
                                    this.f10 = this.f16 + this.f10;
                                    this.f15 *= this.f14;
                                    this.f16 = this.f6;
                                    this.f9 = this.f9;
                                    this.f7 = this.f17 + this.f7;
                                    this.f12 = this.f12;
                                    this.f8 = this.f13 * this.f8;
                                    this.f11 = this.f11;
                                    this.f13 = lf32(mstate.ebp + -184);
                                    this.f13 = this.f13;
                                    this.f10 = this.f10;
                                    this.f11 = this.f13 + this.f11;
                                    this.f13 = this.f15;
                                    this.f14 = this.f16 * this.f14;
                                    this.f7 = this.f7;
                                    this.f8 = this.f8;
                                    this.f12 = this.f12;
                                    this.f9 = this.f9;
                                    this.f11 = this.f11;
                                    this.f14 = this.f14;
                                    this.f9 += this.f12;
                                    this.f12 = this.f13;
                                    this.f10 = this.f10;
                                    this.f8 = this.f8;
                                    this.f7 = this.f7;
                                    this.f10 += this.f12;
                                    this.f9 = this.f9;
                                    this.f7 += this.f8;
                                    this.f8 = this.f14;
                                    this.f11 = this.f11;
                                    this.f10 = this.f10;
                                    this.f8 = this.f11 + this.f8;
                                    this.f7 = this.f7;
                                    sf32(this.f9,this.i15);
                                    sf32(this.f7,this.i12 + 4);
                                    this.f8 = this.f8;
                                    this.f9 = this.f9;
                                    this.f11 = this.f10;
                                    sf32(this.f10,this.i12 + 8);
                                    this.f9 = this.f11 - this.f9;
                                    this.f7 = this.f7;
                                    this.f10 = this.f8;
                                    this.f7 = this.f10 - this.f7;
                                    sf32(this.f8,this.i12 + 12);
                                    this.f8 = this.f9;
                                    sf32(this.f8,this.i12 + 16);
                                    this.f7 = this.f7;
                                    sf32(this.f7,this.i12 + 20);
                                    si32(this.i14,this.i12 + 24);
                                    this.i13 = li32(this.i6);
                                    this.i12 += 36;
                                    this.i2 += 1;
                                    if(this.i13 > this.i2)
                                    {
                                       continue;
                                    }
                                    this.i2 = this.i13;
                                    §§goto(addr0831);
                                 }
                              }
                           }
                           break;
                        }
                        this.i2 = cmodule.Box2D.___sF;
                        mstate.esp -= 24;
                        this.i12 = cmodule.Box2D.__2E_str1670;
                        this.i0 = cmodule.Box2D.__2E_str1208;
                        this.i1 = cmodule.Box2D.__ZZNK11b2LoopShape9GetVertexEiE8__func__;
                        this.i3 = cmodule.Box2D.__2E_str4211;
                        this.i4 = 103;
                        this.i2 += 176;
                        si32(this.i2,mstate.esp);
                        si32(this.i12,mstate.esp + 4);
                     }
                     §§goto(addr2295);
                  }
               }
               state = 1;
               mstate.esp -= 4;
               FSM_fprintf.start();
               return;
            case 2:
               break;
            case 1:
               mstate.esp += 24;
               state = 2;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            default:
               throw "Invalid state in __Z10b2DistanceP16b2DistanceOutputP14b2SimplexCachePK15b2DistanceInput";
         }
         while(true)
         {
            while(true)
            {
               while(true)
               {
                  if(this.i25 != 2)
                  {
                     if(this.i25 != 1)
                     {
                        break;
                     }
                     this.f7 = lf32(this.i9);
                     this.f8 = lf32(this.i24);
                     this.f7 = -this.f7;
                     this.f8 = -this.f8;
                     this.f7 = this.f7;
                     this.f8 = this.f8;
                  }
                  else
                  {
                     this.f7 = 0;
                     this.f8 = lf32(this.i11);
                     this.f9 = lf32(this.i9);
                     this.f10 = lf32(this.i10);
                     this.f11 = lf32(this.i24);
                     this.f8 -= this.f9;
                     this.f10 -= this.f11;
                     this.f8 = this.f8;
                     this.f10 = this.f10;
                     this.f12 = this.f8;
                     this.f13 = this.f10;
                     this.f11 = this.f12 * this.f11;
                     this.f9 = this.f13 * this.f9;
                     this.f11 = this.f11;
                     this.f9 = this.f9;
                     this.f9 = this.f9;
                     this.f11 = this.f11;
                     this.f9 = this.f11 - this.f9;
                     this.f9 = this.f9;
                     this.f7 = this.f7;
                     this.f7 = this.f7;
                     this.f9 = this.f9;
                     if(this.f9 > this.f7)
                     {
                        this.f7 = this.f8;
                        this.f7 = -this.f7;
                        this.f8 = this.f7;
                        this.f7 = this.f10;
                     }
                     else
                     {
                        this.f7 = this.f10;
                        this.f7 = -this.f7;
                        this.f7 = this.f7;
                     }
                  }
                  this.f9 = 1.42109e-14;
                  this.f10 = this.f8;
                  this.f11 = this.f7;
                  this.f10 *= this.f10;
                  this.f11 *= this.f11;
                  this.f10 = this.f10;
                  this.f11 = this.f11;
                  this.f11 = this.f11;
                  this.f10 = this.f10;
                  this.f10 += this.f11;
                  this.f10 = this.f10;
                  this.f9 = this.f9;
                  this.f9 = this.f9;
                  this.f10 = this.f10;
                  if(this.f10 < this.f9)
                  {
                     break loop18;
                  }
                  this.f9 = this.f8;
                  this.f9 = -this.f9;
                  this.f9 = this.f9;
                  this.f10 = this.f2;
                  this.f11 = this.f7;
                  this.f12 = this.f0;
                  this.f13 = this.f1;
                  this.f9 = this.f9;
                  this.f14 = lf32(mstate.ebp + -192);
                  this.f14 = this.f14;
                  this.f10 *= this.f11;
                  this.f11 = this.f12 * this.f11;
                  this.f12 = this.f13 * this.f9;
                  this.f9 = this.f14 * this.f9;
                  this.f10 = this.f10;
                  this.f11 = this.f11;
                  this.f12 = this.f12;
                  this.f9 = this.f9;
                  this.f10 = this.f10;
                  this.f12 = this.f12;
                  this.f11 = this.f11;
                  this.f9 = this.f9;
                  this.f10 = this.f12 - this.f10;
                  this.f9 -= this.f11;
                  this.f10 = this.f10;
                  this.f9 = this.f9;
                  this.i26 = li32(this.i20);
                  this.f11 = lf32(this.i26);
                  this.f12 = this.f9;
                  this.f13 = lf32(this.i26 + 4);
                  this.f14 = this.f10;
                  this.f13 *= this.f14;
                  this.f11 *= this.f12;
                  this.f12 = this.f13;
                  this.f11 = this.f11;
                  this.f12 = this.f12;
                  this.f11 = this.f11;
                  this.i27 = li32(this.i19);
                  this.f11 += this.f12;
                  this.f11 = this.f11;
                  this.i28 = this.i26;
                  if(this.i27 <= 1)
                  {
                     this.i26 = 0;
                  }
                  else
                  {
                     this.i29 = 0;
                     this.i30 = 1;
                     do
                     {
                        this.f12 = lf32(this.i26 + 8);
                        this.f13 = lf32(this.i26 + 12);
                        this.f14 = this.f9;
                        this.f15 = this.f10;
                        this.f12 *= this.f14;
                        this.f13 *= this.f15;
                        this.f12 = this.f12;
                        this.f13 = this.f13;
                        this.f13 = this.f13;
                        this.f12 = this.f12;
                        this.f12 += this.f13;
                        this.f12 = this.f12;
                        this.f11 = this.f11;
                        this.f12 = this.f12;
                        this.f13 = this.f12 > this.f11 ? this.f12 : this.f11;
                        this.i29 = this.f12 > this.f11 ? this.i30 : this.i29;
                        this.f11 = this.f13;
                        this.i30 += 1;
                        this.i26 += 8;
                     }
                     while(this.i27 > this.i30);
                     this.i26 = this.i29;
                  }
                  this.i29 = this.i25 * 36;
                  this.i29 = this.i7 + this.i29;
                  si32(this.i26,this.i29 + 28);
                  if(this.i27 <= this.i26)
                  {
                     break loop17;
                  }
                  if(this.i26 <= -1)
                  {
                     break loop16;
                  }
                  this.i27 = this.i26 << 3;
                  this.i27 = this.i28 + this.i27;
                  this.f9 = lf32(this.i27);
                  this.f10 = lf32(mstate.ebp + -192);
                  this.f10 = this.f10;
                  this.f10 *= this.f9;
                  this.f11 = this.f0;
                  this.f10 = this.f10;
                  this.f9 = this.f11 * this.f9;
                  this.f11 = lf32(this.i27 + 4);
                  this.f9 = this.f9;
                  this.f12 = this.f1;
                  this.f10 = this.f10;
                  this.f13 = lf32(mstate.ebp + -160);
                  this.f13 = this.f13;
                  this.f10 = this.f13 + this.f10;
                  this.f12 *= this.f11;
                  this.f13 = this.f2;
                  this.f9 = this.f9;
                  this.f14 = lf32(mstate.ebp + -168);
                  this.f14 = this.f14;
                  this.f10 = this.f10;
                  this.f9 = this.f14 + this.f9;
                  this.f12 = this.f12;
                  this.f11 = this.f13 * this.f11;
                  this.f9 = this.f9;
                  this.f11 = this.f11;
                  this.f12 = this.f12;
                  this.f10 = this.f10;
                  this.f13 = this.f5;
                  this.f8 = this.f8;
                  this.f14 = this.f3;
                  this.f15 = this.f6;
                  this.f7 = this.f7;
                  this.f16 = this.f4;
                  this.f10 += this.f12;
                  this.f12 = this.f8 * this.f13;
                  this.f8 *= this.f14;
                  this.f13 = this.f7 * this.f15;
                  this.f7 *= this.f16;
                  this.f11 = this.f11;
                  this.f9 = this.f9;
                  this.i27 = this.i25 * 36;
                  this.f9 += this.f11;
                  this.f11 = this.f12;
                  this.f8 = this.f8;
                  this.f12 = this.f13;
                  this.f7 = this.f7;
                  this.f10 = this.f10;
                  this.i27 = this.i7 + this.i27;
                  sf32(this.f10,this.i27);
                  this.f9 = this.f9;
                  this.f12 = this.f12;
                  this.f11 = this.f11;
                  this.f7 = this.f7;
                  this.f8 = this.f8;
                  this.f11 += this.f12;
                  this.f7 = this.f8 + this.f7;
                  sf32(this.f9,this.i27 + 4);
                  this.i27 = li32(this.i16);
                  this.f8 = this.f11;
                  this.f7 = this.f7;
                  this.f11 = lf32(this.i27);
                  this.f12 = this.f7;
                  this.f13 = lf32(this.i27 + 4);
                  this.f14 = this.f8;
                  this.f11 *= this.f12;
                  this.f12 = this.f13 * this.f14;
                  this.f11 = this.f11;
                  this.f12 = this.f12;
                  this.f12 = this.f12;
                  this.f11 = this.f11;
                  this.i28 = li32(this.i17);
                  this.f11 += this.f12;
                  this.f11 = this.f11;
                  this.i29 = this.i27;
                  if(this.i28 <= 1)
                  {
                     this.i27 = 0;
                  }
                  else
                  {
                     this.i30 = 0;
                     this.i31 = 1;
                     do
                     {
                        this.f12 = lf32(this.i27 + 8);
                        this.f13 = lf32(this.i27 + 12);
                        this.f14 = this.f7;
                        this.f15 = this.f8;
                        this.f12 *= this.f14;
                        this.f13 *= this.f15;
                        this.f12 = this.f12;
                        this.f13 = this.f13;
                        this.f13 = this.f13;
                        this.f12 = this.f12;
                        this.f12 += this.f13;
                        this.f12 = this.f12;
                        this.f11 = this.f11;
                        this.f12 = this.f12;
                        this.f13 = this.f12 > this.f11 ? this.f12 : this.f11;
                        this.i30 = this.f12 > this.f11 ? this.i31 : this.i30;
                        this.f11 = this.f13;
                        this.i31 += 1;
                        this.i27 += 8;
                     }
                     while(this.i28 > this.i31);
                     this.i27 = this.i30;
                  }
                  this.i30 = this.i25 * 36;
                  this.i30 = this.i7 + this.i30;
                  si32(this.i27,this.i30 + 32);
                  if(this.i28 <= this.i27)
                  {
                     break loop15;
                  }
                  if(this.i27 <= -1)
                  {
                     break loop15;
                  }
                  this.i28 = this.i27 << 3;
                  this.i28 = this.i29 + this.i28;
                  this.f7 = lf32(this.i28);
                  this.f8 = this.f3;
                  this.f8 *= this.f7;
                  this.f11 = this.f4;
                  this.f8 = this.f8;
                  this.f7 = this.f11 * this.f7;
                  this.f11 = lf32(this.i28 + 4);
                  this.f7 = this.f7;
                  this.f12 = this.f5;
                  this.f8 = this.f8;
                  this.f13 = lf32(mstate.ebp + -176);
                  this.f13 = this.f13;
                  this.f8 = this.f13 + this.f8;
                  this.f12 *= this.f11;
                  this.f13 = this.f6;
                  this.f7 = this.f7;
                  this.f14 = lf32(mstate.ebp + -184);
                  this.f14 = this.f14;
                  this.f8 = this.f8;
                  this.f7 = this.f14 + this.f7;
                  this.f12 = this.f12;
                  this.f11 = this.f13 * this.f11;
                  this.f7 = this.f7;
                  this.f11 = this.f11;
                  this.f12 = this.f12;
                  this.f8 = this.f8;
                  this.f8 += this.f12;
                  this.f11 = this.f11;
                  this.f7 = this.f7;
                  this.f8 = this.f8;
                  this.f7 += this.f11;
                  this.i25 *= 36;
                  this.f7 = this.f7;
                  this.f10 = this.f10;
                  this.f11 = this.f8;
                  this.i25 = this.i7 + this.i25;
                  sf32(this.f8,this.i25 + 8);
                  this.f8 = this.f11 - this.f10;
                  this.f9 = this.f9;
                  this.f10 = this.f7;
                  this.f9 = this.f10 - this.f9;
                  sf32(this.f7,this.i25 + 12);
                  this.f7 = this.f8;
                  sf32(this.f7,this.i25 + 16);
                  this.f7 = this.f9;
                  sf32(this.f7,this.i25 + 20);
                  this.i25 = li32(cmodule.Box2D._b2_gjkIters);
                  this.i25 += 1;
                  si32(this.i25,cmodule.Box2D._b2_gjkIters);
                  if(this.i2 >= 1)
                  {
                     this.i25 = 0;
                     this.i28 = this.i25;
                     while(true)
                     {
                        this.i29 = this.i3 + this.i28;
                        this.i29 = li32(this.i29);
                        if(this.i26 == this.i29)
                        {
                           this.i29 = this.i0 + this.i28;
                           this.i29 = li32(this.i29);
                           if(this.i27 == this.i29)
                           {
                              break loop14;
                           }
                        }
                        this.i28 += 4;
                        this.i25 += 1;
                        if(this.i25 < this.i2)
                        {
                           continue;
                        }
                     }
                     addr2fb5:
                     this.i0 = this.i2;
                     this.i2 = li32(cmodule.Box2D._b2_gjkMaxIters);
                     this.i2 = this.i2 > this.i0 ? this.i2 : this.i0;
                     si32(this.i2,cmodule.Box2D._b2_gjkMaxIters);
                     this.i2 = li32(this.i6);
                     if(this.i2 <= 1)
                     {
                        if(this.i2 != 0)
                        {
                           if(this.i2 != 1)
                           {
                              addr32f4:
                              this.i0 = cmodule.Box2D.___sF;
                              mstate.esp -= 24;
                              this.i1 = cmodule.Box2D.__2E_str1670;
                              this.i4 = cmodule.Box2D.__2E_str46253;
                              this.i5 = cmodule.Box2D.__ZZNK9b2Simplex16GetWitnessPointsEP6b2Vec2S1_E8__func__;
                              this.i6 = cmodule.Box2D.__2E_str45252;
                              this.i9 = 236;
                           }
                           else
                           {
                              this.f0 = lf32(mstate.ebp + -112);
                              this.f1 = lf32(mstate.ebp + -108);
                              sf32(this.f0,this.i4);
                              sf32(this.f1,this.i4 + 4);
                              this.f0 = lf32(mstate.ebp + -104);
                              this.f1 = lf32(mstate.ebp + -100);
                              sf32(this.f0,this.i4 + 8);
                              sf32(this.f1,this.i4 + 12);
                              §§goto(addr3525);
                           }
                        }
                        else
                        {
                           this.i0 = cmodule.Box2D.___sF;
                           mstate.esp -= 24;
                           this.i1 = cmodule.Box2D.__2E_str1670;
                           this.i4 = cmodule.Box2D.__2E_str46253;
                           this.i5 = cmodule.Box2D.__ZZNK9b2Simplex16GetWitnessPointsEP6b2Vec2S1_E8__func__;
                           this.i6 = cmodule.Box2D.__2E_str45252;
                           this.i9 = 217;
                        }
                        this.i0 += 176;
                        si32(this.i0,mstate.esp);
                        si32(this.i1,mstate.esp + 4);
                        si32(this.i4,mstate.esp + 8);
                        si32(this.i5,mstate.esp + 12);
                        si32(this.i6,mstate.esp + 16);
                        si32(this.i9,mstate.esp + 20);
                        addr22d1:
                        break loop8;
                     }
                     if(this.i2 != 2)
                     {
                        if(this.i2 != 3)
                        {
                           §§goto(addr32f4);
                        }
                        else
                        {
                           this.f0 = lf32(this.i12);
                           this.f1 = lf32(mstate.ebp + -76);
                           this.f2 = lf32(this.i22);
                           this.f3 = lf32(mstate.ebp + -112);
                           this.f4 = lf32(mstate.ebp + -72);
                           this.f5 = lf32(mstate.ebp + -108);
                           this.f1 *= this.f0;
                           this.f3 *= this.f2;
                           this.f0 = this.f4 * this.f0;
                           this.f1 = this.f1;
                           this.f2 = this.f5 * this.f2;
                           this.f3 = this.f3;
                           this.f0 = this.f0;
                           this.f2 = this.f2;
                           this.f4 = lf32(this.i15);
                           this.f5 = lf32(mstate.ebp + -40);
                           this.f1 = this.f1;
                           this.f3 = this.f3;
                           this.f6 = lf32(mstate.ebp + -36);
                           this.f5 *= this.f4;
                           this.f1 = this.f3 + this.f1;
                           this.f0 = this.f0;
                           this.f2 = this.f2;
                           this.f3 = this.f6 * this.f4;
                           this.f4 = this.f5;
                           this.f0 = this.f2 + this.f0;
                           this.f1 = this.f1;
                           this.f2 = this.f3;
                           this.f0 = this.f0;
                           this.f3 = this.f4;
                           this.f1 = this.f1;
                           this.f1 += this.f3;
                           this.f2 = this.f2;
                           this.f0 = this.f0;
                           this.f0 += this.f2;
                           this.f1 = this.f1;
                           sf32(this.f1,this.i4);
                           this.f0 = this.f0;
                           sf32(this.f0,this.i4 + 4);
                           sf32(this.f1,this.i4 + 8);
                           sf32(this.f0,this.i4 + 12);
                        }
                     }
                     else
                     {
                        this.f0 = lf32(this.i12);
                        this.f1 = lf32(mstate.ebp + -76);
                        this.f2 = lf32(this.i22);
                        this.f3 = lf32(mstate.ebp + -112);
                        this.f4 = lf32(mstate.ebp + -72);
                        this.f5 = lf32(mstate.ebp + -108);
                        this.f1 *= this.f0;
                        this.f3 *= this.f2;
                        this.f4 *= this.f0;
                        this.f1 = this.f1;
                        this.f5 *= this.f2;
                        this.f3 = this.f3;
                        this.f4 = this.f4;
                        this.f5 = this.f5;
                        this.f1 = this.f1;
                        this.f3 = this.f3;
                        this.f1 = this.f3 + this.f1;
                        this.f3 = this.f4;
                        this.f4 = this.f5;
                        this.f3 = this.f4 + this.f3;
                        this.f1 = this.f1;
                        sf32(this.f1,this.i4);
                        this.f1 = this.f3;
                        sf32(this.f1,this.i4 + 4);
                        this.f1 = lf32(mstate.ebp + -68);
                        this.f3 = lf32(mstate.ebp + -104);
                        this.f4 = lf32(mstate.ebp + -64);
                        this.f5 = lf32(mstate.ebp + -100);
                        this.f1 *= this.f0;
                        this.f3 *= this.f2;
                        this.f0 = this.f4 * this.f0;
                        this.f1 = this.f1;
                        this.f2 = this.f5 * this.f2;
                        this.f3 = this.f3;
                        this.f0 = this.f0;
                        this.f2 = this.f2;
                        this.f1 = this.f1;
                        this.f3 = this.f3;
                        this.f1 = this.f3 + this.f1;
                        this.f0 = this.f0;
                        this.f2 = this.f2;
                        this.f0 = this.f2 + this.f0;
                        this.f1 = this.f1;
                        sf32(this.f1,this.i4 + 8);
                        this.f0 = this.f0;
                        sf32(this.f0,this.i4 + 12);
                     }
                     addr3525:
                     this.f0 = lf32(this.i4 + 4);
                     this.f1 = lf32(this.i4 + 12);
                     this.f2 = lf32(this.i4);
                     this.f3 = lf32(this.i4 + 8);
                     this.f0 -= this.f1;
                     this.f1 = this.f2 - this.f3;
                     this.f0 = this.f0;
                     this.f1 = this.f1;
                     this.f0 = this.f0;
                     this.f1 = this.f1;
                     this.f0 *= this.f0;
                     this.f1 *= this.f1;
                     this.f0 = this.f0;
                     this.f1 = this.f1;
                     this.f0 = this.f0;
                     this.f1 = this.f1;
                     this.f0 = this.f1 + this.f0;
                     this.f0 = this.f0;
                     this.f0 = this.f0;
                     this.f0 = Math.sqrt(this.f0);
                     this.f0 = this.f0;
                     sf32(this.f0,this.i4 + 16);
                     si32(this.i0,this.i4 + 20);
                     this.i0 = li32(this.i6);
                     this.i2 = this.i4 + 12;
                     this.i3 = this.i4 + 16;
                     this.i7 = this.i4 + 8;
                     this.i8 = this.i4 + 4;
                     if(this.i0 <= 1)
                     {
                        if(this.i0 != 0)
                        {
                           if(this.i0 == 1)
                           {
                              this.f0 = 0;
                              this.f0 = this.f0;
                              §§goto(addr394b);
                           }
                           addr3839:
                           this.i1 = cmodule.Box2D.___sF;
                           mstate.esp -= 24;
                           this.i2 = cmodule.Box2D.__2E_str1670;
                           this.i3 = cmodule.Box2D.__2E_str46253;
                           this.i4 = cmodule.Box2D.__ZZNK9b2Simplex9GetMetricEvE8__func__;
                           this.i5 = cmodule.Box2D.__2E_str45252;
                           this.i6 = 259;
                        }
                        else
                        {
                           this.i1 = cmodule.Box2D.___sF;
                           mstate.esp -= 24;
                           this.i2 = cmodule.Box2D.__2E_str1670;
                           this.i3 = cmodule.Box2D.__2E_str46253;
                           this.i4 = cmodule.Box2D.__ZZNK9b2Simplex9GetMetricEvE8__func__;
                           this.i5 = cmodule.Box2D.__2E_str45252;
                           this.i6 = 246;
                        }
                        this.i1 += 176;
                        si32(this.i1,mstate.esp);
                        si32(this.i2,mstate.esp + 4);
                        break loop9;
                     }
                     if(this.i0 != 2)
                     {
                        if(this.i0 != 3)
                        {
                           §§goto(addr3839);
                        }
                        else
                        {
                           this.f0 = lf32(this.i14);
                           this.f1 = lf32(this.i9);
                           this.f2 = lf32(this.i11);
                           this.f3 = lf32(this.i13);
                           this.f4 = lf32(this.i24);
                           this.f5 = lf32(this.i10);
                           this.f0 -= this.f1;
                           this.f1 = this.f2 - this.f1;
                           this.f2 = this.f3 - this.f4;
                           this.f3 = this.f5 - this.f4;
                           this.f0 = this.f0;
                           this.f1 = this.f1;
                           this.f2 = this.f2;
                           this.f3 = this.f3;
                           this.f0 = this.f0;
                           this.f3 = this.f3;
                           this.f2 = this.f2;
                           this.f1 = this.f1;
                           this.f0 = this.f3 * this.f0;
                           this.f1 *= this.f2;
                           this.f0 = this.f0;
                           this.f1 = this.f1;
                           this.f1 = this.f1;
                           this.f0 = this.f0;
                           this.f0 -= this.f1;
                           this.f0 = this.f0;
                        }
                     }
                     else
                     {
                        this.f0 = lf32(this.i9);
                        this.f1 = lf32(this.i11);
                        this.f2 = lf32(this.i24);
                        this.f3 = lf32(this.i10);
                        this.f0 -= this.f1;
                        this.f1 = this.f2 - this.f3;
                        this.f0 = this.f0;
                        this.f1 = this.f1;
                        this.f0 = this.f0;
                        this.f1 = this.f1;
                        this.f0 *= this.f0;
                        this.f1 *= this.f1;
                        this.f0 = this.f0;
                        this.f1 = this.f1;
                        this.f0 = this.f0;
                        this.f1 = this.f1;
                        this.f0 = this.f1 + this.f0;
                        this.f0 = this.f0;
                        this.f0 = this.f0;
                        this.f0 = Math.sqrt(this.f0);
                        this.f0 = this.f0;
                     }
                     addr394b:
                     this.i0 = li32(mstate.ebp + -198);
                     sf32(this.f0,this.i0);
                     this.i0 = li32(this.i6);
                     this.i6 = li32(mstate.ebp + -153);
                     si16(this.i0,this.i6);
                     if(this.i0 >= 1)
                     {
                        this.i6 = 0;
                        this.i9 = li32(mstate.ebp + -207);
                        do
                        {
                           this.i10 = li8(this.i9 + 28);
                           this.i11 = this.i5 + this.i6;
                           si8(this.i10,this.i11 + 6);
                           this.i10 = li8(this.i9 + 32);
                           si8(this.i10,this.i11 + 9);
                           this.i9 += 36;
                           this.i6 += 1;
                        }
                        while(this.i0 > this.i6);
                     }
                     this.i0 = li8(this.i1 + 104);
                     if(this.i0 != 0)
                     {
                        this.f0 = lf32(this.i1 + 24);
                        this.f1 = lf32(this.i1 + 52);
                        this.f2 = this.f1;
                        this.f3 = this.f0;
                        this.f4 = lf32(this.i3);
                        this.f2 = this.f3 + this.f2;
                        this.f2 = this.f2;
                        this.f3 = this.f2;
                        this.f5 = this.f4;
                        while(true)
                        {
                           if(this.f5 > this.f3)
                           {
                              this.f3 = 1.19209e-7;
                              this.f3 = this.f3;
                              this.f3 = this.f3;
                              this.f5 = this.f4;
                              if(this.f5 > this.f3)
                              {
                                 this.f3 = 1.19209e-7;
                                 this.f2 = this.f2;
                                 this.f4 = this.f4;
                                 this.f2 = this.f4 - this.f2;
                                 this.f2 = this.f2;
                                 sf32(this.f2,this.i3);
                                 this.f2 = lf32(this.i2);
                                 this.f4 = lf32(this.i8);
                                 this.f5 = lf32(this.i7);
                                 this.f6 = lf32(this.i4);
                                 this.f7 = this.f4;
                                 this.f8 = this.f2;
                                 this.f9 = this.f6;
                                 this.f10 = this.f5;
                                 this.f7 = this.f8 - this.f7;
                                 this.f8 = this.f10 - this.f9;
                                 this.f7 = this.f7;
                                 this.f8 = this.f8;
                                 this.f9 = this.f7;
                                 this.f10 = this.f8;
                                 this.f9 *= this.f9;
                                 this.f10 *= this.f10;
                                 this.f9 = this.f9;
                                 this.f10 = this.f10;
                                 this.f9 = this.f9;
                                 this.f10 = this.f10;
                                 this.f9 = this.f10 + this.f9;
                                 this.f9 = this.f9;
                                 this.f9 = this.f9;
                                 this.f9 = Math.sqrt(this.f9);
                                 this.f9 = this.f9;
                                 this.f3 = this.f3;
                                 this.f3 = this.f3;
                                 this.f10 = this.f9;
                                 if(this.f10 >= this.f3)
                                 {
                                    this.f3 = 1;
                                    this.f3 = this.f3;
                                    this.f9 = this.f9;
                                    this.f3 = this.f3;
                                    this.f3 /= this.f9;
                                    this.f3 = this.f3;
                                    this.f8 = this.f8;
                                    this.f3 = this.f3;
                                    this.f7 = this.f7;
                                    this.f8 *= this.f3;
                                    this.f3 = this.f7 * this.f3;
                                    this.f7 = this.f8;
                                    this.f3 = this.f3;
                                    this.f8 = this.f7;
                                    this.f7 = this.f3;
                                 }
                                 this.f3 = this.f8;
                                 this.f0 = this.f0;
                                 this.f3 = this.f3;
                                 this.f7 = this.f7;
                                 this.f8 = this.f3 * this.f0;
                                 this.f1 = this.f1;
                                 this.f0 = this.f7 * this.f0;
                                 this.f8 = this.f8;
                                 this.f0 = this.f0;
                                 this.f3 *= this.f1;
                                 this.f8 = this.f8;
                                 this.f6 = this.f6;
                                 this.f1 = this.f7 * this.f1;
                                 this.f6 += this.f8;
                                 this.f3 = this.f3;
                                 this.f0 = this.f0;
                                 this.f4 = this.f4;
                                 this.f0 = this.f4 + this.f0;
                                 this.f1 = this.f1;
                                 this.f4 = this.f6;
                                 this.f3 = this.f3;
                                 this.f5 = this.f5;
                                 this.f3 = this.f5 - this.f3;
                                 sf32(this.f4,this.i4);
                                 this.f0 = this.f0;
                                 this.f1 = this.f1;
                                 this.f2 = this.f2;
                                 this.f1 = this.f2 - this.f1;
                                 sf32(this.f0,this.i8);
                                 this.f0 = this.f3;
                                 sf32(this.f0,this.i7);
                                 this.f0 = this.f1;
                                 sf32(this.f0,this.i2);
                                 break;
                              }
                           }
                           this.f0 = 0.5;
                           this.f1 = lf32(this.i4);
                           this.f2 = lf32(this.i7);
                           this.f1 += this.f2;
                           this.f2 = lf32(this.i8);
                           this.f3 = lf32(this.i2);
                           this.f2 += this.f3;
                           this.f1 = this.f1;
                           this.f0 = this.f0;
                           this.f2 = this.f2;
                           this.f0 = this.f0;
                           this.f1 = this.f1;
                           this.f2 = this.f2;
                           this.f1 *= this.f0;
                           this.f0 = this.f2 * this.f0;
                           this.f1 = this.f1;
                           sf32(this.f1,this.i4);
                           this.f0 = this.f0;
                           sf32(this.f0,this.i8);
                           sf32(this.f1,this.i7);
                           sf32(this.f0,this.i2);
                           this.i0 = 0;
                           si32(this.i0,this.i3);
                           break;
                        }
                     }
                     mstate.esp = mstate.ebp;
                     mstate.ebp = li32(mstate.esp);
                     mstate.esp += 4;
                     mstate.esp += 4;
                     mstate.gworker = caller;
                     return;
                  }
                  this.i2 = li32(this.i6);
                  this.i2 += 1;
                  si32(this.i2,this.i6);
                  this.i18 += 1;
                  §§goto(addr2f8f);
               }
               §§goto(addr246d);
            }
            §§goto(addr2270);
         }
         §§goto(addr04a4);
      }
   }
}

