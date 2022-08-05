initialize-release
initialize

	super initialize.
	
	self lexer: TTCommandLexer new.
	self context: (TTDefaultContext new
		parser: self;
		yourself)