package cmodule.Box2D
{
   public class MemUser
   {
      
      public function MemUser()
      {
         super();
      }
      
      final public function _mrd(param1:int) : Number
      {
         cmodule.Box2D.gstate.ds.position = param1;
         return cmodule.Box2D.gstate.ds.readDouble();
      }
      
      final public function _mrf(param1:int) : Number
      {
         cmodule.Box2D.gstate.ds.position = param1;
         return cmodule.Box2D.gstate.ds.readFloat();
      }
      
      final public function _mr32(param1:int) : int
      {
         cmodule.Box2D.gstate.ds.position = param1;
         return cmodule.Box2D.gstate.ds.readInt();
      }
      
      final public function _mru8(param1:int) : int
      {
         cmodule.Box2D.gstate.ds.position = param1;
         return cmodule.Box2D.gstate.ds.readUnsignedByte();
      }
      
      final public function _mw32(param1:int, param2:int) : void
      {
         cmodule.Box2D.gstate.ds.position = param1;
         cmodule.Box2D.gstate.ds.writeInt(param2);
      }
      
      final public function _mrs8(param1:int) : int
      {
         cmodule.Box2D.gstate.ds.position = param1;
         return cmodule.Box2D.gstate.ds.readByte();
      }
      
      final public function _mw16(param1:int, param2:int) : void
      {
         cmodule.Box2D.gstate.ds.position = param1;
         cmodule.Box2D.gstate.ds.writeShort(param2);
      }
      
      final public function _mw8(param1:int, param2:int) : void
      {
         cmodule.Box2D.gstate.ds.position = param1;
         cmodule.Box2D.gstate.ds.writeByte(param2);
      }
      
      final public function _mrs16(param1:int) : int
      {
         cmodule.Box2D.gstate.ds.position = param1;
         return cmodule.Box2D.gstate.ds.readShort();
      }
      
      final public function _mru16(param1:int) : int
      {
         cmodule.Box2D.gstate.ds.position = param1;
         return cmodule.Box2D.gstate.ds.readUnsignedShort();
      }
      
      final public function _mwd(param1:int, param2:Number) : void
      {
         cmodule.Box2D.gstate.ds.position = param1;
         cmodule.Box2D.gstate.ds.writeDouble(param2);
      }
      
      final public function _mwf(param1:int, param2:Number) : void
      {
         cmodule.Box2D.gstate.ds.position = param1;
         cmodule.Box2D.gstate.ds.writeFloat(param2);
      }
   }
}

