running
setupGamemasterOnPort: aPort

	| numConnected |
	numConnected := self relay getConnectedClientCount.
	self gamemaster: TTTabletopWindow openSessionless.
	self gamemaster model dependents first
		playerName: 'g1';
		role: 'gamemaster';
		address: 'localhost';
		tcpPort: aPort;
		continue.
	self
		waitFor: [self relay getConnectedClientCount = (numConnected + 1)]
		retry: [self relay checkClientConnect].
	self deny: self gamemasterModel isNil