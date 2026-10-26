package misc
{
   public class ConnectorLine extends Connector
   {
      
      public var thickness:Number = 2;
      
      public var color:Number = 8947848;
      
      public function ConnectorLine()
      {
         super();
      }
      
      override public function render() : void
      {
         graphics.clear();
         graphics.lineStyle(this.thickness,this.color);
         graphics.moveTo(0,0);
         graphics.lineTo(length,0);
      }
   }
}

