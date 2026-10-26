package cmodule.Box2D
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   
   public final class FSM__ZN15b2DistanceProxy3SetEPK7b2Shapei extends Machine
   {
      
      public static const intRegCount:int = 6;
      
      public static const NumberRegCount:int = 2;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public var f0:Number;
      
      public var f1:Number;
      
      public function FSM__ZN15b2DistanceProxy3SetEPK7b2Shapei()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZN15b2DistanceProxy3SetEPK7b2Shapei = null;
         _loc1_ = new FSM__ZN15b2DistanceProxy3SetEPK7b2Shapei();
         cmodule.Box2D.gstate.gworker = _loc1_;
      }
      
      final override public function work() : void
      {
         loop0:
         switch(state)
         {
            case 0:
               mstate.esp -= 4;
               si32(mstate.ebp,mstate.esp);
               mstate.ebp = mstate.esp;
               mstate.esp -= 0;
               this.i0 = li32(mstate.ebp + 12);
               this.i1 = li32(this.i0 + 4);
               this.i2 = li32(mstate.ebp + 8);
               this.i3 = li32(mstate.ebp + 16);
               while(true)
               {
                  if(this.i1 <= 1)
                  {
                     if(this.i1 != 0)
                     {
                        if(this.i1 != 1)
                        {
                           §§goto(addr058c);
                        }
                        this.i1 = 2;
                        this.i3 = this.i0 + 16;
                        si32(this.i3,this.i2 + 16);
                        addr0527:
                        si32(this.i1,this.i2 + 20);
                        break;
                     }
                     this.i3 = 1;
                     this.i1 = this.i0 + 16;
                     si32(this.i1,this.i2 + 16);
                  }
                  else
                  {
                     if(this.i1 != 2)
                     {
                        if(this.i1 != 3)
                        {
                           addr058c:
                           this.i0 = cmodule.Box2D.___sF;
                           mstate.esp -= 24;
                           this.i1 = cmodule.Box2D.__2E_str1670;
                           this.i2 = cmodule.Box2D.__2E_str46253;
                           this.i3 = cmodule.Box2D.__ZZN15b2DistanceProxy3SetEPK7b2ShapeiE8__func__;
                           this.i4 = cmodule.Box2D.__2E_str45252;
                           this.i5 = 81;
                           §§goto(addr0341);
                        }
                        else
                        {
                           while(true)
                           {
                              if(this.i3 >= 0)
                              {
                                 this.i1 = li32(this.i0 + 20);
                                 this.i4 = this.i0 + 20;
                                 if(this.i1 > this.i3)
                                 {
                                    if(this.i3 >= 0)
                                    {
                                       this.i1 = li32(this.i4);
                                       if(this.i1 > this.i3)
                                       {
                                          this.i1 = li32(this.i0 + 16);
                                          this.i5 = this.i3 << 3;
                                          this.i1 += this.i5;
                                          this.f0 = lf32(this.i1);
                                          this.f1 = lf32(this.i1 + 4);
                                          sf32(this.f0,this.i2);
                                          sf32(this.f1,this.i2 + 4);
                                          this.i1 = li32(this.i4);
                                          this.i3 += 1;
                                          this.i4 = this.i0 + 16;
                                          if(this.i3 < this.i1)
                                          {
                                             if(this.i1 > this.i3)
                                             {
                                                if(this.i3 > -1)
                                                {
                                                   break loop0;
                                                }
                                             }
                                             this.i0 = cmodule.Box2D.___sF;
                                             mstate.esp -= 24;
                                             this.i1 = cmodule.Box2D.__2E_str1670;
                                             this.i2 = cmodule.Box2D.__2E_str1208;
                                             this.i3 = cmodule.Box2D.__ZZNK11b2LoopShape9GetVertexEiE8__func__;
                                             this.i4 = cmodule.Box2D.__2E_str207;
                                             this.i5 = 72;
                                             addr0341:
                                             this.i0 += 176;
                                             si32(this.i0,mstate.esp);
                                             si32(this.i1,mstate.esp + 4);
                                             si32(this.i2,mstate.esp + 8);
                                             si32(this.i3,mstate.esp + 12);
                                             si32(this.i4,mstate.esp + 16);
                                             §§goto(addr0395);
                                          }
                                          else if(this.i1 <= 0)
                                          {
                                             this.i0 = cmodule.Box2D.___sF;
                                             mstate.esp -= 24;
                                             this.i2 = cmodule.Box2D.__2E_str1670;
                                             this.i4 = cmodule.Box2D.__2E_str1208;
                                             this.i1 = cmodule.Box2D.__ZZNK11b2LoopShape9GetVertexEiE8__func__;
                                             this.i3 = cmodule.Box2D.__2E_str207;
                                             this.i5 = 72;
                                             this.i0 += 176;
                                             si32(this.i0,mstate.esp);
                                             si32(this.i2,mstate.esp + 4);
                                             si32(this.i4,mstate.esp + 8);
                                             si32(this.i1,mstate.esp + 12);
                                             si32(this.i3,mstate.esp + 16);
                                          }
                                          else
                                          {
                                             this.i1 = li32(this.i4);
                                             this.f0 = lf32(this.i1);
                                             this.f1 = lf32(this.i1 + 4);
                                             sf32(this.f0,this.i2 + 8);
                                             sf32(this.f1,this.i2 + 12);
                                             addr0515:
                                             this.i1 = 2;
                                             si32(this.i2,this.i2 + 16);
                                             §§goto(addr0527);
                                          }
                                          §§goto(addr0395);
                                       }
                                    }
                                    this.i0 = cmodule.Box2D.___sF;
                                    mstate.esp -= 24;
                                    this.i2 = cmodule.Box2D.__2E_str1670;
                                    this.i3 = cmodule.Box2D.__2E_str1208;
                                    this.i4 = cmodule.Box2D.__ZZNK11b2LoopShape9GetVertexEiE8__func__;
                                    this.i1 = cmodule.Box2D.__2E_str207;
                                    this.i5 = 72;
                                    break;
                                 }
                              }
                              this.i0 = cmodule.Box2D.___sF;
                              mstate.esp -= 24;
                              this.i2 = cmodule.Box2D.__2E_str1670;
                              this.i3 = cmodule.Box2D.__2E_str85292;
                              this.i4 = cmodule.Box2D.__ZZN15b2DistanceProxy3SetEPK7b2ShapeiE8__func__;
                              this.i1 = cmodule.Box2D.__2E_str45252;
                              this.i5 = 53;
                              break;
                           }
                           this.i0 += 176;
                           si32(this.i0,mstate.esp);
                           si32(this.i2,mstate.esp + 4);
                           si32(this.i3,mstate.esp + 8);
                           si32(this.i4,mstate.esp + 12);
                           si32(this.i1,mstate.esp + 16);
                        }
                        addr0395:
                        si32(this.i5,mstate.esp + 20);
                        state = 1;
                        mstate.esp -= 4;
                        FSM_fprintf.start();
                        return;
                     }
                     this.i3 = this.i0 + 24;
                     si32(this.i3,this.i2 + 16);
                     this.i3 = li32(this.i0 + 152);
                  }
                  si32(this.i3,this.i2 + 20);
                  break;
               }
               this.f0 = lf32(this.i0 + 8);
               sf32(this.f0,this.i2 + 24);
               mstate.esp = mstate.ebp;
               mstate.ebp = li32(mstate.esp);
               mstate.esp += 4;
               mstate.esp += 4;
               mstate.gworker = caller;
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
               throw "Invalid state in __ZN15b2DistanceProxy3SetEPK7b2Shapei";
         }
         this.i1 = li32(this.i4);
         this.i4 = this.i3 << 3;
         this.i1 += this.i4;
         this.f0 = lf32(this.i1);
         this.f1 = lf32(this.i1 + 4);
         sf32(this.f0,this.i2 + 8);
         sf32(this.f1,this.i2 + 12);
         §§goto(addr0515);
      }
   }
}

