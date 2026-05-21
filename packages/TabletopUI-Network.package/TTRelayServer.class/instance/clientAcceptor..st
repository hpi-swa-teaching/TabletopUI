accessing
clientAcceptor: aSocket

	clientAcceptor := aSocket.
	Smalltalk platformName = 'Win32' ifTrue: [self clientAcceptor setOption: 'SO_REUSEADDR' value: false]