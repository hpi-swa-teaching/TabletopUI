initialize-release
setUp

	self window: TTMockTabletopWindow new.
	self window loadState: TTTabletopWindow emptyState.
	self manager: (TTServerSessionManager new 
		window: window;
		networkmanager: TTMockNetworkmanager new;
		yourself).