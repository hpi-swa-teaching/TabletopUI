running
setupClient1

	| numConnected |
	numConnected := self relay getConnectedClientCount.
	self clientNWM1: TTClientNetworkManager new.
	self clientNWM1Ref: TTReferenceManager new.
	self clientNWM1 referenceManager: self clientNWM1Ref.
	self clientNWM1 connectTo: 'localhost' tcpPort: self relay getClientPort.
	self
		waitFor: [self relay getConnectedClientCount = (numConnected + 1)]
		retry: [self relay checkClientConnect]