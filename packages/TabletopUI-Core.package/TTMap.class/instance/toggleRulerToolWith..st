accessing
toggleRulerToolWith: aTTInputField

	self rulerToolActive ifTrue: [self rulerToolDeactivate]
		ifFalse: [self rulerToolActivate].
	self rulerTool inputField: aTTInputField.