connection
clientAcceptorListenSuccessfull

	^ self clientAcceptor isConnected or: [self clientAcceptor isWaitingForConnection]