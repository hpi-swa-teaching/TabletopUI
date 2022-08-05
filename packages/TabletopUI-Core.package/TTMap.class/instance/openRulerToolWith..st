accessing
openRulerToolWith: aTTInputField
	self rulerTool: (TTRulerTool openWith: self and: aTTInputField).
	self addDependent: self rulerTool.
	self tokens do: [ :token | token makeFixed ]