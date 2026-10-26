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
   
   public final class FSM__Z14b2Body_SetTypePvP8_AS3_Val extends Machine
   {
      
      public static const intRegCount:int = 13;
      
      public static const NumberRegCount:int = 0;
      
      public var i10:int;
      
      public var i11:int;
      
      public var i12:int;
      
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
      
      public function FSM__Z14b2Body_SetTypePvP8_AS3_Val()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__Z14b2Body_SetTypePvP8_AS3_Val = null;
         _loc1_ = new FSM__Z14b2Body_SetTypePvP8_AS3_Val();
         cmodule.Box2D.gstate.gworker = _loc1_;
      }
      
      final override public function work() : void
      {
         loop3:
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
               this.i1 = li32(mstate.ebp + -8);
               this.i2 = li32(this.i0);
               this.i3 = this.i0;
               if(this.i2 != this.i1)
               {
                  si32(this.i1,this.i0);
                  mstate.esp -= 4;
                  si32(this.i3,mstate.esp);
                  state = 2;
                  mstate.esp -= 4;
                  FSM__ZN6b2Body13ResetMassDataEv.start();
                  return;
               }
               break;
            case 2:
               mstate.esp += 4;
               this.i0 = li32(this.i0);
               if(this.i0 == 0)
               {
                  this.i0 = 0;
                  si32(this.i0,this.i3 + 72);
                  si32(this.i0,this.i3 + 76);
                  si32(this.i0,this.i3 + 80);
               }
               this.i0 = li16(this.i3 + 4);
               this.i1 = this.i3 + 4;
               this.i2 = this.i0 & 2;
               if(this.i2 == 0)
               {
                  this.i2 = 0;
                  this.i0 |= 2;
                  si16(this.i0,this.i1);
                  si32(this.i2,this.i3 + 148);
               }
               this.i0 = 0;
               si32(this.i0,this.i3 + 84);
               si32(this.i0,this.i3 + 88);
               si32(this.i0,this.i3 + 92);
               this.i0 = li32(this.i3 + 108);
               if(this.i0 != 0)
               {
                  addr0266:
                  this.i1 = li32(this.i0 + 12);
                  this.i2 = this.i0 + 12;
                  if(this.i1 != 0)
                  {
                     this.i1 = li32(this.i1 + 120);
                     if(this.i1 != 0)
                     {
                        while(true)
                        {
                           this.i3 = li32(this.i1 + 4);
                           this.i4 = li32(this.i3 + 48);
                           this.i5 = li32(this.i3 + 52);
                           while(true)
                           {
                              if(this.i5 != this.i0)
                              {
                                 if(this.i4 != this.i0)
                                 {
                                    break;
                                 }
                              }
                              this.i4 = li32(this.i3 + 4);
                              this.i4 |= 8;
                              si32(this.i4,this.i3 + 4);
                              break;
                           }
                           this.i1 = li32(this.i1 + 12);
                           if(this.i1 == 0)
                           {
                              break;
                           }
                        }
                     }
                     break loop2;
                  }
                  while(true)
                  {
                     this.i0 = li32(this.i0 + 8);
                     if(this.i0 == 0)
                     {
                        break loop3;
                     }
                     §§goto(addr0266);
                  }
                  this.i2 = 0;
                  this.i4 = this.i1 + 102912;
                  this.i5 = this.i1 + 102908;
                  this.i1 += 102904;
                  this.i6 = 24;
                  this.i7 = this.i0 + 28;
                  this.i8 = li32(this.i7);
                  this.i8 += this.i6;
                  this.i8 = li32(this.i8);
                  this.i9 = li32(this.i4);
                  this.i10 = li32(this.i5);
                  addr0582:
                  if(this.i9 != this.i10)
                  {
                     do
                     {
                        this.i9 = li32(this.i4);
                        this.i10 = li32(this.i1);
                        this.i9 <<= 2;
                        this.i9 = this.i10 + this.i9;
                        si32(this.i8,this.i9);
                        this.i8 = li32(this.i4);
                        this.i8 += 1;
                        si32(this.i8,this.i4);
                        this.i8 = li32(this.i3);
                        this.i6 += 28;
                        this.i2 += 1;
                        if(this.i8 > this.i2)
                        {
                           continue;
                        }
                        §§goto(addr0582);
                     }
                     while(this.i8 = li32(this.i7), this.i8 += this.i6, this.i8 = li32(this.i8), this.i9 = li32(this.i4), this.i10 = li32(this.i5), this.i9 != this.i10);
                     addr0502:
                  }
                  this.i9 = 0;
                  this.i11 = li32(this.i1);
                  this.i12 = this.i10 << 1;
                  si32(this.i12,this.i5);
                  mstate.esp -= 8;
                  this.i10 <<= 3;
                  si32(this.i9,mstate.esp);
                  si32(this.i10,mstate.esp + 4);
                  state = 3;
                  mstate.esp -= 4;
                  FSM_pubrealloc.start();
                  return;
               }
               break;
            case 3:
               this.i10 = mstate.eax;
               mstate.esp += 8;
               si32(this.i10,this.i1);
               this.i12 = li32(this.i4);
               this.i12 <<= 2;
               cmodule.Box2D.memcpy(this.i10,this.i11,this.i12);
               mstate.esp -= 8;
               si32(this.i11,mstate.esp);
               si32(this.i9,mstate.esp + 4);
               state = 4;
               mstate.esp -= 4;
               FSM_pubrealloc.start();
               return;
            case 4:
               this.i9 = mstate.eax;
               mstate.esp += 8;
               §§goto(addr0502);
            case 5:
               this.i0 = mstate.eax;
               mstate.eax = this.i0;
               mstate.esp = mstate.ebp;
               mstate.ebp = li32(mstate.esp);
               mstate.esp += 4;
               mstate.esp += 4;
               mstate.gworker = caller;
               return;
            default:
               throw "Invalid state in __Z14b2Body_SetTypePvP8_AS3_Val";
         }
         state = 5;
         mstate.esp -= 4;
         mstate.funcs[cmodule.Box2D._AS3_Null]();
      }
   }
}

