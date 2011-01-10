package com.riaspace.amf
{
	public class AmfHeader
	{
		private var _headerName:String;
		
		private var _mustUnderstand:Boolean;
		
		private var _headerValue:Object;
		
		public function AmfHeader(headerName:String, mustUnderstand:Boolean, headerValue:Object)
		{
			_headerName = headerName;
			_mustUnderstand = mustUnderstand;
			_headerValue = headerValue;
		}

		public function get headerName():String
		{
			return _headerName;
		}

		public function get mustUnderstand():Boolean
		{
			return _mustUnderstand;
		}

		public function get headerValue():Object
		{
			return _headerValue;
		}
	}
}