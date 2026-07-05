running
setUp

	self relay: TTRelayServer new.
	self serverNWM: TTServerNetworkManager new.
	self serverRef: TTReferenceManager new.
	self serverNWM referenceManager: self serverRef.
	self serverNWM connectTo: 'localhost' tcpPort: self relay getServerPort.
	self setupClient1.
	self setupClient2