running
newWindowWithMockNetwork

	self systemWindow: TTTabletopWindow openSessionless.
	self systemWindow model networkFacade networkmanager: TTMockNetworkManager new.
	^ self systemWindow model