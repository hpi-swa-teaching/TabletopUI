running
tearDown

	super setUp.	
	self inputField: (TTInputField newWithNetworkFacade: TTMockNetworkFacade new)