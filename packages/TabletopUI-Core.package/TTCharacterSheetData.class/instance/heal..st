rules - combat
heal: aNumber

	(aNumber < 0) ifTrue: [^ self].
	self 
		currentHP: self currentHP + aNumber;
		restoreDeathSaves