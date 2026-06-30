event handling
mouseDown: anEvent
	
	self rulerToolActive ifTrue: [
		self rulerTool inputMouseDown: anEvent cursorPoint]