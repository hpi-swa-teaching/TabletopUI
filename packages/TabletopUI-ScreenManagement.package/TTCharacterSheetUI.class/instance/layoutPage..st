layout pages
layoutPage: aNumber

	self clearPageContent.
	self perform: (('layoutPage' , (aNumber asString)) asSymbol).
	self arrow comeToFront