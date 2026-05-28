logging
registerMessage: message

	self actionLogList addLast: (message at: 'message').
	self changed: #actionLogList