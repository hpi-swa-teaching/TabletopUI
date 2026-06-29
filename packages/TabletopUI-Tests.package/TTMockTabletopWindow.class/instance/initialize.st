initialize-release
initialize

	self loadState: TTTabletopWindow emptyState.
	self networkmanager: TTMockNetworkmanager new.
	self characterAdministration: TTCharacterAdministration new.