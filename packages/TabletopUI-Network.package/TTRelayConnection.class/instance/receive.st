receiving
receive

	[ | message |
		message := self receiveMessage.
		self sendToRelay: message]
		on: Error
		do: [:ex |
			self handleReceivingError.
			ex pass]