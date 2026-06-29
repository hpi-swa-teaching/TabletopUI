testing - interaction
test12RestButton

	| display |
	
	display := self openDisplay.
	display model currentHP: 1.
	display model hitDiceRemaining: 0.
	display model deathSaveSuccesses: 2.
	display model deathSaveFailures: 1.
	display model spellSlot1Maximum: 4.
	display model spellSlot1Current: 0.
	
	display applyRest.
	
	self assert: display model currentHP equals: display model maxHP.
	self assert: display model deathSaveSuccesses equals: 0.
	self assert: display model deathSaveFailures equals: 0.
	self assert: (display model spellSlot1Current) equals: (display model spellSlot1Maximum)