session management
handleClientUpdate: aDict

	self loadState: aDict.
	self sendFullGameStateToRegisteredPlayer