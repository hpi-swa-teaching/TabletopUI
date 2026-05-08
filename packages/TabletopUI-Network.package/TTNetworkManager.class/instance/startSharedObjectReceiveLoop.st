initialization
startSharedObjectReceiveLoop

	self tcpSocket: Socket newTCP.
	self tcpSocket connectTo: self serverAddress port: self tcpPort.

	[
		[self shouldClose or: [self tcpSocket isConnected not]] whileFalse: [self trySharedObjectReceive].
		self tcpSocket closeAndDestroy] fork