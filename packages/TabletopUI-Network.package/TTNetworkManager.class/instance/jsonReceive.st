receiving
jsonReceive
	"the protocol used is: 4 bytes in little endian followed by a serialized json object. The 4 bytes give the length of said json object"

	| lengthBuffer messageLength messageBuffer class |
	self shouldClose ifTrue: [
		Transcript
			show: 'Should close true';
			cr].
	self shouldClose ifFalse: [
		Transcript
			show: 'Should close false';
			cr].
	(self isKindOf: TTClientNetworkManager) ifTrue: [class := 'Client'].
	(self isKindOf: TTClientNetworkManager) ifFalse: [class := 'Server'].
	[lengthBuffer := (self tcpSocketStream next: 4) asByteArray] on: ConnectionClosed do: [:e |
		Transcript show: class, 'NWM terminated because the connection was closed when attempting to read the lenth of the next message.'.
		self end.
		^ nil].
	Transcript
		show: class, 'NWM Length received';
		cr.
	messageLength := TTPrimitiveSerializer deSerializeInt: lengthBuffer.
	messageBuffer := (self tcpSocketStream next: messageLength) asString.
	^ messageBuffer asString