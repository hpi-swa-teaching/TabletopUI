tasks
closeDiceToolDisplay

	self removeDependent: self diceTool model.
	self diceTool delete.
	self changed: #diceToolButtonColor