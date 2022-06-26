actions
inputMouseUp: aPosition
	
	self mouseIsDown ifTrue: [
			self endPosition: aPosition.
			self inputField log logOutput: ('Distance measured: ' , self calculateDistance asString , 'ft').
			self mouseIsDown: false;
				startPosition: nil;
				endPosition: nil.
			self process terminate.
			self arrowMorph delete]

	