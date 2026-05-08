sending
tcpSend: aBytes

	| lengthBytes |
	lengthBytes := TTPrimitiveSerializer serializeInt: aBytes size.
	self tcpSocketStream nextPutAll: lengthBytes,aBytes asByteArray.
	self tcpSocketStream flush