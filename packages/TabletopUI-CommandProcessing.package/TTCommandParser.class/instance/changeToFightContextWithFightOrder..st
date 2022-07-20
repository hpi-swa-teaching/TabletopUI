context managing
changeToFightContextWithFightOrder: aCollection
	
	self context: ((TTFightContext newWithfightOrder: aCollection)
		parser: self;
		subWindowManager: self subWindowManager;
		openTurnOrderDisplay;
		yourself)
	
		