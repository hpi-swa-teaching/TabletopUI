initialization
initialize

	super initialize.
	
	self shouldClose: false.
	self udpSocket: Socket newUDP.
	self serverAddress: (NetNameResolver addressForName: '127.0.0.1')