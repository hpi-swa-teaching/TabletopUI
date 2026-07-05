running
setupPlayerOnPort: aPort

	| numConnected |
	numConnected := self relay getConnectedClientCount.
	self player: TTTabletopWindow openSessionless.
	self player model dependents first
		playerName: 'p1';
		role: 'player';
		address: 'localhost';
		tcpPort: aPort;
		continue.
	self
		waitFor: [self relay getConnectedClientCount = (numConnected + 1)]
		retry: [self relay checkClientConnect].
	self playerModel: self player model.
	self deny: self playerModel isNil