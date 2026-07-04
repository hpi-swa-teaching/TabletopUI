running
setUp

	self window: TTMockTabletopWindow new.
	self manager: (TTSessionManager new 
		window: window;
		networkFacade: TTMockNetworkFacade new;
		yourself).