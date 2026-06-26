as yet unclassified
setUp

	self playerGameScreen: ((TTPlayerGameScreen newWith: (TTMockTabletopWindow new
		characterAdministration: self characterAdministration;
		owningPlayerName: self playerScreenOwner name;
		yourself))
		map: TTMockMap new;
		yourself).
	self gamemasterGameScreen: ((TTGamemasterGameScreen newWith: (TTMockTabletopWindow new
		characterAdministration: self characterAdministration;
		owningPlayerName: self gamemasterScreenOwner name;
		yourself))
		map: TTMockMap new;
		yourself)