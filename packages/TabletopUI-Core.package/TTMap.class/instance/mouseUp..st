initialization
mouseUp: anEvent
	
	self rulerToolActive ifTrue: [
		self rulerTool inputMouseUp: anEvent cursorPoint]