setup
setUp

	self broadcastConnectionmanagers: OrderedCollection new.
	
	self
		setUpServer;
		setUpClients;
		connect