package cmodule.Box2D
{
   import flash.display.*;
   import flash.events.*;
   import flash.net.*;
   import flash.system.*;
   import flash.text.*;
   import flash.utils.*;
   
   internal class CProcTypemap extends CTypemap
   {
      
      private var retTypemap:CTypemap;
      
      private var varargs:Boolean;
      
      private var argTypemaps:Array;
      
      private var async:Boolean;
      
      public function CProcTypemap(param1:CTypemap, param2:Array, param3:Boolean = false, param4:Boolean = false)
      {
         super();
         this.retTypemap = param1;
         this.argTypemaps = param2;
         this.varargs = param3;
         this.async = param4;
      }
      
      override public function createC(param1:*, param2:int = 0) : Array
      {
         var id:int = 0;
         var v:* = param1;
         var ptr:int = param2;
         id = cmodule.Box2D.regFunc(function():void
         {
            var args:* = undefined;
            var sp:* = undefined;
            var n:* = undefined;
            var tm:* = undefined;
            var aa:* = undefined;
            var ts:* = undefined;
            args = [];
            cmodule.Box2D.mstate.pop();
            sp = cmodule.Box2D.mstate.esp;
            n = 0;
            while(n < argTypemaps.length)
            {
               tm = argTypemaps[n];
               aa = [];
               ts = tm.typeSize;
               cmodule.Box2D.mstate.ds.position = sp;
               sp += ts;
               while(ts)
               {
                  aa.push(cmodule.Box2D.mstate.ds.readInt());
                  ts -= 4;
               }
               args.push(tm.fromC(aa));
               n++;
            }
            if(varargs)
            {
               args.push(sp);
            }
            try
            {
               retTypemap.toReturnRegs(cmodule.Box2D.mstate,v.apply(null,args));
            }
            catch(e:*)
            {
               cmodule.Box2D.mstate.eax = 0;
               cmodule.Box2D.mstate.edx = 0;
               cmodule.Box2D.mstate.st0 = 0;
               cmodule.Box2D.log(2,"v.apply: " + e.toString());
            }
         });
         return [id];
      }
      
      override public function destroyC(param1:Array) : void
      {
         cmodule.Box2D.unregFunc(int(param1[0]));
      }
      
      override public function fromC(param1:Array) : *
      {
         var v:Array = param1;
         return function(... rest):*
         {
            var sp:* = undefined;
            var cargs:* = undefined;
            var n:* = undefined;
            var asyncHandler:* = undefined;
            var oldWorker:* = undefined;
            var arg:* = undefined;
            var carg:* = undefined;
            var args:Array = rest;
            var cleanup:Function = function():void
            {
               n = cargs.length - 1;
               while(n >= 0)
               {
                  argTypemaps[n].destroyC(cargs[n]);
                  --n;
               }
               cmodule.Box2D.mstate.esp = sp;
               cmodule.Box2D.mstate.gworker = oldWorker;
            };
            sp = cmodule.Box2D.mstate.esp;
            cargs = [];
            oldWorker = cmodule.Box2D.mstate.gworker;
            if(async)
            {
               asyncHandler = args.shift();
               cmodule.Box2D.mstate.gworker = new NotifyMachine(function():Boolean
               {
                  var result:* = undefined;
                  result = retTypemap.fromReturnRegs(cmodule.Box2D.mstate);
                  cleanup();
                  try
                  {
                     asyncHandler(result);
                  }
                  catch(e:*)
                  {
                     cmodule.Box2D.log(1,"asyncHandler: " + e.toString());
                  }
                  return true;
               });
            }
            n = args.length - 1;
            while(n >= 0)
            {
               arg = args[n];
               if(n >= argTypemaps.length)
               {
                  push(arg);
               }
               else
               {
                  carg = argTypemaps[n].createC(arg);
                  cargs[n] = carg;
                  push(carg);
               }
               n--;
            }
            cmodule.Box2D.mstate.push(0);
            if(asyncHandler)
            {
               try
               {
                  cmodule.Box2D.mstate.funcs[int(v[0])]();
               }
               catch(e:AlchemyYield)
               {
               }
               catch(e:AlchemyDispatch)
               {
               }
               catch(e:AlchemyBlock)
               {
               }
               catch(e:*)
               {
                  cleanup();
                  throw e;
               }
               return;
            }
            try
            {
               try
               {
                  cmodule.Box2D.mstate.funcs[int(v[0])]();
               }
               catch(e:AlchemyYield)
               {
               }
               catch(e:AlchemyDispatch)
               {
               }
               while(cmodule.Box2D.mstate.gworker !== oldWorker)
               {
                  try
                  {
                     while(cmodule.Box2D.mstate.gworker !== oldWorker)
                     {
                        cmodule.Box2D.mstate.gworker.work();
                     }
                  }
                  catch(e:AlchemyYield)
                  {
                  }
                  catch(e:AlchemyDispatch)
                  {
                  }
               }
               return retTypemap.fromReturnRegs(cmodule.Box2D.mstate);
            }
            finally
            {
               cleanup();
            }
         };
      }
      
      private function push(param1:*) : void
      {
         var _loc2_:* = 0;
         if(param1 is Array)
         {
            _loc2_ = int(param1.length - 1);
            while(_loc2_ >= 0)
            {
               cmodule.Box2D.mstate.push(param1[_loc2_]);
               _loc2_--;
            }
         }
         else
         {
            cmodule.Box2D.mstate.push(param1);
         }
      }
   }
}

