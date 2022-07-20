testing
test01OpenDiceTool

	self toolBar openDiceToolDisplay.
	self assert: self toolBar diceTool model class equals: TTDiceToolDisplay.
	self toolBar openDiceToolDisplay.
	self assert: self toolBar diceTool owner equals: nil.
	self toolBar openDiceToolDisplay.
	self assert: self toolBar diceTool model class equals: TTDiceToolDisplay.
	self toolBar diceTool abandon