initialization
initialize

	super initialize.
	
	self parser: TTCommandParser new.
	self addDependent: self parser