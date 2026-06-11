running
setUp

	| window screen |
	window := TTTabletopWindow new.
	window networkmanager: TTMockNetworkmanager new.
	screen := TTGamemasterGameScreen newWith: window.
	self tokenBar: screen tokenBar.
	self tokenBar currentName: 'Bert'
