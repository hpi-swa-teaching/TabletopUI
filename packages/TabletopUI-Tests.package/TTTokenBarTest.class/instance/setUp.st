running
setUp

	self window: ((TTTabletopWindow openEmptySessionWithNetworkManager: TTMockNetworkManager new) model).
	self screen:( self window networkFacade instantiateScreen: TTGamemasterGameScreen WithId: 'gamescreen' Window: self window).
	self tokenBar: screen tokenBar.
	self tokenBar currentName: 'Bert'
