testing
test01OpenDiceTool

	self toolBar toggleDiceToolDisplay.
	self assert: self toolBar diceTool model class equals: TTDiceToolDisplay.
	self toolBar diceTool abandon