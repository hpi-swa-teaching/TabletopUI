running
setUp

	super setUp.
	self context: (TTInitiativeContext new parser: self parser; yourself)