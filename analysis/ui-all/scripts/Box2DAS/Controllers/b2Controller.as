package Box2DAS.Controllers
{
   import Box2DAS.*;
   import Box2DAS.Collision.*;
   import Box2DAS.Collision.Shapes.*;
   import Box2DAS.Common.*;
   import Box2DAS.Dynamics.*;
   import Box2DAS.Dynamics.Contacts.*;
   import Box2DAS.Dynamics.Joints.*;
   import cmodule.Box2D.*;
   import flash.utils.*;
   
   public class b2Controller
   {
      
      public var effect:b2Effect;
      
      public var storage:Dictionary = new Dictionary();
      
      public var world:b2World;
      
      public var allBodies:Boolean = false;
      
      public var priority:int = 0;
      
      public function b2Controller(param1:b2World = null, param2:b2Effect = null, param3:Boolean = false)
      {
         super();
         this.effect = param2;
         this.allBodies = param3;
         if(param1)
         {
            this.world = param1;
            param1.AddController(this);
         }
      }
      
      public function destroy() : void
      {
         this.world.RemoveController(this);
         this.world = null;
      }
      
      public function toString() : String
      {
         return this.GetBodies().toString();
      }
      
      public function GetBodies() : Array
      {
         var _loc2_:* = undefined;
         var _loc1_:Array = [];
         for(_loc2_ in this.storage)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function AddBody(param1:b2Body) : void
      {
         this.storage[param1] = this.storage[param1] || 0;
         ++this.storage[param1];
         param1.m_controllers[this] = true;
      }
      
      public function RemoveBody(param1:b2Body) : void
      {
         if(this.storage[param1])
         {
            --this.storage[param1];
            if(this.storage[param1] == 0)
            {
               delete this.storage[param1];
               delete param1.m_controllers[this];
            }
         }
      }
      
      public function Step(param1:StepEvent = null) : void
      {
         var _loc2_:b2Body = null;
         var _loc3_:* = undefined;
         if(this.effect)
         {
            if(this.allBodies)
            {
               _loc2_ = this.world.m_bodyList;
               while(_loc2_)
               {
                  this.effect.Apply(_loc2_);
                  _loc2_ = _loc2_.m_next;
               }
            }
            else
            {
               for(_loc3_ in this.storage)
               {
                  this.effect.Apply(_loc3_ as b2Body);
               }
            }
         }
      }
   }
}

