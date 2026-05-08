termination
kill

	self stopStepping.
	self server tcpSocket closeAndDestroy.
	self clientAcceptor closeAndDestroy.
	self server shouldClose: true.
	self clients do: [:client | client shouldClose: true].
	self udpSocket closeAndDestroy.
	self owner ifNotNil: [:o | (o isKindOf: SystemWindow) ifTrue: [o delete] ifFalse: [self delete]]