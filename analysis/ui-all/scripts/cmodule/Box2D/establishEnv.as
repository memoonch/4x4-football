package cmodule.Box2D
{
   public function establishEnv() : void
   {
      var ns:Namespace = null;
      try
      {
         ns = new Namespace("avmplus");
         cmodule.Box2D.gdomainClass = ns::["Domain"];
         cmodule.Box2D.gshell = true;
      }
      catch(e:*)
      {
      }
      if(!cmodule.Box2D.gdomainClass)
      {
         ns = new Namespace("flash.system");
         cmodule.Box2D.gdomainClass = ns::["ApplicationDomain"];
      }
   }
}

