accessing
initialize

	self loadState: TTTabletopWindow emptyState.
	self networkmanager: TTMockNetworkManager new.
	self characterAdministration: TTCharacterAdministration new.