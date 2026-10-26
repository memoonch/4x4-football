package cmodule.Box2D
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public final class FSM__ZN9__gnu_cxx27__verbose_terminate_handlerEv extends Machine
   {
      
      public static const intRegCount:int = 4;
      
      public static const NumberRegCount:int = 0;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public function FSM__ZN9__gnu_cxx27__verbose_terminate_handlerEv()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZN9__gnu_cxx27__verbose_terminate_handlerEv = null;
         _loc1_ = new FSM__ZN9__gnu_cxx27__verbose_terminate_handlerEv();
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
               mstate.esp -= 224;
               this.i0 = li8(cmodule.Box2D.__ZZN9__gnu_cxx27__verbose_terminate_handlerEvE11terminating_2E_b);
               this.i0 ^= 1;
               this.i0 &= 1;
               if(this.i0 != 0)
               {
                  break;
               }
               this.i0 = cmodule.Box2D.__2E_str3100;
               si32(this.i0,mstate.ebp + -200);
               this.i0 = 29;
               si32(this.i0,mstate.ebp + -196);
               si32(this.i0,mstate.ebp + -216);
               this.i0 = mstate.ebp + -200;
               si32(this.i0,mstate.ebp + -224);
               this.i0 = 1;
               si32(this.i0,mstate.ebp + -220);
               this.i0 = li32(cmodule.Box2D.___sF + 232);
               this.i1 = li32(this.i0 + 16);
               this.i0 += 16;
               if(this.i1 == 0)
               {
                  this.i1 = -1;
                  si32(this.i1,this.i0);
               }
               this.i0 = cmodule.Box2D.___sF;
               mstate.esp -= 8;
               this.i1 = mstate.ebp + -224;
               §§goto(addr0171);
            case 2:
               break;
            case 1:
               this.i0 = mstate.eax;
               mstate.esp += 8;
               state = 2;
               mstate.esp -= 4;
               FSM_abort1.start();
               return;
            case 3:
               this.i0 = mstate.eax;
               this.i0 = li32(this.i0);
               if(this.i0 == 0)
               {
                  this.i0 = 0;
               }
               else
               {
                  this.i0 = li32(this.i0);
               }
               if(this.i0 != 0)
               {
                  this.i1 = cmodule.Box2D.__2E_str1101;
                  this.i0 = li32(this.i0 + 4);
                  si32(this.i1,mstate.ebp + -168);
                  this.i1 = 48;
                  si32(this.i1,mstate.ebp + -164);
                  si32(this.i1,mstate.ebp + -184);
                  this.i1 = mstate.ebp + -168;
                  si32(this.i1,mstate.ebp + -192);
                  this.i1 = 1;
                  si32(this.i1,mstate.ebp + -188);
                  this.i1 = li32(cmodule.Box2D.___sF + 232);
                  this.i2 = li32(this.i1 + 16);
                  this.i1 += 16;
                  this.i3 = this.i0;
                  if(this.i2 == 0)
                  {
                     this.i2 = -1;
                     si32(this.i2,this.i1);
                  }
                  this.i1 = cmodule.Box2D.___sF;
                  mstate.esp -= 8;
                  this.i2 = mstate.ebp + -192;
                  this.i1 += 176;
                  si32(this.i1,mstate.esp);
                  si32(this.i2,mstate.esp + 4);
                  state = 4;
                  mstate.esp -= 4;
                  FSM___sfvwrite.start();
                  return;
               }
               this.i0 = cmodule.Box2D.__2E_str4104;
               si32(this.i0,mstate.ebp + -104);
               this.i0 = 45;
               si32(this.i0,mstate.ebp + -100);
               si32(this.i0,mstate.ebp + -120);
               this.i0 = mstate.ebp + -104;
               si32(this.i0,mstate.ebp + -128);
               this.i0 = 1;
               si32(this.i0,mstate.ebp + -124);
               this.i0 = li32(cmodule.Box2D.___sF + 232);
               this.i1 = li32(this.i0 + 16);
               this.i0 += 16;
               if(this.i1 == 0)
               {
                  this.i1 = -1;
                  si32(this.i1,this.i0);
               }
               this.i0 = cmodule.Box2D.___sF;
               mstate.esp -= 8;
               this.i1 = mstate.ebp + -128;
               addr0171:
               this.i0 += 176;
               si32(this.i0,mstate.esp);
               si32(this.i1,mstate.esp + 4);
               state = 1;
               mstate.esp -= 4;
               FSM___sfvwrite.start();
               return;
               break;
            case 4:
               this.i1 = mstate.eax;
               mstate.esp += 8;
               si32(this.i3,mstate.ebp + -136);
               this.i1 = li8(this.i3);
               if(this.i1 != 0)
               {
                  this.i3 = this.i0;
                  while(true)
                  {
                     this.i1 = li8(this.i3 + 1);
                     this.i3 += 1;
                     this.i2 = this.i3;
                     if(this.i1 == 0)
                     {
                        break;
                     }
                     this.i3 = this.i2;
                  }
               }
               else
               {
                  addr04ef:
               }
               this.i1 = this.i3;
               this.i2 = mstate.ebp + -136;
               this.i0 = this.i1 - this.i0;
               si32(this.i0,mstate.ebp + -152);
               si32(this.i0,mstate.ebp + -132);
               si32(this.i2,mstate.ebp + -160);
               this.i0 = 1;
               si32(this.i0,mstate.ebp + -156);
               this.i0 = li32(cmodule.Box2D.___sF + 232);
               this.i1 = li32(this.i0 + 16);
               this.i0 += 16;
               if(this.i1 == 0)
               {
                  this.i1 = -1;
                  si32(this.i1,this.i0);
               }
               this.i0 = cmodule.Box2D.___sF;
               mstate.esp -= 8;
               this.i1 = mstate.ebp + -160;
               this.i0 += 176;
               si32(this.i0,mstate.esp);
               si32(this.i1,mstate.esp + 4);
               state = 5;
               mstate.esp -= 4;
               FSM___sfvwrite.start();
               return;
            case 5:
               this.i0 = mstate.eax;
               mstate.esp += 8;
               this.i0 = cmodule.Box2D.__2E_str2102;
               si32(this.i0,mstate.ebp + -72);
               this.i0 = 2;
               si32(this.i0,mstate.ebp + -68);
               si32(this.i0,mstate.ebp + -88);
               this.i0 = mstate.ebp + -72;
               si32(this.i0,mstate.ebp + -96);
               this.i0 = 1;
               si32(this.i0,mstate.ebp + -92);
               this.i0 = li32(cmodule.Box2D.___sF + 232);
               this.i1 = li32(this.i0 + 16);
               this.i0 += 16;
               if(this.i1 == 0)
               {
                  this.i1 = -1;
                  si32(this.i1,this.i0);
               }
               this.i0 = cmodule.Box2D.___sF;
               mstate.esp -= 8;
               this.i1 = mstate.ebp + -96;
               this.i0 += 176;
               si32(this.i0,mstate.esp);
               si32(this.i1,mstate.esp + 4);
               state = 6;
               mstate.esp -= 4;
               FSM___sfvwrite.start();
               return;
            case 6:
               this.i0 = mstate.eax;
               mstate.esp += 8;
               state = 7;
               mstate.esp -= 4;
               FSM___cxa_rethrow.start();
               return;
            case 7:
               §§goto(addr04ef);
            default:
               throw "Invalid state in __ZN9__gnu_cxx27__verbose_terminate_handlerEv";
         }
         this.i0 = 1;
         si8(this.i0,cmodule.Box2D.__ZZN9__gnu_cxx27__verbose_terminate_handlerEvE11terminating_2E_b);
         state = 3;
         mstate.esp -= 4;
         FSM___cxa_get_globals.start();
      }
   }
}

