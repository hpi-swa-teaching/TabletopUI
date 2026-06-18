sending
sendMessage: message

	Transcript
		show: 'Relay sending h: ', message size asString, message printString;
		cr.
	self tcpSocketStream nextPutAll: (TTSerializer serializeInt: message size), message.
	self tcpSocketStream flush