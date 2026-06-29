running
newWindowWithMockNetwork

	^ TTTabletopWindow new
		networkFacade: TTMockNetworkFacade new;
		yourself
