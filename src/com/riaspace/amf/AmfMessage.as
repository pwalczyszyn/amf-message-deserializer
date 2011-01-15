/*
	Copyright 2011 Piotr Walczyszyn
	
	This file is part of amf-message-deserializer.
	
	amf-message-deserializer is free software: you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.
	
	amf-message-deserializer is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.
	
	You should have received a copy of the GNU General Public License
	along with amf-message-deserializer.  If not, see <http://www.gnu.org/licenses/>.
*/
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