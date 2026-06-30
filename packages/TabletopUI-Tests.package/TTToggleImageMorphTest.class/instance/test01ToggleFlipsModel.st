testing
test01ToggleFlipsModel

	self toggle mouseUp: nil.
	self assert: self sheet acrobaticsProficiency equals: 1.
	self toggle mouseUp: nil.
	self assert: self sheet acrobaticsProficiency equals: 0