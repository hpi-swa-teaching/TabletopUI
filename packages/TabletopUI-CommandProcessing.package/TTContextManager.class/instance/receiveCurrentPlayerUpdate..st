network
receiveCurrentPlayerUpdate: params
	
	self context currentPlayer: (params at: #player).
	self conditionalBroadcastOf: 'receiveCurrentPlayerUpdate:' to: 'contextManager' with: params