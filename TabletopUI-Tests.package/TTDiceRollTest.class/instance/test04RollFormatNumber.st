testing
test04RollFormatNumber

	self 
		assert: (diceroll formatNumber: 5) equals: ' + 5';
		assert: (diceroll formatNumber: 47) equals: ' + 47';
		assert: (diceroll formatNumber: -13) equals: ' - 13';
		assert: (diceroll formatNumber: -4) equals: ' - 4'.