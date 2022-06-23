testing
test05FormatNumber

	self 
		assert: (self diceroll formatNumber: 5) equals: '+5';
		assert: (self diceroll formatNumber: -4) equals: '-4'.