health and damage
takeDamage: aNumber
	
	| hpOvershoot | 
	
	aNumber < 0 ifFalse: [
		hpOvershoot := aNumber - self temporaryHP max: 0.
		self temporaryHP: (self temporaryHP - aNumber max: 0).
		self currentHP: (self currentHP - hpOvershoot max: 0)]