rules - combat
takeDamage: aNumber
	
	| absorbed remaining |
	(aNumber < 0) ifTrue: [^ self].
	absorbed := aNumber min: self temporaryHP.
	self temporaryHP: self temporaryHP - absorbed.
	remaining := aNumber - absorbed.
	self currentHP: self currentHP - remaining