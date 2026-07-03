initialize-release
initialize

	super initialize.
	
	self parser: (self networkFacade instantiate: TTCommandParser withId: 'commandParser').
	self addDependent: self parser