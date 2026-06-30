accessing
networkFacade

	networkFacade ifNil: [networkFacade := TTMockNetworkFacade new].
	^ networkFacade