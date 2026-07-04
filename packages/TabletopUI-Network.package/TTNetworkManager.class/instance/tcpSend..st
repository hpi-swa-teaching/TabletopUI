sending
tcpSend: aBytes

	| lengthBytes |
	lengthBytes := TTSerializer serializeInt: aBytes size.
	self tcpSocketStream nextPutAll: lengthBytes, aBytes asByteArray.
	self tcpSocketStream flush