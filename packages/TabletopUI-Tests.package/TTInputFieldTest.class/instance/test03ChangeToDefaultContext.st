testing
test03ChangeToDefaultContext
	
	self inputField parser changeToInitiativeContext. 
	self deny: (self inputField parser context isKindOf: TTDefaultContext).
	self inputField parser changeToDefaultContext. 
	self assert: (self inputField parser context isKindOf: TTDefaultContext)
