connection
listenOn: tcpPort

	| socket |
	socket := Socket newTCP.
	Smalltalk platformName = 'Win32' ifTrue: [socket setOption: 'SO_REUSEADDR' value: false].
	
	socket listenOn: tcpPort.
	(socket isConnected or: [socket isWaitingForConnection]) ifFalse: [self error: 'Unable to listen on port'].
	self connection: (TTMockNetworkConnection newFromSocket: socket)