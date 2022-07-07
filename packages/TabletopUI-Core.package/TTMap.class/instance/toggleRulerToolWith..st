accessing
toggleRulerToolWith: aTTInputField

	self rulerToolActive ifTrue: [
		self subWindowManager unregister: (self rulerTool morph).
		self rulerTool morph delete.
		self tokens do: [:token | token makeDraggable]]
	ifFalse: [
		self rulerTool: (TTRulerTool openWith: self and: aTTInputField).
		self subWindowManager register: self rulerTool morph.
		self tokens do: [:token | token makeFixed]].