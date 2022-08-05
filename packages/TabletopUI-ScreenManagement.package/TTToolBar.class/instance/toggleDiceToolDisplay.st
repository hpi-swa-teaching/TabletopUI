tasks
toggleDiceToolDisplay 

	self isDiceToolToBeOpened 
		ifTrue: [
			self openDiceToolDisplay.
			^ self diceTool]
		ifFalse: [
			"self diceTool: nil. "
			self closeDiceToolDisplay.
			^ nil]
