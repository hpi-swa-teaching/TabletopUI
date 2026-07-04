running
tearDown

	super tearDown.
	self inputField: (TTInputField newWithNetworkFacade: TTMockNetworkFacade new)