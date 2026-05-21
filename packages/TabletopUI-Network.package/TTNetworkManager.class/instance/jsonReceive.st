receiving
jsonReceive
	"the protocol used is: 4 bytes in little endian followed by a serialized json object. The 4 bytes give the length of said json object"

	| lengthBuffer messageLength messageBuffer class |
	(self isKindOf: TTClientNetworkManager) ifTrue: [class := 'Client'].
	(self isKindOf: TTClientNetworkManager) ifFalse: [class := 'Server'].
	lengthBuffer := (self tcpSocketStream next: 4) asByteArray.
	Transcript
		show: class, 'NWM Length received';
		cr.
	messageLength := TTPrimitiveSerializer deSerializeInt: lengthBuffer.
	messageBuffer := (self tcpSocketStream next: messageLength) asString.
	^ messageBuffer asString