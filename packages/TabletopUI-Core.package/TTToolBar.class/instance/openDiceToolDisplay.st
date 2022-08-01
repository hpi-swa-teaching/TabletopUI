tasks
openDiceToolDisplay 

	self isDiceToolToBeOpened 
		ifTrue: [
			self diceTool: (TTDiceToolDisplay openWith: self characterAdministration
				and: self inputField). 
			self diceTool model observer: self.
			self addDependent: self diceTool model.				
			self changed: #diceToolButtonColor.
			^self diceTool]
		ifFalse: [
			self removeDependent: self diceTool model.
			self diceTool delete. 
			"self diceTool: nil. "
			self changed: #diceToolButtonColor.
			^nil]
