session management
addToGameState: name role: role

	| stateDict |
	stateDict:= self window getState.
	self addToState: stateDict PlayerWithName: name role: role.
	self window loadState: stateDict.