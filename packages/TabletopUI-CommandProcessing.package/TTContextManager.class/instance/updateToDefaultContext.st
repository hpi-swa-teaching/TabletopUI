network
updateToDefaultContext

	self networkFacade send: 'receiveDefaultContextUpdate' to: 'contextManager' with: Dictionary new.