testing
test06Leave

	self screen leave.
	self assert: self window contents first model class equals: TTGamemasterSelectionScreen.