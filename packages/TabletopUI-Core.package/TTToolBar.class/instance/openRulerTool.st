tasks
openRulerTool
		
		self map toggleRulerToolWith: self inputField.
		self map rulerToolActive ifTrue:
			[self map rulerTool observer: self.].
		self changed: #rulerToolButtonColor.