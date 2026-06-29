setup
setUpServer

	self server: (TTInputField newWithNetworkFacade: self networkFacade).
	self server loadState: self startState.
	self broadcastConnectionmanager server: self server.
	self server playerSelection: (TTPlayerSelectionMenu newWith: {TTCharacter new role: #gamemaster; name: 'gm';yourself. TTCharacter new role: #player; name: 'Alice';yourself.TTCharacter new role: #player; name: 'Bob';yourself}asOrderedCollection) 