health and damage
takeDamageInput: aText
	
	self takeDamage: aText asNumber.
	self changed: #temporaryHP.
	self changed: #currentHP