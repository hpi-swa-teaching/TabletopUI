network
updateCurrentPlayer: aTTCharacterName

	| params |
	
	params := Dictionary new
		at: 'player' put: aTTCharacterName name;
		yourself.
	
	self networkFacade send: 'receiveCurrentPlayerUpdate:' to: 'contextManager' with: params.