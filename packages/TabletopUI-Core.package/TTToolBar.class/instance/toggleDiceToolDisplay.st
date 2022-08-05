tasks
toggleDiceToolDisplay 

	self isDiceToolToBeOpened ifTrue: [
		self openDiceToolDisplay.
		^ self diceTool]
	ifFalse: [
		self closeDiceToolDisplay.
		^ nil]
