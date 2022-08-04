tasks
openDiceToolDisplay
	self diceTool: (TTDiceToolDisplay openWith: self characterAdministration and: self inputField).
	self diceTool model observer: self.
	self addDependent: self diceTool model.
	self changed: #diceToolButtonColor