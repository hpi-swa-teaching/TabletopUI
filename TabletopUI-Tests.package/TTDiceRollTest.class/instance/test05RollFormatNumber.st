testing
test05RollFormatNumber

	self 
		assert: (self diceroll formatNumber: 5) equals: ' + 5';
		assert: (self diceroll formatNumber: 47) equals: ' + 47';
		assert: (self diceroll formatNumber: -13) equals: ' - 13';
		assert: (self diceroll formatNumber: -4) equals: ' - 4'.