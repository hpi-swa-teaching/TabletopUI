context managing
changeToFightContextWithFightOrder: aCollection
	
	self changeToContext: ((TTFightContext newWithfightOrder: aCollection)
		parser: self;
		openTurnOrderDisplay;
		yourself)
	
		