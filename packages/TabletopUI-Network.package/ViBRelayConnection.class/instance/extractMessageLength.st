receiving
extractMessageLength
	"The protocol used is: 4-long ByteArray little endian integer which gives the length of the following message"

	| messageLengthBuffer |
	messageLengthBuffer := (self tcpSocketStream next: 4) asByteArray.
	^ ViBPrimitiveSerializer deSerializeInt: messageLengthBuffer