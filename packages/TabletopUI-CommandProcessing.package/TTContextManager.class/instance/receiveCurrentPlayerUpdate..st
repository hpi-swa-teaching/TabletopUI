network
receiveCurrentPlayerUpdate: params
	
	self context currentPlayer: (params at: #player).
	self changed: #contextChanged.
	self conditionalBroadcastOf: 'receiveCurrentPlayerUpdate:' to: 'contextManager' with: params