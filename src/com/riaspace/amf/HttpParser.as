package com.riaspace.amf
{
	import flash.utils.ByteArray;
	
	public class HttpParser
	{
		private var _initialLine:String;
		
		private var _headers:Object;
		
		private var _data:ByteArray;
		
		public function parse(bytes:ByteArray):void
		{
			var byte:int;
			var header:ByteArray = new ByteArray;
			
			_initialLine = undefined;
			_data = undefined;
			_headers = new Object;

			bytes.position = 0;
			while(bytes.position < bytes.length)
			{
				byte = bytes.readByte();
				if (byte == 10)
				{
					if (header.length == 0)
					{
						// This is an empty line, after this line HTTP data starts
						_data = new ByteArray;
						_data.writeBytes(bytes, bytes.position);
						break;
					}
					else
					{
						if (!_initialLine)
							_initialLine = header.toString();
						else
						{
							var headerStr:String = header.toString();
							var i:int = headerStr.indexOf(":");
							if (i > 0)
								_headers[headerStr.substring(0, i)] = headerStr.substr(i + 1);
						}
						
						header = new ByteArray;
					}
				}
				else if (byte != 13)
				{
					header.writeByte(byte);
				}
			}	
		}

		public function get headers():Object
		{
			return _headers;
		}

		public function get data():ByteArray
		{
			return _data;
		}

		public function get initialLine():String
		{
			return _initialLine;
		}
	}
}