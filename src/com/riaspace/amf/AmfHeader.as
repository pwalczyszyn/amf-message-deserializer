//////////////////////////////////////////////////////////////////////////////////////
//
//	Copyright 2011 Piotr Walczyszyn
//	
//	This file is part of amf-message-deserializer.
//
//	amf-message-deserializer is free software: you can redistribute it and/or modify
//	it under the terms of the GNU General Public License as published by
//	the Free Software Foundation, either version 3 of the License, or
//	(at your option) any later version.
//	
//	amf-message-deserializer is distributed in the hope that it will be useful,
//	but WITHOUT ANY WARRANTY; without even the implied warranty of
//	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//	GNU General Public License for more details.
//	
//	You should have received a copy of the GNU General Public License
//	along with amf-message-deserializer.  If not, see <http://www.gnu.org/licenses/>.
//
//////////////////////////////////////////////////////////////////////////////////////

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