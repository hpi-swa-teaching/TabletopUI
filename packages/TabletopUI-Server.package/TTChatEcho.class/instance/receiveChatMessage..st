receiving
receiveChatMessage: params

	| message |
	message := params at: 'message'.
	self broadcast: message.
	^ self