accessing
toggleRulerToolWith: aTTInputField

	self rulerToolActive ifTrue: [
		self removeDependent: self rulerTool.
		self rulerTool morph delete.
		self tokens do: [:token | token makeDraggable]]
	ifFalse: [
		self rulerTool: (TTRulerTool openWith: self and: aTTInputField).
		self addDependent: self rulerTool.
		self tokens do: [:token | token makeFixed]].