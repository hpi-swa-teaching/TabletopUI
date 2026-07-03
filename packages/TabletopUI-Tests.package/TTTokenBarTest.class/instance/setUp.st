running
setUp

	self window: ((TTTabletopWindow openEmptySessionWithNetworkManager: TTMockNetworkManager new) model).
	self screen: self window gamescreen.
	self tokenBar: screen tokenBar.
	self tokenBar currentName: 'Bert'
