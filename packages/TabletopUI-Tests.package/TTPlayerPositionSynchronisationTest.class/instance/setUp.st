running
setUp

    | upstreamConnectionManager |
	
    self
        setUpServer;
        setUpClients.

	    self clients do: [ :client |
	        upstreamConnectionManager := (TTUpstreamMockConnector new)
	            server: self server;
	            yourself.
		client networkmanager: upstreamConnectionManager.
	    ].
	self broadcastConnectionmanager: TTBroadcastMockConnector new.
	self broadcastConnectionmanager subscribers add: self server.
	self clients do: [:client | self broadcastConnectionmanager subscribers add: client].
	
	self server networkmanager: self broadcastConnectionmanager.
	self server 
		handlePlayerRegistration: self dummyRegistrationJSONPlayer1;
		handlePlayerRegistration: self dummyRegistrationJSONPlayer2.
		
	self clients do: [:client | client networkmanager: self broadcastConnectionmanager].