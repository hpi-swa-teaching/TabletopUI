running
setUpClients

	self clients: (Array new: 2).
	
	1 to: 2 do: [:i | | field broadcastConnectionmanager networkFacade |
		broadcastConnectionmanager:= TTMockBroadcastConnector new.
		networkFacade := TTNetworkFacade new networkManager: broadcastConnectionmanager.
		broadcastConnectionmanager server: self server.
		self broadcastConnectionmanagers add: broadcastConnectionmanager.
		field := TTInputField newWithNetworkFacade: networkFacade.
		field loadState: self startState.
		field playerSelection: (TTGMSelectionMenu newWith: {(self character: i)}asOrderedCollection).
		self clients at: i put: field]