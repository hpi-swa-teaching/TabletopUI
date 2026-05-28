as yet unclassified
broadcastUpdatedState

	self networkManager send: 'loadState:' to: 'sessionmanager' with: self window getState.