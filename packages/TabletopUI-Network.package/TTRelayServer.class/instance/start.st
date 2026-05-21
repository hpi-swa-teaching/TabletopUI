initialization
start

	self startClientAccepting.
	self startServerAccepting.
	self startUdpRelaying.
	self startStepping.
	self openInWindow.
	self displayPorts