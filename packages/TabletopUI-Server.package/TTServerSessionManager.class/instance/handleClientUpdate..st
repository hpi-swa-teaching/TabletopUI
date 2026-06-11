as yet unclassified
handleClientUpdate: aDict

	self loadState: aDict.
	self broadcastUpdatedState.