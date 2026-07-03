network
updateToInitiativeContext
	
	| params |
	
	params := Dictionary new
		at: 'receiver' put: 'server';
		yourself.

	self networkFacade send: 'receiveInitiativeContextUpdate:' to: 'contextManager' with: params.