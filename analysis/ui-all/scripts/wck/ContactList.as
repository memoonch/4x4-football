package wck
{
   import Box2DAS.*;
   import Box2DAS.Collision.*;
   import Box2DAS.Collision.Shapes.*;
   import Box2DAS.Common.*;
   import Box2DAS.Dynamics.*;
   import Box2DAS.Dynamics.Contacts.*;
   import Box2DAS.Dynamics.Joints.*;
   import cmodule.Box2D.*;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import misc.*;
   
   public class ContactList extends DictionaryTree
   {
      
      public var removed:DictionaryTree = new DictionaryTree();
      
      public var ignoring:Dictionary = new Dictionary();
      
      public var contactEventFilter:ContactEventFilter = new ContactEventFilter();
      
      public function ContactList()
      {
         super();
      }
      
      public function listenTo(param1:BodyShape) : void
      {
         param1.addEventListener(ContactEvent.BEGIN_CONTACT,this.handleBeginContact,false,0,true);
         param1.addEventListener(ContactEvent.END_CONTACT,this.handleEndContact,false,0,true);
      }
      
      public function stopListeningTo(param1:BodyShape) : void
      {
         param1.removeEventListener(ContactEvent.BEGIN_CONTACT,this.handleBeginContact,false);
         param1.removeEventListener(ContactEvent.END_CONTACT,this.handleEndContact,false);
         remove([param1]);
      }
      
      public function handleBeginContact(param1:ContactEvent) : void
      {
         if(!this.ignoring[param1.relatedObject])
         {
            store([param1.fixture,param1.other],param1);
            this.removed.remove([param1.fixture,param1.other]);
         }
      }
      
      public function handleEndContact(param1:ContactEvent) : void
      {
         this.removed.store([param1.fixture,param1.other],param1);
      }
      
      public function clean() : void
      {
         var r:Array;
         var b:* = undefined;
         var i:uint = 0;
         this.removed.forEach(function(param1:Array, param2:*):void
         {
            remove(param1);
         });
         this.removed.flush();
         r = [];
         for(b in this.ignoring)
         {
            if(--this.ignoring[b] <= 0)
            {
               r.push(b);
            }
         }
         i = 0;
         while(i < r.length)
         {
            delete this.ignoring[r[i]];
            i++;
         }
      }
      
      override public function flush() : void
      {
         super.flush();
         this.removed.flush();
         this.ignoring = new Dictionary();
      }
      
      public function ignore(param1:BodyShape, param2:int = 1) : void
      {
         this.ignoring[param1] = param2;
      }
      
      override public function filter(param1:*) : Boolean
      {
         return this.contactEventFilter.filter(param1 as ContactEvent);
      }
      
      public function applyImpulse(param1:Number, param2:Number = 0) : void
      {
         var base:Number = param1;
         var massFactor:Number = param2;
         forEach(function(param1:Array, param2:ContactEvent):void
         {
            param2.applyImpulse(base,massFactor);
         });
      }
      
      public function applyForce(param1:Number, param2:Number = 0) : void
      {
         var base:Number = param1;
         var massFactor:Number = param2;
         forEach(function(param1:Array, param2:ContactEvent):void
         {
            param2.applyForce(base,massFactor);
         });
      }
      
      public function update() : void
      {
         forEach(function(param1:Array, param2:ContactEvent):void
         {
            param2.update();
         });
      }
   }
}

