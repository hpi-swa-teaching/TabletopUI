testing
test04CloseRulerTool

	self toolBar openRulerTool.
	self toolBar openRulerTool.
	self assert: self toolBar map rulerTool morph owner equals: nil
