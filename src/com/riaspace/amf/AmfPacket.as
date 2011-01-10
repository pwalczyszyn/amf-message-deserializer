package com.riaspace.amf
{
	public class AmfPacket
	{
		private var _version:uint;
		
		private var _headers:Vector.<AmfHeader>;
		
		private var _messages:Vector.<AmfMessage>;
		
		public function AmfPacket(version:uint, headers:Vector.<AmfHeader>, messages:Vector.<AmfMessage>)
		{
			_version = version;
			_headers = headers;
			_messages = messages;
		}
		
		public function get headers():Vector.<AmfHeader>
		{
			return _headers;
		}

		public function get messages():Vector.<AmfMessage>
		{
			return _messages;
		}

		public function get version():uint
		{
			return _version;
		}
	}
}