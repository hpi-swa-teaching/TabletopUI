sending
sendMessage: message

	self tcpSocketStream nextPutAll: (ViBPrimitiveSerializer serializeInt: message size), message.
	self tcpSocketStream flush