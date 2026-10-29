package cmodule.Box2D
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.system.*;
   import flash.text.*;
   import flash.utils.*;
   
   public final class FSM_main extends Machine
   {
      
      public static const intRegCount:int = 32;
      
      public static const NumberRegCount:int = 0;
      
      public var i21:int;
      
      public var i30:int;
      
      public var i31:int;
      
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
      
      public function FSM_main()
      {
         super();
      }
      
      public static function start() : void
      {
         var _loc1_:FSM_main = null;
         _loc1_ = new FSM_main();
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
               mstate.esp -= 316;
               this.i0 = cmodule.Box2D.__2E_str35242;
               mstate.esp -= 84;
               this.i1 = cmodule.Box2D._b2_maxManifoldPoints;
               this.i2 = cmodule.Box2D._b2_maxPolygonVertices;
               this.i3 = cmodule.Box2D._b2_aabbExtension;
               this.i4 = cmodule.Box2D._b2_aabbMultiplier;
               this.i5 = cmodule.Box2D._b2_linearSlop;
               this.i6 = cmodule.Box2D._b2_angularSlop;
               this.i7 = cmodule.Box2D._b2_polygonRadius;
               this.i8 = cmodule.Box2D._b2_maxSubSteps;
               this.i9 = cmodule.Box2D._b2_maxTOIContacts;
               this.i10 = cmodule.Box2D._b2_velocityThreshold;
               this.i11 = cmodule.Box2D._b2_maxLinearCorrection;
               this.i12 = cmodule.Box2D._b2_maxAngularCorrection;
               this.i13 = cmodule.Box2D._b2_maxTranslation;
               this.i14 = cmodule.Box2D._b2_maxTranslationSquared;
               this.i15 = cmodule.Box2D._b2_maxRotation;
               this.i16 = cmodule.Box2D._b2_maxRotationSquared;
               this.i17 = cmodule.Box2D._b2_contactBaumgarte;
               this.i18 = cmodule.Box2D._b2_timeToSleep;
               this.i19 = cmodule.Box2D._b2_linearSleepTolerance;
               this.i20 = cmodule.Box2D._b2_angularSleepTolerance;
               si32(this.i0,mstate.esp);
               si32(this.i1,mstate.esp + 4);
               si32(this.i2,mstate.esp + 8);
               si32(this.i3,mstate.esp + 12);
               si32(this.i4,mstate.esp + 16);
               si32(this.i5,mstate.esp + 20);
               si32(this.i6,mstate.esp + 24);
               si32(this.i7,mstate.esp + 28);
               si32(this.i8,mstate.esp + 32);
               si32(this.i9,mstate.esp + 36);
               si32(this.i10,mstate.esp + 40);
               si32(this.i11,mstate.esp + 44);
               si32(this.i12,mstate.esp + 48);
               si32(this.i13,mstate.esp + 52);
               si32(this.i14,mstate.esp + 56);
               si32(this.i15,mstate.esp + 60);
               si32(this.i16,mstate.esp + 64);
               si32(this.i17,mstate.esp + 68);
               si32(this.i18,mstate.esp + 72);
               si32(this.i19,mstate.esp + 76);
               si32(this.i20,mstate.esp + 80);
               state = 1;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Object]();
               return;
            case 1:
               this.i0 = mstate.eax;
               si32(this.i0,mstate.ebp + -9);
               mstate.esp += 84;
               mstate.esp -= 8;
               this.i0 = cmodule.Box2D.__Z18b2Vec2Array_deletePvP8_AS3_Val;
               this.i2 = 0;
               si32(this.i2,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 2;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 2:
               this.i0 = mstate.eax;
               si32(this.i0,mstate.ebp + -18);
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i0 = cmodule.Box2D.__Z15b2Vec2Array_newPvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 3;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 3:
               this.i0 = mstate.eax;
               si32(this.i0,mstate.ebp + -27);
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i0 = cmodule.Box2D.__Z18b2LoopShape_deletePvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 4;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 4:
               this.i0 = mstate.eax;
               si32(this.i0,mstate.ebp + -36);
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i0 = cmodule.Box2D.__Z15b2LoopShape_newPvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 5;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 5:
               this.i0 = mstate.eax;
               si32(this.i0,mstate.ebp + -45);
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i0 = cmodule.Box2D.__Z18b2EdgeShape_deletePvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 6;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 6:
               this.i0 = mstate.eax;
               si32(this.i0,mstate.ebp + -54);
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i0 = cmodule.Box2D.__Z15b2EdgeShape_newPvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 7;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 7:
               this.i0 = mstate.eax;
               si32(this.i0,mstate.ebp + -63);
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i0 = cmodule.Box2D.__Z10b2DistancePvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 8;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 8:
               this.i0 = mstate.eax;
               si32(this.i0,mstate.ebp + -72);
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i0 = cmodule.Box2D.__Z21b2SimplexCache_deletePvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 9;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 9:
               this.i0 = mstate.eax;
               si32(this.i0,mstate.ebp + -81);
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i0 = cmodule.Box2D.__Z18b2SimplexCache_newPvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 10;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 10:
               this.i0 = mstate.eax;
               si32(this.i0,mstate.ebp + -90);
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i0 = cmodule.Box2D.__Z23b2DistanceOutput_deletePvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 11;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 11:
               this.i0 = mstate.eax;
               si32(this.i0,mstate.ebp + -99);
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i0 = cmodule.Box2D.__Z20b2DistanceOutput_newPvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 12;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 12:
               this.i0 = mstate.eax;
               si32(this.i0,mstate.ebp + -108);
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i0 = cmodule.Box2D.__Z22b2DistanceInput_deletePvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 13;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 13:
               this.i0 = mstate.eax;
               si32(this.i0,mstate.ebp + -117);
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i0 = cmodule.Box2D.__Z19b2DistanceInput_newPvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 14;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 14:
               this.i0 = mstate.eax;
               si32(this.i0,mstate.ebp + -126);
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i0 = cmodule.Box2D.__Z24b2PolygonShape_DecomposePvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 15;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 15:
               this.i0 = mstate.eax;
               si32(this.i0,mstate.ebp + -135);
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i0 = cmodule.Box2D.__Z18b2Contact_EvaluatePvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 16;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 16:
               this.i0 = mstate.eax;
               si32(this.i0,mstate.ebp + -144);
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i0 = cmodule.Box2D.__Z16b2Contact_UpdatePvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 17;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 17:
               this.i0 = mstate.eax;
               si32(this.i0,mstate.ebp + -153);
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i0 = cmodule.Box2D.__Z17b2MassData_deletePvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 18;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 18:
               this.i0 = mstate.eax;
               si32(this.i0,mstate.ebp + -162);
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i0 = cmodule.Box2D.__Z14b2MassData_newPvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 19;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 19:
               this.i0 = mstate.eax;
               si32(this.i0,mstate.ebp + -171);
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i0 = cmodule.Box2D.__Z21b2RopeJointDef_deletePvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 20;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 20:
               this.i0 = mstate.eax;
               si32(this.i0,mstate.ebp + -180);
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i0 = cmodule.Box2D.__Z18b2RopeJointDef_newPvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 21;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 21:
               this.i0 = mstate.eax;
               si32(this.i0,mstate.ebp + -189);
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i0 = cmodule.Box2D.__Z25b2FrictionJointDef_deletePvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 22;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 22:
               this.i0 = mstate.eax;
               si32(this.i0,mstate.ebp + -198);
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i0 = cmodule.Box2D.__Z22b2FrictionJointDef_newPvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 23;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 23:
               this.i0 = mstate.eax;
               si32(this.i0,mstate.ebp + -207);
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i0 = cmodule.Box2D.__Z21b2WeldJointDef_deletePvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 24;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 24:
               this.i0 = mstate.eax;
               si32(this.i0,mstate.ebp + -216);
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i0 = cmodule.Box2D.__Z18b2WeldJointDef_newPvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 25;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 25:
               this.i0 = mstate.eax;
               si32(this.i0,mstate.ebp + -225);
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i0 = cmodule.Box2D.__Z25b2RevoluteJointDef_deletePvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 26;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 26:
               this.i0 = mstate.eax;
               si32(this.i0,mstate.ebp + -234);
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i0 = cmodule.Box2D.__Z22b2RevoluteJointDef_newPvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 27;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 27:
               this.i0 = mstate.eax;
               si32(this.i0,mstate.ebp + -243);
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i0 = cmodule.Box2D.__Z23b2PulleyJointDef_deletePvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 28;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 28:
               this.i0 = mstate.eax;
               si32(this.i0,mstate.ebp + -252);
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i0 = cmodule.Box2D.__Z20b2PulleyJointDef_newPvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 29;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 29:
               this.i0 = mstate.eax;
               si32(this.i0,mstate.ebp + -261);
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i0 = cmodule.Box2D.__Z26b2PrismaticJointDef_deletePvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 30;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 30:
               this.i0 = mstate.eax;
               si32(this.i0,mstate.ebp + -270);
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i0 = cmodule.Box2D.__Z23b2PrismaticJointDef_newPvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 31;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 31:
               this.i0 = mstate.eax;
               si32(this.i0,mstate.ebp + -279);
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i0 = cmodule.Box2D.__Z22b2MouseJointDef_deletePvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 32;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 32:
               this.i0 = mstate.eax;
               si32(this.i0,mstate.ebp + -288);
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i0 = cmodule.Box2D.__Z19b2MouseJointDef_newPvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 33;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 33:
               this.i0 = mstate.eax;
               si32(this.i0,mstate.ebp + -297);
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i0 = cmodule.Box2D.__Z21b2LineJointDef_deletePvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 34;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 34:
               this.i0 = mstate.eax;
               si32(this.i0,mstate.ebp + -306);
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i0 = cmodule.Box2D.__Z18b2LineJointDef_newPvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 35;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 35:
               this.i0 = mstate.eax;
               si32(this.i0,mstate.ebp + -315);
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i0 = cmodule.Box2D.__Z21b2GearJointDef_deletePvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i0,mstate.esp + 4);
               state = 36;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 36:
               this.i0 = mstate.eax;
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i1 = cmodule.Box2D.__Z18b2GearJointDef_newPvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i1,mstate.esp + 4);
               state = 37;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 37:
               this.i1 = mstate.eax;
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i3 = cmodule.Box2D.__Z25b2DistanceJointDef_deletePvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i3,mstate.esp + 4);
               state = 38;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 38:
               this.i3 = mstate.eax;
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i4 = cmodule.Box2D.__Z22b2DistanceJointDef_newPvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i4,mstate.esp + 4);
               state = 39;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 39:
               this.i4 = mstate.eax;
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i5 = cmodule.Box2D.__Z19b2FixtureDef_deletePvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i5,mstate.esp + 4);
               state = 40;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 40:
               this.i5 = mstate.eax;
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i6 = cmodule.Box2D.__Z16b2FixtureDef_newPvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i6,mstate.esp + 4);
               state = 41;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 41:
               this.i6 = mstate.eax;
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i7 = cmodule.Box2D.__Z21b2PolygonShape_deletePvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i7,mstate.esp + 4);
               state = 42;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 42:
               this.i7 = mstate.eax;
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i8 = cmodule.Box2D.__Z18b2PolygonShape_newPvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i8,mstate.esp + 4);
               state = 43;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 43:
               this.i8 = mstate.eax;
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i9 = cmodule.Box2D.__Z20b2CircleShape_deletePvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i9,mstate.esp + 4);
               state = 44;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 44:
               this.i9 = mstate.eax;
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i10 = cmodule.Box2D.__Z17b2CircleShape_newPvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i10,mstate.esp + 4);
               state = 45;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 45:
               this.i10 = mstate.eax;
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i11 = cmodule.Box2D.__Z16b2BodyDef_deletePvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i11,mstate.esp + 4);
               state = 46;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 46:
               this.i11 = mstate.eax;
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i12 = cmodule.Box2D.__Z13b2BodyDef_newPvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i12,mstate.esp + 4);
               state = 47;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 47:
               this.i12 = mstate.eax;
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i13 = cmodule.Box2D.__Z17b2Body_ApplyForcePvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i13,mstate.esp + 4);
               state = 48;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 48:
               this.i13 = mstate.eax;
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i14 = cmodule.Box2D.__Z14b2Body_SetTypePvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i14,mstate.esp + 4);
               state = 49;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 49:
               this.i14 = mstate.eax;
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i15 = cmodule.Box2D.__Z16b2Body_SetActivePvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i15,mstate.esp + 4);
               state = 50;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 50:
               this.i15 = mstate.eax;
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i16 = cmodule.Box2D.__Z18b2Body_SetMassDataPvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i16,mstate.esp + 4);
               state = 51;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 51:
               this.i16 = mstate.eax;
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i17 = cmodule.Box2D.__Z18b2Body_GetMassDataPvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i17,mstate.esp + 4);
               state = 52;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 52:
               this.i17 = mstate.eax;
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i18 = cmodule.Box2D.__Z20b2Body_ResetMassDataPvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i18,mstate.esp + 4);
               state = 53;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 53:
               this.i18 = mstate.eax;
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i19 = cmodule.Box2D.__Z19b2Body_SetTransformPvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i19,mstate.esp + 4);
               state = 54;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 54:
               this.i19 = mstate.eax;
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i20 = cmodule.Box2D.__Z21b2Body_DestroyFixturePvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i20,mstate.esp + 4);
               state = 55;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 55:
               this.i20 = mstate.eax;
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i21 = cmodule.Box2D.__Z20b2Body_CreateFixturePvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i21,mstate.esp + 4);
               state = 56;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 56:
               this.i21 = mstate.eax;
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i22 = cmodule.Box2D.__Z15b2World_RayCastPvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i22,mstate.esp + 4);
               state = 57;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 57:
               this.i22 = mstate.eax;
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i23 = cmodule.Box2D.__Z17b2World_QueryAABBPvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i23,mstate.esp + 4);
               state = 58;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 58:
               this.i23 = mstate.eax;
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i24 = cmodule.Box2D.__Z14b2World_deletePvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i24,mstate.esp + 4);
               state = 59;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 59:
               this.i24 = mstate.eax;
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i25 = cmodule.Box2D.__Z20b2World_DestroyJointPvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i25,mstate.esp + 4);
               state = 60;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 60:
               this.i25 = mstate.eax;
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i26 = cmodule.Box2D.__Z19b2World_CreateJointPvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i26,mstate.esp + 4);
               state = 61;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 61:
               this.i26 = mstate.eax;
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i27 = cmodule.Box2D.__Z19b2World_DestroyBodyPvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i27,mstate.esp + 4);
               state = 62;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 62:
               this.i27 = mstate.eax;
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i28 = cmodule.Box2D.__Z18b2World_CreateBodyPvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i28,mstate.esp + 4);
               state = 63;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 63:
               this.i28 = mstate.eax;
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i29 = cmodule.Box2D.__Z12b2World_StepPvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i29,mstate.esp + 4);
               state = 64;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 64:
               this.i29 = mstate.eax;
               mstate.esp += 8;
               mstate.esp -= 8;
               this.i30 = cmodule.Box2D.__Z11b2World_newPvP8_AS3_Val;
               si32(this.i2,mstate.esp);
               si32(this.i30,mstate.esp + 4);
               state = 65;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Function]();
               return;
            case 65:
               this.i30 = mstate.eax;
               mstate.esp += 8;
               mstate.esp -= 264;
               this.i31 = cmodule.Box2D.__2E_str36243;
               si32(this.i31,mstate.esp);
               si32(this.i30,mstate.esp + 4);
               si32(this.i29,mstate.esp + 8);
               si32(this.i28,mstate.esp + 12);
               si32(this.i27,mstate.esp + 16);
               si32(this.i26,mstate.esp + 20);
               si32(this.i25,mstate.esp + 24);
               si32(this.i24,mstate.esp + 28);
               si32(this.i23,mstate.esp + 32);
               si32(this.i22,mstate.esp + 36);
               si32(this.i21,mstate.esp + 40);
               si32(this.i20,mstate.esp + 44);
               si32(this.i19,mstate.esp + 48);
               si32(this.i18,mstate.esp + 52);
               si32(this.i17,mstate.esp + 56);
               si32(this.i16,mstate.esp + 60);
               si32(this.i15,mstate.esp + 64);
               si32(this.i14,mstate.esp + 68);
               si32(this.i13,mstate.esp + 72);
               si32(this.i12,mstate.esp + 76);
               si32(this.i11,mstate.esp + 80);
               si32(this.i10,mstate.esp + 84);
               si32(this.i9,mstate.esp + 88);
               si32(this.i8,mstate.esp + 92);
               si32(this.i7,mstate.esp + 96);
               si32(this.i6,mstate.esp + 100);
               si32(this.i5,mstate.esp + 104);
               si32(this.i4,mstate.esp + 108);
               si32(this.i3,mstate.esp + 112);
               si32(this.i1,mstate.esp + 116);
               si32(this.i0,mstate.esp + 120);
               this.i0 = li32(mstate.ebp + -315);
               si32(this.i0,mstate.esp + 124);
               this.i0 = li32(mstate.ebp + -306);
               si32(this.i0,mstate.esp + 128);
               this.i0 = li32(mstate.ebp + -297);
               si32(this.i0,mstate.esp + 132);
               this.i0 = li32(mstate.ebp + -288);
               si32(this.i0,mstate.esp + 136);
               this.i0 = li32(mstate.ebp + -279);
               si32(this.i0,mstate.esp + 140);
               this.i0 = li32(mstate.ebp + -270);
               si32(this.i0,mstate.esp + 144);
               this.i0 = li32(mstate.ebp + -261);
               si32(this.i0,mstate.esp + 148);
               this.i0 = li32(mstate.ebp + -252);
               si32(this.i0,mstate.esp + 152);
               this.i0 = li32(mstate.ebp + -243);
               si32(this.i0,mstate.esp + 156);
               this.i0 = li32(mstate.ebp + -234);
               si32(this.i0,mstate.esp + 160);
               this.i0 = li32(mstate.ebp + -225);
               si32(this.i0,mstate.esp + 164);
               this.i0 = li32(mstate.ebp + -216);
               si32(this.i0,mstate.esp + 168);
               this.i0 = li32(mstate.ebp + -207);
               si32(this.i0,mstate.esp + 172);
               this.i0 = li32(mstate.ebp + -198);
               si32(this.i0,mstate.esp + 176);
               this.i0 = li32(mstate.ebp + -189);
               si32(this.i0,mstate.esp + 180);
               this.i0 = li32(mstate.ebp + -180);
               si32(this.i0,mstate.esp + 184);
               this.i0 = li32(mstate.ebp + -171);
               si32(this.i0,mstate.esp + 188);
               this.i0 = li32(mstate.ebp + -162);
               si32(this.i0,mstate.esp + 192);
               this.i0 = li32(mstate.ebp + -153);
               si32(this.i0,mstate.esp + 196);
               this.i0 = li32(mstate.ebp + -144);
               si32(this.i0,mstate.esp + 200);
               this.i0 = li32(mstate.ebp + -135);
               si32(this.i0,mstate.esp + 204);
               this.i0 = li32(mstate.ebp + -126);
               si32(this.i0,mstate.esp + 208);
               this.i0 = li32(mstate.ebp + -117);
               si32(this.i0,mstate.esp + 212);
               this.i0 = li32(mstate.ebp + -108);
               si32(this.i0,mstate.esp + 216);
               this.i0 = li32(mstate.ebp + -99);
               si32(this.i0,mstate.esp + 220);
               this.i0 = li32(mstate.ebp + -90);
               si32(this.i0,mstate.esp + 224);
               this.i0 = li32(mstate.ebp + -81);
               si32(this.i0,mstate.esp + 228);
               this.i0 = li32(mstate.ebp + -72);
               si32(this.i0,mstate.esp + 232);
               this.i0 = li32(mstate.ebp + -63);
               si32(this.i0,mstate.esp + 236);
               this.i0 = li32(mstate.ebp + -54);
               si32(this.i0,mstate.esp + 240);
               this.i0 = li32(mstate.ebp + -45);
               si32(this.i0,mstate.esp + 244);
               this.i0 = li32(mstate.ebp + -36);
               si32(this.i0,mstate.esp + 248);
               this.i0 = li32(mstate.ebp + -27);
               si32(this.i0,mstate.esp + 252);
               this.i0 = li32(mstate.ebp + -18);
               si32(this.i0,mstate.esp + 256);
               this.i0 = li32(mstate.ebp + -9);
               si32(this.i0,mstate.esp + 260);
               state = 66;
               mstate.esp -= 4;
               mstate.funcs[cmodule.Box2D._AS3_Object]();
               return;
            case 66:
               this.i1 = mstate.eax;
               mstate.esp += 264;
               this.i0 = 1;
               state = 67;
               break;
            case 67:
               break;
            default:
               throw "Invalid state in _main";
         }
         if(this.i0)
         {
            this.i0 = 0;
            throw new AlchemyLibInit(this.i1);
         }
         mstate.eax = this.i2;
         mstate.esp = mstate.ebp;
         mstate.ebp = li32(mstate.esp);
         mstate.esp += 4;
         mstate.esp += 4;
         mstate.gworker = caller;
      }
   }
}

