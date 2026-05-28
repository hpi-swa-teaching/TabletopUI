connection
checkClientConnect

	| client connection |
	client := self clientAcceptor waitForAcceptFor: 0.
	client isNil ifTrue: [^ self].
	connection := self initializeClientConnection: client.
	self clients add: connection