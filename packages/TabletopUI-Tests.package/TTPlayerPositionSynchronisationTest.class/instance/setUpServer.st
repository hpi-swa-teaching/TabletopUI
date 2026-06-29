setup
setUpServer
	
	self server: (TTMap newWithNetworkFacade: self networkFacade).
	self server initializePlayerTokens: self players.
	self broadcastConnectionmanager server: self server.