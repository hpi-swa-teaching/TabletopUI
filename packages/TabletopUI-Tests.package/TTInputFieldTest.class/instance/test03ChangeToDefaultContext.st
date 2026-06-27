testing
test03ChangeToDefaultContext
	
	self inputField parser contextManager changeToInitiativeContext. 
	self deny: (self inputField parser context isKindOf: TTDefaultContext).
	self inputField parser contextManager changeToDefaultContext. 
	self assert: (self inputField parser context isKindOf: TTDefaultContext)
