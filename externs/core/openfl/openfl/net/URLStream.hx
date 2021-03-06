package openfl.net; #if (display || !flash)


import openfl.events.EventDispatcher;
import openfl.utils.ByteArray;
import openfl.utils.Endian;
import openfl.utils.IDataInput;


extern class URLStream extends EventDispatcher implements IDataInput {
	
	
	public var bytesAvailable (get, never):UInt;
	public var connected (default, null):Bool;
	//@:require(flash11_4) public var diskCacheEnabled (default, null):Bool;
	public var endian (get, set):Endian;
	//@:require(flash11_4) public var length (default, null):Float;
	public var objectEncoding:UInt;
	//@:require(flash11_4) public var position:Float;
	
	public function new ():Void;
	public function close ():Void;
	public function load (request:URLRequest):Void;
	public function readBoolean ():Bool;
	public function readByte ():Int;
	public function readBytes (bytes:ByteArray, offset:UInt = 0, length:UInt = 0):Void;
	public function readDouble ():Float;
	public function readFloat ():Float;
	public function readInt ():Int;
	public function readMultiByte (length:UInt, charSet:String):String;
	public function readObject ():Dynamic;
	public function readShort ():Int;
	public function readUTF ():String;
	public function readUTFBytes (length:UInt):String;
	public function readUnsignedByte ():UInt;
	public function readUnsignedInt ():UInt;
	public function readUnsignedShort ():UInt;
	//@:require(flash11_4) public function stop ():Void;
	
	@:noCompletion @:dox(hide) private function get_bytesAvailable ():UInt;
	@:noCompletion @:dox(hide) private function get_endian ():Endian;
	@:noCompletion @:dox(hide) private function set_endian (value:Endian):Endian;
	
}


#else
typedef URLStream = flash.net.URLStream;
#end