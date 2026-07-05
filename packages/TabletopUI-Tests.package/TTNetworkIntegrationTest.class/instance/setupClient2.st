running
setupClient2

	| numConnected |
	numConnected := self relay getConnectedClientCount.
	self clientNWM2: TTClientNetworkManager new.
	self clientNWM2Ref: TTReferenceManager new.
	self clientNWM2 referenceManager: self clientNWM2Ref.
	self clientNWM2 connectTo: 'localhost' tcpPort: self relay getClientPort.
	self
		waitFor: [self relay getConnectedClientCount = (numConnected + 1)]
		retry: [self relay checkClientConnect]