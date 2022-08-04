accessing
toggleRulerToolWith: aTTInputField

	self rulerToolActive ifTrue: [
		self closeRulerTool]
	ifFalse: [
		self openRulerToolWith: aTTInputField]