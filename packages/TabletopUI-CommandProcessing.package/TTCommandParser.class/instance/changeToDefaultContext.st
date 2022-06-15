context managing
changeToDefaultContext

	self context: (TTDefaultContext new
		parser: self;
		yourself)