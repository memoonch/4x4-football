package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZNK14b2PolygonShape7RayCastEP15b2RayCastOutputRK14b2RayCastInputRK11b2Transformi extends Machine
   {
      
      public static const intRegCount:int = 10;
      
      public static const NumberRegCount:int = 14;
      
      public var f10:Number;
      
      public var f11:Number;
      
      public var f12:Number;
      
      public var f13:Number;
      
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
      
      public var i6:int;
      
      public var i7:int;
      
      public var i8:int;
      
      public var i9:int;
      
      public function FSM__ZNK14b2PolygonShape7RayCastEP15b2RayCastOutputRK14b2RayCastInputRK11b2Transformi()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZNK14b2PolygonShape7RayCastEP15b2RayCastOutputRK14b2RayCastInputRK11b2Transformi = null;
         _loc1_ = new FSM__ZNK14b2PolygonShape7RayCastEP15b2RayCastOutputRK14b2RayCastInputRK11b2Transformi();
         cmodule.Box2D.gstate.gworker = _loc1_;
      }
      
      final override public function work() : void
      {
         loop1:
         switch(state)
         {
            case 0:
               mstate.esp -= 4;
               si32(mstate.ebp,mstate.esp);
               mstate.ebp = mstate.esp;
               mstate.esp -= 0;
               this.i0 = li32(mstate.ebp + 20);
               this.i1 = li32(mstate.ebp + 16);
               this.f0 = lf32(this.i1 + 4);
               this.f1 = lf32(this.i0 + 4);
               this.f2 = lf32(this.i1 + 12);
               this.f3 = lf32(this.i1);
               this.f4 = lf32(this.i0);
               this.f5 = lf32(this.i1 + 8);
               this.f0 -= this.f1;
               this.f3 -= this.f4;
               this.f4 = this.f5 - this.f4;
               this.f1 = this.f2 - this.f1;
               this.f0 = this.f0;
               this.f2 = this.f3;
               this.f3 = this.f4;
               this.f1 = this.f1;
               this.f4 = lf32(this.i0 + 16);
               this.f2 = this.f2;
               this.f5 = lf32(this.i0 + 8);
               this.f3 = this.f3;
               this.f6 = lf32(this.i0 + 20);
               this.f0 = this.f0;
               this.f7 = lf32(this.i0 + 12);
               this.f1 = this.f1;
               this.f8 = this.f0 * this.f6;
               this.f0 *= this.f7;
               this.f9 = this.f2 * this.f4;
               this.f2 *= this.f5;
               this.f4 = this.f3 * this.f4;
               this.f3 *= this.f5;
               this.f5 = this.f1 * this.f6;
               this.f1 *= this.f7;
               this.f6 = this.f8;
               this.f0 = this.f0;
               this.f7 = this.f9;
               this.f2 = this.f2;
               this.f4 = this.f4;
               this.f3 = this.f3;
               this.f5 = this.f5;
               this.f1 = this.f1;
               this.f6 = this.f6;
               this.f7 = this.f7;
               this.f0 = this.f0;
               this.f2 = this.f2;
               this.f5 = this.f5;
               this.f4 = this.f4;
               this.f1 = this.f1;
               this.f3 = this.f3;
               this.f6 = this.f7 + this.f6;
               this.f0 = this.f2 + this.f0;
               this.f2 = this.f4 + this.f5;
               this.f1 = this.f3 + this.f1;
               this.f3 = this.f6;
               this.f0 = this.f0;
               this.f2 = this.f2;
               this.f1 = this.f1;
               this.i2 = li32(mstate.ebp + 8);
               this.f4 = this.f3;
               this.f2 = this.f2;
               this.f5 = this.f0;
               this.f1 = this.f1;
               this.f2 -= this.f4;
               this.f1 -= this.f5;
               this.f4 = lf32(this.i1 + 16);
               this.i1 = li32(this.i2 + 152);
               this.f2 = this.f2;
               this.f1 = this.f1;
               this.i3 = this.i0 + 16;
               this.i4 = this.i0 + 20;
               this.i5 = this.i0 + 12;
               this.i0 += 8;
               this.i6 = li32(mstate.ebp + 12);
               this.i7 = this.i2;
               loop2:
               while(true)
               {
                  if(this.i1 > 0)
                  {
                     this.f5 = 0;
                     this.f5 = this.f5;
                     this.i8 = -1;
                     this.i9 = 0;
                     this.f6 = this.f4;
                     loop0:
                     while(true)
                     {
                        this.f7 = 0;
                        this.f8 = lf32(this.i7 + 28);
                        this.f9 = this.f3;
                        this.f10 = lf32(this.i7 + 24);
                        this.f11 = this.f0;
                        this.f8 -= this.f9;
                        this.f9 = this.f10 - this.f11;
                        this.f8 = this.f8;
                        this.f9 = this.f9;
                        this.f10 = lf32(this.i7 + 88);
                        this.f11 = lf32(this.i7 + 92);
                        this.f8 = this.f8;
                        this.f9 = this.f9;
                        this.f12 = this.f1;
                        this.f13 = this.f2;
                        this.f8 = this.f11 * this.f8;
                        this.f9 = this.f10 * this.f9;
                        this.f10 *= this.f12;
                        this.f11 *= this.f13;
                        this.f8 = this.f8;
                        this.f9 = this.f9;
                        this.f10 = this.f10;
                        this.f11 = this.f11;
                        this.f8 = this.f8;
                        this.f9 = this.f9;
                        this.f11 = this.f11;
                        this.f10 = this.f10;
                        this.f8 = this.f9 + this.f8;
                        this.f9 = this.f10 + this.f11;
                        this.f9 = this.f9;
                        this.f8 = this.f8;
                        this.f7 = this.f7;
                        this.f7 = this.f7;
                        this.f10 = this.f9;
                        while(true)
                        {
                           if(this.f10 == this.f7)
                           {
                              this.f7 = 0;
                              this.f9 = this.f7;
                              this.f7 = this.f9;
                              this.f8 = this.f8;
                              if(this.f8 < this.f7)
                              {
                                 break loop2;
                              }
                           }
                           else
                           {
                              this.f7 = 0;
                              this.f7 = this.f7;
                              this.f7 = this.f7;
                              this.f10 = this.f9;
                              if(this.f10 < this.f7)
                              {
                                 this.f7 = this.f9;
                                 this.f10 = this.f5;
                                 this.f7 = this.f10 * this.f7;
                                 this.f7 = this.f7;
                                 this.f10 = this.f8;
                                 this.f7 = this.f7;
                                 if(this.f7 > this.f10)
                                 {
                                    this.f5 = this.f9;
                                    this.f7 = this.f8;
                                    this.f5 = this.f7 / this.f5;
                                    this.f5 = this.f5;
                                    this.f7 = this.f5;
                                    this.f8 = this.f6;
                                    if(this.f8 < this.f7)
                                    {
                                       break loop2;
                                    }
                                    this.i8 = this.i9;
                                    this.i7 += 8;
                                    this.i9 += 1;
                                    if(this.i1 <= this.i9)
                                    {
                                       this.f0 = this.f5;
                                       this.i1 = this.i8;
                                       §§goto(addr06af);
                                    }
                                    continue loop0;
                                 }
                              }
                              this.f7 = 0;
                              this.f7 = this.f7;
                              this.f7 = this.f7;
                              this.f10 = this.f9;
                              if(this.f10 > this.f7)
                              {
                                 this.f7 = this.f9;
                                 this.f10 = this.f6;
                                 this.f7 = this.f10 * this.f7;
                                 this.f7 = this.f7;
                                 this.f10 = this.f8;
                                 this.f7 = this.f7;
                                 if(this.f7 > this.f10)
                                 {
                                    this.f6 = this.f9;
                                    this.f7 = this.f8;
                                    this.f6 = this.f7 / this.f6;
                                    this.f6 = this.f6;
                                    break;
                                 }
                              }
                           }
                           break;
                        }
                        this.f7 = this.f5;
                        this.f8 = this.f6;
                        if(this.f8 < this.f7)
                        {
                           break loop2;
                        }
                        §§goto(addr0678);
                     }
                     break;
                  }
                  this.f0 = 0;
                  this.f0 = this.f0;
                  this.i1 = -1;
                  addr06af:
                  this.f1 = 0;
                  this.f1 = this.f1;
                  this.f1 = this.f1;
                  this.f2 = this.f0;
                  if(this.f2 >= this.f1)
                  {
                     this.f1 = this.f0;
                     this.f2 = this.f4;
                     if(this.f2 >= this.f1)
                     {
                        break loop1;
                     }
                  }
                  this.i0 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i1 = cmodule.Box2D.__2E_str1670;
                  this.i2 = cmodule.Box2D.__2E_str59266;
                  this.i3 = cmodule.Box2D.__ZZNK14b2PolygonShape7RayCastEP15b2RayCastOutputRK14b2RayCastInputRK11b2TransformiE8__func__;
                  this.i4 = cmodule.Box2D.__2E_str49256;
                  this.i5 = 249;
                  this.i0 += 176;
                  si32(this.i0,mstate.esp);
                  si32(this.i1,mstate.esp + 4);
                  si32(this.i2,mstate.esp + 8);
                  si32(this.i3,mstate.esp + 12);
                  si32(this.i4,mstate.esp + 16);
                  si32(this.i5,mstate.esp + 20);
                  state = 1;
                  mstate.esp -= 4;
                  FSM_fprintf.start();
                  return;
               }
               break loop0;
            case 2:
               break;
            case 1:
               mstate.esp += 24;
               state = 2;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            default:
               throw "Invalid state in __ZNK14b2PolygonShape7RayCastEP15b2RayCastOutputRK14b2RayCastInputRK11b2Transformi";
         }
         if(this.i1 >= 0)
         {
            this.i7 = 1;
            this.i1 <<= 3;
            sf32(this.f0,this.i6 + 8);
            this.i1 = this.i2 + this.i1;
            this.f0 = lf32(this.i1 + 88);
            this.f1 = lf32(this.i0);
            this.f2 = lf32(this.i1 + 92);
            this.f3 = lf32(this.i3);
            this.f4 = lf32(this.i5);
            this.f5 = lf32(this.i4);
            this.f1 *= this.f0;
            this.f3 *= this.f2;
            this.f0 = this.f4 * this.f0;
            this.f1 = this.f1;
            this.f2 = this.f5 * this.f2;
            this.f3 = this.f3;
            this.f0 = this.f0;
            this.f2 = this.f2;
            this.f3 = this.f3;
            this.f1 = this.f1;
            this.f1 += this.f3;
            this.f2 = this.f2;
            this.f0 = this.f0;
            this.f0 += this.f2;
            this.f1 = this.f1;
            sf32(this.f1,this.i6);
            this.f0 = this.f0;
            sf32(this.f0,this.i6 + 4);
            mstate.eax = this.i7;
            mstate.esp = mstate.ebp;
            mstate.ebp = li32(mstate.esp);
            mstate.esp += 4;
            mstate.esp += 4;
            mstate.gworker = caller;
            return;
         }
         break loop0;
      }
   }
}

