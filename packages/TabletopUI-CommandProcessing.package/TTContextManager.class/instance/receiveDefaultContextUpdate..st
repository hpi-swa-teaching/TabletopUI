network
receiveDefaultContextUpdate: params

	self changeToDefaultContext.
	self conditionalBroadcastOf: 'receiveDefaultContextUpdate:' to: 'contextManager' with: params