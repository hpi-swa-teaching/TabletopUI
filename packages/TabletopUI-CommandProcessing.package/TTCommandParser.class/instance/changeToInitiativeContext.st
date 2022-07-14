context managing
changeToInitiativeContext

	self context: (TTInitiativeContext new
		parser: self;
		subWindowManager: self subWindowManager;
		yourself)