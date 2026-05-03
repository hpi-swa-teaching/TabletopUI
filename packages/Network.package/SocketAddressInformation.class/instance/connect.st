circuit setup
connect

	| sock |
	socketType == SocketTypeStream ifFalse: [^nil].
	sock := Socket newTCP: addressFamily.
	sock connectTo: socketAddress.
	sock waitForConnectionFor: Socket standardTimeout
		ifTimedOut: [ConnectionTimedOut signal: ('Cannot connect to {1}' translated format: {self})]
		ifRefused: [ConnectionRefused signal: ('Cannot connect to {1}' translated format: {self})].
	^sock