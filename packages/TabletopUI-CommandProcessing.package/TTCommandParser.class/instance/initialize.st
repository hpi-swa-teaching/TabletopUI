initialize-release
initialize

	super initialize.
	self lexer: TTCommandLexer new.
	self contextManager: (self networkFacade instantiate: TTContextManager withId: 'contextManager')