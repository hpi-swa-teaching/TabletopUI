setup
setUpClients

	self clients: (Array new: 2).
	
	1 to: 2 do: [:i | | map |
		map := TTMap newWithNetworkFacade: self networkFacade.
		map initializePlayerTokens: self players.
		self broadcastConnectionmanager subscribers add: map.
		self clients at: i put: map]