initialize-release
initializeDiceAmounts

	self diceAmounts: (Dictionary new
		at: 'd4' put: 0;
		at: 'd6' put: 0;
		at: 'd8' put: 0;
		at: 'd10' put: 0;
		at: 'd12' put: 0;
		at: 'd20' put: 0;
		yourself)