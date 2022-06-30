toolbuilder
openDiceToolDisplay 

	self changed: #diceToolButtonColor.
	self isDiceToolActive 
		ifTrue: [
			self diceTool: (TTDiceToolDisplay openWith: self characterAdministration
				and: self inputField). 
			^self diceTool]
		ifFalse: [
			self diceTool delete. 
			"self diceTool: nil. "
			^nil]
