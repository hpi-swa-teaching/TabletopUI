initialization
mouseDown: anEvent
	
	self rulerToolActive ifTrue: [
		self rulerTool inputMouseDown: anEvent cursorPoint].