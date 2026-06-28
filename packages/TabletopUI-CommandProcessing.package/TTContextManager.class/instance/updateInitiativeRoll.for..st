network
updateInitiativeRoll: aValue for: aTTCharacter

	| params |
	
	params := Dictionary new
		at: 'value' put: aValue;
		at: 'player' put: aTTCharacter name;
		yourself.
	
	self networkFacade send: 'receiveInitiativeRollUpdate:' to: 'contextManager' with: params.