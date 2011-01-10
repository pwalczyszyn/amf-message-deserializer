package com.riaspace.amf
{
	import flash.net.ObjectEncoding;
	import flash.utils.ByteArray;

	public class AmfMessageDeserializer
	{
		public function deserilize(amfData:ByteArray):AmfPacket
		{
			var version:uint;
			var headers:Vector.<AmfHeader> = new Vector.<AmfHeader>;
			var messages:Vector.<AmfMessage> = new Vector.<AmfMessage>;
			
			var typeMarker:int;
			
			amfData.position = 0;
			amfData.objectEncoding = ObjectEncoding.AMF0;
			
			version = amfData.readUnsignedShort();
			
			var headerCount:uint = amfData.readUnsignedShort();
			for (var h:int = 0; h < headerCount; h++)
			{
				var headerName:String = amfData.readUTF();
				var mustUnderstand:Boolean = amfData.readBoolean();
				amfData.readInt(); // Consume header length...
				
				// Handle AVM+ type marker
				if (version == ObjectEncoding.AMF3)
				{
					typeMarker = amfData.readByte();
					if (typeMarker == Amf0Types.kAvmPlusObjectType)
						amfData.objectEncoding = ObjectEncoding.AMF3;
					else
						amfData.position = amfData.position - 1;
				}
				
				var headerValue:Object = amfData.readObject();
				headers.push(new AmfHeader(headerName, mustUnderstand, headerValue));
				
				// Reset to AMF0 for next header
				amfData.objectEncoding = ObjectEncoding.AMF0;
			}
			
			var messageCount:uint = amfData.readUnsignedShort();
			for (var m:uint = 0; m < messageCount; m++)
			{
				var targetURI:String = amfData.readUTF();
				var responseURI:String = amfData.readUTF();
				
				amfData.readInt(); // Consume message body length...
				
				// Handle AVM+ type marker
				if (version == ObjectEncoding.AMF3)
				{
					typeMarker = amfData.readByte();
					if (typeMarker == Amf0Types.kAvmPlusObjectType)
						amfData.objectEncoding = ObjectEncoding.AMF3;
					else
						amfData.position = amfData.position - 1;
				}
				
				var valueObjects:Vector.<Object> = new Vector.<Object>;
				
				valueObjects.push(amfData.readObject());
				if (amfData.bytesAvailable > 0)
				{
					amfData.objectEncoding = ObjectEncoding.AMF3;
					valueObjects.push(amfData.readObject());
				}
				
				messages.push(new AmfMessage(targetURI, responseURI, valueObjects));
				
				amfData.objectEncoding = ObjectEncoding.AMF0;
			}
			
			return new AmfPacket(version, headers, messages);
		}
	}
}