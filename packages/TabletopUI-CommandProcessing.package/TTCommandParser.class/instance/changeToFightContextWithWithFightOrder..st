context managing
changeToFightContextWithWithFightOrder: aCollection

	self context: ((TTFightContext newWithfightOrder: aCollection)
		parser: self;
		yourself)