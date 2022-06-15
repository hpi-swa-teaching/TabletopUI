accessing
toggleRulerTool

	self rulerToolActive ifTrue: [self rulerToolDeactivate]
		ifFalse: [self rulerToolActivate].