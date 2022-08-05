tasks
closeDiceToolDisplay
	self removeDependent: self diceTool model.
	self diceTool delete.	"self diceTool: nil. "
	self changed: #diceToolButtonColor