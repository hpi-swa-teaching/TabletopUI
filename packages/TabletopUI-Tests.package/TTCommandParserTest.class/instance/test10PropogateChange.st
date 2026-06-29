testing
test10PropogateChange
	
	self contextChangePropagated: false.
	self parser addDependent: self.
	self parser update: #initiativeState.
	self assert: (self contextChangePropagated)

	