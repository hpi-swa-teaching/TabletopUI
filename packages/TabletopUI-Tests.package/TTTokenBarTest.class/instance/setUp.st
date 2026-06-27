running
setUp

	| window screen |
	window := TTTabletopWindow openEmptySessionWithNetworkManager: TTMockNetworkManager new.
	screen := TTGamemasterGameScreen newWith: window.
	self tokenBar: screen tokenBar.
	self tokenBar currentName: 'Bert'
