network
updateToFightContextWithFightOrder: aCollection

	self networkFacade send: 'receiveToFightContextWithFightOrderUpdate:' to: 'contextManager' with: aCollection.