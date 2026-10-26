package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.system.*;
   import flash.text.*;
   import flash.utils.*;
   
   public final class FSM__Z19b2World_CreateJointPvP8_AS3_Val extends Machine
   {
      
      public static const intRegCount:int = 14;
      
      public static const NumberRegCount:int = 6;
      
      public var i10:int;
      
      public var i11:int;
      
      public var i12:int;
      
      public var i13:int;
      
      public var f2:Number;
      
      public var f3:Number;
      
      public var f5:Number;
      
      public var f0:Number;
      
      public var f4:Number;
      
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
      
      public var f1:Number;
      
      public function FSM__Z19b2World_CreateJointPvP8_AS3_Val()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__Z19b2World_CreateJointPvP8_AS3_Val = null;
         _loc1_ = new FSM__Z19b2World_CreateJointPvP8_AS3_Val();
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
               mstate.esp -= 12;
               this.i0 = cmodule.Box2D.__2E_str117310;
               mstate.esp -= 20;
               this.i1 = li32(mstate.ebp + 12);
               this.i2 = mstate.ebp + -12;
               this.i3 = mstate.ebp + -8;
               this.i4 = mstate.ebp + -4;
               si32(this.i1,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               si32(this.i4,mstate.esp + 8);
               si32(this.i3,mstate.esp + 12);
               si32(this.i2,mstate.esp + 16);
               state = 1;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_ArrayValue]();
               return;
            case 1:
               mstate.esp += 20;
               this.i0 = li32(mstate.ebp + -8);
               this.i1 = li32(this.i0 + 102868);
               this.i2 = li32(mstate.ebp + -12);
               this.i1 &= 2;
               if(this.i1 != 0)
               {
                  this.i0 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i2 = cmodule.Box2D.__2E_str1670;
                  this.i1 = cmodule.Box2D.__2E_str116;
                  this.i3 = cmodule.Box2D.__ZZN7b2World11CreateJointEPK10b2JointDefE8__func__;
                  this.i4 = cmodule.Box2D.__2E_str68275;
                  this.i5 = 210;
                  this.i0 += 176;
                  si32(this.i0,mstate.esp);
                  si32(this.i2,mstate.esp + 4);
                  si32(this.i1,mstate.esp + 8);
                  si32(this.i3,mstate.esp + 12);
                  si32(this.i4,mstate.esp + 16);
               }
               else
               {
                  addr02df:
                  this.i1 = li32(this.i2);
                  this.i3 = this.i2;
                  this.i4 = this.i0;
                  if(this.i1 <= 5)
                  {
                     if(this.i1 <= 2)
                     {
                        if(this.i1 == 1)
                        {
                           this.i1 = 200;
                           mstate.esp -= 8;
                           si32(this.i4,mstate.esp);
                           si32(this.i1,mstate.esp + 4);
                           state = 23;
                           mstate.esp -= 4;
                           FSM__ZN16b2BlockAllocator8AllocateEi.start();
                           return;
                        }
                        if(this.i1 == 2)
                        {
                           this.i1 = 244;
                           mstate.esp -= 8;
                           si32(this.i4,mstate.esp);
                           si32(this.i1,mstate.esp + 4);
                           state = 4;
                           mstate.esp -= 4;
                           FSM__ZN16b2BlockAllocator8AllocateEi.start();
                           return;
                        }
                     }
                     else
                     {
                        if(this.i1 == 3)
                        {
                           this.i1 = 148;
                           mstate.esp -= 8;
                           si32(this.i4,mstate.esp);
                           si32(this.i1,mstate.esp + 4);
                           state = 8;
                           mstate.esp -= 4;
                           FSM__ZN16b2BlockAllocator8AllocateEi.start();
                           return;
                        }
                        if(this.i1 == 4)
                        {
                           this.i1 = 196;
                           mstate.esp -= 8;
                           si32(this.i4,mstate.esp);
                           si32(this.i1,mstate.esp + 4);
                           state = 26;
                           mstate.esp -= 4;
                           FSM__ZN16b2BlockAllocator8AllocateEi.start();
                           return;
                        }
                        if(this.i1 == 5)
                        {
                           this.i1 = 164;
                           mstate.esp -= 8;
                           si32(this.i4,mstate.esp);
                           si32(this.i1,mstate.esp + 4);
                           state = 5;
                           mstate.esp -= 4;
                           FSM__ZN16b2BlockAllocator8AllocateEi.start();
                           return;
                        }
                     }
                  }
                  else if(this.i1 <= 7)
                  {
                     if(this.i1 == 6)
                     {
                        this.i1 = 192;
                        mstate.esp -= 8;
                        si32(this.i4,mstate.esp);
                        si32(this.i1,mstate.esp + 4);
                        state = 31;
                        mstate.esp -= 4;
                        FSM__ZN16b2BlockAllocator8AllocateEi.start();
                        return;
                     }
                     if(this.i1 == 7)
                     {
                        this.i1 = 212;
                        mstate.esp -= 8;
                        si32(this.i4,mstate.esp);
                        si32(this.i1,mstate.esp + 4);
                        state = 6;
                        mstate.esp -= 4;
                        FSM__ZN16b2BlockAllocator8AllocateEi.start();
                        return;
                     }
                  }
                  else
                  {
                     if(this.i1 == 8)
                     {
                        this.i1 = 164;
                        mstate.esp -= 8;
                        si32(this.i4,mstate.esp);
                        si32(this.i1,mstate.esp + 4);
                        state = 46;
                        mstate.esp -= 4;
                        FSM__ZN16b2BlockAllocator8AllocateEi.start();
                        return;
                     }
                     if(this.i1 == 9)
                     {
                        this.i1 = 152;
                        mstate.esp -= 8;
                        si32(this.i4,mstate.esp);
                        si32(this.i1,mstate.esp + 4);
                        state = 49;
                        mstate.esp -= 4;
                        FSM__ZN16b2BlockAllocator8AllocateEi.start();
                        return;
                     }
                     if(this.i1 == 10)
                     {
                        this.i1 = 156;
                        mstate.esp -= 8;
                        si32(this.i4,mstate.esp);
                        si32(this.i1,mstate.esp + 4);
                        state = 7;
                        mstate.esp -= 4;
                        FSM__ZN16b2BlockAllocator8AllocateEi.start();
                        return;
                     }
                  }
                  this.i0 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i2 = cmodule.Box2D.__2E_str1670;
                  this.i4 = cmodule.Box2D.__2E_str46253;
                  this.i1 = cmodule.Box2D.__ZZN11b2LoopShape6CreateEPK6b2Vec2iE8__func__;
                  this.i3 = cmodule.Box2D.__2E_str39246;
                  this.i5 = 113;
                  this.i0 += 176;
                  si32(this.i0,mstate.esp);
                  si32(this.i2,mstate.esp + 4);
                  si32(this.i4,mstate.esp + 8);
                  si32(this.i1,mstate.esp + 12);
                  si32(this.i3,mstate.esp + 16);
               }
               si32(this.i5,mstate.esp + 20);
               state = 2;
               mstate.esp -= 4;
               FSM_fprintf.start();
               return;
            case 3:
               §§goto(addr02df);
            case 2:
               mstate.esp += 24;
               state = 3;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 4:
               this.i4 = mstate.eax;
               mstate.esp += 8;
               if(this.i4 == 0)
               {
                  break;
               }
               this.i1 = cmodule.Box2D.__ZTV7b2Joint;
               this.i1 += 8;
               si32(this.i1,this.i4);
               this.i1 = li32(this.i2 + 8);
               this.i5 = li32(this.i2 + 12);
               this.i6 = this.i2 + 12;
               this.i7 = this.i2 + 8;
               this.i8 = this.i4;
               this.i9 = this.i2;
               this.i10 = this.i4;
               if(this.i1 == this.i5)
               {
                  this.i4 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i0 = cmodule.Box2D.__2E_str1670;
                  this.i2 = cmodule.Box2D.__2E_str40247;
                  this.i3 = cmodule.Box2D.__ZZN7b2JointC4EPK10b2JointDefE8__func__;
                  this.i6 = cmodule.Box2D.__2E_str39246;
                  this.i7 = 173;
                  this.i4 += 176;
                  si32(this.i4,mstate.esp);
                  si32(this.i0,mstate.esp + 4);
                  si32(this.i2,mstate.esp + 8);
                  si32(this.i3,mstate.esp + 12);
                  si32(this.i6,mstate.esp + 16);
                  si32(this.i7,mstate.esp + 20);
                  state = 21;
                  mstate.esp -= 4;
                  FSM_fprintf.start();
                  return;
               }
            case 22:
               this.i1 = 0;
               this.i3 = li32(this.i3);
               si32(this.i3,this.i10 + 4);
               si32(this.i1,this.i10 + 8);
               si32(this.i1,this.i10 + 12);
               this.i3 = li32(this.i7);
               si32(this.i3,this.i10 + 48);
               this.i3 = li32(this.i6);
               si32(this.i3,this.i10 + 52);
               this.i3 = li8(this.i9 + 16);
               si8(this.i3,this.i10 + 57);
               si8(this.i1,this.i10 + 56);
               this.i3 = li32(this.i9 + 4);
               si32(this.i3,this.i10 + 60);
               si32(this.i1,this.i10 + 20);
               si32(this.i1,this.i10 + 16);
               si32(this.i1,this.i10 + 24);
               si32(this.i1,this.i10 + 28);
               si32(this.i1,this.i10 + 36);
               si32(this.i1,this.i10 + 32);
               si32(this.i1,this.i10 + 40);
               this.i3 = cmodule.Box2D.__ZTV16b2PrismaticJoint;
               si32(this.i1,this.i10 + 44);
               this.i3 += 8;
               si32(this.i3,this.i8);
               this.f0 = lf32(this.i9 + 20);
               this.f1 = lf32(this.i9 + 24);
               sf32(this.f0,this.i10 + 96);
               sf32(this.f1,this.i10 + 100);
               this.f0 = lf32(this.i9 + 28);
               this.f1 = lf32(this.i9 + 32);
               sf32(this.f0,this.i10 + 104);
               sf32(this.f1,this.i10 + 108);
               this.f0 = lf32(this.i9 + 40);
               this.f1 = lf32(this.i9 + 36);
               this.f2 = this.f0;
               sf32(this.f1,this.i10 + 112);
               this.f2 = -this.f2;
               sf32(this.f0,this.i10 + 116);
               this.f0 = this.f2;
               sf32(this.f0,this.i10 + 120);
               sf32(this.f1,this.i10 + 124);
               this.f0 = lf32(this.i9 + 44);
               sf32(this.f0,this.i10 + 128);
               si32(this.i1,this.i10 + 200);
               si32(this.i1,this.i10 + 204);
               si32(this.i1,this.i10 + 208);
               si32(this.i1,this.i10 + 212);
               si32(this.i1,this.i10 + 216);
               this.f0 = lf32(this.i9 + 52);
               sf32(this.f0,this.i10 + 220);
               this.f0 = lf32(this.i9 + 56);
               sf32(this.f0,this.i10 + 224);
               this.f0 = lf32(this.i9 + 64);
               sf32(this.f0,this.i10 + 228);
               this.f0 = lf32(this.i9 + 68);
               sf32(this.f0,this.i10 + 232);
               this.i3 = li8(this.i9 + 48);
               si8(this.i3,this.i10 + 236);
               this.i3 = li8(this.i9 + 60);
               si8(this.i3,this.i10 + 237);
               si32(this.i1,this.i10 + 240);
               si32(this.i1,this.i10 + 132);
               si32(this.i1,this.i10 + 136);
               si32(this.i1,this.i10 + 140);
               si32(this.i1,this.i10 + 144);
               break;
            case 5:
               this.i4 = mstate.eax;
               mstate.esp += 8;
               if(this.i4 == 0)
               {
                  break;
               }
               this.i1 = cmodule.Box2D.__ZTV7b2Joint;
               this.i1 += 8;
               si32(this.i1,this.i4);
               this.i1 = li32(this.i2 + 8);
               this.i5 = li32(this.i2 + 12);
               this.i6 = this.i2 + 12;
               this.i7 = this.i2 + 8;
               this.i8 = this.i4;
               this.i9 = this.i2;
               this.i10 = this.i4;
               if(this.i1 == this.i5)
               {
                  this.i4 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i0 = cmodule.Box2D.__2E_str1670;
                  this.i2 = cmodule.Box2D.__2E_str40247;
                  this.i3 = cmodule.Box2D.__ZZN7b2JointC4EPK10b2JointDefE8__func__;
                  this.i6 = cmodule.Box2D.__2E_str39246;
                  this.i7 = 173;
                  this.i4 += 176;
                  si32(this.i4,mstate.esp);
                  si32(this.i0,mstate.esp + 4);
                  si32(this.i2,mstate.esp + 8);
                  si32(this.i3,mstate.esp + 12);
                  si32(this.i6,mstate.esp + 16);
                  si32(this.i7,mstate.esp + 20);
                  state = 11;
                  mstate.esp -= 4;
                  FSM_fprintf.start();
                  return;
               }
            case 12:
               this.i1 = 0;
               this.i3 = li32(this.i3);
               si32(this.i3,this.i10 + 4);
               si32(this.i1,this.i10 + 8);
               si32(this.i1,this.i10 + 12);
               this.i3 = li32(this.i7);
               si32(this.i3,this.i10 + 48);
               this.i3 = li32(this.i6);
               si32(this.i3,this.i10 + 52);
               this.i5 = li8(this.i9 + 16);
               si8(this.i5,this.i10 + 57);
               si8(this.i1,this.i10 + 56);
               this.i5 = li32(this.i9 + 4);
               si32(this.i5,this.i10 + 60);
               si32(this.i1,this.i10 + 20);
               si32(this.i1,this.i10 + 16);
               si32(this.i1,this.i10 + 24);
               si32(this.i1,this.i10 + 28);
               si32(this.i1,this.i10 + 36);
               si32(this.i1,this.i10 + 32);
               si32(this.i1,this.i10 + 40);
               this.i5 = cmodule.Box2D.__ZTV12b2MouseJoint;
               si32(this.i1,this.i10 + 44);
               this.i1 = this.i5 + 8;
               si32(this.i1,this.i8);
               this.f0 = lf32(this.i9 + 20);
               this.f1 = 0;
               this.f1 = this.f1;
               this.f1 = this.f1;
               this.f2 = this.f0;
               if(!(this.f2 == Number.NaN || this.f1 == Number.NaN))
               {
                  this.f1 = -cmodule.Box2D.inf;
                  this.f1 = this.f1;
                  this.f1 = this.f1;
                  this.f2 = this.f0;
                  if(this.f2 > this.f1)
                  {
                     this.f1 = cmodule.Box2D.inf;
                     this.f1 = this.f1;
                     this.f1 = this.f1;
                     this.f2 = this.f0;
                     if(this.f2 < this.f1)
                     {
                        this.f1 = 0;
                        this.f2 = lf32(this.i9 + 24);
                        this.f1 = this.f1;
                        this.f1 = this.f1;
                        this.f3 = this.f2;
                        if(!(this.f3 == Number.NaN || this.f1 == Number.NaN))
                        {
                           this.f1 = -cmodule.Box2D.inf;
                           this.f1 = this.f1;
                           this.f1 = this.f1;
                           this.f3 = this.f2;
                           if(this.f3 > this.f1)
                           {
                              this.f1 = cmodule.Box2D.inf;
                              this.f1 = this.f1;
                              this.f1 = this.f1;
                              this.f3 = this.f2;
                              if(this.f3 < this.f1)
                              {
                                 §§goto(addr0ddc);
                              }
                           }
                        }
                     }
                  }
               }
               this.i4 = cmodule.Box2D.___sF;
               mstate.esp -= 24;
               this.i3 = cmodule.Box2D.__2E_str1670;
               this.i0 = cmodule.Box2D.__2E_str133324;
               this.i2 = cmodule.Box2D.__ZZN12b2MouseJointC4EPK15b2MouseJointDefE8__func__;
               this.i9 = cmodule.Box2D.__2E_str90297;
               this.i10 = 34;
               this.i4 += 176;
               si32(this.i4,mstate.esp);
               si32(this.i3,mstate.esp + 4);
               si32(this.i0,mstate.esp + 8);
               si32(this.i2,mstate.esp + 12);
               si32(this.i9,mstate.esp + 16);
               si32(this.i10,mstate.esp + 20);
               state = 13;
               mstate.esp -= 4;
               FSM_fprintf.start();
               return;
            case 14:
               addr0ddc:
               this.f1 = 0;
               this.f3 = lf32(this.i9 + 28);
               this.i1 = this.i9 + 28;
               this.f1 = this.f1;
               this.f1 = this.f1;
               this.f4 = this.f3;
               if(!(this.f4 == Number.NaN || this.f1 == Number.NaN))
               {
                  this.f1 = -cmodule.Box2D.inf;
                  this.f1 = this.f1;
                  this.f1 = this.f1;
                  this.f4 = this.f3;
                  if(this.f4 > this.f1)
                  {
                     this.f1 = cmodule.Box2D.inf;
                     this.f1 = this.f1;
                     this.f1 = this.f1;
                     this.f4 = this.f3;
                     if(this.f4 < this.f1)
                     {
                        this.f1 = 0;
                        this.f1 = this.f1;
                        this.f1 = this.f1;
                        this.f3 = this.f3;
                        if(this.f3 >= this.f1)
                        {
                           §§goto(addr0f9c);
                        }
                     }
                  }
               }
               this.i4 = cmodule.Box2D.___sF;
               mstate.esp -= 24;
               this.i3 = cmodule.Box2D.__2E_str1670;
               this.i0 = cmodule.Box2D.__2E_str134;
               this.i1 = cmodule.Box2D.__ZZN12b2MouseJointC4EPK15b2MouseJointDefE8__func__;
               this.i2 = cmodule.Box2D.__2E_str90297;
               this.i9 = 35;
               this.i4 += 176;
               si32(this.i4,mstate.esp);
               si32(this.i3,mstate.esp + 4);
               si32(this.i0,mstate.esp + 8);
               si32(this.i1,mstate.esp + 12);
               si32(this.i2,mstate.esp + 16);
               si32(this.i9,mstate.esp + 20);
               state = 15;
               mstate.esp -= 4;
               FSM_fprintf.start();
               return;
            case 16:
               addr0f9c:
               this.f1 = 0;
               this.f3 = lf32(this.i9 + 32);
               this.i5 = this.i9 + 32;
               this.f1 = this.f1;
               this.f1 = this.f1;
               this.f4 = this.f3;
               if(!(this.f4 == Number.NaN || this.f1 == Number.NaN))
               {
                  this.f1 = -cmodule.Box2D.inf;
                  this.f1 = this.f1;
                  this.f1 = this.f1;
                  this.f4 = this.f3;
                  if(this.f4 > this.f1)
                  {
                     this.f1 = cmodule.Box2D.inf;
                     this.f1 = this.f1;
                     this.f1 = this.f1;
                     this.f4 = this.f3;
                     if(this.f4 < this.f1)
                     {
                        this.f1 = 0;
                        this.f1 = this.f1;
                        this.f1 = this.f1;
                        this.f3 = this.f3;
                        if(this.f3 >= this.f1)
                        {
                           §§goto(addr115c);
                        }
                     }
                  }
               }
               this.i4 = cmodule.Box2D.___sF;
               mstate.esp -= 24;
               this.i3 = cmodule.Box2D.__2E_str1670;
               this.i0 = cmodule.Box2D.__2E_str135;
               this.i1 = cmodule.Box2D.__ZZN12b2MouseJointC4EPK15b2MouseJointDefE8__func__;
               this.i2 = cmodule.Box2D.__2E_str90297;
               this.i5 = 36;
               this.i4 += 176;
               si32(this.i4,mstate.esp);
               si32(this.i3,mstate.esp + 4);
               si32(this.i0,mstate.esp + 8);
               si32(this.i1,mstate.esp + 12);
               si32(this.i2,mstate.esp + 16);
               si32(this.i5,mstate.esp + 20);
               state = 17;
               mstate.esp -= 4;
               FSM_fprintf.start();
               return;
            case 18:
               addr115c:
               this.f1 = 0;
               this.f3 = lf32(this.i9 + 36);
               this.i6 = this.i9 + 36;
               this.f1 = this.f1;
               this.f1 = this.f1;
               this.f4 = this.f3;
               if(!(this.f4 == Number.NaN || this.f1 == Number.NaN))
               {
                  this.f1 = -cmodule.Box2D.inf;
                  this.f1 = this.f1;
                  this.f1 = this.f1;
                  this.f4 = this.f3;
                  if(this.f4 > this.f1)
                  {
                     this.f1 = cmodule.Box2D.inf;
                     this.f1 = this.f1;
                     this.f1 = this.f1;
                     this.f4 = this.f3;
                     if(this.f4 < this.f1)
                     {
                        this.f1 = 0;
                        this.f1 = this.f1;
                        this.f1 = this.f1;
                        this.f3 = this.f3;
                        if(this.f3 >= this.f1)
                        {
                           addr131c:
                           this.i7 = 0;
                           sf32(this.f0,this.i10 + 104);
                           sf32(this.f2,this.i10 + 108);
                           this.f1 = lf32(this.i3 + 16);
                           this.f2 = this.f2;
                           this.f3 = lf32(this.i3 + 12);
                           this.f0 = this.f0;
                           this.f1 = this.f2 - this.f1;
                           this.f0 -= this.f3;
                           this.f1 = this.f1;
                           this.f0 = this.f0;
                           this.f2 = lf32(this.i3 + 20);
                           this.f0 = this.f0;
                           this.f3 = lf32(this.i3 + 24);
                           this.f1 = this.f1;
                           this.f4 = lf32(this.i3 + 28);
                           this.f5 = lf32(this.i3 + 32);
                           this.f3 = this.f1 * this.f3;
                           this.f2 = this.f0 * this.f2;
                           this.f1 *= this.f5;
                           this.f3 = this.f3;
                           this.f0 *= this.f4;
                           this.f2 = this.f2;
                           this.f1 = this.f1;
                           this.f0 = this.f0;
                           this.f3 = this.f3;
                           this.f2 = this.f2;
                           this.f2 += this.f3;
                           this.f1 = this.f1;
                           this.f0 = this.f0;
                           this.f0 += this.f1;
                           this.f1 = this.f2;
                           sf32(this.f1,this.i10 + 96);
                           this.f0 = this.f0;
                           sf32(this.f0,this.i10 + 100);
                           this.f0 = lf32(this.i1);
                           sf32(this.f0,this.i10 + 144);
                           si32(this.i7,this.i10 + 112);
                           si32(this.i7,this.i10 + 116);
                           this.f0 = lf32(this.i5);
                           sf32(this.f0,this.i10 + 148);
                           this.f0 = lf32(this.i6);
                           sf32(this.f0,this.i10 + 152);
                           si32(this.i7,this.i10 + 156);
                           si32(this.i7,this.i10 + 160);
                           break;
                        }
                     }
                  }
               }
               this.i4 = cmodule.Box2D.___sF;
               mstate.esp -= 24;
               this.i3 = cmodule.Box2D.__2E_str1670;
               this.i0 = cmodule.Box2D.__2E_str136325;
               this.i1 = cmodule.Box2D.__ZZN12b2MouseJointC4EPK15b2MouseJointDefE8__func__;
               this.i2 = cmodule.Box2D.__2E_str90297;
               this.i5 = 37;
               this.i4 += 176;
               si32(this.i4,mstate.esp);
               si32(this.i3,mstate.esp + 4);
               si32(this.i0,mstate.esp + 8);
               si32(this.i1,mstate.esp + 12);
               si32(this.i2,mstate.esp + 16);
               si32(this.i5,mstate.esp + 20);
               state = 19;
               mstate.esp -= 4;
               FSM_fprintf.start();
               return;
            case 20:
               §§goto(addr131c);
            case 6:
               this.i4 = mstate.eax;
               mstate.esp += 8;
               if(this.i4 == 0)
               {
                  break;
               }
               this.i1 = cmodule.Box2D.__ZTV7b2Joint;
               this.i1 += 8;
               si32(this.i1,this.i4);
               this.i1 = li32(this.i2 + 8);
               this.i5 = li32(this.i2 + 12);
               this.i6 = this.i2 + 12;
               this.i7 = this.i2 + 8;
               this.i8 = this.i4;
               this.i9 = this.i2;
               this.i10 = this.i4;
               if(this.i1 == this.i5)
               {
                  this.i4 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i0 = cmodule.Box2D.__2E_str1670;
                  this.i2 = cmodule.Box2D.__2E_str40247;
                  this.i3 = cmodule.Box2D.__ZZN7b2JointC4EPK10b2JointDefE8__func__;
                  this.i6 = cmodule.Box2D.__2E_str39246;
                  this.i7 = 173;
                  this.i4 += 176;
                  si32(this.i4,mstate.esp);
                  si32(this.i0,mstate.esp + 4);
                  si32(this.i2,mstate.esp + 8);
                  si32(this.i3,mstate.esp + 12);
                  si32(this.i6,mstate.esp + 16);
                  si32(this.i7,mstate.esp + 20);
                  state = 44;
                  mstate.esp -= 4;
                  FSM_fprintf.start();
                  return;
               }
            case 45:
               this.i1 = 0;
               this.i3 = li32(this.i3);
               si32(this.i3,this.i10 + 4);
               si32(this.i1,this.i10 + 8);
               si32(this.i1,this.i10 + 12);
               this.i3 = li32(this.i7);
               si32(this.i3,this.i10 + 48);
               this.i3 = li32(this.i6);
               si32(this.i3,this.i10 + 52);
               this.i3 = li8(this.i9 + 16);
               si8(this.i3,this.i10 + 57);
               si8(this.i1,this.i10 + 56);
               this.i3 = li32(this.i9 + 4);
               si32(this.i3,this.i10 + 60);
               si32(this.i1,this.i10 + 20);
               si32(this.i1,this.i10 + 16);
               si32(this.i1,this.i10 + 24);
               si32(this.i1,this.i10 + 28);
               si32(this.i1,this.i10 + 36);
               si32(this.i1,this.i10 + 32);
               si32(this.i1,this.i10 + 40);
               this.i3 = cmodule.Box2D.__ZTV11b2LineJoint;
               si32(this.i1,this.i10 + 44);
               this.i3 += 8;
               si32(this.i3,this.i8);
               this.f0 = lf32(this.i9 + 20);
               this.f1 = lf32(this.i9 + 24);
               sf32(this.f0,this.i10 + 96);
               sf32(this.f1,this.i10 + 100);
               this.f0 = lf32(this.i9 + 28);
               this.f1 = lf32(this.i9 + 32);
               sf32(this.f0,this.i10 + 104);
               sf32(this.f1,this.i10 + 108);
               this.f0 = lf32(this.i9 + 40);
               this.f1 = lf32(this.i9 + 36);
               this.f2 = this.f0;
               sf32(this.f1,this.i10 + 112);
               this.f2 = -this.f2;
               sf32(this.f0,this.i10 + 116);
               this.f0 = this.f2;
               sf32(this.f0,this.i10 + 120);
               sf32(this.f1,this.i10 + 124);
               si32(this.i1,this.i10 + 160);
               si32(this.i1,this.i10 + 164);
               si32(this.i1,this.i10 + 168);
               si32(this.i1,this.i10 + 172);
               si32(this.i1,this.i10 + 176);
               si32(this.i1,this.i10 + 180);
               this.f0 = lf32(this.i9 + 48);
               sf32(this.f0,this.i10 + 184);
               this.f0 = lf32(this.i9 + 52);
               sf32(this.f0,this.i10 + 188);
               this.i3 = li8(this.i9 + 44);
               si8(this.i3,this.i10 + 208);
               this.f0 = lf32(this.i9 + 56);
               sf32(this.f0,this.i10 + 192);
               this.f0 = lf32(this.i9 + 60);
               sf32(this.f0,this.i10 + 196);
               si32(this.i1,this.i10 + 200);
               si32(this.i1,this.i10 + 204);
               si32(this.i1,this.i10 + 128);
               si32(this.i1,this.i10 + 132);
               si32(this.i1,this.i10 + 136);
               si32(this.i1,this.i10 + 140);
               break;
            case 7:
               this.i4 = mstate.eax;
               mstate.esp += 8;
               if(this.i4 == 0)
               {
                  break;
               }
               this.i1 = cmodule.Box2D.__ZTV7b2Joint;
               this.i1 += 8;
               si32(this.i1,this.i4);
               this.i1 = li32(this.i2 + 8);
               this.i5 = li32(this.i2 + 12);
               this.i6 = this.i2 + 12;
               this.i7 = this.i2 + 8;
               this.i8 = this.i4;
               this.i9 = this.i2;
               this.i10 = this.i4;
               if(this.i1 == this.i5)
               {
                  this.i4 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i0 = cmodule.Box2D.__2E_str1670;
                  this.i2 = cmodule.Box2D.__2E_str40247;
                  this.i3 = cmodule.Box2D.__ZZN7b2JointC4EPK10b2JointDefE8__func__;
                  this.i6 = cmodule.Box2D.__2E_str39246;
                  this.i7 = 173;
                  this.i4 += 176;
                  si32(this.i4,mstate.esp);
                  si32(this.i0,mstate.esp + 4);
                  si32(this.i2,mstate.esp + 8);
                  si32(this.i3,mstate.esp + 12);
                  si32(this.i6,mstate.esp + 16);
                  si32(this.i7,mstate.esp + 20);
                  state = 52;
                  mstate.esp -= 4;
                  FSM_fprintf.start();
                  return;
               }
            case 53:
               this.i1 = 0;
               this.i3 = li32(this.i3);
               si32(this.i3,this.i10 + 4);
               si32(this.i1,this.i10 + 8);
               si32(this.i1,this.i10 + 12);
               this.i3 = li32(this.i7);
               si32(this.i3,this.i10 + 48);
               this.i3 = li32(this.i6);
               si32(this.i3,this.i10 + 52);
               this.i3 = li8(this.i9 + 16);
               si8(this.i3,this.i10 + 57);
               si8(this.i1,this.i10 + 56);
               this.i3 = li32(this.i9 + 4);
               si32(this.i3,this.i10 + 60);
               si32(this.i1,this.i10 + 20);
               si32(this.i1,this.i10 + 16);
               si32(this.i1,this.i10 + 24);
               si32(this.i1,this.i10 + 28);
               si32(this.i1,this.i10 + 36);
               si32(this.i1,this.i10 + 32);
               si32(this.i1,this.i10 + 40);
               this.i3 = cmodule.Box2D.__ZTV11b2RopeJoint;
               si32(this.i1,this.i10 + 44);
               this.i3 += 8;
               si32(this.i3,this.i8);
               this.f0 = lf32(this.i9 + 20);
               this.f1 = lf32(this.i9 + 24);
               sf32(this.f0,this.i10 + 96);
               sf32(this.f1,this.i10 + 100);
               this.f0 = lf32(this.i9 + 28);
               this.f1 = lf32(this.i9 + 32);
               sf32(this.f0,this.i10 + 104);
               sf32(this.f1,this.i10 + 108);
               this.f0 = lf32(this.i9 + 36);
               sf32(this.f0,this.i10 + 112);
               si32(this.i1,this.i10 + 144);
               si32(this.i1,this.i10 + 148);
               si32(this.i1,this.i10 + 152);
               si32(this.i1,this.i10 + 116);
               break;
            case 8:
               this.i4 = mstate.eax;
               mstate.esp += 8;
               if(this.i4 == 0)
               {
                  break;
               }
               this.i1 = cmodule.Box2D.__ZTV7b2Joint;
               this.i1 += 8;
               si32(this.i1,this.i4);
               this.i1 = li32(this.i2 + 8);
               this.i5 = li32(this.i2 + 12);
               this.i6 = this.i2 + 12;
               this.i7 = this.i2 + 8;
               this.i8 = this.i4;
               this.i9 = this.i2;
               this.i10 = this.i4;
               if(this.i1 == this.i5)
               {
                  this.i4 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i0 = cmodule.Box2D.__2E_str1670;
                  this.i2 = cmodule.Box2D.__2E_str40247;
                  this.i3 = cmodule.Box2D.__ZZN7b2JointC4EPK10b2JointDefE8__func__;
                  this.i6 = cmodule.Box2D.__2E_str39246;
                  this.i7 = 173;
                  this.i4 += 176;
                  si32(this.i4,mstate.esp);
                  si32(this.i0,mstate.esp + 4);
                  si32(this.i2,mstate.esp + 8);
                  si32(this.i3,mstate.esp + 12);
                  si32(this.i6,mstate.esp + 16);
                  si32(this.i7,mstate.esp + 20);
                  state = 9;
                  mstate.esp -= 4;
                  FSM_fprintf.start();
                  return;
               }
            case 10:
               this.i1 = 0;
               this.i3 = li32(this.i3);
               si32(this.i3,this.i10 + 4);
               si32(this.i1,this.i10 + 8);
               si32(this.i1,this.i10 + 12);
               this.i3 = li32(this.i7);
               si32(this.i3,this.i10 + 48);
               this.i3 = li32(this.i6);
               si32(this.i3,this.i10 + 52);
               this.i3 = li8(this.i9 + 16);
               si8(this.i3,this.i10 + 57);
               si8(this.i1,this.i10 + 56);
               this.i3 = li32(this.i9 + 4);
               si32(this.i3,this.i10 + 60);
               si32(this.i1,this.i10 + 20);
               si32(this.i1,this.i10 + 16);
               si32(this.i1,this.i10 + 24);
               si32(this.i1,this.i10 + 28);
               si32(this.i1,this.i10 + 36);
               si32(this.i1,this.i10 + 32);
               si32(this.i1,this.i10 + 40);
               this.i3 = cmodule.Box2D.__ZTV15b2DistanceJoint;
               si32(this.i1,this.i10 + 44);
               this.i3 += 8;
               si32(this.i3,this.i8);
               this.f0 = lf32(this.i9 + 20);
               this.f1 = lf32(this.i9 + 24);
               sf32(this.f0,this.i10 + 96);
               sf32(this.f1,this.i10 + 100);
               this.f0 = lf32(this.i9 + 28);
               this.f1 = lf32(this.i9 + 32);
               sf32(this.f0,this.i10 + 104);
               sf32(this.f1,this.i10 + 108);
               this.f0 = lf32(this.i9 + 36);
               sf32(this.f0,this.i10 + 144);
               this.f0 = lf32(this.i9 + 40);
               sf32(this.f0,this.i10 + 120);
               this.f0 = lf32(this.i9 + 44);
               sf32(this.f0,this.i10 + 124);
               si32(this.i1,this.i10 + 136);
               si32(this.i1,this.i10 + 128);
               si32(this.i1,this.i10 + 132);
               break;
            case 9:
               mstate.esp += 24;
               state = 10;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 11:
               mstate.esp += 24;
               state = 12;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 13:
               mstate.esp += 24;
               state = 14;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 15:
               mstate.esp += 24;
               state = 16;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 17:
               mstate.esp += 24;
               state = 18;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 19:
               mstate.esp += 24;
               state = 20;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 21:
               mstate.esp += 24;
               state = 22;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 23:
               this.i4 = mstate.eax;
               mstate.esp += 8;
               if(this.i4 == 0)
               {
                  break;
               }
               this.i1 = cmodule.Box2D.__ZTV7b2Joint;
               this.i1 += 8;
               si32(this.i1,this.i4);
               this.i1 = li32(this.i2 + 8);
               this.i5 = li32(this.i2 + 12);
               this.i6 = this.i2 + 12;
               this.i7 = this.i2 + 8;
               this.i8 = this.i4;
               this.i9 = this.i2;
               this.i10 = this.i4;
               if(this.i1 == this.i5)
               {
                  this.i4 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i0 = cmodule.Box2D.__2E_str1670;
                  this.i2 = cmodule.Box2D.__2E_str40247;
                  this.i3 = cmodule.Box2D.__ZZN7b2JointC4EPK10b2JointDefE8__func__;
                  this.i6 = cmodule.Box2D.__2E_str39246;
                  this.i7 = 173;
                  this.i4 += 176;
                  si32(this.i4,mstate.esp);
                  si32(this.i0,mstate.esp + 4);
                  si32(this.i2,mstate.esp + 8);
                  si32(this.i3,mstate.esp + 12);
                  si32(this.i6,mstate.esp + 16);
                  si32(this.i7,mstate.esp + 20);
                  state = 24;
                  mstate.esp -= 4;
                  FSM_fprintf.start();
                  return;
               }
            case 25:
               this.i1 = 0;
               this.i3 = li32(this.i3);
               si32(this.i3,this.i10 + 4);
               si32(this.i1,this.i10 + 8);
               si32(this.i1,this.i10 + 12);
               this.i3 = li32(this.i7);
               si32(this.i3,this.i10 + 48);
               this.i3 = li32(this.i6);
               si32(this.i3,this.i10 + 52);
               this.i3 = li8(this.i9 + 16);
               si8(this.i3,this.i10 + 57);
               si8(this.i1,this.i10 + 56);
               this.i3 = li32(this.i9 + 4);
               si32(this.i3,this.i10 + 60);
               si32(this.i1,this.i10 + 20);
               si32(this.i1,this.i10 + 16);
               si32(this.i1,this.i10 + 24);
               si32(this.i1,this.i10 + 28);
               si32(this.i1,this.i10 + 36);
               si32(this.i1,this.i10 + 32);
               si32(this.i1,this.i10 + 40);
               this.i3 = cmodule.Box2D.__ZTV15b2RevoluteJoint;
               si32(this.i1,this.i10 + 44);
               this.i3 += 8;
               si32(this.i3,this.i8);
               this.f0 = lf32(this.i9 + 20);
               this.f1 = lf32(this.i9 + 24);
               sf32(this.f0,this.i10 + 96);
               sf32(this.f1,this.i10 + 100);
               this.f0 = lf32(this.i9 + 28);
               this.f1 = lf32(this.i9 + 32);
               sf32(this.f0,this.i10 + 104);
               sf32(this.f1,this.i10 + 108);
               this.f0 = lf32(this.i9 + 36);
               sf32(this.f0,this.i10 + 184);
               si32(this.i1,this.i10 + 112);
               si32(this.i1,this.i10 + 116);
               si32(this.i1,this.i10 + 120);
               si32(this.i1,this.i10 + 124);
               this.f0 = lf32(this.i9 + 44);
               sf32(this.f0,this.i10 + 188);
               this.f0 = lf32(this.i9 + 48);
               sf32(this.f0,this.i10 + 192);
               this.f0 = lf32(this.i9 + 60);
               sf32(this.f0,this.i10 + 172);
               this.f0 = lf32(this.i9 + 56);
               sf32(this.f0,this.i10 + 176);
               this.i3 = li8(this.i9 + 40);
               si8(this.i3,this.i10 + 180);
               this.i3 = li8(this.i9 + 52);
               si8(this.i3,this.i10 + 168);
               si32(this.i1,this.i10 + 196);
               break;
            case 24:
               mstate.esp += 24;
               state = 25;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 26:
               this.i4 = mstate.eax;
               mstate.esp += 8;
               if(this.i4 == 0)
               {
                  break;
               }
               this.i1 = cmodule.Box2D.__ZTV7b2Joint;
               this.i1 += 8;
               si32(this.i1,this.i4);
               this.i1 = li32(this.i2 + 8);
               this.i5 = li32(this.i2 + 12);
               this.i6 = this.i2 + 12;
               this.i7 = this.i2 + 8;
               this.i8 = this.i4;
               this.i9 = this.i2;
               this.i10 = this.i4;
               if(this.i1 == this.i5)
               {
                  this.i4 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i0 = cmodule.Box2D.__2E_str1670;
                  this.i2 = cmodule.Box2D.__2E_str40247;
                  this.i3 = cmodule.Box2D.__ZZN7b2JointC4EPK10b2JointDefE8__func__;
                  this.i6 = cmodule.Box2D.__2E_str39246;
                  this.i7 = 173;
                  this.i4 += 176;
                  si32(this.i4,mstate.esp);
                  si32(this.i0,mstate.esp + 4);
                  si32(this.i2,mstate.esp + 8);
                  si32(this.i3,mstate.esp + 12);
                  si32(this.i6,mstate.esp + 16);
                  si32(this.i7,mstate.esp + 20);
                  state = 27;
                  mstate.esp -= 4;
                  FSM_fprintf.start();
                  return;
               }
            case 28:
               this.i1 = 0;
               this.i3 = li32(this.i3);
               si32(this.i3,this.i10 + 4);
               si32(this.i1,this.i10 + 8);
               si32(this.i1,this.i10 + 12);
               this.i3 = li32(this.i7);
               si32(this.i3,this.i10 + 48);
               this.i3 = li32(this.i6);
               si32(this.i3,this.i10 + 52);
               this.i3 = li8(this.i9 + 16);
               si8(this.i3,this.i10 + 57);
               si8(this.i1,this.i10 + 56);
               this.i3 = li32(this.i9 + 4);
               si32(this.i3,this.i10 + 60);
               si32(this.i1,this.i10 + 20);
               si32(this.i1,this.i10 + 16);
               si32(this.i1,this.i10 + 24);
               si32(this.i1,this.i10 + 28);
               si32(this.i1,this.i10 + 36);
               si32(this.i1,this.i10 + 32);
               si32(this.i1,this.i10 + 40);
               this.i3 = cmodule.Box2D.__ZTV13b2PulleyJoint;
               si32(this.i1,this.i10 + 44);
               this.i3 += 8;
               si32(this.i3,this.i8);
               this.f0 = lf32(this.i9 + 20);
               this.f1 = lf32(this.i9 + 24);
               sf32(this.f0,this.i10 + 96);
               sf32(this.f1,this.i10 + 100);
               this.f0 = lf32(this.i9 + 28);
               this.f1 = lf32(this.i9 + 32);
               sf32(this.f0,this.i10 + 104);
               sf32(this.f1,this.i10 + 108);
               this.f0 = lf32(this.i9 + 36);
               this.f1 = lf32(this.i9 + 40);
               sf32(this.f0,this.i10 + 112);
               sf32(this.f1,this.i10 + 116);
               this.f0 = lf32(this.i9 + 44);
               this.f1 = lf32(this.i9 + 48);
               sf32(this.f0,this.i10 + 120);
               sf32(this.f1,this.i10 + 124);
               this.f0 = 0;
               this.f1 = lf32(this.i9 + 68);
               this.f0 = this.f0;
               this.f0 = this.f0;
               this.f2 = this.f1;
               if(this.f2 == this.f0)
               {
                  this.i4 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i0 = cmodule.Box2D.__2E_str1670;
                  this.i2 = cmodule.Box2D.__2E_str137326;
                  this.i3 = cmodule.Box2D.__ZZN13b2PulleyJointC4EPK16b2PulleyJointDefE8__func__;
                  this.i9 = cmodule.Box2D.__2E_str86293;
                  this.i10 = 72;
                  this.i4 += 176;
                  si32(this.i4,mstate.esp);
                  si32(this.i0,mstate.esp + 4);
                  si32(this.i2,mstate.esp + 8);
                  si32(this.i3,mstate.esp + 12);
                  si32(this.i9,mstate.esp + 16);
                  si32(this.i10,mstate.esp + 20);
                  state = 29;
                  mstate.esp -= 4;
                  FSM_fprintf.start();
                  return;
               }
            case 30:
               this.f0 = 0.001;
               sf32(this.f1,this.i10 + 148);
               this.f2 = lf32(this.i9 + 60);
               this.f1 = this.f1;
               this.f2 = this.f1 * this.f2;
               this.f2 = this.f2;
               this.f0 = this.f0;
               this.f3 = lf32(this.i9 + 52);
               this.f2 = this.f2;
               this.f0 = this.f0;
               this.f2 = this.f3 + this.f2;
               this.f3 = this.f1 * this.f0;
               this.f2 = this.f2;
               this.f3 = this.f3;
               this.f4 = this.f2;
               this.f3 = this.f3;
               this.f3 = this.f4 - this.f3;
               sf32(this.f2,this.i10 + 144);
               this.f2 = this.f3;
               this.f0 = this.f4 - this.f0;
               this.f0 = this.f0;
               this.f3 = lf32(this.i9 + 56);
               this.f2 = this.f2;
               this.f2 = this.f3 < this.f2 ? this.f3 : this.f2;
               this.f0 = this.f0;
               this.f2 = this.f2;
               this.f0 /= this.f1;
               sf32(this.f2,this.i10 + 152);
               this.f0 = this.f0;
               this.f1 = lf32(this.i9 + 64);
               this.f0 = this.f0;
               this.f0 = this.f1 < this.f0 ? this.f1 : this.f0;
               this.f0 = this.f0;
               sf32(this.f0,this.i10 + 156);
               this.i3 = 0;
               si32(this.i3,this.i10 + 172);
               si32(this.i3,this.i10 + 176);
               si32(this.i3,this.i10 + 180);
               break;
            case 27:
               mstate.esp += 24;
               state = 28;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 29:
               mstate.esp += 24;
               state = 30;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 31:
               this.i4 = mstate.eax;
               mstate.esp += 8;
               if(this.i4 == 0)
               {
                  break;
               }
               this.i1 = cmodule.Box2D.__ZTV7b2Joint;
               this.i1 += 8;
               si32(this.i1,this.i4);
               this.i1 = li32(this.i2 + 8);
               this.i5 = li32(this.i2 + 12);
               this.i6 = this.i2 + 12;
               this.i7 = this.i2 + 8;
               this.i8 = this.i4;
               this.i9 = this.i2;
               this.i10 = this.i4;
               if(this.i1 == this.i5)
               {
                  this.i4 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i0 = cmodule.Box2D.__2E_str1670;
                  this.i2 = cmodule.Box2D.__2E_str40247;
                  this.i3 = cmodule.Box2D.__ZZN7b2JointC4EPK10b2JointDefE8__func__;
                  this.i6 = cmodule.Box2D.__2E_str39246;
                  this.i7 = 173;
                  this.i4 += 176;
                  si32(this.i4,mstate.esp);
                  si32(this.i0,mstate.esp + 4);
                  si32(this.i2,mstate.esp + 8);
                  si32(this.i3,mstate.esp + 12);
                  si32(this.i6,mstate.esp + 16);
                  si32(this.i7,mstate.esp + 20);
                  state = 32;
                  mstate.esp -= 4;
                  FSM_fprintf.start();
                  return;
               }
            case 33:
               this.i1 = 0;
               this.i3 = li32(this.i3);
               si32(this.i3,this.i10 + 4);
               si32(this.i1,this.i10 + 8);
               si32(this.i1,this.i10 + 12);
               this.i3 = li32(this.i7);
               si32(this.i3,this.i10 + 48);
               this.i3 = li32(this.i6);
               si32(this.i3,this.i10 + 52);
               this.i3 = li8(this.i9 + 16);
               si8(this.i3,this.i10 + 57);
               si8(this.i1,this.i10 + 56);
               this.i3 = li32(this.i9 + 4);
               si32(this.i3,this.i10 + 60);
               si32(this.i1,this.i10 + 20);
               si32(this.i1,this.i10 + 16);
               si32(this.i1,this.i10 + 24);
               si32(this.i1,this.i10 + 28);
               si32(this.i1,this.i10 + 36);
               si32(this.i1,this.i10 + 32);
               si32(this.i1,this.i10 + 40);
               this.i3 = cmodule.Box2D.__ZTV11b2GearJoint;
               si32(this.i1,this.i10 + 44);
               this.i3 += 8;
               si32(this.i3,this.i8);
               this.i3 = li32(this.i9 + 20);
               this.i1 = li32(this.i9 + 24);
               this.i5 = li32(this.i3 + 4);
               this.i6 = li32(this.i1 + 4);
               this.i7 = this.i9 + 24;
               this.i8 = this.i9 + 20;
               this.i11 = this.i10 + 52;
               this.i12 = this.i10 + 48;
               this.i13 = this.i5 + -1;
               if(uint(this.i13) >= uint(2))
               {
                  this.i4 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i3 = cmodule.Box2D.__2E_str1670;
                  this.i0 = cmodule.Box2D.__2E_str129321;
                  this.i1 = cmodule.Box2D.__ZZN11b2GearJointC4EPK14b2GearJointDefE8__func__;
                  this.i2 = cmodule.Box2D.__2E_str118311;
                  this.i5 = 51;
                  this.i4 += 176;
                  si32(this.i4,mstate.esp);
                  si32(this.i3,mstate.esp + 4);
                  si32(this.i0,mstate.esp + 8);
                  si32(this.i1,mstate.esp + 12);
                  si32(this.i2,mstate.esp + 16);
                  si32(this.i5,mstate.esp + 20);
                  state = 34;
                  mstate.esp -= 4;
                  FSM_fprintf.start();
                  return;
               }
            case 35:
               this.i13 = this.i6 + -1;
               if(uint(this.i13) >= uint(2))
               {
                  this.i4 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i3 = cmodule.Box2D.__2E_str1670;
                  this.i0 = cmodule.Box2D.__2E_str130322;
                  this.i1 = cmodule.Box2D.__ZZN11b2GearJointC4EPK14b2GearJointDefE8__func__;
                  this.i2 = cmodule.Box2D.__2E_str118311;
                  this.i5 = 52;
                  this.i4 += 176;
                  si32(this.i4,mstate.esp);
                  si32(this.i3,mstate.esp + 4);
                  si32(this.i0,mstate.esp + 8);
                  si32(this.i1,mstate.esp + 12);
                  si32(this.i2,mstate.esp + 16);
                  si32(this.i5,mstate.esp + 20);
                  state = 36;
                  mstate.esp -= 4;
                  FSM_fprintf.start();
                  return;
               }
            case 37:
               this.i3 = li32(this.i3 + 48);
               this.i3 = li32(this.i3);
               if(this.i3 != 0)
               {
                  this.i4 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i0 = cmodule.Box2D.__2E_str1670;
                  this.i1 = cmodule.Box2D.__2E_str131;
                  this.i2 = cmodule.Box2D.__ZZN11b2GearJointC4EPK14b2GearJointDefE8__func__;
                  this.i3 = cmodule.Box2D.__2E_str118311;
                  this.i5 = 53;
                  this.i4 += 176;
                  si32(this.i4,mstate.esp);
                  si32(this.i0,mstate.esp + 4);
                  si32(this.i1,mstate.esp + 8);
                  si32(this.i2,mstate.esp + 12);
                  si32(this.i3,mstate.esp + 16);
                  si32(this.i5,mstate.esp + 20);
                  state = 38;
                  mstate.esp -= 4;
                  FSM_fprintf.start();
                  return;
               }
            case 39:
               this.i3 = li32(this.i1 + 48);
               this.i3 = li32(this.i3);
               if(this.i3 != 0)
               {
                  this.i4 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i0 = cmodule.Box2D.__2E_str1670;
                  this.i2 = cmodule.Box2D.__2E_str132323;
                  this.i3 = cmodule.Box2D.__ZZN11b2GearJointC4EPK14b2GearJointDefE8__func__;
                  this.i5 = cmodule.Box2D.__2E_str118311;
                  this.i6 = 54;
                  this.i4 += 176;
                  si32(this.i4,mstate.esp);
                  si32(this.i0,mstate.esp + 4);
                  si32(this.i2,mstate.esp + 8);
                  si32(this.i3,mstate.esp + 12);
                  si32(this.i5,mstate.esp + 16);
                  si32(this.i6,mstate.esp + 20);
                  state = 40;
                  mstate.esp -= 4;
                  FSM_fprintf.start();
                  return;
               }
            case 41:
               this.i3 = 0;
               si32(this.i3,this.i10 + 104);
               si32(this.i3,this.i10 + 108);
               si32(this.i3,this.i10 + 112);
               si32(this.i3,this.i10 + 116);
               this.i3 = li32(this.i8);
               this.i3 = li32(this.i3 + 48);
               si32(this.i3,this.i10 + 96);
               this.i3 = li32(this.i8);
               this.i3 = li32(this.i3 + 52);
               si32(this.i3,this.i12);
               this.i3 = li32(this.i8);
               this.i1 = this.i10 + 116;
               this.i8 = this.i10 + 112;
               this.i12 = this.i10 + 108;
               this.i13 = this.i10 + 104;
               if(this.i5 == 1)
               {
                  si32(this.i3,this.i13);
                  this.f0 = lf32(this.i3 + 96);
                  this.f1 = lf32(this.i3 + 100);
                  sf32(this.f0,this.i10 + 120);
                  sf32(this.f1,this.i10 + 124);
                  this.f0 = lf32(this.i3 + 104);
                  this.f1 = lf32(this.i3 + 108);
                  sf32(this.f0,this.i10 + 136);
                  sf32(this.f1,this.i10 + 140);
                  this.i12 = li32(this.i3 + 52);
                  this.i5 = li32(this.i3 + 48);
                  this.f0 = lf32(this.i12 + 64);
                  this.f1 = lf32(this.i5 + 64);
                  this.f0 -= this.f1;
                  this.f0 = this.f0;
                  this.f1 = lf32(this.i3 + 184);
                  this.f0 = this.f0;
                  this.f0 -= this.f1;
                  this.f0 = this.f0;
               }
               else
               {
                  si32(this.i3,this.i12);
                  this.f0 = lf32(this.i3 + 96);
                  this.f1 = lf32(this.i3 + 100);
                  sf32(this.f0,this.i10 + 120);
                  sf32(this.f1,this.i10 + 124);
                  this.f0 = lf32(this.i3 + 104);
                  this.f1 = lf32(this.i3 + 108);
                  sf32(this.f0,this.i10 + 136);
                  sf32(this.f1,this.i10 + 140);
                  mstate.esp -= 4;
                  si32(this.i3,mstate.esp);
                  mstate.esp -= 4;
                  FSM__ZNK16b2PrismaticJoint19GetJointTranslationEv.start();
                  addr2da2:
                  this.f0 = mstate.st0;
                  mstate.esp += 4;
               }
               this.i3 = li32(this.i7);
               this.i3 = li32(this.i3 + 48);
               si32(this.i3,this.i10 + 100);
               this.i3 = li32(this.i7);
               this.i3 = li32(this.i3 + 52);
               si32(this.i3,this.i11);
               this.i3 = li32(this.i7);
               if(this.i6 == 1)
               {
                  si32(this.i3,this.i8);
                  this.f1 = lf32(this.i3 + 96);
                  this.f2 = lf32(this.i3 + 100);
                  sf32(this.f1,this.i10 + 128);
                  sf32(this.f2,this.i10 + 132);
                  this.f1 = lf32(this.i3 + 104);
                  this.f2 = lf32(this.i3 + 108);
                  sf32(this.f1,this.i10 + 144);
                  sf32(this.f2,this.i10 + 148);
                  this.i1 = li32(this.i3 + 52);
                  this.i5 = li32(this.i3 + 48);
                  this.f1 = lf32(this.i1 + 64);
                  this.f2 = lf32(this.i5 + 64);
                  this.f1 -= this.f2;
                  this.f1 = this.f1;
                  this.f2 = lf32(this.i3 + 184);
                  this.f1 = this.f1;
                  this.f1 -= this.f2;
                  this.f1 = this.f1;
               }
               else
               {
                  si32(this.i3,this.i1);
                  this.f1 = lf32(this.i3 + 96);
                  this.f2 = lf32(this.i3 + 100);
                  sf32(this.f1,this.i10 + 128);
                  sf32(this.f2,this.i10 + 132);
                  this.f1 = lf32(this.i3 + 104);
                  this.f2 = lf32(this.i3 + 108);
                  sf32(this.f1,this.i10 + 144);
                  sf32(this.f2,this.i10 + 148);
                  mstate.esp -= 4;
                  si32(this.i3,mstate.esp);
                  mstate.esp -= 4;
                  FSM__ZNK16b2PrismaticJoint19GetJointTranslationEv.start();
                  addr2f8d:
                  this.f1 = mstate.st0;
                  mstate.esp += 4;
               }
               this.i3 = 0;
               this.f2 = lf32(this.i9 + 28);
               this.f1 = this.f1;
               this.f3 = this.f2;
               this.f1 = this.f3 * this.f1;
               this.f1 = this.f1;
               this.f0 = this.f0;
               this.f1 = this.f1;
               this.f0 = this.f1 + this.f0;
               sf32(this.f2,this.i10 + 180);
               this.f0 = this.f0;
               sf32(this.f0,this.i10 + 176);
               si32(this.i3,this.i10 + 188);
               break;
            case 42:
               §§goto(addr2da2);
            case 43:
               §§goto(addr2f8d);
            case 32:
               mstate.esp += 24;
               state = 33;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 34:
               mstate.esp += 24;
               state = 35;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 36:
               mstate.esp += 24;
               state = 37;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 38:
               mstate.esp += 24;
               state = 39;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 40:
               mstate.esp += 24;
               state = 41;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 44:
               mstate.esp += 24;
               state = 45;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 46:
               this.i4 = mstate.eax;
               mstate.esp += 8;
               if(this.i4 == 0)
               {
                  break;
               }
               this.i1 = cmodule.Box2D.__ZTV7b2Joint;
               this.i1 += 8;
               si32(this.i1,this.i4);
               this.i1 = li32(this.i2 + 8);
               this.i5 = li32(this.i2 + 12);
               this.i6 = this.i2 + 12;
               this.i7 = this.i2 + 8;
               this.i8 = this.i4;
               this.i9 = this.i2;
               this.i10 = this.i4;
               if(this.i1 == this.i5)
               {
                  this.i4 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i0 = cmodule.Box2D.__2E_str1670;
                  this.i2 = cmodule.Box2D.__2E_str40247;
                  this.i3 = cmodule.Box2D.__ZZN7b2JointC4EPK10b2JointDefE8__func__;
                  this.i6 = cmodule.Box2D.__2E_str39246;
                  this.i7 = 173;
                  this.i4 += 176;
                  si32(this.i4,mstate.esp);
                  si32(this.i0,mstate.esp + 4);
                  si32(this.i2,mstate.esp + 8);
                  si32(this.i3,mstate.esp + 12);
                  si32(this.i6,mstate.esp + 16);
                  si32(this.i7,mstate.esp + 20);
                  state = 47;
                  mstate.esp -= 4;
                  FSM_fprintf.start();
                  return;
               }
            case 48:
               this.i1 = 0;
               this.i3 = li32(this.i3);
               si32(this.i3,this.i10 + 4);
               si32(this.i1,this.i10 + 8);
               si32(this.i1,this.i10 + 12);
               this.i3 = li32(this.i7);
               si32(this.i3,this.i10 + 48);
               this.i3 = li32(this.i6);
               si32(this.i3,this.i10 + 52);
               this.i3 = li8(this.i9 + 16);
               si8(this.i3,this.i10 + 57);
               si8(this.i1,this.i10 + 56);
               this.i3 = li32(this.i9 + 4);
               si32(this.i3,this.i10 + 60);
               si32(this.i1,this.i10 + 20);
               si32(this.i1,this.i10 + 16);
               si32(this.i1,this.i10 + 24);
               si32(this.i1,this.i10 + 28);
               si32(this.i1,this.i10 + 36);
               si32(this.i1,this.i10 + 32);
               si32(this.i1,this.i10 + 40);
               this.i3 = cmodule.Box2D.__ZTV11b2WeldJoint;
               si32(this.i1,this.i10 + 44);
               this.i3 += 8;
               si32(this.i3,this.i8);
               this.f0 = lf32(this.i9 + 20);
               this.f1 = lf32(this.i9 + 24);
               sf32(this.f0,this.i10 + 96);
               sf32(this.f1,this.i10 + 100);
               this.f0 = lf32(this.i9 + 28);
               this.f1 = lf32(this.i9 + 32);
               sf32(this.f0,this.i10 + 104);
               sf32(this.f1,this.i10 + 108);
               this.f0 = lf32(this.i9 + 36);
               sf32(this.f0,this.i10 + 112);
               si32(this.i1,this.i10 + 116);
               si32(this.i1,this.i10 + 120);
               si32(this.i1,this.i10 + 124);
               break;
            case 47:
               mstate.esp += 24;
               state = 48;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 49:
               this.i4 = mstate.eax;
               mstate.esp += 8;
               if(this.i4 == 0)
               {
                  break;
               }
               this.i1 = cmodule.Box2D.__ZTV7b2Joint;
               this.i1 += 8;
               si32(this.i1,this.i4);
               this.i1 = li32(this.i2 + 8);
               this.i5 = li32(this.i2 + 12);
               this.i6 = this.i2 + 12;
               this.i7 = this.i2 + 8;
               this.i8 = this.i4;
               this.i9 = this.i2;
               this.i10 = this.i4;
               if(this.i1 == this.i5)
               {
                  this.i4 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i0 = cmodule.Box2D.__2E_str1670;
                  this.i2 = cmodule.Box2D.__2E_str40247;
                  this.i3 = cmodule.Box2D.__ZZN7b2JointC4EPK10b2JointDefE8__func__;
                  this.i6 = cmodule.Box2D.__2E_str39246;
                  this.i7 = 173;
                  this.i4 += 176;
                  si32(this.i4,mstate.esp);
                  si32(this.i0,mstate.esp + 4);
                  si32(this.i2,mstate.esp + 8);
                  si32(this.i3,mstate.esp + 12);
                  si32(this.i6,mstate.esp + 16);
                  si32(this.i7,mstate.esp + 20);
                  state = 50;
                  mstate.esp -= 4;
                  FSM_fprintf.start();
                  return;
               }
            case 51:
               this.i1 = 0;
               this.i3 = li32(this.i3);
               si32(this.i3,this.i10 + 4);
               si32(this.i1,this.i10 + 8);
               si32(this.i1,this.i10 + 12);
               this.i3 = li32(this.i7);
               si32(this.i3,this.i10 + 48);
               this.i3 = li32(this.i6);
               si32(this.i3,this.i10 + 52);
               this.i3 = li8(this.i9 + 16);
               si8(this.i3,this.i10 + 57);
               si8(this.i1,this.i10 + 56);
               this.i3 = li32(this.i9 + 4);
               si32(this.i3,this.i10 + 60);
               si32(this.i1,this.i10 + 20);
               si32(this.i1,this.i10 + 16);
               si32(this.i1,this.i10 + 24);
               si32(this.i1,this.i10 + 28);
               si32(this.i1,this.i10 + 36);
               si32(this.i1,this.i10 + 32);
               si32(this.i1,this.i10 + 40);
               this.i3 = cmodule.Box2D.__ZTV15b2FrictionJoint;
               si32(this.i1,this.i10 + 44);
               this.i3 += 8;
               si32(this.i3,this.i8);
               this.f0 = lf32(this.i9 + 20);
               this.f1 = lf32(this.i9 + 24);
               sf32(this.f0,this.i10 + 96);
               sf32(this.f1,this.i10 + 100);
               this.f0 = lf32(this.i9 + 28);
               this.f1 = lf32(this.i9 + 32);
               sf32(this.f0,this.i10 + 104);
               sf32(this.f1,this.i10 + 108);
               si32(this.i1,this.i10 + 132);
               si32(this.i1,this.i10 + 136);
               si32(this.i1,this.i10 + 140);
               this.f0 = lf32(this.i9 + 36);
               sf32(this.f0,this.i10 + 144);
               this.f0 = lf32(this.i9 + 40);
               sf32(this.f0,this.i10 + 148);
               break;
            case 50:
               mstate.esp += 24;
               state = 51;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 52:
               mstate.esp += 24;
               state = 53;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 54:
               mstate.esp += 4;
               mstate.esp -= 4;
               si32(this.i1,mstate.esp);
               state = 55;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Ptr]();
               return;
            case 55:
               this.i0 = mstate.eax;
               mstate.esp += 4;
               si32(this.i0,cmodule.Box2D._as3_ptr);
               mstate.eax = this.i0;
               mstate.esp = mstate.ebp;
               mstate.ebp = li32(mstate.esp);
               mstate.esp += 4;
               mstate.esp += 4;
               mstate.gworker = caller;
               return;
            default:
               throw "Invalid state in __Z19b2World_CreateJointPvP8_AS3_Val";
         }
         this.i1 = this.i4;
         this.i3 = 0;
         si32(this.i3,this.i1 + 8);
         this.i3 = li32(this.i0 + 102956);
         si32(this.i3,this.i1 + 12);
         this.i3 = li32(this.i0 + 102956);
         this.i4 = this.i0 + 102956;
         this.i5 = this.i1;
         if(this.i3 != 0)
         {
            si32(this.i5,this.i3 + 8);
         }
         this.i3 = 0;
         si32(this.i5,this.i4);
         this.i4 = li32(this.i0 + 102964);
         this.i4 += 1;
         si32(this.i4,this.i0 + 102964);
         si32(this.i5,this.i5 + 20);
         this.i0 = li32(this.i5 + 52);
         si32(this.i0,this.i5 + 16);
         si32(this.i3,this.i5 + 24);
         this.i0 = li32(this.i5 + 48);
         this.i3 = li32(this.i0 + 116);
         si32(this.i3,this.i5 + 28);
         this.i0 = li32(this.i0 + 116);
         this.i3 = this.i5 + 48;
         this.i4 = this.i5 + 52;
         if(this.i0 != 0)
         {
            this.i6 = this.i5 + 16;
            si32(this.i6,this.i0 + 8);
         }
         this.i0 = 0;
         this.i6 = li32(this.i3);
         this.i7 = this.i5 + 16;
         si32(this.i7,this.i6 + 116);
         si32(this.i5,this.i5 + 36);
         this.i3 = li32(this.i3);
         si32(this.i3,this.i5 + 32);
         si32(this.i0,this.i5 + 40);
         this.i0 = li32(this.i4);
         this.i3 = li32(this.i0 + 116);
         si32(this.i3,this.i5 + 44);
         this.i0 = li32(this.i0 + 116);
         if(this.i0 != 0)
         {
            this.i3 = this.i5 + 32;
            si32(this.i3,this.i0 + 8);
         }
         this.i0 = li32(this.i4);
         this.i3 = this.i5 + 32;
         si32(this.i3,this.i0 + 116);
         this.i0 = li32(this.i2 + 8);
         this.i3 = li8(this.i2 + 16);
         if(this.i3 == 0)
         {
            this.i2 = li32(this.i2 + 12);
            this.i2 = li32(this.i2 + 120);
            if(this.i2 != 0)
            {
               do
               {
                  this.i3 = li32(this.i2);
                  if(this.i3 == this.i0)
                  {
                     this.i3 = li32(this.i2 + 4);
                     this.i4 = li32(this.i3 + 4);
                     this.i4 |= 8;
                     si32(this.i4,this.i3 + 4);
                  }
                  this.i2 = li32(this.i2 + 12);
               }
               while(this.i2 != 0);
            }
         }
         this.i0 = li32(mstate.ebp + -4);
         si32(this.i0,this.i5 + 60);
         this.i0 = li32(cmodule.Box2D._as3_ptr);
         mstate.esp -= 4;
         si32(this.i0,mstate.esp);
         state = 54;
         mstate.esp -= 4;
         mstate.funcs[cmodule.Box2D._AS3_Release]();
      }
   }
}

