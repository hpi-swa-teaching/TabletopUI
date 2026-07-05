setup
setUpServer

	| networkFacade broadcastConnectionmanager |
	broadcastConnectionmanager := TTBroadcastMockConnector new.
	networkFacade := TTNetworkFacade new networkManager: broadcastConnectionmanager.
	self broadcastConnectionmanagers add: broadcastConnectionmanager.
	self server: (TTMap newWithNetworkFacade: networkFacade).
	self server initializePlayerTokens: self players.
	broadcastConnectionmanager server: self server