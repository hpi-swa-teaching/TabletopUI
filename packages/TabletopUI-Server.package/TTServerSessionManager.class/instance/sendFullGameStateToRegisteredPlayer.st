updating
sendFullGameStateToRegisteredPlayer
	
	self networkFacade send: 'loadState:' to: 'sessionmanagerUninitialized' with: self window getState.
