running
setUpServer


	| networkFacade broadcastConnectionmanager |
	broadcastConnectionmanager := TTMockBroadcastConnector new.
	networkFacade := TTNetworkFacade new networkManager: broadcastConnectionmanager.
	self broadcastConnectionmanagers add: broadcastConnectionmanager.
	self server: (TTInputField newWithNetworkFacade: networkFacade).
	self server loadState: self startState.
	self server playerSelection: (TTGMSelectionMenu newWith: {TTCharacter new role: #gamemaster; name: 'gm';yourself. TTCharacter new role: #player; name: 'Alice';yourself.TTCharacter new role: #player; name: 'Bob';yourself}asOrderedCollection).
	broadcastConnectionmanager server: self server