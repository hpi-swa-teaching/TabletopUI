running
setUp

	super setUp.
	self context: (TTInitiativeContext new parser: self parser; yourself).
	self parser context: self context