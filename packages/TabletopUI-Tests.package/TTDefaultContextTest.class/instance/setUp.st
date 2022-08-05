running
setUp

	super setUp.
	self context: (TTDefaultContext new parser: self parser; yourself).
	self parser context: self context