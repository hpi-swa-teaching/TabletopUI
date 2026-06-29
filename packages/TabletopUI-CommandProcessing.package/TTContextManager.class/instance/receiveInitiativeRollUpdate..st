network
receiveInitiativeRollUpdate: params

	self context rolls add: (params at: #player) -> (params at: #value).
	self conditionalBroadcastOf: 'receiveInitiativeRollUpdate:' to: 'contextManager' with: params