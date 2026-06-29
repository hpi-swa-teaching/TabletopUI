setup
setUpClients

	self clients: (Array new: 2).
	
	1 to: 2 do: [:i | | field |
		field := TTInputField newWithNetworkFacade: self networkFacade.
		field loadState: self startState.
		self broadcastConnectionmanager subscribers add: field.
		field playerSelection: (TTPlayerSelectionMenu newWith: {(self character: i)}asOrderedCollection).
		self clients at: i put: field]