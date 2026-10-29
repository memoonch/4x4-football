package cmodule.Box2D
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public final class FSM__ZL17parse_lsda_headerP15_Unwind_ContextPKhP16lsda_header_info extends Machine
   {
      
      public static const intRegCount:int = 8;
      
      public static const NumberRegCount:int = 0;
      
      public var i0:int;
      
      public var i1:int;
      
      public var i2:int;
      
      public var i3:int;
      
      public var i4:int;
      
      public var i5:int;
      
      public var i6:int;
      
      public var i7:int;
      
      public function FSM__ZL17parse_lsda_headerP15_Unwind_ContextPKhP16lsda_header_info()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM__ZL17parse_lsda_headerP15_Unwind_ContextPKhP16lsda_header_info = null;
         _loc1_ = new FSM__ZL17parse_lsda_headerP15_Unwind_ContextPKhP16lsda_header_info();
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
               mstate.esp -= 0;
               this.i2 = li32(mstate.ebp + 12);
               this.i3 = li32(mstate.ebp + 16);
               this.i0 = li32(mstate.ebp + 8);
               if(this.i0 != 0)
               {
                  this.i0 = cmodule.Box2D.__2E_str8104;
                  this.i1 = 4;
                  cmodule.Box2D.log(this.i1,mstate.gworker.stringFromPtr(this.i0));
               }
               this.i0 = 0;
               si32(this.i0,this.i3);
               this.i4 = li8(this.i2);
               this.i5 = this.i3 + 4;
               this.i2 += 1;
               if(this.i4 != 255)
               {
                  this.i0 = this.i4 & 0x70;
                  if(this.i0 <= 47)
                  {
                     if(this.i0 != 0)
                     {
                        if(this.i0 != 16)
                        {
                           if(this.i0 != 32)
                           {
                              §§goto(addr016c);
                           }
                           else
                           {
                              this.i0 = cmodule.Box2D.__2E_str7103;
                              this.i1 = 4;
                              cmodule.Box2D.log(this.i1,mstate.gworker.stringFromPtr(this.i0));
                           }
                        }
                     }
                  }
                  else if(this.i0 != 48)
                  {
                     if(this.i0 != 64)
                     {
                        if(this.i0 != 80)
                        {
                           addr016c:
                           state = 1;
                           mstate.esp -= 4;
                           FSM_abort1.start();
                           return;
                        }
                     }
                     else
                     {
                        this.i0 = cmodule.Box2D.__2E_str8104;
                        this.i1 = 4;
                        cmodule.Box2D.log(this.i1,mstate.gworker.stringFromPtr(this.i0));
                     }
                  }
                  else
                  {
                     addr018c:
                     this.i0 = cmodule.Box2D.__2E_str10106;
                     this.i1 = 4;
                     cmodule.Box2D.log(this.i1,mstate.gworker.stringFromPtr(this.i0));
                  }
                  this.i0 = 0;
                  mstate.esp -= 16;
                  this.i1 = this.i4 & 0xFF;
                  si32(this.i1,mstate.esp);
                  si32(this.i0,mstate.esp + 4);
                  si32(this.i2,mstate.esp + 8);
                  si32(this.i5,mstate.esp + 12);
                  state = 2;
                  mstate.esp -= 4;
                  FSM__ZL28read_encoded_value_with_basehjPKhPj.start();
                  return;
               }
               this.i0 = 0;
               si32(this.i0,this.i5);
               break;
            case 1:
               §§goto(addr018c);
            case 2:
               this.i2 = mstate.eax;
               mstate.esp += 16;
               break;
            default:
               throw "Invalid state in __ZL17parse_lsda_headerP15_Unwind_ContextPKhP16lsda_header_info";
         }
         this.i0 = this.i2;
         this.i1 = li8(this.i0);
         si8(this.i1,this.i3 + 20);
         this.i2 = this.i0 + 1;
         this.i4 = this.i0;
         if(this.i1 != 255)
         {
            this.i2 = 0;
            this.i1 = this.i2;
            this.i5 = this.i2;
            do
            {
               this.i6 = this.i4 + this.i5;
               this.i6 = li8(this.i6 + 1);
               this.i7 = this.i6 & 0x7F;
               this.i7 <<= this.i1;
               this.i1 += 7;
               this.i5 += 1;
               this.i2 = this.i7 | this.i2;
               this.i6 <<= 24;
               this.i6 >>= 24;
            }
            while(this.i6 <= -1);
            this.i1 = this.i5 + 1;
            this.i2 = this.i1 + this.i2;
            this.i2 = this.i0 + this.i2;
            si32(this.i2,this.i3 + 12);
            this.i2 = this.i0 + this.i1;
         }
         else
         {
            this.i0 = 0;
            si32(this.i0,this.i3 + 12);
         }
         this.i0 = this.i2;
         this.i1 = 0;
         this.i2 = li8(this.i0);
         si8(this.i2,this.i3 + 21);
         this.i2 = this.i0;
         this.i4 = this.i1;
         this.i5 = this.i1;
         do
         {
            this.i6 = this.i2 + this.i5;
            this.i6 = li8(this.i6 + 1);
            this.i7 = this.i6 & 0x7F;
            this.i7 <<= this.i4;
            this.i4 += 7;
            this.i5 += 1;
            this.i1 = this.i7 | this.i1;
            this.i6 <<= 24;
            this.i6 >>= 24;
         }
         while(this.i6 <= -1);
         this.i1 = this.i5 + this.i1;
         this.i0 = this.i1 + this.i0;
         this.i0 += 1;
         si32(this.i0,this.i3 + 16);
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp += 4;
         mstate.esp += 4;
         mstate.gworker = caller;
      }
   }
}

