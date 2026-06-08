testing
test10PropogateChange
	
	self contextChangePropagated: false.
	parser addDependent: self.
	parser update: #initiativeState.
	self assert: (self contextChangePropagated)

	