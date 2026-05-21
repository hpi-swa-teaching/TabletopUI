receiving
receive

	| class |
	(self isKindOf: TTClientConnection) ifTrue: [class := 'client'].
	(self isKindOf: TTClientConnection) ifFalse: [class := 'server'].
	[ | message |
		message := self receiveMessage.
		Transcript
			show: class, 'Relay received: ', message;
			cr.
		self sendToRelay: message]
		on: Error
		do: [:ex |
			self handleReceivingError.
			ex pass]