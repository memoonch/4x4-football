package cmodule.Box2D
{
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.system.*;
   import flash.text.*;
   import flash.utils.*;
   
   public class CLibInit
   {
      
      public function CLibInit()
      {
         super();
      }
      
      public function init() : *
      {
         var runner:CRunner = null;
         var result:* = undefined;
         var saveState:MState = null;
         var regged:Boolean = false;
         runner = new CRunner(true);
         saveState = new MState(null);
         cmodule.Box2D.mstate.copyTo(saveState);
         try
         {
            try
            {
               runner.startSystem();
               while(true)
               {
                  try
                  {
                     while(true)
                     {
                        runner.work();
                     }
                  }
                  catch(e:AlchemyDispatch)
                  {
                  }
                  catch(e:AlchemyYield)
                  {
                  }
               }
            }
            catch(e:AlchemyLibInit)
            {
               cmodule.Box2D.log(3,"Caught AlchemyLibInit " + e.rv);
               regged = true;
               result = CTypemap.AS3ValType.valueTracker.release(e.rv);
            }
            return result;
         }
         finally
         {
            saveState.copyTo(cmodule.Box2D.mstate);
            if(!regged)
            {
               cmodule.Box2D.log(1,"Lib didn\'t register");
            }
         }
      }
      
      public function supplyFile(param1:String, param2:ByteArray) : void
      {
         cmodule.Box2D.gfiles[param1] = param2;
      }
      
      public function putEnv(param1:String, param2:String) : void
      {
         cmodule.Box2D.genv[param1] = param2;
      }
      
      public function setSprite(param1:Sprite) : void
      {
         cmodule.Box2D.gsprite = param1;
      }
   }
}

