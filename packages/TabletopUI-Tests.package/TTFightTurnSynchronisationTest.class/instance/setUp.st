setup
setUp

	self
		setUpServer;
		setUpClients.
	
	self broadcastConnectionmanager: TTBroadcastMockConnector new.
	self broadcastConnectionmanager subscribers add: self server.
	self clients do: [:client | self broadcastConnectionmanager subscribers add: client].
	self server networkmanager: self broadcastConnectionmanager.
	self server
		handlePlayerRegistration: self dummyRegistrationJSONPlayer1;
		handlePlayerRegistration: self dummyRegistrationJSONPlayer2.
	self clients do: [:client | client networkmanager: self broadcastConnectionmanager].
	self useMockActionLogsOnAll