initialization
initialize

	super initialize.
	
	self shouldClose: false.
	self endpoint: TTEndpoint new.
	self udpSocket: Socket newUDP.
	