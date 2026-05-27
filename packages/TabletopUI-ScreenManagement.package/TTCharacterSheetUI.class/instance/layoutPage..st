layout pages
layoutPage: aNumber

	self
		clearPageContent;
		perform: (('layoutPage' , (aNumber asString)) asSymbol).
	self arrow comeToFront