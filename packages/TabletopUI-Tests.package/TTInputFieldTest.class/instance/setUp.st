running
setUp

	self inputField: ((TTInputField newWithNetworkFacade: TTMockNetworkFacade new)
		log: TTMockActionLog new;
		yourself)