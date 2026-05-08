initialization
startClientAccepting

	[
		self clientAcceptor listenOn: self defaultClientPort backlogSize: self sufficientlyLargeBacklogSize.
		self clientAcceptorListenSuccessfull ifFalse: [self error: 'Error trying to listen']]
		on: Error
		do: [:ex |
			self clientAcceptor closeAndDestroy.
			self clientAcceptor: self tcpSocketListeningOnAnyPort]