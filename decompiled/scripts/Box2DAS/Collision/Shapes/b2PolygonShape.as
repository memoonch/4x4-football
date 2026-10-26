package Box2DAS.Collision.Shapes
{
   import Box2DAS.*;
   import Box2DAS.Collision.*;
   import Box2DAS.Common.*;
   import Box2DAS.Dynamics.*;
   import Box2DAS.Dynamics.Contacts.*;
   import Box2DAS.Dynamics.Joints.*;
   import cmodule.Box2D.*;
   import flash.display.*;
   import flash.utils.getDefinitionByName;
   
   public class b2PolygonShape extends b2Shape
   {
      
      public var m_centroid:b2Vec2;
      
      public function b2PolygonShape(param1:int = 0)
      {
         super();
         _ptr = param1 == 0 ? Number(lib.b2PolygonShape_new()) : param1;
         this.m_centroid = new b2Vec2(_ptr + 16);
      }
      
      public static function Decompose(param1:Vector.<Number>) : Vector.<b2PolygonShape>
      {
         var _loc2_:Vector.<b2PolygonShape> = new Vector.<b2PolygonShape>();
         if(param1.length <= 2)
         {
            return _loc2_;
         }
         lib.b2PolygonShape_Decompose(param1);
         var _loc3_:Array = b2Base.getArr();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_.length)
         {
            _loc2_[_loc4_] = new b2PolygonShape(_loc3_[_loc4_]);
            _loc4_++;
         }
         return _loc2_;
      }
      
      public static function CheckVertexDirection(param1:Vector.<V2>) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         if(param1.length > 2)
         {
            _loc2_ = 0;
            _loc3_ = 0;
            while(_loc2_ == 0 && _loc3_ < param1.length - 2)
            {
               _loc2_ = param1[_loc3_].winding(param1[_loc3_ + 1],param1[_loc3_ + 2]);
               _loc3_++;
            }
            if(_loc2_ < 0)
            {
               return false;
            }
         }
         return true;
      }
      
      public static function EnsureCorrectVertexDirection(param1:Vector.<V2>) : Boolean
      {
         if(!CheckVertexDirection(param1))
         {
            ReverseVertices(param1);
            return false;
         }
         return true;
      }
      
      public static function ReverseVertices(param1:Vector.<V2>) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:Number = NaN;
         var _loc2_:uint = 0;
         _loc3_ = param1.length - 1;
         while(_loc3_ > _loc2_)
         {
            _loc4_ = param1[_loc2_].x;
            param1[_loc2_].x = param1[_loc3_].x;
            param1[_loc3_].x = _loc4_;
            _loc4_ = param1[_loc2_].y;
            param1[_loc2_].y = param1[_loc3_].y;
            param1[_loc3_].y = _loc4_;
            _loc2_++;
            _loc3_--;
         }
      }
      
      public static function ComputeCentroid(param1:Vector.<V2>) : V2
      {
         var _loc8_:V2 = null;
         var _loc9_:V2 = null;
         var _loc10_:V2 = null;
         var _loc11_:V2 = null;
         var _loc12_:V2 = null;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc2_:Number = param1.length;
         if(_loc2_ == 2)
         {
            return V2.subtract(param1[1],param1[0]);
         }
         var _loc3_:Number = 1 / 3;
         var _loc4_:V2 = new V2();
         var _loc5_:Number = 0;
         var _loc6_:V2 = new V2();
         var _loc7_:uint = 0;
         while(_loc7_ < _loc2_)
         {
            _loc8_ = _loc4_;
            _loc9_ = param1[_loc7_];
            _loc10_ = _loc7_ + 1 < _loc2_ ? param1[_loc7_ + 1] : param1[0];
            _loc11_ = V2.subtract(_loc9_,_loc8_);
            _loc12_ = V2.subtract(_loc10_,_loc8_);
            _loc13_ = _loc11_.cross(_loc12_);
            _loc14_ = _loc13_ / 2;
            _loc5_ += _loc14_;
            _loc6_.add(V2.add(_loc8_,_loc9_).add(_loc10_).multiplyN(_loc14_ * _loc3_));
            _loc7_++;
         }
         _loc6_.multiplyN(1 / _loc5_);
         return _loc6_;
      }
      
      override public function destroy() : void
      {
         lib.b2PolygonShape_delete(_ptr);
         super.destroy();
      }
      
      override public function Draw(param1:Graphics, param2:XF, param3:Number = 1, param4:Object = null) : void
      {
         var _loc5_:Vector.<V2> = this.m_vertices;
         var _loc6_:Number = this.m_vertexCount;
         var _loc7_:V2 = param2.multiply(_loc5_[0]);
         param1.moveTo(_loc7_.x * param3,_loc7_.y * param3);
         if(Boolean(param4) && Boolean(param4.startPoint))
         {
            param1.drawCircle(_loc7_.x * param3,_loc7_.y * param3,3);
         }
         var _loc8_:int = 1;
         while(_loc8_ < _loc6_)
         {
            _loc7_ = param2.multiply(_loc5_[_loc8_]);
            param1.lineTo(_loc7_.x * param3,_loc7_.y * param3);
            _loc8_++;
         }
         _loc7_ = param2.multiply(_loc5_[0]);
         param1.lineTo(_loc7_.x * param3,_loc7_.y * param3);
      }
      
      public function Set(param1:Vector.<V2>) : void
      {
         var _loc5_:V2 = null;
         this.m_vertices = param1;
         var _loc2_:uint = param1.length;
         var _loc3_:Vector.<V2> = new Vector.<V2>();
         var _loc4_:uint = 0;
         while(_loc4_ < _loc2_)
         {
            _loc5_ = V2.subtract(param1[_loc4_ + 1 < _loc2_ ? _loc4_ + 1 : 0],param1[_loc4_]);
            _loc3_[_loc4_] = V2.crossVN(_loc5_,1).normalize();
            _loc4_++;
         }
         this.m_normals = _loc3_;
         this.m_centroid.v2 = ComputeCentroid(param1);
      }
      
      public function SetAsBox(param1:Number, param2:Number, param3:V2 = null, param4:Number = 0) : void
      {
         var _loc7_:XF = null;
         var _loc8_:int = 0;
         var _loc5_:Vector.<V2> = Vector.<V2>([new V2(-param1,-param2),new V2(param1,-param2),new V2(param1,param2),new V2(-param1,param2)]);
         var _loc6_:Vector.<V2> = Vector.<V2>([new V2(0,-1),new V2(1,0),new V2(0,1),new V2(-1,0)]);
         this.m_centroid.x = 0;
         this.m_centroid.y = 0;
         if(param4 != 0 || param3 != null)
         {
            _loc7_ = new XF();
            if(param3)
            {
               this.m_centroid.v2 = param3;
               _loc7_.p.copy(param3);
            }
            _loc7_.angle = param4;
            _loc8_ = 0;
            while(_loc8_ < 4)
            {
               _loc5_[_loc8_] = _loc7_.multiply(_loc5_[_loc8_]);
               _loc6_[_loc8_] = _loc7_.r.multiplyV(_loc6_[_loc8_]);
               _loc8_++;
            }
         }
         this.m_vertices = _loc5_;
         this.m_normals = _loc6_;
      }
      
      public function SetAsEdge(param1:V2, param2:V2) : void
      {
         this.m_vertices = Vector.<V2>([param1,param2]);
         var _loc3_:V2 = V2.crossVN(V2.subtract(param2,param1),1).normalize();
         this.m_normals = Vector.<V2>([_loc3_,V2.invert(_loc3_)]);
      }
      
      override public function TestPoint(param1:XF, param2:V2) : Boolean
      {
         var _loc7_:Number = NaN;
         var _loc3_:V2 = param1.r.multiplyVT(V2.subtract(param2,param1.p));
         var _loc4_:Vector.<V2> = this.m_vertices;
         var _loc5_:Vector.<V2> = this.m_normals;
         var _loc6_:uint = 0;
         while(_loc6_ < this.m_vertexCount)
         {
            _loc7_ = _loc5_[_loc6_].dot(V2.subtract(_loc3_,_loc4_[_loc6_]));
            if(_loc7_ > 0)
            {
               return false;
            }
            _loc6_++;
         }
         return true;
      }
      
      override public function RayCast(param1:*, param2:*, param3:XF) : Boolean
      {
         return false;
      }
      
      override public function ComputeAABB(param1:AABB, param2:XF) : void
      {
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
      }
      
      public function GetSupport() : int
      {
         return 0;
      }
      
      public function GetSupportVertex() : int
      {
         return 0;
      }
      
      public function GetVertexCount() : uint
      {
         return this.m_vertexCount;
      }
      
      public function GetVertex(param1:uint) : V2
      {
         return this.m_vertices[param1];
      }
      
      override public function ComputeSubmergedArea(param1:V2, param2:Number, param3:XF, param4:V2) : Number
      {
         var _loc14_:int = 0;
         var _loc23_:V2 = null;
         var _loc25_:Boolean = false;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:Number = NaN;
         var _loc29_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc31_:Number = NaN;
         var _loc5_:V2 = param3.r.multiplyVT(param1);
         var _loc6_:Number = param2 - param1.dot(param3.p);
         var _loc7_:Array = [];
         var _loc8_:int = 0;
         var _loc9_:int = -1;
         var _loc10_:int = -1;
         var _loc11_:Vector.<V2> = this.m_vertices;
         var _loc12_:V2 = null;
         var _loc13_:Boolean = false;
         _loc14_ = 0;
         while(_loc14_ < _loc11_.length)
         {
            _loc7_[_loc14_] = _loc5_.dot(_loc11_[_loc14_]) - _loc6_;
            _loc25_ = _loc7_[_loc14_] < 0;
            if(_loc14_ > 0)
            {
               if(_loc25_)
               {
                  if(!_loc13_)
                  {
                     _loc9_ = _loc14_ - 1;
                     _loc8_++;
                  }
               }
               else if(_loc13_)
               {
                  _loc10_ = _loc14_ - 1;
                  _loc8_++;
               }
            }
            _loc13_ = _loc25_;
            _loc14_++;
         }
         switch(_loc8_)
         {
            case 0:
               if(_loc13_)
               {
                  param4.copy(param3.multiply(this.m_centroid.v2));
                  return m_area;
               }
               return 0;
               break;
            case 1:
               if(_loc9_ == -1)
               {
                  _loc9_ = this.m_vertexCount - 1;
               }
               else
               {
                  _loc10_ = this.m_vertexCount - 1;
               }
         }
         var _loc15_:int = (_loc9_ + 1) % this.m_vertexCount;
         var _loc16_:int = (_loc10_ + 1) % this.m_vertexCount;
         var _loc17_:Number = (0 - _loc7_[_loc9_]) / (_loc7_[_loc15_] - _loc7_[_loc9_]);
         var _loc18_:Number = (0 - _loc7_[_loc10_]) / (_loc7_[_loc16_] - _loc7_[_loc10_]);
         var _loc19_:V2 = new V2(_loc11_[_loc9_].x * (1 - _loc17_) + _loc11_[_loc15_].x * _loc17_,_loc11_[_loc9_].y * (1 - _loc17_) + _loc11_[_loc15_].y * _loc17_);
         var _loc20_:V2 = new V2(_loc11_[_loc10_].x * (1 - _loc18_) + _loc11_[_loc16_].x * _loc18_,_loc11_[_loc10_].y * (1 - _loc18_) + _loc11_[_loc16_].y * _loc18_);
         var _loc21_:Number = 0;
         param4.zero();
         var _loc22_:V2 = _loc11_[_loc15_];
         var _loc24_:Number = 1 / 3;
         _loc14_ = _loc15_;
         while(_loc14_ != _loc16_)
         {
            _loc14_ = (_loc14_ + 1) % this.m_vertexCount;
            if(_loc14_ == _loc16_)
            {
               _loc23_ = _loc20_;
            }
            else
            {
               _loc23_ = _loc11_[_loc14_];
            }
            _loc26_ = _loc22_.x - _loc19_.x;
            _loc27_ = _loc22_.y - _loc19_.y;
            _loc28_ = _loc23_.x - _loc19_.x;
            _loc29_ = _loc23_.y - _loc19_.y;
            _loc30_ = _loc26_ * _loc29_ - _loc27_ * _loc28_;
            _loc31_ = 0.5 * _loc30_;
            _loc21_ += _loc31_;
            param4.x += _loc31_ * _loc24_ * (_loc19_.x + _loc22_.x + _loc23_.x);
            param4.y += _loc31_ * _loc24_ * (_loc19_.y + _loc22_.y + _loc23_.y);
            _loc22_ = _loc23_;
         }
         param4.x /= _loc21_;
         param4.y /= _loc21_;
         param4.copy(param3.multiply(param4));
         return _loc21_;
      }
      
      public function get m_vertices() : Vector.<V2>
      {
         return readVertices(_ptr + 24,this.m_vertexCount);
      }
      
      public function set m_vertices(param1:Vector.<V2>) : void
      {
         writeVertices(_ptr + 24,param1);
         this.m_vertexCount = param1.length;
      }
      
      public function get m_normals() : Vector.<V2>
      {
         return readVertices(_ptr + 88,this.m_vertexCount);
      }
      
      public function set m_normals(param1:Vector.<V2>) : void
      {
         writeVertices(_ptr + 88,param1);
         this.m_vertexCount = param1.length;
      }
      
      public function get m_vertexCount() : int
      {
         return mem._mr32(_ptr + 152);
      }
      
      public function set m_vertexCount(param1:int) : void
      {
         mem._mw32(_ptr + 152,param1);
      }
   }
}

