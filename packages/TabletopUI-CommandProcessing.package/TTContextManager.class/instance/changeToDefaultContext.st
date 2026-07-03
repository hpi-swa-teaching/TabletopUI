context managing
changeToDefaultContext

	self changeToContext: (TTDefaultContext new
		parser: self;
		yourself)