initialization
mouseDown: anEvent
	
	rulerToolActive ifTrue: [
			self rulerTool acceptInput: (anEvent cursorPoint)]