initialize-release
initialize

	self loadState: TTTabletopWindow emptyState.
	self networkManager: TTMockNetworkManager new.
	self characterAdministration: TTCharacterAdministration new.