running
setUp

	| screen |
	window := TTTabletopWindow openEmptySessionWithNetworkManager: TTMockNetworkManager new.
	screen := TTGamemasterGameScreen newWith: window model.
	self tokenBar: screen tokenBar.
	self tokenBar currentName: 'Bert'
