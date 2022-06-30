toolbuilder
openDiceToolDisplay 

	self isDiceToolToBeOpened 
		ifTrue: [
			self diceTool: (TTDiceToolDisplay openWith: self characterAdministration
				and: self inputField). 
				
			self changed: #diceToolButtonColor.
			^self diceTool]
		ifFalse: [
			self diceTool delete. 
			"self diceTool: nil. "
			self changed: #diceToolButtonColor.
			^nil]
