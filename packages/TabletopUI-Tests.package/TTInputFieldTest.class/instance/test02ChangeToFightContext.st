testing
test02ChangeToFightContext
	 
	self deny: (self inputField parser context isKindOf: TTFightContext).
	self inputField parser contextManager changeToFightContextWithFightOrder: {'' . ''}. 
	self assert: (self inputField parser context isKindOf: TTFightContext).
