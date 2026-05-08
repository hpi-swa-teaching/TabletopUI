initialization
initializeServer: tcpSocket

	self server: ViBServerConnection new.
	self server relayServer: self.
	self server tcpSocket: tcpSocket.
	[
		tcpSocket waitForConnectionFor: self serverConnectWaitDuration.
		self server startListening] fork