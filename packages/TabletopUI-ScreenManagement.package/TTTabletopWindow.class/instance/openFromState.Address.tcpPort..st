server session management
openFromState: aDictionary Address: anAddress tcpPort: tcpPort
	

	self setupNetworkAddress: anAddress tcpPort: tcpPort.
	self
		loadState: aDictionary; 
		yourself.