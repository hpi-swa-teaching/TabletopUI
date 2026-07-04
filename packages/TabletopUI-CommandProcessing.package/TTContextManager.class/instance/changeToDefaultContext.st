context managing
changeToDefaultContext

	self changeToContext: (TTDefaultContext new
		manager: self;
		yourself)