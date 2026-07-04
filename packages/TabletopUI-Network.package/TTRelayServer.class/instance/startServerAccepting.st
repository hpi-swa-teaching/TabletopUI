initialization
startServerAccepting

	| serverSocket |
	serverSocket := Socket newTCP.
	Smalltalk platformName = 'Win32' ifTrue: [serverSocket setOption: 'SO_REUSEADDR' value: false].
	[
		serverSocket listenOn: self defaultServerPort.
		(serverSocket isConnected or: serverSocket isWaitingForConnection) ifFalse: [self error: 'Unable to listen on default port']]
		on: Error
		do: [:ex |
			serverSocket closeAndDestroy.
			serverSocket := self tcpSocketListeningOnAnyPort].
	self initializeServer: serverSocket