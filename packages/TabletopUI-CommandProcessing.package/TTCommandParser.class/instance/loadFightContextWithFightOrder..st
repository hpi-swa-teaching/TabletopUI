context managing
loadFightContextWithFightOrder: aCollection

	self changeToContext: ((TTFightContext newWithfightOrder: aCollection)
		parser: self;
		yourself)