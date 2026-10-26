package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZN10b2PolyNode21GetRightestConnectionEPS_ extends Machine
   {
      
      public static const intRegCount:int = 7;
      
      public static const NumberRegCount:int = 12;
      
      public var f10:Number;
      
      public var f11:Number;
      
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
      
      public function FSM__ZN10b2PolyNode21GetRightestConnectionEPS_()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZN10b2PolyNode21GetRightestConnectionEPS_ = null;
         _loc1_ = new FSM__ZN10b2PolyNode21GetRightestConnectionEPS_();
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
               this.i0 = li32(mstate.ebp + 8);
               this.i1 = li32(this.i0 + 136);
               this.i2 = this.i0 + 136;
               this.i3 = li32(mstate.ebp + 12);
               this.i4 = this.i0;
               if(this.i1 != 0)
               {
                  this.i1 = li32(this.i2);
                  if(this.i1 == 1)
                  {
                     this.i0 = this.i3;
                  }
                  else
                  {
                     this.f0 = 1.19209e-7;
                     this.f1 = lf32(this.i0 + 4);
                     this.f2 = lf32(this.i0);
                     this.f3 = lf32(this.i3 + 4);
                     this.f4 = lf32(this.i3);
                     this.f5 = this.f1;
                     this.f6 = this.f2;
                     this.f3 = this.f5 - this.f3;
                     this.f4 = this.f6 - this.f4;
                     this.f3 = this.f3;
                     this.f4 = this.f4;
                     this.f5 = this.f3;
                     this.f6 = this.f4;
                     this.f5 *= this.f5;
                     this.f6 *= this.f6;
                     this.f5 = this.f5;
                     this.f6 = this.f6;
                     this.f5 = this.f5;
                     this.f6 = this.f6;
                     this.f5 = this.f6 + this.f5;
                     this.f5 = this.f5;
                     this.f5 = this.f5;
                     this.f5 = Math.sqrt(this.f5);
                     this.f5 = this.f5;
                     this.f0 = this.f0;
                     this.f0 = this.f0;
                     this.f6 = this.f5;
                     if(this.f6 < this.f0)
                     {
                        this.i0 = 1;
                     }
                     else
                     {
                        this.f0 = 1;
                        this.f0 = this.f0;
                        this.f0 = this.f0;
                        this.f5 = this.f5;
                        this.f0 /= this.f5;
                        this.f0 = this.f0;
                        this.f6 = 1.19209e-7;
                        this.f6 = this.f6;
                        this.f4 = this.f4;
                        this.f0 = this.f0;
                        this.f3 = this.f3;
                        this.f4 *= this.f0;
                        this.f0 = this.f3 * this.f0;
                        this.f3 = this.f6;
                        this.f4 = this.f4;
                        this.f0 = this.f0;
                        this.i0 = this.f5 <= this.f3 ? 1 : 0;
                        this.f3 = this.f0;
                     }
                     this.f0 = this.f4;
                     this.i0 &= 1;
                     while(true)
                     {
                        if(this.i0 == 0)
                        {
                           this.i0 = 0;
                           this.i2 = this.i4 + 8;
                           this.i4 = this.i0;
                           this.i6 = this.i2;
                           this.i5 = this.i0;
                           this.i2 = this.i4;
                           this.i0 = this.i6;
                           if(this.i1 > this.i5)
                           {
                              break loop1;
                           }
                           if(this.i2 != 0)
                           {
                              this.i0 = this.i2;
                              §§goto(addr014b);
                           }
                           this.i0 = cmodule.Box2D.___sF;
                           mstate.esp -= 24;
                           this.i1 = cmodule.Box2D.__2E_str1670;
                           this.i2 = cmodule.Box2D.__2E_str169337;
                           this.i3 = cmodule.Box2D.__ZZN10b2PolyNode21GetRightestConnectionEPS_E8__func__;
                           this.i4 = cmodule.Box2D.__2E_str22229;
                           this.i5 = 1560;
                        }
                        else
                        {
                           this.i0 = cmodule.Box2D.___sF;
                           mstate.esp -= 24;
                           this.i1 = cmodule.Box2D.__2E_str1670;
                           this.i2 = cmodule.Box2D.__2E_str165336;
                           this.i3 = cmodule.Box2D.__ZZN10b2PolyNode21GetRightestConnectionEPS_E8__func__;
                           this.i4 = cmodule.Box2D.__2E_str22229;
                           this.i5 = 1524;
                        }
                        addr0428:
                        this.i0 += 176;
                        si32(this.i0,mstate.esp);
                        si32(this.i1,mstate.esp + 4);
                        si32(this.i2,mstate.esp + 8);
                        break;
                     }
                     addr0460:
                     si32(this.i3,mstate.esp + 12);
                     si32(this.i4,mstate.esp + 16);
                     §§goto(addr047c);
                  }
                  addr014b:
                  mstate.eax = this.i0;
                  mstate.esp = mstate.ebp;
                  mstate.ebp = li32(mstate.esp);
                  mstate.esp += 4;
                  mstate.esp += 4;
                  mstate.gworker = caller;
                  return;
               }
               this.i0 = cmodule.Box2D.___sF;
               mstate.esp -= 24;
               this.i2 = cmodule.Box2D.__2E_str1670;
               this.i3 = cmodule.Box2D.__2E_str46253;
               this.i4 = cmodule.Box2D.__ZZN10b2PolyNode21GetRightestConnectionEPS_E8__func__;
               this.i1 = cmodule.Box2D.__2E_str22229;
               this.i5 = 1514;
               this.i0 += 176;
               si32(this.i0,mstate.esp);
               si32(this.i2,mstate.esp + 4);
               si32(this.i3,mstate.esp + 8);
               si32(this.i4,mstate.esp + 12);
               si32(this.i1,mstate.esp + 16);
               addr047c:
               si32(this.i5,mstate.esp + 20);
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
               throw "Invalid state in __ZN10b2PolyNode21GetRightestConnectionEPS_";
         }
         while(true)
         {
            this.i0 = li32(this.i0);
            loop3:
            while(true)
            {
               while(true)
               {
                  if(this.i0 != this.i3)
                  {
                     this.f4 = 1.19209e-7;
                     this.f5 = lf32(this.i0 + 4);
                     this.f6 = lf32(this.i0);
                     this.f7 = this.f1;
                     this.f8 = this.f2;
                     this.f5 -= this.f7;
                     this.f6 -= this.f8;
                     this.f5 = this.f5;
                     this.f6 = this.f6;
                     this.f7 = this.f5;
                     this.f8 = this.f6;
                     this.f7 *= this.f7;
                     this.f8 *= this.f8;
                     this.f7 = this.f7;
                     this.f8 = this.f8;
                     this.f7 = this.f7;
                     this.f8 = this.f8;
                     this.f7 = this.f8 + this.f7;
                     this.f7 = this.f7;
                     this.f8 = this.f7;
                     this.f8 = Math.sqrt(this.f8);
                     this.f8 = this.f8;
                     this.f4 = this.f4;
                     this.f4 = this.f4;
                     this.f9 = this.f8;
                     if(this.f9 >= this.f4)
                     {
                        this.f4 = 1;
                        this.f4 = this.f4;
                        this.f8 = this.f8;
                        this.f4 = this.f4;
                        this.f4 /= this.f8;
                        this.f4 = this.f4;
                        this.f6 = this.f6;
                        this.f4 = this.f4;
                        this.f5 = this.f5;
                        this.f6 *= this.f4;
                        this.f4 = this.f5 * this.f4;
                        this.f5 = this.f6;
                        this.f4 = this.f4;
                        this.f6 = this.f5;
                        this.f5 = this.f4;
                     }
                     this.f4 = this.f6;
                     this.f6 = 1.42109e-14;
                     this.f6 = this.f6;
                     this.f6 = this.f6;
                     this.f7 = this.f7;
                     if(this.f7 < this.f6)
                     {
                        this.i0 = cmodule.Box2D.___sF;
                        mstate.esp -= 24;
                        this.i2 = cmodule.Box2D.__2E_str1670;
                        this.i1 = cmodule.Box2D.__2E_str166;
                        this.i3 = cmodule.Box2D.__ZZN10b2PolyNode21GetRightestConnectionEPS_E8__func__;
                        this.i4 = cmodule.Box2D.__2E_str22229;
                        this.i5 = 1539;
                        this.i0 += 176;
                        si32(this.i0,mstate.esp);
                        si32(this.i2,mstate.esp + 4);
                        si32(this.i1,mstate.esp + 8);
                        §§goto(addr0460);
                     }
                     else
                     {
                        this.f6 = this.f0;
                        this.f4 = this.f4;
                        this.f5 = this.f5;
                        this.f7 = this.f3;
                        this.f8 = this.f6 * this.f4;
                        this.f6 *= this.f5;
                        this.f4 = this.f7 * this.f4;
                        this.f5 = this.f7 * this.f5;
                        this.f7 = this.f8;
                        this.f6 = this.f6;
                        this.f4 = this.f4;
                        this.f5 = this.f5;
                        this.f5 = this.f5;
                        this.f7 = this.f7;
                        this.f4 = this.f4;
                        this.f6 = this.f6;
                        this.f5 = this.f7 + this.f5;
                        this.f4 = this.f6 - this.f4;
                        this.f5 = this.f5;
                        this.f4 = this.f4;
                        if(this.i2 == 0)
                        {
                           break;
                        }
                        this.f6 = 1.19209e-7;
                        this.f7 = lf32(this.i2 + 4);
                        this.f8 = lf32(this.i2);
                        this.f9 = this.f1;
                        this.f10 = this.f2;
                        this.f7 -= this.f9;
                        this.f8 -= this.f10;
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
                        this.f6 = this.f6;
                        this.f6 = this.f6;
                        this.f10 = this.f9;
                        if(this.f10 >= this.f6)
                        {
                           this.f6 = 1;
                           this.f6 = this.f6;
                           this.f9 = this.f9;
                           this.f6 = this.f6;
                           this.f6 /= this.f9;
                           this.f6 = this.f6;
                           this.f8 = this.f8;
                           this.f6 = this.f6;
                           this.f7 = this.f7;
                           this.f8 *= this.f6;
                           this.f6 = this.f7 * this.f6;
                           this.f7 = this.f8;
                           this.f6 = this.f6;
                           this.f8 = this.f7;
                           this.f7 = this.f6;
                        }
                        this.f6 = this.f8;
                        this.f8 = 0;
                        this.f9 = this.f0;
                        this.f6 = this.f6;
                        this.f7 = this.f7;
                        this.f10 = this.f3;
                        this.f11 = this.f9 * this.f6;
                        this.f9 *= this.f7;
                        this.f6 = this.f10 * this.f6;
                        this.f7 = this.f10 * this.f7;
                        this.f10 = this.f11;
                        this.f9 = this.f9;
                        this.f6 = this.f6;
                        this.f7 = this.f7;
                        this.f7 = this.f7;
                        this.f10 = this.f10;
                        this.f6 = this.f6;
                        this.f9 = this.f9;
                        this.f7 = this.f10 + this.f7;
                        this.f6 = this.f9 - this.f6;
                        this.f7 = this.f7;
                        this.f6 = this.f6;
                        this.f8 = this.f8;
                        this.f8 = this.f8;
                        this.f4 = this.f4;
                        if(this.f4 < this.f8)
                        {
                           this.f4 = this.f7;
                           this.f5 = this.f5;
                           if(this.f5 > this.f4)
                           {
                              this.f4 = 0;
                              this.f5 = this.f4;
                              this.f4 = this.f5;
                              this.f5 = this.f6;
                              if(this.f5 <= this.f4)
                              {
                                 addr04f5:
                                 this.i0 = this.i2;
                                 break;
                                 addr04f4:
                              }
                           }
                           addr0ac0:
                           break loop3;
                        }
                        this.f4 = this.f7;
                        this.f5 = this.f5;
                        if(this.f5 > this.f4)
                        {
                           this.f4 = 0;
                           this.f4 = this.f4;
                           this.f4 = this.f4;
                           this.f5 = this.f6;
                           if(this.f5 >= this.f4)
                           {
                              §§goto(addr0ac0);
                           }
                        }
                        §§goto(addr04f4);
                     }
                  }
                  §§goto(addr04f5);
               }
               break;
            }
            this.i4 = this.i0;
            this.i0 = this.i6 + 4;
            this.i5 += 1;
            this.i2 = this.i0;
            this.i0 = this.i5;
            §§goto(addr0399);
         }
         §§goto(addr0428);
      }
   }
}

