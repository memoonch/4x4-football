package cmodule.Box2D
{
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.system.*;
   import flash.text.*;
   import flash.utils.*;
   
   public final class FSM__Z16b2Body_SetActivePvP8_AS3_Val extends Machine
   {
      
      public static const intRegCount:int = 18;
      
      public static const NumberRegCount:int = 0;
      
      public var i10:int;
      
      public var i11:int;
      
      public var i12:int;
      
      public var i13:int;
      
      public var i14:int;
      
      public var i15:int;
      
      public var i17:int;
      
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
      
      public function FSM__Z16b2Body_SetActivePvP8_AS3_Val()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__Z16b2Body_SetActivePvP8_AS3_Val = null;
         _loc1_ = new FSM__Z16b2Body_SetActivePvP8_AS3_Val();
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
               this.i0 = cmodule.Box2D.__2E_str123;
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
               this.i2 = li32(this.i1 + 102868);
               this.i3 = li32(mstate.ebp + -8);
               this.i4 = this.i0 + 96;
               this.i2 &= 2;
               if(this.i2 != 0)
               {
                  this.i0 = cmodule.Box2D.___sF;
                  mstate.esp -= 24;
                  this.i1 = cmodule.Box2D.__2E_str1670;
                  this.i3 = cmodule.Box2D.__2E_str54261;
                  this.i4 = cmodule.Box2D.__ZZN6b2Body9SetActiveEbE8__func__;
                  this.i2 = cmodule.Box2D.__2E_str53260;
                  this.i5 = 426;
                  this.i0 += 176;
                  si32(this.i0,mstate.esp);
                  si32(this.i1,mstate.esp + 4);
                  si32(this.i3,mstate.esp + 8);
                  si32(this.i4,mstate.esp + 12);
                  si32(this.i2,mstate.esp + 16);
                  si32(this.i5,mstate.esp + 20);
                  state = 2;
                  mstate.esp -= 4;
                  FSM_fprintf.start();
                  return;
               }
            case 3:
               this.i2 = li16(this.i0 + 4);
               this.i5 = this.i0 + 4;
               this.i6 = this.i3 == 1 ? 1 : 0;
               this.i7 = this.i2 >>> 5;
               this.i6 &= 1;
               this.i7 &= 1;
               if(this.i7 == this.i6)
               {
                  break;
               }
               if(this.i3 == 1)
               {
                  this.i2 |= 32;
                  si16(this.i2,this.i5);
                  this.i2 = li32(this.i0 + 108);
                  this.i1 += 102872;
                  if(this.i2 == 0)
                  {
                     break;
                  }
                  this.i0 += 12;
                  §§goto(addr02f4);
               }
               else
               {
                  this.i2 &= -33;
                  si16(this.i2,this.i5);
                  this.i2 = li32(this.i0 + 108);
                  if(this.i2 != 0)
                  {
                     this.i3 = this.i1 + 102912;
                     this.i5 = this.i1 + 102900;
                     this.i6 = this.i1 + 102904;
                     this.i1 += 102872;
                     this.i7 = li32(this.i2 + 32);
                     this.i8 = this.i2 + 32;
                     if(this.i7 < 1)
                     {
                        while(true)
                        {
                           this.i7 = 0;
                           si32(this.i7,this.i8);
                           this.i2 = li32(this.i2 + 8);
                           if(this.i2 == 0)
                           {
                              break;
                           }
                           §§goto(addr03d4);
                           addr03d4:
                        }
                        addr0598:
                        this.i1 = li32(this.i0 + 120);
                        this.i0 += 120;
                        if(this.i1 == 0)
                        {
                           addr065a:
                           this.i1 = 0;
                           si32(this.i1,this.i0);
                           break;
                        }
                        §§goto(addr05bf);
                        addr056e:
                     }
                     this.i7 = 0;
                     this.i9 = 24;
                     this.i10 = this.i2 + 28;
                     §§goto(addr0412);
                  }
                  §§goto(addr0598);
               }
               break;
            case 2:
               mstate.esp += 24;
               state = 3;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 4:
               mstate.esp += 12;
               this.i2 = li32(this.i2 + 8);
               if(this.i2 != 0)
               {
                  addr02f4:
                  mstate.esp -= 12;
                  si32(this.i2,mstate.esp);
                  si32(this.i1,mstate.esp + 4);
                  si32(this.i0,mstate.esp + 8);
                  state = 4;
                  mstate.esp -= 4;
                  FSM__ZN9b2Fixture13CreateProxiesEP12b2BroadPhaseRK11b2Transform.start();
                  return;
               }
               break;
            case 5:
               mstate.esp += 8;
               si32(this.i13,this.i11);
               this.i11 = li32(this.i8);
               this.i9 += 28;
               this.i7 += 1;
               if(this.i11 <= this.i7)
               {
                  §§goto(addr056e);
               }
               addr0412:
               this.i11 = li32(this.i10);
               this.i11 += this.i9;
               this.i12 = li32(this.i11);
               this.i13 = li32(this.i3);
               if(this.i13 >= 1)
               {
                  this.i14 = 0;
                  this.i15 = li32(this.i6);
                  do
                  {
                     this.i16 = li32(this.i15);
                     this.i17 = this.i15;
                     if(this.i16 == this.i12)
                     {
                        this.i14 = -1;
                        si32(this.i14,this.i17);
                        break;
                     }
                     this.i15 += 4;
                     this.i14 += 1;
                  }
                  while(this.i13 > this.i14);
               }
               this.i13 = -1;
               this.i14 = li32(this.i5);
               this.i14 += -1;
               si32(this.i14,this.i5);
               mstate.esp -= 8;
               si32(this.i1,mstate.esp);
               si32(this.i12,mstate.esp + 4);
               state = 5;
               mstate.esp -= 4;
               FSM__ZN13b2DynamicTree12DestroyProxyEi.start();
               return;
            case 6:
               mstate.esp += 8;
               if(this.i3 != 0)
               {
                  this.i1 = this.i3;
                  addr05bf:
                  this.i2 = li32(this.i4);
                  this.i3 = li32(this.i1 + 12);
                  this.i1 = li32(this.i1 + 4);
                  mstate.esp -= 8;
                  this.i2 += 102872;
                  si32(this.i2,mstate.esp);
                  si32(this.i1,mstate.esp + 4);
                  state = 6;
                  mstate.esp -= 4;
                  FSM__ZN16b2ContactManager7DestroyEP9b2Contact.start();
                  return;
               }
               §§goto(addr065a);
               break;
            case 7:
               this.i0 = mstate.eax;
               mstate.eax = this.i0;
               mstate.esp = mstate.ebp;
               mstate.ebp = li32(mstate.esp);
               mstate.esp += 4;
               mstate.esp += 4;
               mstate.gworker = caller;
               return;
            default:
               throw "Invalid state in __Z16b2Body_SetActivePvP8_AS3_Val";
         }
         state = 7;
         mstate.esp -= 4;
         mstate.funcs[cmodule.Box2D._AS3_Null]();
      }
   }
}

