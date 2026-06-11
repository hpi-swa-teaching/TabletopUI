running
newWindowWithMockNetwork

	^ TTTabletopWindow new
		networkManager: TTMockNetworkmanager new;
		yourself
