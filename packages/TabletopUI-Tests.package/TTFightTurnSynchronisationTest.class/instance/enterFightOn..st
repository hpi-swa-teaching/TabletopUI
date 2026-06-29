setup
enterFightOn: anInputField

	(self parserOf: anInputField) context endInitiativePhaseFrom: (TTCharacter new
		role: #gamemaster;
		yourself)