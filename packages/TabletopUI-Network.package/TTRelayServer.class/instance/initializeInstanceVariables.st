initialization
initializeInstanceVariables

	self idAssigner: TTIdAssigner new.
	self extent: 400 @ 400.
	self shouldClose: false.
	self clients: Set new.
	self clientAcceptor: Socket newTCP