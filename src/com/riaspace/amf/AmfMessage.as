package com.riaspace.amf
{
	public class AmfMessage
	{
		private var _targetURI:String;
		
		private var _responseURI:String;
		
		private var _valueObjects:Vector.<Object>
		
		public function AmfMessage(targetURI:String, responseURI:String, valueObjects:Vector.<Object>)
		{
			_targetURI = targetURI;
			_responseURI = responseURI;
			_valueObjects = valueObjects;
		}
		
		public function get targetURI():String
		{
			return _targetURI;
		}

		public function get responseURI():String
		{
			return _responseURI;
		}

		public function get valueObjects():Vector.<Object>
		{
			return _valueObjects;
		}
	}
}