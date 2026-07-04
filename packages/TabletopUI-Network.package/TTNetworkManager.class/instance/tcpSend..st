sending
tcpSend: aBytes

	| lengthBytes class |
	(self isKindOf: TTClientNetworkManager) ifTrue: [class := 'Client'].
	(self isKindOf: TTClientNetworkManager) ifFalse: [class := 'Server'].
	lengthBytes := TTSerializer serializeInt: aBytes size.
	self tcpSocketStream nextPutAll: lengthBytes, aBytes asByteArray.
	self tcpSocketStream flush