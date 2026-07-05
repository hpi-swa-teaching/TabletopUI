context managing
changeToContext: aContext

	self context ifNotNil: [self context removeDependent: self].
	self context: aContext.
	self changed: #contextChanged.
	self context addDependent: self.