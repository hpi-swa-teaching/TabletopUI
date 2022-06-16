testing
test02ChangeToFightContext
	 
	self deny: (self inputField parser context isKindOf: TTFightContext).
	self inputField parser changeToFightContextWithWithFightOrder: {'' . ''}. 
	self assert: (self inputField parser context isKindOf: TTFightContext).
	self inputField parser context display delete
