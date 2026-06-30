running
setUp

	self broadcastConnectionmanager: TTBroadcastMockConnector new.
	self networkFacade: (TTNetworkFacade new
		networkmanager: self broadcastConnectionmanager;
		yourself).
	
	self
		setUpServer;
		setUpClients.
	
	self useMockActionLogsOnAll