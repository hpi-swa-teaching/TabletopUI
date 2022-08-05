accessing
openRulerToolWith: aTTInputField

	self rulerTool: (TTRulerTool openWith: self and: aTTInputField).
	self addDependent: self rulerTool.
	self tokens do: [ :aToken | aToken makeFixed ]