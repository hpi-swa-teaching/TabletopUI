context managing
changeToDefaultContext

	self context: (TTDefaultContext new
		parser: self;
		subWindowManager: self subWindowManager
		yourself)