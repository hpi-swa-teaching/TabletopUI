network
updatePlayerRemoval: aTTCharacterName

	| params |
	
	params := Dictionary new
		at: 'player' put: aTTCharacterName;
		at: 'receiver' put: 'server';
		yourself.
	
	self networkFacade send: 'receivePlayerRemovalUpdate:' to: 'contextManager' with: params.