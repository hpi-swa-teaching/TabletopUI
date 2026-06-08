as yet unclassified
broadcastUpdatedState
	
	self networkmanager send: 'loadState:' to: 'sessionmanager' with: self window getState.
