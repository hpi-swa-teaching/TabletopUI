running
newWindowWithMockNetwork

	self systemWindow: (TTTabletopWindow openEmptySessionWithNetworkManager: TTMockNetworkManager new).
	^ self systemWindow model.
