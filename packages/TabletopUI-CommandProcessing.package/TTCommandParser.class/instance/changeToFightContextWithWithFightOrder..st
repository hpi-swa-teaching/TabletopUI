context managing
changeToFightContextWithWithFightOrder: aCollection
	
	Transcript show: self subWindowManager.
	self context: ((TTFightContext newWithfightOrder: aCollection)
		parser: self;
		subWindowManager: self subWindowManager;
		yourself)
	
		