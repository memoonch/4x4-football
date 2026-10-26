package fog.as3
{
   import flash.events.Event;
   import flash.net.SharedObject;
   import flash.utils.setInterval;
   import fog.as3.utils.*;
   
   public class FogDevStorage
   {
      
      public var Core:FogDevAPI;
      
      public var DataID:String = "";
      
      public var Data:SharedObject;
      
      public var Locals:Array = new Array();
      
      public var CurrentData:String = "";
      
      public var LastSave:String = "";
      
      public var Connected:Boolean = false;
      
      private var lastsave:int = 0;
      
      private var save:Boolean = false;
      
      private function callback():void
      {
      }
      public function FogDevStorage(param1:FogDevAPI)
      {
         super();
         this.Core = param1;
         if(!this.Core.Social)
         {
            throw new Error("You cannot use FogAPI.Storage Plugin without loading FogAPI.Social Plugin first");
         }
         this.DataID = this.Core.Game.ID + "." + this.Core.Social.uid;
         this.Data = SharedObject.getLocal(this.DataID);
         setInterval(this.CheckSaveBuffer,5000);
      }
      
      public function GetLocal(param1:String = "") : SharedObject
      {
         var _loc2_:SharedObject = SharedObject.getLocal(this.DataID + "." + param1);
         this.Locals.push([param1,_loc2_]);
         return _loc2_;
      }
      
      public function Sync() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = int(this.Locals.length);
         while(_loc1_ < _loc2_)
         {
            this.Set("_" + this.Locals[_loc1_][0],this.Locals[_loc1_][1].data,false);
            _loc1_++;
         }
         this.Save();
      }
      
      public function Clear(param1:Boolean = true) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = int(this.Locals.length);
         while(_loc2_ < _loc3_)
         {
            this.Locals[_loc2_][1].clear();
            _loc2_++;
         }
         this.Data.clear();
         if(param1)
         {
            this.Save();
         }
      }
      
      public function Get(param1:String) : *
      {
         return this.Data.data[param1];
      }
      
      public function Set(param1:*, param2:* = true, param3:Boolean = true) : Boolean
      {
         var _loc4_:* = undefined;
         if(typeof param1 == "object")
         {
            for(_loc4_ in param1)
            {
               param1[_loc4_] = this.Set(_loc4_,param1[_loc4_]);
            }
            return param1;
         }
         this.Data.data[param1] = param2;
         if(param3)
         {
            this.Save();
         }
         return true;
      }
      
      public function Save() : Boolean
      {
         if(!this.Connected)
         {
            throw new Error("You can\'t save data to the server when the game is not synced. Please use FogAPI.Storage.Load() to Initialize Sync");
         }
         this.save = true;
         return true;
      }
      
      private function CheckSaveBuffer() : Boolean
      {
         if(!this.save)
         {
            return false;
         }
         this.save = false;
         trace("Saving..");
         this.CurrentData = this.Encode(this.Data.data);
         this.Core.debug("Saving " + this.CurrentData.length + " bytes of data");
         if(!this.Core.Social.uid)
         {
            this.Core.debug("> to Flash Local");
            return false;
         }
         this.Core.debug("> to FogAPI Server");
         if(this.CurrentData != this.LastSave)
         {
            this.LastSave = this.CurrentData;
            return this.Core.Social.call("storage.save","guq=" + this.Core.ID + "&data=" + this.CurrentData) ? true : false;
         }
         return true;
      }
      
      public function Encode(param1:*) : String
      {
         var _loc2_:* = param1;
         _loc2_ = fog.as3.utils.JSON.encode(_loc2_);
         return Base64.encode(_loc2_);
      }
      
      public function Load(param1:Function = null) : void
      {
         this.callback = param1;
         this.Connected = true;
         this.Core.debug(" ");
         this.Core.debug("Attempting to load Storage");
         this.Core.Social.call("storage.load","guq=" + this.Core.ID + "&raw=1",this.LoadResponse);
      }
      
      public function LoadResponse(param1:String = "") : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:SharedObject = null;
         var _loc6_:* = undefined;
         trace(" ");
         trace("Server Storage Load Response");
         var _loc2_:String = param1;
         if(!_loc2_)
         {
            this.Clear(false);
            this.Core.debug("> No server storage. Reverting to local flash storage");
            this.Core.debug("> Loaded " + this.Data.size + " bytes from local memory");
         }
         else
         {
            this.Core.debug("> Loaded " + _loc2_.length + " bytes of data from FogAPI Server");
            this.Clear(false);
            _loc3_ = this.Decode(_loc2_);
            for(_loc4_ in _loc3_)
            {
               if(_loc4_.indexOf("_") === 0)
               {
                  _loc5_ = this.GetLocal(_loc4_.substr(1));
                  for(_loc6_ in _loc3_[_loc4_])
                  {
                     _loc5_.data[_loc6_] = _loc3_[_loc4_][_loc6_];
                  }
               }
               else
               {
                  this.Data.data[_loc4_] = _loc3_[_loc4_];
               }
            }
         }
         this.Core.dispatchEvent(new Event(this.Core.Events.StorageLoaded));
         if(this.callback != null)
         {
            this.callback();
         }
      }
      
      public function Decode(param1:String) : Object
      {
         var _loc2_:String = param1;
         var _loc3_:String = Base64.decode(_loc2_);
         return fog.as3.utils.JSON.decode(_loc3_);
      }
   }
}

