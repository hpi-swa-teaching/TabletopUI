testing
test03IsValidInput

	self assert: (playerCountScreen isValid: '3').
	self deny: (playerCountScreen isValid: '3abc').
	self deny: (playerCountScreen isValid: '0').
	self deny: (playerCountScreen isValid: '')