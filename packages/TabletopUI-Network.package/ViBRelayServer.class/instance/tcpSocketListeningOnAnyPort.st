initialization
tcpSocketListeningOnAnyPort

	| newSocket |
	newSocket := Socket newTCP.
	(Smalltalk platformName = 'Win32') ifTrue: [newSocket setOption: 'SO_REUSEADDR' value: false].
	newSocket listenOn: 0 backlogSize: self sufficientlyLargeBacklogSize.
	^ newSocket