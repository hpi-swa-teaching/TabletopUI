network
receivePlayerRemovalUpdate: params

	self context fightingPlayers remove: (params at: #player).
	self conditionalBroadcastOf: 'receivePlayerRemovalUpdate:' to: 'contextManager' with: params