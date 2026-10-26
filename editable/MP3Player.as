package
{
   import flash.events.Event;
   import flash.events.SampleDataEvent;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.net.URLRequest;
   import flash.utils.ByteArray;
   
   public class MP3Player
   {
      
      private var _playbackSpeed:Number = 1;
      
      private var _mp3:Sound;
      
      private var _loadedMP3Samples:ByteArray;
      
      private var _dynamicSound:Sound;
      
      private var _phase:Number;
      
      private var _numSamples:int;
      
      private var bytes:ByteArray;
      
      private var nVolume:Number;
      
      private var nPan:Number;
      
      private var sChannel:SoundChannel;
      
      private var sTransform:SoundTransform;
      
      private var simple:Boolean;
      
      public function MP3Player(param1:Sound, param2:Boolean)
      {
         super();
         this.sTransform = new SoundTransform();
         this.simple = param2;
         if(param2)
         {
            this._mp3 = param1;
            this.sChannel = null;
            this.nVolume = 0.5;
            this.sTransform.volume = this.nVolume;
         }
         else
         {
            this.bytes = new ByteArray();
            param1.extract(this.bytes,int(param1.length * 44.1));
            this.nVolume = 0.3;
            this.nPan = 0;
            this.sChannel = new SoundChannel();
            this.sTransform = new SoundTransform();
         }
      }
      
      public function set playbackSpeed(param1:Number) : void
      {
         this._playbackSpeed = param1;
      }
      
      public function get playbackSpeed() : Number
      {
         return this._playbackSpeed;
      }
      
      public function isPlaying() : Boolean
      {
         if(this.simple)
         {
            return this.sChannel != null;
         }
         return this._dynamicSound != null;
      }
      
      public function setVolumeAndPan(param1:Number, param2:Number = 0) : void
      {
         this.nVolume = param1;
         this.nPan = param2;
         if(this.isPlaying())
         {
            this.sTransform.volume = this.nVolume;
            this.sTransform.pan = this.nPan;
            this.sChannel.soundTransform = this.sTransform;
         }
      }
      
      public function getVolume() : Number
      {
         return this.nVolume;
      }
      
      public function loadAndPlay(param1:URLRequest) : void
      {
         this._mp3 = new Sound();
         this._mp3.addEventListener(Event.COMPLETE,this.mp3Complete);
         this._mp3.load(param1);
      }
      
      public function playLoadedSound() : void
      {
         if(this.simple)
         {
            this.sChannel = this._mp3.play(0,int.MAX_VALUE,this.sTransform);
         }
         else
         {
            this.play(this.bytes);
         }
      }
      
      public function stop() : void
      {
         if(this.simple)
         {
            if(this.sChannel != null)
            {
               this.sChannel.stop();
               this.sChannel = null;
            }
         }
         else if(this._dynamicSound != null)
         {
            this._dynamicSound.removeEventListener(SampleDataEvent.SAMPLE_DATA,this.onSampleData);
            this._dynamicSound = null;
         }
      }
      
      private function mp3Complete(param1:Event) : void
      {
         this.playLoadedSound();
      }
      
      private function play(param1:ByteArray) : void
      {
         this.stop();
         this._dynamicSound = new Sound();
         this._dynamicSound.addEventListener(SampleDataEvent.SAMPLE_DATA,this.onSampleData);
         this._loadedMP3Samples = param1;
         this._numSamples = param1.length / 8;
         this._phase = 0;
         this.sChannel = this._dynamicSound.play();
         this.sTransform.volume = this.nVolume;
         this.sTransform.pan = this.nPan;
         this.sChannel.soundTransform = this.sTransform;
      }
      
      private function onSampleData(param1:SampleDataEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         while(_loc4_ < 2048)
         {
            this._loadedMP3Samples.position = int(this._phase) * 8;
            _loc2_ = this._loadedMP3Samples.readFloat();
            _loc3_ = this._loadedMP3Samples.readFloat();
            param1.data.writeFloat(_loc2_);
            param1.data.writeFloat(_loc3_);
            _loc4_++;
            this._phase += this._playbackSpeed;
            if(this._phase < 0)
            {
               this._phase += this._numSamples;
            }
            else if(this._phase >= this._numSamples)
            {
               this._phase -= this._numSamples;
            }
         }
      }
   }
}

