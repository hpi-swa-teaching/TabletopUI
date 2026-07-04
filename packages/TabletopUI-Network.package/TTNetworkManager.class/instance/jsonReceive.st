receiving
jsonReceive
	"the protocol used is: 4 bytes in little endian followed by a serialized json object. The 4 bytes give the length of said json object"

	| lengthBuffer messageLength messageBuffer |
	[lengthBuffer := (self tcpSocketStream next: 4) asByteArray] on: ConnectionClosed do: [:e |
		self end.
		^ nil].
	
	messageLength := TTSerializer deSerializeInt: lengthBuffer.
	messageBuffer := (self tcpSocketStream next: messageLength) asString.
	^ messageBuffer asString