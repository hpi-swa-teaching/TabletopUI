sending
tcpSend: aBytes

	| lengthBytes class |
	(self isKindOf: TTClientNetworkManager) ifTrue: [class := 'Client'].
	(self isKindOf: TTClientNetworkManager) ifFalse: [class := 'Server'].
	lengthBytes := TTPrimitiveSerializer serializeInt: aBytes size.
	Transcript
		show: class, 'NWM sending: ', aBytes size asString, '   ', aBytes asByteArray;
		cr.
	self tcpSocketStream nextPutAll: lengthBytes, aBytes asByteArray.
	self tcpSocketStream flush.
	Transcript
		show: class, 'NWM still alive';
		cr