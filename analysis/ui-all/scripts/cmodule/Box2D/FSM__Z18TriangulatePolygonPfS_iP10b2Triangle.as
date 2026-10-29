package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__Z18TriangulatePolygonPfS_iP10b2Triangle extends Machine
   {
      
      public static const intRegCount:int = 32;
      
      public static const NumberRegCount:int = 15;
      
      public var i21:int;
      
      public var f10:Number;
      
      public var i30:int;
      
      public var i31:int;
      
      public var f13:Number;
      
      public var f14:Number;
      
      public var f0:Number;
      
      public var f1:Number;
      
      public var f3:Number;
      
      public var f5:Number;
      
      public var f7:Number;
      
      public var f2:Number;
      
      public var f4:Number;
      
      public var f6:Number;
      
      public var f8:Number;
      
      public var f11:Number;
      
      public var f9:Number;
      
      public var f12:Number;
      
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
      
      public function FSM__Z18TriangulatePolygonPfS_iP10b2Triangle()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__Z18TriangulatePolygonPfS_iP10b2Triangle = null;
         _loc1_ = new FSM__Z18TriangulatePolygonPfS_iP10b2Triangle();
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
               mstate.esp -= 156;
               this.i0 = li32(mstate.ebp + 16);
               this.i1 = li32(mstate.ebp + 8);
               this.i2 = li32(mstate.ebp + 12);
               this.i3 = li32(mstate.ebp + 20);
               si32(this.i3,mstate.ebp + -99);
               if(this.i0 <= 2)
               {
                  this.i0 = 0;
                  break;
               }
               mstate.esp -= 4;
               this.i3 = this.i0 << 2;
               si32(this.i3,mstate.esp);
               state = 1;
               mstate.esp -= 4;
               FSM__Znwm.start();
               return;
               break;
            case 1:
               this.i4 = mstate.eax;
               si32(this.i4,mstate.ebp + -81);
               mstate.esp += 4;
               mstate.esp -= 4;
               si32(this.i3,mstate.esp);
               state = 2;
               mstate.esp -= 4;
               FSM__Znwm.start();
               return;
            case 2:
               this.i4 = mstate.eax;
               si32(this.i4,mstate.ebp + -9);
               mstate.esp += 4;
               this.i4 = li32(mstate.ebp + -81);
               this.i5 = this.i4;
               this.i6 = li32(mstate.ebp + -9);
               this.i7 = this.i6;
               if(this.i0 >= 1)
               {
                  this.i8 = 0;
                  this.i9 = this.i8;
                  do
                  {
                     this.i10 = this.i1 + this.i9;
                     this.f0 = lf32(this.i10);
                     this.i10 = this.i4 + this.i9;
                     sf32(this.f0,this.i10);
                     this.i10 = this.i2 + this.i9;
                     this.f0 = lf32(this.i10);
                     this.i10 = this.i6 + this.i9;
                     sf32(this.f0,this.i10);
                     this.i9 += 4;
                     this.i8 += 1;
                  }
                  while(this.i8 < this.i0);
               }
               while(true)
               {
                  if(this.i0 >= 3)
                  {
                     this.i8 = -1;
                     this.i9 = 0;
                     this.i10 = this.i9;
                     this.i11 = this.i9;
                     this.i12 = this.i8;
                     loop15:
                     while(true)
                     {
                        this.i13 = this.i9;
                        this.i15 = this.i8;
                        this.i16 = this.i10;
                        if(this.i13 >= this.i0)
                        {
                           this.i8 = this.i12;
                           this.i9 = this.i15;
                           this.i10 = this.i16;
                           break;
                        }
                        this.i8 = this.i11 + 4;
                        this.i10 = this.i6 + this.i11;
                        this.i14 = this.i4 + this.i11;
                        this.i17 = this.i13 + 1;
                        this.i9 = this.i17;
                        while(this.i9 < this.i0)
                        {
                           this.f0 = 0;
                           this.i18 = this.i4 + this.i8;
                           this.f1 = lf32(this.i14);
                           this.f2 = lf32(this.i18);
                           this.f3 = this.f1 - this.f2;
                           this.f1 = this.f2 - this.f1;
                           this.f2 = this.f3;
                           this.f1 = this.f1;
                           this.f0 = this.f0;
                           this.f1 = this.f1;
                           this.f0 = this.f0;
                           this.f2 = this.f2;
                           this.f0 = this.f2 <= this.f0 ? this.f1 : this.f2;
                           this.f1 = 0.001;
                           this.f0 = this.f0;
                           this.f1 = this.f1;
                           this.f1 = this.f1;
                           this.f0 = this.f0;
                           if(this.f0 < this.f1)
                           {
                              this.f0 = 0;
                              this.i18 = this.i6 + this.i8;
                              this.f1 = lf32(this.i10);
                              this.f2 = lf32(this.i18);
                              this.f3 = this.f1 - this.f2;
                              this.f1 = this.f2 - this.f1;
                              this.f2 = this.f3;
                              this.f1 = this.f1;
                              this.f0 = this.f0;
                              this.f1 = this.f1;
                              this.f0 = this.f0;
                              this.f2 = this.f2;
                              this.f0 = this.f2 <= this.f0 ? this.f1 : this.f2;
                              this.f1 = 0.001;
                              this.f0 = this.f0;
                              this.f1 = this.f1;
                              this.f1 = this.f1;
                              this.f0 = this.f0;
                              if(this.f0 < this.f1)
                              {
                                 if(this.i17 != this.i9)
                                 {
                                    this.i8 = 1;
                                    this.i10 = this.i13;
                                    addr0583:
                                    this.i12 = this.i9;
                                    this.i14 = this.i8;
                                    this.i8 = this.i11 + 4;
                                    this.i9 = this.i13 + 1;
                                    this.i11 = this.i14 & 0xFF;
                                    if(this.i11 != 0)
                                    {
                                       this.i8 = this.i12;
                                       this.i9 = this.i10;
                                       this.i10 = this.i14;
                                       break loop15;
                                    }
                                    continue loop15;
                                 }
                              }
                           }
                           this.i8 += 4;
                           this.i9 += 1;
                        }
                        this.i9 = this.i12;
                        this.i10 = this.i15;
                        this.i8 = this.i16;
                        §§goto(addr0583);
                        this.i11 = this.i8;
                        this.i8 = this.i10;
                        this.i10 = this.i14;
                     }
                     this.i4 = this.i8;
                     this.i6 = this.i9;
                     this.i8 = this.i10;
                     this.i9 = this.i8 & 0xFF;
                     if(this.i9 == 0)
                     {
                        this.i5 = 0;
                        this.i11 = this.i5;
                        this.i4 = this.i8;
                        this.i7 = this.i5;
                        this.i8 = this.i5;
                        this.i9 = this.i11;
                        this.i10 = this.i5;
                        this.i6 = this.i5;
                        this.i5 = this.i11;
                        break;
                     }
                     this.i9 = this.i4 - this.i6;
                     if(this.i9 != this.i0)
                     {
                        mstate.esp -= 4;
                        this.i10 = this.i9 << 2;
                        si32(this.i10,mstate.esp);
                        state = 3;
                        mstate.esp -= 4;
                        FSM__Znwm.start();
                        return;
                     }
                  }
                  this.i4 = 0;
                  this.i5 = this.i4;
                  this.i6 = this.i4;
                  this.i7 = this.i6;
                  this.i8 = this.i6;
                  this.i9 = this.i5;
                  this.i10 = this.i6;
                  break;
               }
               addr1457:
               si32(this.i7,mstate.ebp + -45);
               this.i7 = this.i8;
               si32(this.i7,mstate.ebp + -18);
               this.i7 = this.i9;
               this.i8 = this.i10;
               si32(this.i8,mstate.ebp + -54);
               si32(this.i6,mstate.ebp + -27);
               this.i4 &= 255;
               if(this.i4 != 0)
               {
                  this.i0 = this.i7 << 3;
                  mstate.esp -= 4;
                  this.i0 |= 4;
                  si32(this.i0,mstate.esp);
                  state = 23;
                  mstate.esp -= 4;
                  FSM__Znwm.start();
                  return;
               }
               this.i4 = this.i0 + -2;
               si32(this.i4,mstate.ebp + -63);
               this.i4 <<= 3;
               mstate.esp -= 4;
               this.i4 |= 4;
               si32(this.i4,mstate.esp);
               state = 43;
               mstate.esp -= 4;
               FSM__Znwm.start();
               return;
               break;
            case 3:
               this.i11 = mstate.eax;
               mstate.esp += 4;
               mstate.esp -= 4;
               si32(this.i10,mstate.esp);
               state = 4;
               mstate.esp -= 4;
               FSM__Znwm.start();
               return;
            case 4:
               this.i12 = mstate.eax;
               mstate.esp += 4;
               this.i13 = this.i11;
               this.i14 = this.i12;
               if(this.i9 >= 1)
               {
                  this.i15 = 0;
                  this.i16 = this.i15;
                  do
                  {
                     this.i17 = this.i6 + this.i15;
                     this.i17 %= this.i0;
                     if(this.i17 < 0)
                     {
                        do
                        {
                           this.i17 = this.i0 + this.i17;
                        }
                        while(this.i17 < 0);
                     }
                     this.i17 <<= 2;
                     this.i18 = this.i5 + this.i17;
                     this.f0 = lf32(this.i18);
                     this.i18 = this.i13 + this.i16;
                     sf32(this.f0,this.i18);
                     this.i17 = this.i7 + this.i17;
                     this.f0 = lf32(this.i17);
                     this.i17 = this.i14 + this.i16;
                     sf32(this.f0,this.i17);
                     this.i16 += 4;
                     this.i15 += 1;
                  }
                  while(this.i15 != this.i9);
               }
               mstate.esp -= 4;
               si32(this.i10,mstate.esp);
               state = 5;
               mstate.esp -= 4;
               FSM__Znwm.start();
               return;
            case 5:
               this.i15 = mstate.eax;
               mstate.esp += 4;
               mstate.esp -= 4;
               si32(this.i10,mstate.esp);
               state = 6;
               mstate.esp -= 4;
               FSM__Znwm.start();
               return;
            case 6:
               this.i16 = mstate.eax;
               mstate.esp += 4;
               this.i17 = this.i15;
               this.i18 = this.i16;
               if(this.i9 >= 1)
               {
                  this.i19 = 0;
                  this.i20 = this.i19;
                  do
                  {
                     this.i21 = this.i13 + this.i20;
                     this.f0 = lf32(this.i21);
                     this.i21 = this.i17 + this.i20;
                     sf32(this.f0,this.i21);
                     this.i21 = this.i14 + this.i20;
                     this.f0 = lf32(this.i21);
                     this.i21 = this.i18 + this.i20;
                     sf32(this.f0,this.i21);
                     this.i20 += 4;
                     this.i19 += 1;
                  }
                  while(this.i9 > this.i19);
               }
               if(this.i4 != this.i6)
               {
                  mstate.esp -= 4;
                  si32(this.i10,mstate.esp);
                  state = 7;
                  mstate.esp -= 4;
                  FSM__Znwm.start();
                  return;
               }
               this.i10 = 0;
               this.i13 = this.i10;
               this.i14 = this.i13;
               addr0aad:
               this.i19 = this.i14;
               this.i20 = this.i13;
               if(this.i10 >= 1)
               {
                  this.i21 = 0;
                  this.i22 = this.i21;
                  do
                  {
                     this.i23 = this.i17 + this.i22;
                     this.f0 = lf32(this.i23);
                     this.i23 = this.i20 + this.i22;
                     sf32(this.f0,this.i23);
                     this.i23 = this.i18 + this.i22;
                     this.f0 = lf32(this.i23);
                     this.i23 = this.i19 + this.i22;
                     sf32(this.f0,this.i23);
                     this.i22 += 4;
                     this.i21 += 1;
                  }
                  while(this.i10 > this.i21);
               }
               if(this.i11 != 0)
               {
                  this.i17 = 0;
                  mstate.esp -= 8;
                  si32(this.i11,mstate.esp);
                  si32(this.i17,mstate.esp + 4);
                  state = 9;
                  mstate.esp -= 4;
                  FSM_pubrealloc.start();
                  return;
               }
               addr0bcc:
               if(this.i12 != 0)
               {
                  this.i11 = 0;
                  mstate.esp -= 8;
                  si32(this.i12,mstate.esp);
                  si32(this.i11,mstate.esp + 4);
                  state = 10;
                  mstate.esp -= 4;
                  FSM_pubrealloc.start();
                  return;
               }
               §§goto(addr0c3e);
               break;
            case 7:
               this.i13 = mstate.eax;
               mstate.esp += 4;
               mstate.esp -= 4;
               si32(this.i10,mstate.esp);
               state = 8;
               mstate.esp -= 4;
               FSM__Znwm.start();
               return;
            case 8:
               this.i10 = mstate.eax;
               mstate.esp += 4;
               this.i14 = this.i10;
               this.i10 = this.i9;
               §§goto(addr0aad);
            case 9:
               this.i11 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr0bcc);
            case 10:
               this.i11 = mstate.eax;
               mstate.esp += 8;
               addr0c3e:
               this.i11 = this.i0 - this.i9;
               mstate.esp -= 4;
               this.i12 = this.i11 << 2;
               si32(this.i12,mstate.esp);
               state = 11;
               mstate.esp -= 4;
               FSM__Znwm.start();
               return;
            case 11:
               this.i17 = mstate.eax;
               mstate.esp += 4;
               mstate.esp -= 4;
               si32(this.i12,mstate.esp);
               state = 12;
               mstate.esp -= 4;
               FSM__Znwm.start();
               return;
            case 12:
               this.i18 = mstate.eax;
               mstate.esp += 4;
               this.i19 = this.i17;
               this.i20 = this.i18;
               if(this.i11 >= 1)
               {
                  this.i21 = 0;
                  this.i6 -= this.i4;
                  this.i6 += this.i0;
                  this.i22 = this.i21;
                  while(true)
                  {
                     this.i23 = this.i21;
                     this.i21 = this.i4 + this.i23;
                     this.i21 %= this.i0;
                     if(this.i21 < 0)
                     {
                        do
                        {
                           this.i21 = this.i0 + this.i21;
                        }
                        while(this.i21 < 0);
                     }
                     this.i21 <<= 2;
                     this.i24 = this.i5 + this.i21;
                     this.f0 = lf32(this.i24);
                     this.i24 = this.i19 + this.i22;
                     sf32(this.f0,this.i24);
                     this.i21 = this.i7 + this.i21;
                     this.f0 = lf32(this.i21);
                     this.i21 = this.i20 + this.i22;
                     sf32(this.f0,this.i21);
                     this.i21 = this.i22 + 4;
                     this.i23 += 1;
                     if(this.i23 == this.i6)
                     {
                        break;
                     }
                     this.i22 = this.i21;
                     this.i21 = this.i23;
                  }
               }
               mstate.esp -= 4;
               si32(this.i12,mstate.esp);
               state = 13;
               mstate.esp -= 4;
               FSM__Znwm.start();
               return;
            case 13:
               this.i4 = mstate.eax;
               mstate.esp += 4;
               mstate.esp -= 4;
               si32(this.i12,mstate.esp);
               state = 14;
               mstate.esp -= 4;
               FSM__Znwm.start();
               return;
            case 14:
               this.i5 = mstate.eax;
               mstate.esp += 4;
               this.i6 = this.i4;
               this.i7 = this.i5;
               if(this.i11 >= 1)
               {
                  this.i21 = 0;
                  this.i22 = this.i21;
                  do
                  {
                     this.i23 = this.i19 + this.i22;
                     this.f0 = lf32(this.i23);
                     this.i23 = this.i6 + this.i22;
                     sf32(this.f0,this.i23);
                     this.i23 = this.i20 + this.i22;
                     this.f0 = lf32(this.i23);
                     this.i23 = this.i7 + this.i22;
                     sf32(this.f0,this.i23);
                     this.i22 += 4;
                     this.i21 += 1;
                  }
                  while(this.i11 > this.i21);
               }
               if(this.i9 != this.i0)
               {
                  mstate.esp -= 4;
                  si32(this.i12,mstate.esp);
                  state = 15;
                  mstate.esp -= 4;
                  FSM__Znwm.start();
                  return;
               }
               this.i9 = 0;
               this.i11 = this.i9;
               this.i12 = this.i11;
               addr1072:
               this.i19 = this.i9;
               this.i9 = this.i12;
               this.i20 = this.i11;
               if(this.i19 >= 1)
               {
                  this.i21 = 0;
                  this.i22 = this.i21;
                  do
                  {
                     this.i23 = this.i6 + this.i22;
                     this.f0 = lf32(this.i23);
                     this.i23 = this.i20 + this.i22;
                     sf32(this.f0,this.i23);
                     this.i23 = this.i7 + this.i22;
                     this.f0 = lf32(this.i23);
                     this.i23 = this.i9 + this.i22;
                     sf32(this.f0,this.i23);
                     this.i22 += 4;
                     this.i21 += 1;
                  }
                  while(this.i19 > this.i21);
               }
               if(this.i17 != 0)
               {
                  this.i6 = 0;
                  mstate.esp -= 8;
                  si32(this.i17,mstate.esp);
                  si32(this.i6,mstate.esp + 4);
                  state = 17;
                  mstate.esp -= 4;
                  FSM_pubrealloc.start();
                  return;
               }
               addr1199:
               if(this.i18 != 0)
               {
                  this.i6 = 0;
                  mstate.esp -= 8;
                  si32(this.i18,mstate.esp);
                  si32(this.i6,mstate.esp + 4);
                  state = 18;
                  mstate.esp -= 4;
                  FSM_pubrealloc.start();
                  return;
               }
               addr120b:
               if(this.i4 != 0)
               {
                  this.i6 = 0;
                  mstate.esp -= 8;
                  si32(this.i4,mstate.esp);
                  si32(this.i6,mstate.esp + 4);
                  state = 19;
                  mstate.esp -= 4;
                  FSM_pubrealloc.start();
                  return;
               }
               addr127d:
               if(this.i5 != 0)
               {
                  this.i4 = 0;
                  mstate.esp -= 8;
                  si32(this.i5,mstate.esp);
                  si32(this.i4,mstate.esp + 4);
                  state = 20;
                  mstate.esp -= 4;
                  FSM_pubrealloc.start();
                  return;
               }
               if(this.i15 != 0)
               {
                  §§goto(addr1309);
               }
               else
               {
                  addr1370:
                  if(this.i16 != 0)
                  {
                     this.i4 = 0;
                     mstate.esp -= 8;
                     si32(this.i16,mstate.esp);
                     si32(this.i4,mstate.esp + 4);
                     state = 22;
                     mstate.esp -= 4;
                     FSM_pubrealloc.start();
                     return;
                  }
                  this.i4 = this.i8;
                  this.i7 = this.i13;
                  this.i8 = this.i14;
                  this.i9 = this.i10;
                  this.i10 = this.i11;
                  this.i6 = this.i12;
                  this.i5 = this.i19;
                  §§goto(addr1457);
               }
               break;
            case 15:
               this.i9 = mstate.eax;
               mstate.esp += 4;
               mstate.esp -= 4;
               si32(this.i12,mstate.esp);
               state = 16;
               mstate.esp -= 4;
               FSM__Znwm.start();
               return;
            case 16:
               this.i12 = mstate.eax;
               mstate.esp += 4;
               this.i19 = this.i9;
               this.i9 = this.i11;
               this.i11 = this.i19;
               §§goto(addr1072);
            case 17:
               this.i6 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr1199);
            case 18:
               this.i6 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr120b);
            case 19:
               this.i4 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr127d);
            case 20:
               this.i4 = mstate.eax;
               mstate.esp += 8;
               if(this.i15 != 0)
               {
                  addr1309:
                  this.i4 = 0;
                  mstate.esp -= 8;
                  si32(this.i15,mstate.esp);
                  si32(this.i4,mstate.esp + 4);
                  state = 21;
                  mstate.esp -= 4;
                  FSM_pubrealloc.start();
                  return;
               }
               §§goto(addr1370);
               break;
            case 21:
               this.i4 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr1370);
            case 22:
               this.i4 = mstate.eax;
               mstate.esp += 8;
               this.i4 = this.i8;
               this.i7 = this.i13;
               this.i8 = this.i14;
               this.i9 = this.i10;
               this.i10 = this.i11;
               this.i6 = this.i12;
               this.i5 = this.i19;
               §§goto(addr1457);
            case 23:
               this.i0 = mstate.eax;
               mstate.esp += 4;
               si32(this.i7,this.i0);
               this.i1 = this.i0 + 4;
               this.i2 = this.i0;
               this.i3 = this.i1;
               this.i4 = this.i1;
               if(this.i7 != 0)
               {
                  this.i6 = 0;
                  this.i8 = this.i7 + -1;
                  this.i9 = this.i3;
                  §§goto(addr15bb);
               }
               else
               {
                  §§goto(addr168a);
               }
            case 24:
               this.i6 = mstate.eax;
               mstate.esp += 4;
               this.i11 = this.i9;
               this.i12 = 12;
               si32(this.i6,this.i11);
               mstate.esp -= 4;
               si32(this.i12,mstate.esp);
               state = 25;
               mstate.esp -= 4;
               FSM__Znwm.start();
               return;
            case 25:
               this.i6 = mstate.eax;
               mstate.esp += 4;
               si32(this.i6,this.i9 + 4);
               this.i6 = this.i9 + 8;
               this.i11 = this.i10 + 1;
               if(this.i8 != this.i10)
               {
                  this.i9 = this.i6;
                  this.i6 = this.i11;
                  addr15bb:
                  this.i10 = this.i6;
                  this.i6 = 12;
                  mstate.esp -= 4;
                  si32(this.i6,mstate.esp);
                  state = 24;
                  mstate.esp -= 4;
                  FSM__Znwm.start();
                  return;
               }
               addr168a:
               this.i6 = this.i5 << 3;
               mstate.esp -= 4;
               this.i6 |= 4;
               si32(this.i6,mstate.esp);
               state = 26;
               mstate.esp -= 4;
               FSM__Znwm.start();
               return;
               break;
            case 26:
               this.i6 = mstate.eax;
               mstate.esp += 4;
               si32(this.i5,this.i6);
               this.i8 = this.i6 + 4;
               this.i9 = this.i6;
               this.i10 = this.i8;
               this.i11 = this.i8;
               if(this.i5 != 0)
               {
                  this.i12 = 0;
                  this.i13 = this.i5 + -1;
                  this.i14 = this.i10;
                  §§goto(addr177f);
               }
               else
               {
                  §§goto(addr1846);
               }
            case 27:
               this.i15 = mstate.eax;
               mstate.esp += 4;
               this.i16 = this.i14;
               this.i17 = 12;
               si32(this.i15,this.i16);
               mstate.esp -= 4;
               si32(this.i17,mstate.esp);
               state = 28;
               mstate.esp -= 4;
               FSM__Znwm.start();
               return;
            case 28:
               this.i15 = mstate.eax;
               mstate.esp += 4;
               si32(this.i15,this.i14 + 4);
               this.i14 += 8;
               this.i15 = this.i12 + 1;
               if(this.i13 != this.i12)
               {
                  this.i12 = this.i15;
                  addr177f:
                  this.i15 = 12;
                  mstate.esp -= 4;
                  si32(this.i15,mstate.esp);
                  state = 27;
                  mstate.esp -= 4;
                  FSM__Znwm.start();
                  return;
               }
               addr1846:
               mstate.esp -= 16;
               this.i12 = li32(mstate.ebp + -45);
               si32(this.i12,mstate.esp);
               this.i12 = li32(mstate.ebp + -18);
               si32(this.i12,mstate.esp + 4);
               si32(this.i7,mstate.esp + 8);
               si32(this.i4,mstate.esp + 12);
               state = 29;
               mstate.esp -= 4;
               FSM__Z18TriangulatePolygonPfS_iP10b2Triangle.start();
               return;
               break;
            case 29:
               this.i7 = mstate.eax;
               mstate.esp += 16;
               mstate.esp -= 16;
               this.i12 = li32(mstate.ebp + -54);
               si32(this.i12,mstate.esp);
               this.i12 = li32(mstate.ebp + -27);
               si32(this.i12,mstate.esp + 4);
               si32(this.i5,mstate.esp + 8);
               si32(this.i11,mstate.esp + 12);
               state = 30;
               mstate.esp -= 4;
               FSM__Z18TriangulatePolygonPfS_iP10b2Triangle.start();
               return;
            case 30:
               this.i5 = mstate.eax;
               mstate.esp += 16;
               loop29:
               while(true)
               {
                  while(true)
                  {
                     while(true)
                     {
                        if(this.i5 != -1)
                        {
                           if(this.i7 == -1)
                           {
                              break;
                           }
                           addr2321:
                           if(this.i7 >= 1)
                           {
                              this.i12 = 0;
                              this.i13 = this.i12;
                              do
                              {
                                 this.i14 = this.i3 + this.i13;
                                 this.i15 = li32(this.i14);
                                 this.i16 = li32(mstate.ebp + -99);
                                 this.i16 += this.i13;
                                 this.i17 = li32(this.i16);
                                 this.f0 = lf32(this.i15);
                                 sf32(this.f0,this.i17);
                                 this.i15 = li32(this.i14 + 4);
                                 this.i17 = li32(this.i16 + 4);
                                 this.f0 = lf32(this.i15);
                                 sf32(this.f0,this.i17);
                                 this.i15 = li32(this.i14);
                                 this.i17 = li32(this.i16);
                                 this.f0 = lf32(this.i15 + 4);
                                 sf32(this.f0,this.i17 + 4);
                                 this.i15 = li32(this.i14 + 4);
                                 this.i17 = li32(this.i16 + 4);
                                 this.f0 = lf32(this.i15 + 4);
                                 sf32(this.f0,this.i17 + 4);
                                 this.i15 = li32(this.i14);
                                 this.i17 = li32(this.i16);
                                 this.f0 = lf32(this.i15 + 8);
                                 sf32(this.f0,this.i17 + 8);
                                 this.i14 = li32(this.i14 + 4);
                                 this.i15 = li32(this.i16 + 4);
                                 this.f0 = lf32(this.i14 + 8);
                                 sf32(this.f0,this.i15 + 8);
                                 this.i13 += 8;
                                 this.i12 += 1;
                              }
                              while(this.i12 != this.i7);
                           }
                           if(this.i5 >= 1)
                           {
                              this.i3 = 0;
                              this.i12 = this.i7 << 3;
                              this.i13 = li32(mstate.ebp + -99);
                              this.i12 = this.i13 + this.i12;
                              this.i13 = this.i3;
                              do
                              {
                                 this.i14 = this.i10 + this.i13;
                                 this.i15 = li32(this.i14);
                                 this.i16 = this.i12 + this.i13;
                                 this.i17 = li32(this.i16);
                                 this.f0 = lf32(this.i15);
                                 sf32(this.f0,this.i17);
                                 this.i15 = li32(this.i14 + 4);
                                 this.i17 = li32(this.i16 + 4);
                                 this.f0 = lf32(this.i15);
                                 sf32(this.f0,this.i17);
                                 this.i15 = li32(this.i14);
                                 this.i17 = li32(this.i16);
                                 this.f0 = lf32(this.i15 + 4);
                                 sf32(this.f0,this.i17 + 4);
                                 this.i15 = li32(this.i14 + 4);
                                 this.i17 = li32(this.i16 + 4);
                                 this.f0 = lf32(this.i15 + 4);
                                 sf32(this.f0,this.i17 + 4);
                                 this.i15 = li32(this.i14);
                                 this.i17 = li32(this.i16);
                                 this.f0 = lf32(this.i15 + 8);
                                 sf32(this.f0,this.i17 + 8);
                                 this.i14 = li32(this.i14 + 4);
                                 this.i15 = li32(this.i16 + 4);
                                 this.f0 = lf32(this.i14 + 8);
                                 sf32(this.f0,this.i15 + 8);
                                 this.i13 += 8;
                                 this.i3 += 1;
                              }
                              while(this.i3 != this.i5);
                           }
                           if(this.i1 != 0)
                           {
                              this.i1 = li32(this.i2);
                              this.i1 <<= 3;
                              this.i1 |= 4;
                              this.i1 = this.i0 + this.i1;
                              addr213a:
                              if(this.i4 != this.i1)
                              {
                                 this.i2 = 0;
                                 while(true)
                                 {
                                    this.i3 = this.i2 ^ -1;
                                    this.i10 = this.i3 << 3;
                                    this.i10 = this.i1 + this.i10;
                                    this.i12 = li32(this.i10);
                                    if(this.i12 != 0)
                                    {
                                       this.i13 = 0;
                                       mstate.esp -= 8;
                                       si32(this.i12,mstate.esp);
                                       si32(this.i13,mstate.esp + 4);
                                       state = 37;
                                       mstate.esp -= 4;
                                       FSM_pubrealloc.start();
                                       return;
                                    }
                                    addr21f0:
                                    this.i3 <<= 3;
                                    this.i3 = this.i1 + this.i3;
                                    this.i3 = li32(this.i3 + 4);
                                    if(this.i3 != 0)
                                    {
                                       this.i12 = 0;
                                       mstate.esp -= 8;
                                       si32(this.i3,mstate.esp);
                                       si32(this.i12,mstate.esp + 4);
                                       state = 38;
                                       mstate.esp -= 4;
                                       FSM_pubrealloc.start();
                                       return;
                                    }
                                    this.i1 = this.i10;
                                    §§goto(addr213a);
                                    this.i2 = 0;
                                 }
                                 break;
                                 addr2152:
                              }
                              addr22af:
                              if(this.i0 != 0)
                              {
                                 this.i1 = 0;
                                 mstate.esp -= 8;
                                 si32(this.i0,mstate.esp);
                                 si32(this.i1,mstate.esp + 4);
                                 state = 39;
                                 mstate.esp -= 4;
                                 FSM_pubrealloc.start();
                                 return;
                              }
                           }
                           if(this.i8 != 0)
                           {
                              this.i0 = li32(this.i9);
                              this.i0 <<= 3;
                              this.i0 |= 4;
                              this.i0 = this.i6 + this.i0;
                              addr235d:
                              if(this.i11 != this.i0)
                              {
                                 this.i1 = 0;
                                 while(true)
                                 {
                                    this.i2 = this.i1 ^ -1;
                                    this.i3 = this.i2 << 3;
                                    this.i3 = this.i0 + this.i3;
                                    this.i4 = li32(this.i3);
                                    if(this.i4 != 0)
                                    {
                                       this.i8 = 0;
                                       mstate.esp -= 8;
                                       si32(this.i4,mstate.esp);
                                       si32(this.i8,mstate.esp + 4);
                                       state = 40;
                                       mstate.esp -= 4;
                                       FSM_pubrealloc.start();
                                       return;
                                    }
                                    addr2413:
                                    this.i2 <<= 3;
                                    this.i2 = this.i0 + this.i2;
                                    this.i2 = li32(this.i2 + 4);
                                    if(this.i2 != 0)
                                    {
                                       this.i4 = 0;
                                       mstate.esp -= 8;
                                       si32(this.i2,mstate.esp);
                                       si32(this.i4,mstate.esp + 4);
                                       state = 41;
                                       mstate.esp -= 4;
                                       FSM_pubrealloc.start();
                                       return;
                                    }
                                    this.i0 = this.i3;
                                    §§goto(addr235d);
                                    this.i1 = 0;
                                 }
                                 break;
                                 addr2375:
                              }
                              addr24d2:
                              if(this.i6 != 0)
                              {
                                 this.i0 = 0;
                                 mstate.esp -= 8;
                                 si32(this.i6,mstate.esp);
                                 si32(this.i0,mstate.esp + 4);
                                 state = 42;
                                 mstate.esp -= 4;
                                 FSM_pubrealloc.start();
                                 return;
                              }
                              addr2544:
                              this.i0 = this.i5 + this.i7;
                              this.i1 = li32(mstate.ebp + -81);
                              if(this.i1 != 0)
                              {
                                 §§goto(addr5851);
                              }
                           }
                           else
                           {
                              this.i0 = this.i5 + this.i7;
                              this.i1 = li32(mstate.ebp + -81);
                              if(this.i1 != 0)
                              {
                                 §§goto(addr5851);
                              }
                           }
                           §§goto(addr58e9);
                        }
                        break;
                     }
                     if(this.i1 != 0)
                     {
                        break;
                     }
                     break loop29;
                  }
                  this.i1 = li32(this.i2);
                  this.i1 <<= 3;
                  this.i1 |= 4;
                  this.i1 = this.i0 + this.i1;
                  addr19cb:
                  if(this.i4 != this.i1)
                  {
                     this.i2 = 0;
                     while(true)
                     {
                        this.i3 = this.i2 ^ -1;
                        this.i5 = this.i3 << 3;
                        this.i5 = this.i1 + this.i5;
                        this.i7 = li32(this.i5);
                        if(this.i7 != 0)
                        {
                           break;
                        }
                        addr1a81:
                        this.i3 <<= 3;
                        this.i3 = this.i1 + this.i3;
                        this.i3 = li32(this.i3 + 4);
                        if(this.i3 != 0)
                        {
                           this.i7 = 0;
                           mstate.esp -= 8;
                           si32(this.i3,mstate.esp);
                           si32(this.i7,mstate.esp + 4);
                           state = 32;
                           mstate.esp -= 4;
                           FSM_pubrealloc.start();
                           return;
                        }
                        this.i1 = this.i5;
                        §§goto(addr19cb);
                        this.i2 = 0;
                     }
                     this.i10 = 0;
                     mstate.esp -= 8;
                     si32(this.i7,mstate.esp);
                     si32(this.i10,mstate.esp + 4);
                     state = 31;
                     mstate.esp -= 4;
                     FSM_pubrealloc.start();
                     return;
                     addr19e3:
                  }
                  addr1b40:
                  if(this.i0 != 0)
                  {
                     this.i1 = 0;
                     mstate.esp -= 8;
                     si32(this.i0,mstate.esp);
                     si32(this.i1,mstate.esp + 4);
                     state = 33;
                     mstate.esp -= 4;
                     FSM_pubrealloc.start();
                     return;
                  }
                  break;
               }
               if(this.i8 == 0)
               {
                  this.i0 = -1;
                  addr5834:
                  this.i1 = li32(mstate.ebp + -81);
                  if(this.i1 != 0)
                  {
                     addr5851:
                     this.i1 = li32(mstate.ebp + -81);
                     if(this.i1 != 0)
                     {
                        this.i1 = 0;
                        mstate.esp -= 8;
                        this.i2 = li32(mstate.ebp + -81);
                        si32(this.i2,mstate.esp);
                        si32(this.i1,mstate.esp + 4);
                        state = 74;
                        mstate.esp -= 4;
                        FSM_pubrealloc.start();
                        return;
                     }
                  }
               }
               else
               {
                  this.i0 = li32(this.i9);
                  this.i0 <<= 3;
                  this.i0 |= 4;
                  this.i0 = this.i6 + this.i0;
                  addr1bf9:
                  if(this.i11 != this.i0)
                  {
                     this.i1 = 0;
                     while(true)
                     {
                        this.i2 = this.i1 ^ -1;
                        this.i3 = this.i2 << 3;
                        this.i3 = this.i0 + this.i3;
                        this.i4 = li32(this.i3);
                        if(this.i4 != 0)
                        {
                           break;
                        }
                        addr1caf:
                        this.i2 <<= 3;
                        this.i2 = this.i0 + this.i2;
                        this.i2 = li32(this.i2 + 4);
                        if(this.i2 != 0)
                        {
                           this.i4 = 0;
                           mstate.esp -= 8;
                           si32(this.i2,mstate.esp);
                           si32(this.i4,mstate.esp + 4);
                           state = 35;
                           mstate.esp -= 4;
                           FSM_pubrealloc.start();
                           return;
                        }
                        this.i0 = this.i3;
                        §§goto(addr1bf9);
                        this.i1 = 0;
                     }
                     this.i5 = 0;
                     mstate.esp -= 8;
                     si32(this.i4,mstate.esp);
                     si32(this.i5,mstate.esp + 4);
                     state = 34;
                     mstate.esp -= 4;
                     FSM_pubrealloc.start();
                     return;
                     addr1c11:
                  }
                  addr1d6e:
                  if(this.i6 != 0)
                  {
                     this.i0 = 0;
                     mstate.esp -= 8;
                     si32(this.i6,mstate.esp);
                     si32(this.i0,mstate.esp + 4);
                     state = 36;
                     mstate.esp -= 4;
                     FSM_pubrealloc.start();
                     return;
                  }
                  addr1de0:
                  this.i0 = li32(mstate.ebp + -81);
                  if(this.i0 != 0)
                  {
                     addr1dfe:
                     this.i0 = -1;
                     §§goto(addr5851);
                  }
                  else
                  {
                     addr4380:
                     this.i0 = -1;
                  }
               }
               addr58e9:
               this.i1 = li32(mstate.ebp + -9);
               if(this.i1 != 0)
               {
                  this.i1 = 0;
                  mstate.esp -= 8;
                  this.i2 = li32(mstate.ebp + -9);
                  si32(this.i2,mstate.esp);
                  si32(this.i1,mstate.esp + 4);
                  state = 75;
                  mstate.esp -= 4;
                  FSM_pubrealloc.start();
                  return;
               }
               this.i1 = li32(mstate.ebp + -54);
               if(this.i1 != 0)
               {
                  §§goto(addr59ad);
               }
               else
               {
                  addr5a22:
                  this.i1 = li32(mstate.ebp + -27);
                  if(this.i1 != 0)
                  {
                     this.i1 = 0;
                     mstate.esp -= 8;
                     this.i2 = li32(mstate.ebp + -27);
                     si32(this.i2,mstate.esp);
                     si32(this.i1,mstate.esp + 4);
                     state = 77;
                     mstate.esp -= 4;
                     FSM_pubrealloc.start();
                     return;
                  }
                  this.i1 = li32(mstate.ebp + -45);
                  if(this.i1 == 0)
                  {
                     addr5b5b:
                     this.i1 = li32(mstate.ebp + -18);
                     if(this.i1 == 0)
                     {
                        break;
                     }
                     this.i1 = 0;
                     mstate.esp -= 8;
                     this.i2 = li32(mstate.ebp + -18);
                     si32(this.i2,mstate.esp);
                     si32(this.i1,mstate.esp + 4);
                     state = 79;
                     mstate.esp -= 4;
                     FSM_pubrealloc.start();
                     return;
                  }
                  §§goto(addr5ae6);
               }
               break;
            case 31:
               this.i7 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr1a81);
            case 32:
               this.i3 = mstate.eax;
               mstate.esp += 8;
               this.i2 += 1;
               if(this.i4 != this.i5)
               {
                  §§goto(addr19e3);
               }
               §§goto(addr1b40);
            case 33:
               this.i0 = mstate.eax;
               mstate.esp += 8;
               break loop29;
            case 34:
               this.i4 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr1caf);
            case 35:
               this.i2 = mstate.eax;
               mstate.esp += 8;
               this.i1 += 1;
               if(this.i11 != this.i3)
               {
                  §§goto(addr1c11);
               }
               §§goto(addr1d6e);
            case 36:
               this.i0 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr1de0);
            case 37:
               this.i12 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr21f0);
            case 38:
               this.i3 = mstate.eax;
               mstate.esp += 8;
               this.i2 += 1;
               if(this.i4 != this.i10)
               {
                  §§goto(addr2152);
               }
               §§goto(addr22af);
            case 39:
               this.i0 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr2321);
            case 40:
               this.i4 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr2413);
            case 41:
               this.i2 = mstate.eax;
               mstate.esp += 8;
               this.i1 += 1;
               if(this.i11 != this.i3)
               {
                  §§goto(addr2375);
               }
               §§goto(addr24d2);
            case 42:
               this.i0 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr2544);
            case 43:
               this.i4 = mstate.eax;
               si32(this.i4,mstate.ebp + -90);
               mstate.esp += 4;
               this.i4 = li32(mstate.ebp + -90);
               this.i5 = li32(mstate.ebp + -63);
               si32(this.i5,this.i4);
               this.i4 += 4;
               si32(this.i4,mstate.ebp + -72);
               this.i4 = li32(mstate.ebp + -90);
               si32(this.i4,mstate.ebp + -36);
               this.i4 = li32(mstate.ebp + -72);
               si32(this.i4,mstate.ebp + -108);
               this.i4 = li32(mstate.ebp + -72);
               if(this.i0 != 2)
               {
                  this.i5 = 0;
                  this.i6 = this.i0 + -3;
                  this.i7 = li32(mstate.ebp + -108);
                  §§goto(addr2722);
               }
               else
               {
                  §§goto(addr27f9);
               }
            case 44:
               this.i5 = mstate.eax;
               mstate.esp += 4;
               this.i9 = this.i8;
               this.i10 = 12;
               si32(this.i5,this.i9);
               mstate.esp -= 4;
               si32(this.i10,mstate.esp);
               state = 45;
               mstate.esp -= 4;
               FSM__Znwm.start();
               return;
            case 45:
               this.i5 = mstate.eax;
               mstate.esp += 4;
               si32(this.i5,this.i8 + 4);
               this.i5 = this.i8 + 8;
               this.i8 = this.i7 + 1;
               if(this.i6 != this.i7)
               {
                  this.i7 = this.i5;
                  this.i5 = this.i8;
                  addr2722:
                  this.i8 = this.i7;
                  this.i7 = this.i5;
                  this.i5 = 12;
                  mstate.esp -= 4;
                  si32(this.i5,mstate.esp);
                  state = 44;
                  mstate.esp -= 4;
                  FSM__Znwm.start();
                  return;
               }
               addr27f9:
               mstate.esp -= 4;
               si32(this.i3,mstate.esp);
               state = 46;
               mstate.esp -= 4;
               FSM__Znwm.start();
               return;
               break;
            case 46:
               this.i5 = mstate.eax;
               mstate.esp += 4;
               mstate.esp -= 4;
               si32(this.i3,mstate.esp);
               state = 47;
               mstate.esp -= 4;
               FSM__Znwm.start();
               return;
            case 47:
               this.i3 = mstate.eax;
               mstate.esp += 4;
               this.i6 = this.i5;
               this.i7 = this.i3;
               if(this.i0 >= 1)
               {
                  this.i8 = 0;
                  this.i9 = this.i8;
                  do
                  {
                     this.i10 = this.i1 + this.i9;
                     this.f0 = lf32(this.i10);
                     this.i10 = this.i6 + this.i9;
                     sf32(this.f0,this.i10);
                     this.i10 = this.i2 + this.i9;
                     this.f0 = lf32(this.i10);
                     this.i10 = this.i7 + this.i9;
                     sf32(this.f0,this.i10);
                     this.i9 += 4;
                     this.i8 += 1;
                  }
                  while(this.i8 != this.i0);
               }
               this.i7 = 0;
               this.i1 = this.i0 << 2;
               this.i2 = this.i1 + -4;
               this.i1 = this.i0 + -1;
               si32(this.i1,mstate.ebp + -117);
               this.i1 = li32(mstate.ebp + -108);
               this.i6 = this.i7;
               this.i8 = this.i3;
               this.i3 = this.i5;
               addr4c79:
               si32(this.i1,mstate.ebp + -144);
               this.i1 = this.i2;
               si32(this.i1,mstate.ebp + -153);
               this.i11 = this.i6;
               this.i1 = this.i7;
               si32(this.i1,mstate.ebp + -126);
               this.i15 = this.i3;
               this.i13 = this.i0 + this.i11;
               this.i5 = this.i8;
               this.i9 = this.i15;
               this.i1 = li32(mstate.ebp + -144);
               si32(this.i1,mstate.ebp + -135);
               if(this.i13 < 4)
               {
                  this.i0 = 12;
                  this.f0 = lf32(this.i8);
                  this.f1 = lf32(this.i15);
                  this.f2 = lf32(this.i8 + 8);
                  this.f3 = lf32(this.i15 + 8);
                  this.f4 = lf32(this.i8 + 4);
                  this.f5 = lf32(this.i15 + 4);
                  mstate.esp -= 4;
                  si32(this.i0,mstate.esp);
                  state = 63;
                  mstate.esp -= 4;
                  FSM__Znwm.start();
                  return;
               }
               this.f0 = -10;
               this.f0 = this.f0;
               this.i2 = -1;
               this.i1 = 0;
               this.i3 = this.i5 + 4;
               this.i18 = this.i9 + 4;
               this.i12 = this.i8 + 4;
               this.i14 = this.i15 + 4;
               this.i6 = li32(mstate.ebp + -153);
               this.i17 = this.i5 + this.i6;
               this.i16 = this.i9 + this.i6;
               this.i6 = li32(mstate.ebp + -117);
               this.i6 += this.i11;
               this.i10 = this.i6;
               this.i7 = this.i1;
               while(true)
               {
                  if(this.i1 < this.i13)
                  {
                     if(this.i13 >= 3)
                     {
                        if(this.i1 >= 0)
                        {
                           if(this.i1 < this.i13)
                           {
                              if(this.i1 == 0)
                              {
                                 this.f1 = lf32(this.i15);
                                 this.f2 = lf32(this.i16);
                                 this.f3 = lf32(this.i8);
                                 this.f4 = lf32(this.i17);
                                 this.f1 -= this.f2;
                                 this.f2 = this.f3 - this.f4;
                                 this.f1 = this.f1;
                                 this.f2 = this.f2;
                                 this.i19 = this.i1 + 1;
                                 this.i20 = this.i12;
                                 this.i21 = this.i8;
                                 this.i22 = this.i14;
                                 this.i23 = this.i15;
                                 this.i24 = this.i10;
                              }
                              else
                              {
                                 this.i19 = this.i5 + this.i7;
                                 this.i20 = this.i9 + this.i7;
                                 this.f1 = lf32(this.i20);
                                 this.f2 = lf32(this.i20 + -4);
                                 this.f3 = lf32(this.i19);
                                 this.f4 = lf32(this.i19 + -4);
                                 this.f1 -= this.f2;
                                 this.f2 = this.f3 - this.f4;
                                 this.f1 = this.f1;
                                 this.f2 = this.f2;
                                 if(this.i6 == this.i1)
                                 {
                                    this.i19 = 0;
                                    this.i23 = this.i9 + this.i7;
                                    this.i21 = this.i5 + this.i7;
                                    this.i24 = this.i1 + -1;
                                    this.i20 = this.i8;
                                    this.i22 = this.i15;
                                 }
                                 else
                                 {
                                    this.i19 = this.i9 + this.i7;
                                    this.i21 = this.i5 + this.i7;
                                    this.i20 = this.i3 + this.i7;
                                    this.i22 = this.i18 + this.i7;
                                    this.i24 = this.i1 + -1;
                                    this.i25 = this.i1 + 1;
                                    this.i23 = this.i19;
                                    this.i19 = this.i25;
                                 }
                              }
                              this.f3 = 0;
                              this.f4 = lf32(this.i20);
                              this.f5 = lf32(this.i21);
                              this.f6 = lf32(this.i22);
                              this.f7 = lf32(this.i23);
                              this.f4 -= this.f5;
                              this.f5 = this.f6 - this.f7;
                              this.f4 = this.f4;
                              this.f5 = this.f5;
                              this.f4 = this.f4;
                              this.f1 = this.f1;
                              this.f2 = this.f2;
                              this.f5 = this.f5;
                              this.f1 *= this.f4;
                              this.f2 = this.f5 * this.f2;
                              this.f1 = this.f1;
                              this.f2 = this.f2;
                              this.f2 = this.f2;
                              this.f1 = this.f1;
                              this.f1 -= this.f2;
                              this.f1 = this.f1;
                              this.f2 = this.f3;
                              this.f2 = this.f2;
                              this.f1 = this.f1;
                              if(this.f1 <= this.f2)
                              {
                                 this.i20 = 12;
                                 this.i21 = this.i19 << 2;
                                 this.i22 = this.i24 << 2;
                                 this.i23 = this.i9 + this.i7;
                                 this.i25 = this.i5 + this.i7;
                                 this.i26 = this.i15 + this.i21;
                                 this.i21 = this.i8 + this.i21;
                                 this.i27 = this.i15 + this.i22;
                                 this.i22 = this.i8 + this.i22;
                                 this.f1 = lf32(this.i22);
                                 this.f2 = lf32(this.i27);
                                 this.f3 = lf32(this.i21);
                                 this.f4 = lf32(this.i26);
                                 this.f5 = lf32(this.i25);
                                 this.f6 = lf32(this.i23);
                                 mstate.esp -= 4;
                                 si32(this.i20,mstate.esp);
                                 state = 48;
                                 mstate.esp -= 4;
                                 FSM__Znwm.start();
                                 return;
                              }
                           }
                        }
                     }
                     this.i19 = 0;
                     addr3f0f:
                     this.i19 &= 255;
                     if(this.i19 != 0)
                     {
                        this.i19 = this.i1 + -1;
                        this.i19 %= this.i13;
                        if(this.i19 < 0)
                        {
                           this.i20 = this.i11 + this.i0;
                           do
                           {
                              this.i19 = this.i20 + this.i19;
                           }
                           while(this.i19 < 0);
                        }
                        this.i20 = this.i1 + 1;
                        this.i20 %= this.i13;
                        if(this.i20 < 0)
                        {
                           this.i21 = this.i11 + this.i0;
                           do
                           {
                              this.i20 = this.i21 + this.i20;
                           }
                           while(this.i20 < 0);
                        }
                        this.f1 = 1.19209e-7;
                        this.i20 <<= 2;
                        this.i21 = this.i9 + this.i7;
                        this.i22 = this.i15 + this.i20;
                        this.i23 = this.i5 + this.i7;
                        this.i20 = this.i8 + this.i20;
                        this.f2 = lf32(this.i20);
                        this.f3 = lf32(this.i23);
                        this.f4 = lf32(this.i22);
                        this.f5 = lf32(this.i21);
                        this.f6 = this.f2 - this.f3;
                        this.f7 = this.f4 - this.f5;
                        this.f6 = this.f6;
                        this.f7 = this.f7;
                        this.f8 = this.f6;
                        this.f9 = this.f7;
                        this.f8 *= this.f8;
                        this.f9 *= this.f9;
                        this.f8 = this.f8;
                        this.f9 = this.f9;
                        this.f8 = this.f8;
                        this.f9 = this.f9;
                        this.i19 <<= 2;
                        this.f8 = this.f9 + this.f8;
                        this.f8 = this.f8;
                        this.i20 = this.i15 + this.i19;
                        this.i19 = this.i8 + this.i19;
                        this.f9 = lf32(this.i19);
                        this.f10 = lf32(this.i20);
                        this.f8 = this.f8;
                        this.f8 = Math.sqrt(this.f8);
                        this.f2 = this.f9 - this.f2;
                        this.f3 -= this.f9;
                        this.f4 = this.f10 - this.f4;
                        this.f5 -= this.f10;
                        this.f8 = this.f8;
                        this.f2 = this.f2;
                        this.f3 = this.f3;
                        this.f4 = this.f4;
                        this.f5 = this.f5;
                        this.f1 = this.f1;
                        this.f1 = this.f1;
                        this.f9 = this.f8;
                        if(this.f9 >= this.f1)
                        {
                           this.f1 = 1;
                           this.f1 = this.f1;
                           this.f8 = this.f8;
                           this.f1 = this.f1;
                           this.f1 /= this.f8;
                           this.f1 = this.f1;
                           this.f7 = this.f7;
                           this.f1 = this.f1;
                           this.f6 = this.f6;
                           this.f7 *= this.f1;
                           this.f1 = this.f6 * this.f1;
                           this.f7 = this.f7;
                           this.f6 = this.f1;
                        }
                        this.f1 = this.f6;
                        this.f6 = this.f7;
                        this.f7 = 1.19209e-7;
                        this.f8 = this.f5;
                        this.f9 = this.f3;
                        this.f8 *= this.f8;
                        this.f9 *= this.f9;
                        this.f8 = this.f8;
                        this.f9 = this.f9;
                        this.f9 = this.f9;
                        this.f8 = this.f8;
                        this.f8 += this.f9;
                        this.f8 = this.f8;
                        this.f8 = this.f8;
                        this.f8 = Math.sqrt(this.f8);
                        this.f8 = this.f8;
                        this.f7 = this.f7;
                        this.f7 = this.f7;
                        this.f9 = this.f8;
                        if(this.f9 >= this.f7)
                        {
                           this.f7 = 1;
                           this.f7 = this.f7;
                           this.f8 = this.f8;
                           this.f7 = this.f7;
                           this.f7 /= this.f8;
                           this.f7 = this.f7;
                           this.f5 = this.f5;
                           this.f7 = this.f7;
                           this.f3 = this.f3;
                           this.f5 *= this.f7;
                           this.f3 *= this.f7;
                           this.f5 = this.f5;
                           this.f3 = this.f3;
                        }
                        this.f7 = 1.19209e-7;
                        this.f8 = this.f4;
                        this.f9 = this.f2;
                        this.f8 *= this.f8;
                        this.f9 *= this.f9;
                        this.f8 = this.f8;
                        this.f9 = this.f9;
                        this.f9 = this.f9;
                        this.f8 = this.f8;
                        this.f8 += this.f9;
                        this.f8 = this.f8;
                        this.f8 = this.f8;
                        this.f8 = Math.sqrt(this.f8);
                        this.f8 = this.f8;
                        this.f7 = this.f7;
                        this.f7 = this.f7;
                        this.f9 = this.f8;
                        if(this.f9 >= this.f7)
                        {
                           this.f7 = 1;
                           this.f7 = this.f7;
                           this.f8 = this.f8;
                           this.f7 = this.f7;
                           this.f7 /= this.f8;
                           this.f7 = this.f7;
                           this.f4 = this.f4;
                           this.f7 = this.f7;
                           this.f2 = this.f2;
                           this.f4 *= this.f7;
                           this.f2 *= this.f7;
                           this.f4 = this.f4;
                           this.f2 = this.f2;
                        }
                        this.f7 = 0;
                        this.f6 = this.f6;
                        this.f3 = this.f3;
                        this.f4 = this.f4;
                        this.f1 = this.f1;
                        this.f2 = this.f2;
                        this.f5 = this.f5;
                        this.f8 = this.f2 * this.f6;
                        this.f9 = this.f3 * this.f4;
                        this.f4 *= this.f1;
                        this.f2 = this.f5 * this.f2;
                        this.f8 = this.f8;
                        this.f9 = this.f9;
                        this.f4 = this.f4;
                        this.f2 = this.f2;
                        this.f4 = this.f4;
                        this.f8 = this.f8;
                        this.f2 = this.f2;
                        this.f9 = this.f9;
                        this.f3 = this.f6 * this.f3;
                        this.f6 = this.f4 - this.f8;
                        this.f4 = this.f8 - this.f4;
                        this.f8 = this.f2 - this.f9;
                        this.f2 = this.f9 - this.f2;
                        this.f1 *= this.f5;
                        this.f3 = this.f3;
                        this.f5 = this.f6;
                        this.f4 = this.f4;
                        this.f6 = this.f8;
                        this.f2 = this.f2;
                        this.f1 = this.f1;
                        this.f7 = this.f7;
                        this.f3 = this.f3;
                        this.f1 = this.f1;
                        this.f4 = this.f4;
                        this.f5 = this.f5;
                        this.f7 = this.f7;
                        this.f2 = this.f2;
                        this.f6 = this.f6;
                        this.f8 = this.f3 - this.f1;
                        this.f1 -= this.f3;
                        this.f3 = this.f5 <= this.f7 ? this.f4 : this.f5;
                        this.f2 = this.f6 <= this.f7 ? this.f2 : this.f6;
                        this.f4 = this.f8;
                        this.f1 = this.f1;
                        this.f3 = this.f3;
                        this.f2 = this.f2;
                        this.f1 = this.f1;
                        this.f4 = this.f4;
                        this.f3 = this.f3;
                        this.f2 = this.f2;
                        this.f1 = this.f4 <= this.f7 ? this.f1 : this.f4;
                        this.f2 = this.f2 < this.f3 ? this.f2 : this.f3;
                        this.f1 = this.f1;
                        this.f2 = this.f2;
                        this.f2 = this.f2;
                        this.f1 = this.f1;
                        this.f1 = this.f1 < this.f2 ? this.f1 : this.f2;
                        this.f1 = this.f1;
                        this.f2 = this.f0;
                        this.f3 = this.f1;
                        if(this.f3 > this.f2)
                        {
                           this.i2 = this.i1;
                           this.f0 = this.f1;
                           continue;
                        }
                     }
                     continue;
                  }
                  if(this.i2 != -1)
                  {
                     mstate.esp -= 4;
                     this.i3 = li32(mstate.ebp + -153);
                     si32(this.i3,mstate.esp);
                     state = 55;
                     mstate.esp -= 4;
                     FSM__Znwm.start();
                     return;
                  }
                  this.i0 = li32(mstate.ebp + -126);
                  if(this.i0 >= 1)
                  {
                     this.i0 = 0;
                     this.i2 = this.i0;
                     do
                     {
                        this.i3 = li32(mstate.ebp + -108);
                        this.i3 += this.i2;
                        this.i5 = li32(this.i3);
                        this.i1 = li32(mstate.ebp + -99);
                        this.i1 += this.i2;
                        this.i6 = li32(this.i1);
                        this.f0 = lf32(this.i5);
                        sf32(this.f0,this.i6);
                        this.i5 = li32(this.i3 + 4);
                        this.i6 = li32(this.i1 + 4);
                        this.f0 = lf32(this.i5);
                        sf32(this.f0,this.i6);
                        this.i5 = li32(this.i3);
                        this.i6 = li32(this.i1);
                        this.f0 = lf32(this.i5 + 4);
                        sf32(this.f0,this.i6 + 4);
                        this.i5 = li32(this.i3 + 4);
                        this.i6 = li32(this.i1 + 4);
                        this.f0 = lf32(this.i5 + 4);
                        sf32(this.f0,this.i6 + 4);
                        this.i5 = li32(this.i3);
                        this.i6 = li32(this.i1);
                        this.f0 = lf32(this.i5 + 8);
                        sf32(this.f0,this.i6 + 8);
                        this.i3 = li32(this.i3 + 4);
                        this.i5 = li32(this.i1 + 4);
                        this.f0 = lf32(this.i3 + 8);
                        sf32(this.f0,this.i5 + 8);
                        this.i2 += 8;
                        this.i0 += 1;
                        this.i3 = li32(mstate.ebp + -126);
                     }
                     while(this.i0 != this.i3);
                  }
                  this.i0 = li32(mstate.ebp + -72);
                  if(this.i0 != 0)
                  {
                     this.i0 = li32(mstate.ebp + -36);
                     this.i0 = li32(this.i0);
                     this.i0 <<= 3;
                     this.i0 |= 4;
                     this.i2 = li32(mstate.ebp + -90);
                     this.i0 = this.i2 + this.i0;
                     while(true)
                     {
                        if(this.i4 != this.i0)
                        {
                           this.i2 = 0;
                           addr414d:
                           this.i3 = this.i2 ^ -1;
                           this.i5 = this.i3 << 3;
                           this.i5 = this.i0 + this.i5;
                           this.i1 = li32(this.i5);
                           if(this.i1 != 0)
                           {
                              this.i6 = 0;
                              mstate.esp -= 8;
                              si32(this.i1,mstate.esp);
                              si32(this.i6,mstate.esp + 4);
                              state = 52;
                              mstate.esp -= 4;
                              FSM_pubrealloc.start();
                              return;
                           }
                           addr41eb:
                           this.i3 <<= 3;
                           this.i3 = this.i0 + this.i3;
                           this.i3 = li32(this.i3 + 4);
                           if(this.i3 != 0)
                           {
                              this.i1 = 0;
                              mstate.esp -= 8;
                              si32(this.i3,mstate.esp);
                              si32(this.i1,mstate.esp + 4);
                              state = 53;
                              mstate.esp -= 4;
                              FSM_pubrealloc.start();
                              return;
                           }
                           continue;
                        }
                        addr42aa:
                        this.i0 = li32(mstate.ebp + -90);
                        if(this.i0 != 0)
                        {
                           this.i0 = 0;
                           mstate.esp -= 8;
                           this.i2 = li32(mstate.ebp + -90);
                           si32(this.i2,mstate.esp);
                           si32(this.i0,mstate.esp + 4);
                           state = 54;
                           mstate.esp -= 4;
                           FSM_pubrealloc.start();
                           return;
                        }
                        this.i0 = this.i5;
                     }
                     break;
                  }
                  this.i0 = li32(mstate.ebp + -126);
                  if(this.i0 >= 1)
                  {
                     this.i0 = li32(mstate.ebp + -126);
                     §§goto(addr5834);
                  }
                  else
                  {
                     this.i0 = li32(mstate.ebp + -81);
                     if(this.i0 != 0)
                     {
                        §§goto(addr1dfe);
                     }
                     else
                     {
                        §§goto(addr4380);
                     }
                  }
                  §§goto(addr58e9);
                  this.i7 += 4;
                  this.i1 += 1;
               }
               break;
            case 48:
               this.i20 = mstate.eax;
               mstate.esp += 4;
               this.i21 = 12;
               mstate.esp -= 4;
               si32(this.i21,mstate.esp);
               state = 49;
               mstate.esp -= 4;
               FSM__Znwm.start();
               return;
            case 49:
               this.i21 = mstate.eax;
               mstate.esp += 4;
               this.i22 = this.i20;
               this.f7 = 0;
               this.f8 = this.f4;
               this.f9 = this.f6;
               this.f10 = this.f2;
               this.f11 = this.f3;
               this.f12 = this.f5;
               this.f13 = this.f1;
               this.f8 -= this.f9;
               this.f9 = this.f10 - this.f9;
               this.f10 = this.f11 - this.f12;
               this.f11 = this.f13 - this.f12;
               this.f8 = this.f8;
               this.f9 = this.f9;
               this.f10 = this.f10;
               this.f11 = this.f11;
               this.f11 = this.f11;
               this.f8 = this.f8;
               this.f10 = this.f10;
               this.f9 = this.f9;
               this.f8 *= this.f11;
               this.f9 *= this.f10;
               this.f8 = this.f8;
               this.f9 = this.f9;
               this.f9 = this.f9;
               this.f8 = this.f8;
               this.f8 -= this.f9;
               sf32(this.f6,this.i22);
               this.i23 = this.i22 + 4;
               this.f6 = this.f8;
               this.f7 = this.f7;
               this.i25 = this.i21;
               this.f7 = this.f7;
               this.f6 = this.f6;
               loop32:
               while(true)
               {
                  while(true)
                  {
                     if(this.f6 > this.f7)
                     {
                        sf32(this.f4,this.i23);
                        sf32(this.f2,this.i22 + 8);
                        sf32(this.f5,this.i25);
                        sf32(this.f3,this.i25 + 4);
                        sf32(this.f1,this.i25 + 8);
                        if(this.i13 <= 0)
                        {
                           break;
                        }
                        addr37d5:
                        this.i26 = 0;
                        this.i27 = this.i25 + 8;
                        this.i25 += 4;
                        this.i28 = this.i22 + 8;
                        this.i29 = this.i26;
                        while(true)
                        {
                           while(true)
                           {
                              if(this.i26 != this.i24)
                              {
                                 if(this.i26 != this.i19)
                                 {
                                    if(this.i26 != this.i1)
                                    {
                                       this.i30 = this.i9 + this.i29;
                                       this.i31 = this.i5 + this.i29;
                                       this.f1 = lf32(this.i30);
                                       this.f2 = lf32(this.i22);
                                       this.f3 = lf32(this.i31);
                                       this.f4 = this.f1;
                                       this.f6 = this.f2;
                                       if(this.f6 > this.f4)
                                       {
                                          this.f4 = lf32(this.i23);
                                          this.f6 = this.f1;
                                          if(this.f4 > this.f6)
                                          {
                                             this.f4 = lf32(this.i28);
                                             this.f6 = this.f1;
                                             if(this.f4 > this.f6)
                                             {
                                                break;
                                             }
                                          }
                                       }
                                       this.f4 = this.f1;
                                       this.f6 = this.f2;
                                       if(this.f6 < this.f4)
                                       {
                                          this.f4 = lf32(this.i23);
                                          this.f6 = this.f1;
                                          if(this.f4 < this.f6)
                                          {
                                             this.f4 = lf32(this.i28);
                                             this.f6 = this.f1;
                                             if(this.f4 < this.f6)
                                             {
                                                break;
                                             }
                                          }
                                       }
                                       this.f4 = this.f3;
                                       this.f6 = this.f5;
                                       if(this.f6 > this.f4)
                                       {
                                          this.f4 = lf32(this.i25);
                                          this.f6 = this.f3;
                                          if(this.f4 > this.f6)
                                          {
                                             this.f4 = lf32(this.i27);
                                             this.f6 = this.f3;
                                             if(this.f4 > this.f6)
                                             {
                                                break;
                                             }
                                          }
                                       }
                                       this.f4 = this.f3;
                                       this.f6 = this.f5;
                                       if(this.f6 < this.f4)
                                       {
                                          this.f4 = lf32(this.i25);
                                          this.f6 = this.f3;
                                          if(this.f4 < this.f6)
                                          {
                                             this.f4 = lf32(this.i27);
                                             this.f6 = this.f3;
                                             if(this.f4 < this.f6)
                                             {
                                                break;
                                             }
                                          }
                                       }
                                       this.f4 = 1;
                                       this.f6 = lf32(this.i23);
                                       this.f2 = this.f2;
                                       this.f7 = lf32(this.i28);
                                       this.f8 = lf32(this.i25);
                                       this.f9 = lf32(this.i27);
                                       this.f10 = this.f5;
                                       this.f6 -= this.f2;
                                       this.f7 -= this.f2;
                                       this.f8 -= this.f10;
                                       this.f9 -= this.f10;
                                       this.f6 = this.f6;
                                       this.f7 = this.f7;
                                       this.f8 = this.f8;
                                       this.f9 = this.f9;
                                       this.f1 = this.f1;
                                       this.f6 = this.f6;
                                       this.f7 = this.f7;
                                       this.f3 = this.f3;
                                       this.f8 = this.f8;
                                       this.f9 = this.f9;
                                       this.f1 -= this.f2;
                                       this.f2 = this.f7 * this.f6;
                                       this.f11 = this.f6 * this.f6;
                                       this.f12 = this.f7 * this.f7;
                                       this.f3 -= this.f10;
                                       this.f10 = this.f9 * this.f8;
                                       this.f13 = this.f8 * this.f8;
                                       this.f14 = this.f9 * this.f9;
                                       this.f1 = this.f1;
                                       this.f2 = this.f2;
                                       this.f11 = this.f11;
                                       this.f12 = this.f12;
                                       this.f3 = this.f3;
                                       this.f10 = this.f10;
                                       this.f13 = this.f13;
                                       this.f14 = this.f14;
                                       this.f1 = this.f1;
                                       this.f3 = this.f3;
                                       this.f10 = this.f10;
                                       this.f2 = this.f2;
                                       this.f13 = this.f13;
                                       this.f11 = this.f11;
                                       this.f14 = this.f14;
                                       this.f12 = this.f12;
                                       this.f7 *= this.f1;
                                       this.f1 = this.f6 * this.f1;
                                       this.f2 += this.f10;
                                       this.f6 = this.f11 + this.f13;
                                       this.f10 = this.f12 + this.f14;
                                       this.f9 *= this.f3;
                                       this.f3 = this.f8 * this.f3;
                                       this.f7 = this.f7;
                                       this.f1 = this.f1;
                                       this.f2 = this.f2;
                                       this.f6 = this.f6;
                                       this.f8 = this.f10;
                                       this.f9 = this.f9;
                                       this.f3 = this.f3;
                                       this.f2 = this.f2;
                                       this.f9 = this.f9;
                                       this.f7 = this.f7;
                                       this.f3 = this.f3;
                                       this.f1 = this.f1;
                                       this.f6 = this.f6;
                                       this.f8 = this.f8;
                                       this.f7 += this.f9;
                                       this.f1 += this.f3;
                                       this.f3 = this.f2 * this.f2;
                                       this.f9 = this.f8 * this.f6;
                                       this.f7 = this.f7;
                                       this.f1 = this.f1;
                                       this.f3 = this.f3;
                                       this.f9 = this.f9;
                                       this.f7 = this.f7;
                                       this.f1 = this.f1;
                                       this.f3 = this.f3;
                                       this.f9 = this.f9;
                                       this.f6 *= this.f7;
                                       this.f7 = this.f2 * this.f7;
                                       this.f2 *= this.f1;
                                       this.f1 = this.f8 * this.f1;
                                       this.f3 = this.f9 - this.f3;
                                       this.f6 = this.f6;
                                       this.f7 = this.f7;
                                       this.f2 = this.f2;
                                       this.f1 = this.f1;
                                       this.f3 = this.f3;
                                       this.f4 = this.f4;
                                       this.f2 = this.f2;
                                       this.f6 = this.f6;
                                       this.f7 = this.f7;
                                       this.f1 = this.f1;
                                       this.f3 = this.f3;
                                       this.f4 = this.f4;
                                       this.f2 = this.f6 - this.f2;
                                       this.f1 -= this.f7;
                                       this.f3 = this.f4 / this.f3;
                                       this.f2 = this.f2;
                                       this.f1 = this.f1;
                                       this.f3 = this.f3;
                                       this.f2 = this.f2;
                                       this.f3 = this.f3;
                                       this.f1 = this.f1;
                                       this.f2 *= this.f3;
                                       this.f1 *= this.f3;
                                       this.f2 = this.f2;
                                       this.f3 = 0;
                                       this.f1 = this.f1;
                                       this.f3 = this.f3;
                                       this.f3 = this.f3;
                                       this.f4 = this.f2;
                                       if(this.f4 >= this.f3)
                                       {
                                          this.f3 = 0;
                                          this.f3 = this.f3;
                                          this.f3 = this.f3;
                                          this.f4 = this.f1;
                                          if(this.f4 >= this.f3)
                                          {
                                             this.f3 = 1;
                                             this.f1 = this.f1;
                                             this.f2 = this.f2;
                                             this.f1 = this.f2 + this.f1;
                                             this.f1 = this.f1;
                                             this.f2 = this.f3;
                                             this.f2 = this.f2;
                                             this.f1 = this.f1;
                                             if(this.f1 <= this.f2)
                                             {
                                                this.i19 = 0;
                                                break loop32;
                                             }
                                          }
                                       }
                                       break;
                                    }
                                 }
                              }
                              break;
                           }
                           this.i29 += 4;
                           this.i26 += 1;
                           if(this.i26 < this.i13)
                           {
                              continue;
                           }
                        }
                        break loop32;
                     }
                     sf32(this.f2,this.i23);
                     sf32(this.f4,this.i22 + 8);
                     sf32(this.f5,this.i25);
                     sf32(this.f1,this.i25 + 4);
                     sf32(this.f3,this.i25 + 8);
                     if(this.i13 >= 1)
                     {
                        §§goto(addr37d5);
                     }
                     break;
                  }
                  this.i19 = 1;
                  break;
               }
               if(this.i20 != 0)
               {
                  this.i22 = 0;
                  mstate.esp -= 8;
                  si32(this.i20,mstate.esp);
                  si32(this.i22,mstate.esp + 4);
                  state = 50;
                  mstate.esp -= 4;
                  FSM_pubrealloc.start();
                  return;
               }
               addr3780:
               if(this.i21 != 0)
               {
                  this.i20 = 0;
                  mstate.esp -= 8;
                  si32(this.i21,mstate.esp);
                  si32(this.i20,mstate.esp + 4);
                  state = 51;
                  mstate.esp -= 4;
                  FSM_pubrealloc.start();
                  return;
               }
               §§goto(addr3f0f);
               break;
            case 50:
               this.i20 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr3780);
            case 51:
               this.i20 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr3f0f);
            case 52:
               this.i1 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr41eb);
            case 53:
               this.i3 = mstate.eax;
               mstate.esp += 8;
               this.i2 += 1;
               if(this.i4 != this.i5)
               {
                  §§goto(addr414d);
               }
               §§goto(addr42aa);
            case 54:
               this.i0 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr4338);
            case 55:
               this.i3 = mstate.eax;
               mstate.esp += 4;
               mstate.esp -= 4;
               this.i5 = li32(mstate.ebp + -153);
               si32(this.i5,mstate.esp);
               state = 56;
               mstate.esp -= 4;
               FSM__Znwm.start();
               return;
            case 56:
               this.i5 = mstate.eax;
               mstate.esp += 4;
               this.i1 = this.i3;
               this.i7 = this.i5;
               if(this.i6 >= 1)
               {
                  this.i9 = 0;
                  this.i10 = li32(mstate.ebp + -117);
                  this.i10 += this.i11;
                  this.i12 = this.i9;
                  this.i13 = this.i9;
                  do
                  {
                     this.i14 = this.i9 == this.i2 ? 1 : 0;
                     this.i14 &= 1;
                     this.i9 = this.i14 + this.i9;
                     this.i14 = this.i9 << 2;
                     this.i16 = this.i15 + this.i14;
                     this.f0 = lf32(this.i16);
                     this.i16 = this.i1 + this.i12;
                     sf32(this.f0,this.i16);
                     this.i14 = this.i8 + this.i14;
                     this.f0 = lf32(this.i14);
                     this.i14 = this.i7 + this.i12;
                     sf32(this.f0,this.i14);
                     this.i12 += 4;
                     this.i13 += 1;
                     this.i9 += 1;
                  }
                  while(this.i13 != this.i10);
               }
               this.i1 = 12;
               this.i7 = this.i2 + 1;
               this.i9 = this.i2 + -1;
               this.i9 = this.i2 == 0 ? this.i6 : this.i9;
               this.i6 = this.i2 == this.i6 ? 0 : this.i7;
               this.i2 <<= 2;
               this.i6 <<= 2;
               this.i7 = this.i9 << 2;
               this.i9 = this.i15 + this.i2;
               this.i2 = this.i8 + this.i2;
               this.i10 = this.i15 + this.i6;
               this.i6 = this.i8 + this.i6;
               this.i12 = this.i15 + this.i7;
               this.i7 = this.i8 + this.i7;
               this.f0 = lf32(this.i7);
               this.f1 = lf32(this.i12);
               this.f2 = lf32(this.i6);
               this.f3 = lf32(this.i10);
               this.f4 = lf32(this.i2);
               this.f5 = lf32(this.i9);
               mstate.esp -= 4;
               si32(this.i1,mstate.esp);
               state = 57;
               mstate.esp -= 4;
               FSM__Znwm.start();
               return;
            case 57:
               this.i1 = mstate.eax;
               mstate.esp += 4;
               this.i2 = 12;
               mstate.esp -= 4;
               si32(this.i2,mstate.esp);
               state = 58;
               mstate.esp -= 4;
               FSM__Znwm.start();
               return;
            case 58:
               this.i2 = mstate.eax;
               mstate.esp += 4;
               this.i6 = this.i1;
               this.f6 = 0;
               this.f7 = this.f3;
               this.f8 = this.f5;
               this.f9 = this.f1;
               this.f10 = this.f2;
               this.f11 = this.f4;
               this.f12 = this.f0;
               this.f7 -= this.f8;
               this.f8 = this.f9 - this.f8;
               this.f9 = this.f10 - this.f11;
               this.f10 = this.f12 - this.f11;
               this.f7 = this.f7;
               this.f8 = this.f8;
               this.f9 = this.f9;
               this.f10 = this.f10;
               this.f10 = this.f10;
               this.f7 = this.f7;
               this.f9 = this.f9;
               this.f8 = this.f8;
               this.f7 *= this.f10;
               this.f8 *= this.f9;
               this.f7 = this.f7;
               this.f8 = this.f8;
               this.f8 = this.f8;
               this.f7 = this.f7;
               this.f7 -= this.f8;
               sf32(this.f5,this.i6);
               this.i7 = this.i6 + 4;
               this.f5 = this.f7;
               this.f6 = this.f6;
               this.i9 = this.i2;
               this.f6 = this.f6;
               this.f5 = this.f5;
               if(this.f5 > this.f6)
               {
                  sf32(this.f3,this.i7);
                  sf32(this.f1,this.i6 + 8);
                  sf32(this.f4,this.i9);
                  sf32(this.f2,this.i9 + 4);
                  sf32(this.f0,this.i9 + 8);
               }
               else
               {
                  sf32(this.f1,this.i7);
                  sf32(this.f3,this.i6 + 8);
                  sf32(this.f4,this.i9);
                  sf32(this.f0,this.i9 + 4);
                  sf32(this.f2,this.i9 + 8);
               }
               this.i10 = li32(mstate.ebp + -135);
               this.i10 = li32(this.i10);
               this.f0 = lf32(this.i6);
               sf32(this.f0,this.i10);
               this.i10 = li32(mstate.ebp + -144);
               this.i10 = li32(this.i10 + 4);
               this.f0 = lf32(this.i9);
               sf32(this.f0,this.i10);
               this.i10 = li32(mstate.ebp + -135);
               this.i10 = li32(this.i10);
               this.f0 = lf32(this.i7);
               sf32(this.f0,this.i10 + 4);
               this.i7 = li32(mstate.ebp + -144);
               this.i7 = li32(this.i7 + 4);
               this.f0 = lf32(this.i9 + 4);
               sf32(this.f0,this.i7 + 4);
               this.i7 = li32(mstate.ebp + -135);
               this.i7 = li32(this.i7);
               this.f0 = lf32(this.i6 + 8);
               sf32(this.f0,this.i7 + 8);
               this.i6 = li32(mstate.ebp + -144);
               this.i6 = li32(this.i6 + 4);
               this.f0 = lf32(this.i9 + 8);
               sf32(this.f0,this.i6 + 8);
               if(this.i15 != 0)
               {
                  this.i6 = 0;
                  mstate.esp -= 8;
                  si32(this.i15,mstate.esp);
                  si32(this.i6,mstate.esp + 4);
                  state = 59;
                  mstate.esp -= 4;
                  FSM_pubrealloc.start();
                  return;
               }
               addr4a5e:
               if(this.i8 != 0)
               {
                  this.i6 = 0;
                  mstate.esp -= 8;
                  si32(this.i8,mstate.esp);
                  si32(this.i6,mstate.esp + 4);
                  state = 60;
                  mstate.esp -= 4;
                  FSM_pubrealloc.start();
                  return;
               }
               addr4ad0:
               if(this.i1 != 0)
               {
                  this.i6 = 0;
                  mstate.esp -= 8;
                  si32(this.i1,mstate.esp);
                  si32(this.i6,mstate.esp + 4);
                  state = 61;
                  mstate.esp -= 4;
                  FSM_pubrealloc.start();
                  return;
               }
               addr4b42:
               if(this.i2 != 0)
               {
                  this.i1 = 0;
                  mstate.esp -= 8;
                  si32(this.i2,mstate.esp);
                  si32(this.i1,mstate.esp + 4);
                  state = 62;
                  mstate.esp -= 4;
                  FSM_pubrealloc.start();
                  return;
               }
               addr4bb4:
               this.i1 = li32(mstate.ebp + -144);
               this.i1 += 8;
               this.i2 = li32(mstate.ebp + -153);
               this.i2 += -4;
               this.i6 = this.i11 + -1;
               this.i7 = li32(mstate.ebp + -126);
               this.i7 += 1;
               this.i8 = this.i5;
               §§goto(addr4c79);
               break;
            case 59:
               this.i6 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr4a5e);
            case 60:
               this.i6 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr4ad0);
            case 61:
               this.i1 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr4b42);
            case 62:
               this.i1 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr4bb4);
            case 63:
               this.i0 = mstate.eax;
               mstate.esp += 4;
               this.i1 = 12;
               mstate.esp -= 4;
               si32(this.i1,mstate.esp);
               state = 64;
               mstate.esp -= 4;
               FSM__Znwm.start();
               return;
            case 64:
               this.i1 = mstate.eax;
               mstate.esp += 4;
               this.i2 = this.i0;
               this.f6 = 0;
               this.f7 = this.f3;
               this.f8 = this.f5;
               this.f9 = this.f1;
               this.f10 = this.f2;
               this.f11 = this.f4;
               this.f12 = this.f0;
               this.f7 -= this.f8;
               this.f8 = this.f9 - this.f8;
               this.f9 = this.f10 - this.f11;
               this.f10 = this.f12 - this.f11;
               this.f7 = this.f7;
               this.f8 = this.f8;
               this.f9 = this.f9;
               this.f10 = this.f10;
               this.f10 = this.f10;
               this.f7 = this.f7;
               this.f9 = this.f9;
               this.f8 = this.f8;
               this.f7 *= this.f10;
               this.f8 *= this.f9;
               this.f7 = this.f7;
               this.f8 = this.f8;
               this.f8 = this.f8;
               this.f7 = this.f7;
               this.f7 -= this.f8;
               sf32(this.f5,this.i2);
               this.i3 = this.i2 + 4;
               this.f5 = this.f7;
               this.f6 = this.f6;
               this.i5 = this.i1;
               this.f6 = this.f6;
               this.f5 = this.f5;
               if(this.f5 > this.f6)
               {
                  sf32(this.f3,this.i3);
                  sf32(this.f1,this.i2 + 8);
                  sf32(this.f4,this.i5);
                  sf32(this.f2,this.i5 + 4);
                  sf32(this.f0,this.i5 + 8);
               }
               else
               {
                  sf32(this.f1,this.i3);
                  sf32(this.f3,this.i2 + 8);
                  sf32(this.f4,this.i5);
                  sf32(this.f0,this.i5 + 4);
                  sf32(this.f2,this.i5 + 8);
               }
               this.i6 = li32(mstate.ebp + -126);
               this.i6 <<= 3;
               this.i6 = this.i4 + this.i6;
               this.i7 = li32(this.i6);
               this.f0 = lf32(this.i2);
               sf32(this.f0,this.i7);
               this.i7 = li32(this.i6 + 4);
               this.f0 = lf32(this.i5);
               sf32(this.f0,this.i7);
               this.i7 = li32(this.i6);
               this.f0 = lf32(this.i3);
               sf32(this.f0,this.i7 + 4);
               this.i3 = li32(this.i6 + 4);
               this.f0 = lf32(this.i5 + 4);
               sf32(this.f0,this.i3 + 4);
               this.i3 = li32(this.i6);
               this.f0 = lf32(this.i2 + 8);
               sf32(this.f0,this.i3 + 8);
               this.i2 = li32(this.i6 + 4);
               this.f0 = lf32(this.i5 + 8);
               sf32(this.f0,this.i2 + 8);
               this.i2 = li32(mstate.ebp + -126);
               this.i2 += 1;
               if(this.i15 != 0)
               {
                  this.i3 = 0;
                  mstate.esp -= 8;
                  si32(this.i15,mstate.esp);
                  si32(this.i3,mstate.esp + 4);
                  state = 65;
                  mstate.esp -= 4;
                  FSM_pubrealloc.start();
                  return;
               }
               addr51cf:
               if(this.i8 != 0)
               {
                  this.i3 = 0;
                  mstate.esp -= 8;
                  si32(this.i8,mstate.esp);
                  si32(this.i3,mstate.esp + 4);
                  state = 66;
                  mstate.esp -= 4;
                  FSM_pubrealloc.start();
                  return;
               }
               addr5241:
               this.i3 = li32(mstate.ebp + -63);
               if(this.i3 != this.i2)
               {
                  this.i0 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i1 = cmodule.Box2D.__2E_str1670;
                  this.i2 = cmodule.Box2D.__2E_str164335;
                  this.i4 = cmodule.Box2D.__ZZ18TriangulatePolygonPfS_iP10b2TriangleE8__func__;
                  this.i3 = cmodule.Box2D.__2E_str22229;
                  this.i5 = 762;
                  this.i0 += 176;
                  si32(this.i0,mstate.esp);
                  si32(this.i1,mstate.esp + 4);
                  si32(this.i2,mstate.esp + 8);
                  si32(this.i4,mstate.esp + 12);
                  si32(this.i3,mstate.esp + 16);
                  si32(this.i5,mstate.esp + 20);
                  state = 67;
                  mstate.esp -= 4;
                  FSM_fprintf.start();
                  return;
               }
               break;
            case 65:
               this.i3 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr51cf);
            case 66:
               this.i3 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr5241);
            case 68:
               if(this.i2 >= 1)
               {
                  this.i3 = 0;
                  this.i5 = this.i3;
                  do
                  {
                     this.i6 = li32(mstate.ebp + -108);
                     this.i6 += this.i5;
                     this.i7 = li32(this.i6);
                     this.i8 = li32(mstate.ebp + -99);
                     this.i8 += this.i5;
                     this.i9 = li32(this.i8);
                     this.f0 = lf32(this.i7);
                     sf32(this.f0,this.i9);
                     this.i7 = li32(this.i6 + 4);
                     this.i9 = li32(this.i8 + 4);
                     this.f0 = lf32(this.i7);
                     sf32(this.f0,this.i9);
                     this.i7 = li32(this.i6);
                     this.i9 = li32(this.i8);
                     this.f0 = lf32(this.i7 + 4);
                     sf32(this.f0,this.i9 + 4);
                     this.i7 = li32(this.i6 + 4);
                     this.i9 = li32(this.i8 + 4);
                     this.f0 = lf32(this.i7 + 4);
                     sf32(this.f0,this.i9 + 4);
                     this.i7 = li32(this.i6);
                     this.i9 = li32(this.i8);
                     this.f0 = lf32(this.i7 + 8);
                     sf32(this.f0,this.i9 + 8);
                     this.i6 = li32(this.i6 + 4);
                     this.i7 = li32(this.i8 + 4);
                     this.f0 = lf32(this.i6 + 8);
                     sf32(this.f0,this.i7 + 8);
                     this.i5 += 8;
                     this.i3 += 1;
                  }
                  while(this.i3 != this.i2);
               }
               this.i3 = li32(mstate.ebp + -72);
               if(this.i3 != 0)
               {
                  this.i3 = li32(mstate.ebp + -36);
                  this.i3 = li32(this.i3);
                  this.i3 <<= 3;
                  this.i3 |= 4;
                  this.i5 = li32(mstate.ebp + -90);
                  this.i3 = this.i5 + this.i3;
                  addr5529:
                  if(this.i4 != this.i3)
                  {
                     this.i5 = 0;
                     while(true)
                     {
                        this.i6 = this.i5 ^ -1;
                        this.i7 = this.i6 << 3;
                        this.i7 = this.i3 + this.i7;
                        this.i8 = li32(this.i7);
                        if(this.i8 != 0)
                        {
                           break;
                        }
                        addr55df:
                        this.i6 <<= 3;
                        this.i6 = this.i3 + this.i6;
                        this.i6 = li32(this.i6 + 4);
                        if(this.i6 != 0)
                        {
                           this.i8 = 0;
                           mstate.esp -= 8;
                           si32(this.i6,mstate.esp);
                           si32(this.i8,mstate.esp + 4);
                           state = 70;
                           mstate.esp -= 4;
                           FSM_pubrealloc.start();
                           return;
                        }
                        this.i3 = this.i7;
                        §§goto(addr5529);
                        this.i5 = 0;
                     }
                     this.i9 = 0;
                     mstate.esp -= 8;
                     si32(this.i8,mstate.esp);
                     si32(this.i9,mstate.esp + 4);
                     state = 69;
                     mstate.esp -= 4;
                     FSM_pubrealloc.start();
                     return;
                     addr5541:
                  }
                  addr569e:
                  this.i3 = li32(mstate.ebp + -90);
                  if(this.i3 != 0)
                  {
                     this.i3 = 0;
                     mstate.esp -= 8;
                     this.i4 = li32(mstate.ebp + -90);
                     si32(this.i4,mstate.esp);
                     si32(this.i3,mstate.esp + 4);
                     state = 71;
                     mstate.esp -= 4;
                     FSM_pubrealloc.start();
                     return;
                  }
                  addr572c:
                  if(this.i0 != 0)
                  {
                     §§goto(addr5746);
                  }
               }
               else if(this.i0 != 0)
               {
                  addr5746:
                  this.i3 = 0;
                  mstate.esp -= 8;
                  si32(this.i0,mstate.esp);
                  si32(this.i3,mstate.esp + 4);
                  state = 72;
                  mstate.esp -= 4;
                  FSM_pubrealloc.start();
                  return;
               }
               addr57ad:
               if(this.i1 != 0)
               {
                  this.i0 = 0;
                  mstate.esp -= 8;
                  si32(this.i1,mstate.esp);
                  si32(this.i0,mstate.esp + 4);
                  state = 73;
                  mstate.esp -= 4;
                  FSM_pubrealloc.start();
                  return;
               }
               this.i0 = this.i2;
               §§goto(addr5834);
               break;
            case 67:
               mstate.esp += 24;
               state = 68;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 69:
               this.i8 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr55df);
            case 70:
               this.i6 = mstate.eax;
               mstate.esp += 8;
               this.i5 += 1;
               if(this.i4 != this.i7)
               {
                  §§goto(addr5541);
               }
               §§goto(addr569e);
            case 71:
               this.i3 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr572c);
            case 72:
               this.i0 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr57ad);
            case 73:
               this.i0 = mstate.eax;
               mstate.esp += 8;
               this.i0 = this.i2;
               §§goto(addr5834);
            case 74:
               this.i1 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr58e9);
            case 75:
               this.i1 = mstate.eax;
               mstate.esp += 8;
               this.i1 = li32(mstate.ebp + -54);
               if(this.i1 != 0)
               {
                  addr59ad:
                  this.i1 = 0;
                  mstate.esp -= 8;
                  this.i2 = li32(mstate.ebp + -54);
                  si32(this.i2,mstate.esp);
                  si32(this.i1,mstate.esp + 4);
                  state = 76;
                  mstate.esp -= 4;
                  FSM_pubrealloc.start();
                  return;
               }
               §§goto(addr5a22);
               break;
            case 76:
               this.i1 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr5a22);
            case 77:
               this.i1 = mstate.eax;
               mstate.esp += 8;
               this.i1 = li32(mstate.ebp + -45);
               if(this.i1 != 0)
               {
                  addr5ae6:
                  this.i1 = 0;
                  mstate.esp -= 8;
                  this.i2 = li32(mstate.ebp + -45);
                  si32(this.i2,mstate.esp);
                  si32(this.i1,mstate.esp + 4);
                  state = 78;
                  mstate.esp -= 4;
                  FSM_pubrealloc.start();
                  return;
               }
               §§goto(addr5b5b);
               break;
            case 78:
               this.i1 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr5b5b);
            case 79:
               this.i1 = mstate.eax;
               mstate.esp += 8;
               break;
            default:
               throw "Invalid state in __Z18TriangulatePolygonPfS_iP10b2Triangle";
         }
         mstate.eax = this.i0;
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp += 4;
         mstate.esp += 4;
         mstate.gworker = caller;
      }
   }
}

