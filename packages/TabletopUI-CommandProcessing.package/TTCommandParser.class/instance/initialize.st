initialize-release
initialize

	super initialize.
	self lexer: TTCommandLexer new.
	self contextManager: TTContextManager new