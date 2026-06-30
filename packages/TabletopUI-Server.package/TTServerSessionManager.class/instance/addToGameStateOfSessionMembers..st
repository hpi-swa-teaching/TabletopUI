updating
addToGameStateOfSessionMembers: params

	self networkFacade send: 'addToGameState:' to: 'sessionmanager' with: params.