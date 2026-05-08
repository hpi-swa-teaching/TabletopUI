receiving
trySharedObjectReceive

	[self sharedObjectReceive] on: Error do: [
		self coordinator stop.
		self shouldClose ifFalse: [self error: 'Error during receive - assuming connection was cut or other end bugged'].
		^ self]