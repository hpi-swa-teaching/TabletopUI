receiving
receiveMessage

	| messageLength message |
	messageLength := self extractMessageLength.
	message := self tcpSocketStream next: messageLength.
	^ message