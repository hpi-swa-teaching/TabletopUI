network
updatePlayerRemoval: aTTCharacterName

	| params |
	
	params := Dictionary new
		at: 'player' put: aTTCharacterName name;
		yourself.
	
	self networkFacade send: 'receivePlayerRemovalUpdate:' to: 'contextManager' with: params.