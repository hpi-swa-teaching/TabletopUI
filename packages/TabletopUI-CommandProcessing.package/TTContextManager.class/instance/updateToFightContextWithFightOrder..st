network
updateToFightContextWithFightOrder: aCollection
	
	| params |
	
	params := Dictionary new
		at: 'order' put: aCollection;
		at: 'receiver' put: 'server';
		yourself.

	self networkFacade send: 'receiveFightContextWithFightOrderUpdate:' to: 'contextManager' with: params.