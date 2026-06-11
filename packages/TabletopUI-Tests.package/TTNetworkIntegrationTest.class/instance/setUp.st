as yet unclassified
setUp

	| deadline |
	self relay: TTRelayServer new.
	self serverNWM: TTServerNetworkManager new.
	self serverRef: TTReferenceManager new.
	self serverNWM referenceManager: self serverRef.
	self serverNWM connectTo: 'localhost' tcpPort: self relay getServerPort.
	
	Processor yield.
	self clientNWM1: TTClientNetworkManager new.
	self clientNWM1Ref: TTReferenceManager new.
	self clientNWM1 referenceManager: self clientNWM1Ref.
	self clientNWM1 connectTo: 'localhost' tcpPort: self relay getClientPort.
	
	deadline := DateAndTime now + (Duration milliSeconds: 2000).
	[self relay getConnectedClientCount = 1 or: [DateAndTime now > deadline]] whileFalse: [
		self relay checkClientConnect.
		Processor yield].
	self assert: self relay getConnectedClientCount = 1.
	
	self clientNWM2: TTClientNetworkManager new.
	self clientNWM2Ref: TTReferenceManager new.
	self clientNWM2 referenceManager: self clientNWM2Ref.
	self clientNWM2 connectTo: 'localhost' tcpPort: self relay getClientPort.
	
	deadline := DateAndTime now + (Duration milliSeconds: 2000).
	[self relay getConnectedClientCount = 2 or: [DateAndTime now > deadline]] whileFalse: [
		self relay checkClientConnect.
		Processor yield].
	self assert: self relay getConnectedClientCount = 2