setup
setUpClients

	self clients: (Array new: 2).
	
	1 to: 2 do: [:i | | map networkFacade broadcastConnectionmanager |
		broadcastConnectionmanager:= TTBroadcastMockConnector new.
		networkFacade := TTNetworkFacade new networkmanager: broadcastConnectionmanager.
		broadcastConnectionmanager server: self server.
		self broadcastConnectionmanagers add: broadcastConnectionmanager.
		map := TTMap newWithNetworkFacade: networkFacade.
		map initializePlayerTokens: self players.
		self clients at: i put: map]