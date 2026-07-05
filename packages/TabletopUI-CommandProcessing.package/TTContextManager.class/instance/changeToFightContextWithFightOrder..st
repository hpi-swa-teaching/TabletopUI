context managing
changeToFightContextWithFightOrder: aCollection

	self changeToContext: ((TTFightContext newWithfightOrder: aCollection)
		manager: self;
		yourself)