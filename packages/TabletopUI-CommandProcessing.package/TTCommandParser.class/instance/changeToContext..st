context managing
changeToContext: aContext

	self removeDependent: self context.
	self context: aContext.
	self addDependent: self context