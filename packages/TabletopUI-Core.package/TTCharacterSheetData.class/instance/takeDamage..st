rules - health and damage
takeDamage: aNumber
	
	| absorbed remaining |
	absorbed := aNumber min: self temporaryHP.
	self temporaryHP: self temporaryHP - absorbed.
	remaining := aNumber - absorbed. .
	self
		currentHP: self currentHP - remaining;
		changed: #temporaryHP;
		changed: #currentHP