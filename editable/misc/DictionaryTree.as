package misc
{
   import flash.utils.*;
   
   public class DictionaryTree extends Dictionary
   {
      
      public var storage:Dictionary = new Dictionary();
      
      public function DictionaryTree()
      {
         super();
      }
      
      public function store(param1:Array, param2:*) : void
      {
         var _loc4_:DictionaryTree = null;
         var _loc3_:* = param1.shift();
         if(param1.length == 0)
         {
            this.storage[_loc3_] = param2;
         }
         else
         {
            _loc4_ = this.storage[_loc3_] as DictionaryTree;
            if(!_loc4_)
            {
               _loc4_ = this.storage[_loc3_] = new DictionaryTree();
            }
            _loc4_.store(param1,param2);
         }
      }
      
      public function retrieve(param1:Array) : *
      {
         var _loc3_:DictionaryTree = null;
         var _loc2_:* = param1.shift();
         if(param1.length == 0)
         {
            return this.storage[_loc2_];
         }
         _loc3_ = this.storage[_loc2_] as DictionaryTree;
         if(!_loc3_)
         {
            return undefined;
         }
         return _loc3_.retrieve(param1);
      }
      
      public function remove(param1:Array) : void
      {
         var _loc2_:* = param1.shift();
         var _loc3_:DictionaryTree = this.storage[_loc2_] as DictionaryTree;
         if(param1.length == 0)
         {
            if(_loc3_)
            {
               _loc3_.flush();
            }
            delete this.storage[_loc2_];
         }
         else if(_loc3_)
         {
            _loc3_.remove(param1);
            if(_loc3_.isEmpty())
            {
               delete _loc3_[_loc2_];
            }
         }
      }
      
      public function isEmpty() : Boolean
      {
         return Util.dictionaryIsEmpty(this.storage);
      }
      
      public function flush() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:DictionaryTree = null;
         for(_loc1_ in this.storage)
         {
            _loc2_ = this.storage[_loc1_] as DictionaryTree;
            if(_loc2_)
            {
               _loc2_.flush();
            }
            delete this.storage[_loc1_];
         }
      }
      
      public function get values() : Array
      {
         var vals:Array = null;
         vals = [];
         this.forEach(function(param1:Array, param2:*):void
         {
            vals.push(param2);
         });
         return vals;
      }
      
      public function forEach(param1:Function, param2:* = null) : void
      {
         this._forEach(param1,this.filter,param2,[]);
      }
      
      public function _forEach(param1:Function, param2:Function, param3:*, param4:Array) : void
      {
         var _loc5_:* = undefined;
         var _loc6_:DictionaryTree = null;
         for(_loc5_ in this.storage)
         {
            param4.push(_loc5_);
            _loc6_ = this.storage[_loc5_] as DictionaryTree;
            if(_loc6_)
            {
               _loc6_._forEach(param1,param2,param3,param4);
            }
            else if(param2(this.storage[_loc5_]))
            {
               param1.apply(param3,[param4.concat(),this.storage[_loc5_]]);
            }
            param4.pop();
         }
      }
      
      public function filter(param1:*) : Boolean
      {
         return true;
      }
   }
}

