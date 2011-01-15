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
	public final class Amf0Types 
	{
		public static const kNumberType:uint = 0;
		
		public static const kBooleanType:uint = 1;
		
		public static const kStringType:uint = 2;
		
		public static const kObjectType:uint = 3;
		
		public static const kMovieClipType:uint = 4;
		
		public static const kNullType:uint = 5;
		
		public static const kUndefinedType:uint = 6;
		
		public static const kReferenceType:uint = 7;
		
		public static const kECMAArrayType:uint = 8;
		
		public static const kObjectEndType:uint = 9;
		
		public static const kStrictArrayType:uint = 10;
		
		public static const kDateType:uint = 11;
		
		public static const kLongStringType:uint = 12;
		
		public static const kUnsupportedType:uint = 13;
		
		public static const kRecordsetType:uint = 14;
		
		public static const kXMLObjectType:uint = 15;
		
		public static const kTypedObjectType:uint = 16;
		
		public static const kAvmPlusObjectType:uint = 17;
		
		public function Amf0Types()
		{
			throw new Error("Static Class");
		}
	}
}