network
updateInitiativeRoll: aValue for: aTTCharacter

	| params |
	
	params := Dictionary new
		at: 'value' put: aValue;
		at: 'player' put: aTTCharacter name;
		at: 'receiver' put: 'server';
		yourself.
	
	self networkFacade send: 'receiveInitiativeRollUpdate:' to: 'contextManager' with: params.