updating
handleClientUpdate: aDict

	self loadState: aDict.
	self sendFullGameStateToRegisteredPlayer.