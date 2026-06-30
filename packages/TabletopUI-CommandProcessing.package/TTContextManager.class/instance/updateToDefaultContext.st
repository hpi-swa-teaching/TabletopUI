network
updateToDefaultContext

	| params |
	
	params := Dictionary new
		at: 'receiver' put: 'server';
		yourself.
	
	self networkFacade send: 'receiveDefaultContextUpdate:' to: 'contextManager' with: params.