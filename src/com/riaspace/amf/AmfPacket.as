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