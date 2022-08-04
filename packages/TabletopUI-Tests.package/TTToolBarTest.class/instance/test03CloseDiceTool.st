testing
test03CloseDiceTool

	self toolBar toggleDiceToolDisplay.
	self toolBar toggleDiceToolDisplay.
	self assert: self toolBar diceTool owner equals: nil