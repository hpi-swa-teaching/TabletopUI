sending
sendMessage: message

	Transcript
		show: 'Relay sending h: ', message size asString, message printString;
		cr.
	self tcpSocketStream nextPutAll: (TTPrimitiveSerializer serializeInt: message size), message.
	self tcpSocketStream flush