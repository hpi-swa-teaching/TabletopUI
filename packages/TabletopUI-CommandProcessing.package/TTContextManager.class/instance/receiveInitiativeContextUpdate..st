network
receiveInitiativeContextUpdate: params

	self changeToInitiativeContext.
	self conditionalBroadcastOf: 'receiveInitiativeContextUpdate:' to: 'contextManager' with: params