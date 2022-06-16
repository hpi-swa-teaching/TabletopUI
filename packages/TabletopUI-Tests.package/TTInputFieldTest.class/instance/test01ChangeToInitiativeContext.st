testing
test01ChangeToInitiativeContext
	
	self deny: (self inputField parser context isKindOf: TTInitiativeContext).
	self inputField parser changeToInitiativeContext. 
	self assert: (self inputField parser context isKindOf: TTInitiativeContext)
