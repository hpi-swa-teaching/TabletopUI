running
setUp

	self window: (TTTabletopWindow openEmptySessionWithNetworkManager: TTMockNetworkManager new) model.
	self screen: self window gamescreen.
	self tokenBar: self screen tokenBar.
	self tokenBar currentName: 'Bert'