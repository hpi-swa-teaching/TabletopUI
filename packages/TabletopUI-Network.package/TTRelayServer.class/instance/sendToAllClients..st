sending
sendToAllClients: message

	self clients copy do: [:client |
		client closed ifTrue: [self clients remove: client] ifFalse: [
			client sendMessage: message]]