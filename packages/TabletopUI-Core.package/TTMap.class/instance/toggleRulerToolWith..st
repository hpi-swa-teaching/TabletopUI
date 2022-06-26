accessing
toggleRulerToolWith: aTTInputField

	self rulerToolActive ifTrue: [
		self rulerTool morph delete]
	ifFalse: [
		self rulerTool: (TTRulerTool openWith: self and: aTTInputField)]