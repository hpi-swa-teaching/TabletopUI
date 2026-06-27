initialize-release
setUp

	| t1 |
	self
		broadcastConnectionmanager: TTBroadcastMockConnector new;
		setUpServer;
		setUpClients.
	self clients do: [:t3 |
		t1 := TTUpstreamMockConnector new
			server: self server;
			yourself.
		t3 networkmanager: t1].
	self broadcastConnectionmanager subscribers add: self server.
	self clients do: [:t3 | self broadcastConnectionmanager subscribers add: t3].
	self server networkmanager: self broadcastConnectionmanager.
	self server
		handlePlayerRegistration: self dummyRegistrationJSONPlayer1;
		handlePlayerRegistration: self dummyRegistrationJSONPlayer2.
	self clients do: [:t3 | t3 networkmanager: self broadcastConnectionmanager]