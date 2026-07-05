running
newWindowWithMockNetwork

	self systemWindow: TTTabletopWindow openSessionless.
	self systemWindow model networkFacade networkManager: TTMockNetworkManager new.
	^ self systemWindow model