running
newMockWindow

	^ TTTabletopWindow new
		networkManager: TTMockNetworkmanager new;
		yourself
