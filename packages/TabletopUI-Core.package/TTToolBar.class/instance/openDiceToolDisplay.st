toolbuilder
openDiceToolDisplay 

	self isDiceToolToBeOpened 
		ifTrue: [
			self diceTool: (TTDiceToolDisplay openWith: self characterAdministration
				and: self inputField). 
			self diceTool model observer: self.
			self subWindowManager register: self diceTool.
				
			self changed: #diceToolButtonColor.
			^self diceTool]
		ifFalse: [
			self subWindowManager unregister: self diceTool.
			self diceTool delete. 
			"self diceTool: nil. "
			self changed: #diceToolButtonColor.
			^nil]
