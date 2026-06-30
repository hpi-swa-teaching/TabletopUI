testing
test03TogglePersists

	self toggle mouseUp: nil.
	self toggle mouseUp: nil.
	self assert: self sheet acrobaticsProficiency equals: 0