running
newWindowWithMockNetwork

	^ TTTabletopWindow new
		networkmanager: TTMockNetworkmanager new;
		yourself
