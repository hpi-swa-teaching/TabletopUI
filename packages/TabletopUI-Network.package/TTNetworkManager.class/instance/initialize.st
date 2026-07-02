initialize-release
initialize

	super initialize.
	
	self shouldClose: false.
	self endpoint: TTEndpoint new