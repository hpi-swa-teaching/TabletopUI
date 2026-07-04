running
setUp

	self relay: TTRelayServer new.
	Processor yield.
	self server: (TTServer newOn: 'localhost' port: self relay getServerPort).
	Processor yield.
	self gamemaster: TTTabletopWindow openSessionless.
	self gamemaster model dependents first
		playerName: 'g1';
		role: 'gamemaster';
		address: 'localhost';
		tcpPort: self relay getClientPort;
		continue.
	
	self waitFor: [self relay getConnectedClientCount = 1] retry: [self relay checkClientConnect].
	
	self player: TTTabletopWindow openSessionless.
	self player model dependents first
		playerName: 'p1';
		role: 'player';
		address: 'localhost';
		tcpPort: self relay getClientPort;
		continue.
	
	self waitFor: [self relay getConnectedClientCount = 2] retry: [self relay checkClientConnect].
	
	self waitFor: [(self gamemaster model dependents at: 2) isKindOf: TTGamemasterGameScreen] retry: [].
	self waitFor: [(self player model dependents at: 2) isKindOf: TTPlayerGameScreen] retry: []