accessing
toggleRulerToolWith: aTTInputField

	self rulerToolActive ifTrue: [
		self rulerTool morph delete.
		self tokens do: [:token |
			token makeDraggable]]
	ifFalse: [
		self rulerTool: (TTRulerTool openWith: self and: aTTInputField).
		self tokens do: [:token |
			token makeFixed]].