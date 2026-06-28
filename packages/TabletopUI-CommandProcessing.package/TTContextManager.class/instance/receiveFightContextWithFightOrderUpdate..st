network
receiveFightContextWithFightOrderUpdate: params

	self changeToFightContextWithFightOrder: (params at: #order).
	self conditionalBroadcastOf: 'receiveFightContextWithFightOrderUpdate:' to: 'contextManager' with: params