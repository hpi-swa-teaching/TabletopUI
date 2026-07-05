initialization
initializeInstanceVariables

	self idAssigner: TTIdAssigner new.
	self extent: self defaultExtent.
	self shouldClose: false.
	self clients: Set new.
	self clientAcceptor: Socket newTCP