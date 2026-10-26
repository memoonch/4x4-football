package misc
{
   public class ScrollerChild extends Entity
   {
      
      public var focusOn:Boolean = false;
      
      public function ScrollerChild()
      {
         super();
      }
      
      override public function create() : void
      {
         var _loc1_:Scroller = null;
         super.create();
         if(this.focusOn)
         {
            _loc1_ = Util.findAncestorOfClass(this,Scroller) as Scroller;
            if(_loc1_)
            {
               _loc1_.focus = this;
            }
         }
      }
   }
}

