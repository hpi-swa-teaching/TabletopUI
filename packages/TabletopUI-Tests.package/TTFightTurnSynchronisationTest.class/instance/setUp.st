setup
setUp

	self broadcastConnectionmanager: TTBroadcastMockConnector new.
	self networkFacade: (TTNetworkFacade new networkmanager: self broadcastConnectionmanager).

	self
		setUpServer;
		setUpClients.
	
	self useMockActionLogsOnAll