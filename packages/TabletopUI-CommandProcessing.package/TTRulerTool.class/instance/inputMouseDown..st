actions
inputMouseDown: aPosition
	
	self mouseIsDown ifFalse: [
		self startPosition: aPosition;
			mouseIsDown: true;
			manualStep]

	