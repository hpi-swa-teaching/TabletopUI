testing
test02OpenRulerTool

	self toolBar openRulerTool.
	self assert: self toolBar map rulerTool class equals: TTRulerTool.
	self toolBar openRulerTool.
	self assert: self toolBar map rulerTool morph owner equals: nil.
	self toolBar openRulerTool.
	self assert: self toolBar map rulerTool class equals: TTRulerTool.
	self toolBar map rulerTool morph abandon