setup
setUpServer

	| networkFacade broadcastConnectionmanager |
	broadcastConnectionmanager := TTMockBroadcastConnector new.
	networkFacade := TTNetworkFacade new networkManager: broadcastConnectionmanager.
	self broadcastConnectionmanagers add: broadcastConnectionmanager.
	self server: (TTMap newWithNetworkFacade: networkFacade).
	self server initializePlayerTokens: self players.
	broadcastConnectionmanager server: self server