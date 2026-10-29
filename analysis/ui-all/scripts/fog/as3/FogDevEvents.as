package fog.as3
{
   public class FogDevEvents
   {
      
      private var Core:FogDevAPI;
      
      public var TrackingComplete:String = "trackingComplete";
      
      public var StorageLoaded:String = "storageLoaded";
      
      public var Initialize:String = "initialized";
      
      public var PreloaderStarted:String = "preloaderStarted";
      
      public var Authenticated:String = "authenticated";
      
      public function FogDevEvents(param1:FogDevAPI)
      {
         super();
         this.Core = param1;
      }
   }
}

