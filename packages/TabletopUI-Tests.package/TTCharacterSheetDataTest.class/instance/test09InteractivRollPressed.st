testing
test09InteractivRollPressed
	
	self characterSheet acrobaticsLabelPressed.
	self assert: (self inputField inputs removeFirst) equals: 'roll d20 +0'.
	self characterSheet animalHandlingLabelPressed.
	self assert: (self inputField inputs removeFirst) equals: 'roll d20 -4'.
	self characterSheet arcanaLabelPressed.
	self assert: (self inputField inputs removeFirst) equals: 'roll d20 -5'.
	self characterSheet athleticsLabelPressed.
	self assert: (self inputField inputs removeFirst) equals: 'roll d20 -1'.
	self characterSheet charismaSaveLabelPressed.
	self assert: (self inputField inputs removeFirst) equals: 'roll d20 +0'.
	self characterSheet constitutionSaveLabelPressed.
	self assert: (self inputField inputs removeFirst) equals: 'roll d20 +5'.
	self characterSheet deceptionLabelPressed.
	self assert: (self inputField inputs removeFirst) equals: 'roll d20 +0'.
	self characterSheet defaultCharismaLabelPressed.
	self assert: (self inputField inputs removeFirst) equals: 'roll d20 +0'.
	self characterSheet defaultConstitutionLabelPressed.
	self assert: (self inputField inputs removeFirst) equals: 'roll d20 +5'.
	self characterSheet defaultDexterityLabelPressed.
	self assert: (self inputField inputs removeFirst) equals: 'roll d20 -4'.
	self characterSheet defaultInitiativeLabelPressed.
	self assert: (self inputField inputs removeFirst) equals: 'roll d20 -4'.
	self characterSheet defaultIntelligenceLabelPressed.
	self assert: (self inputField inputs removeFirst) equals: 'roll d20 -5'.
	self characterSheet defaultStrengthLabelPressed.
	self assert: (self inputField inputs removeFirst) equals: 'roll d20 -3'.
	self characterSheet defaultWisdomLabelPressed.
	self assert: (self inputField inputs removeFirst) equals: 'roll d20 -4'.
	self characterSheet dexteritySaveLabelPressed.
	self assert: (self inputField inputs removeFirst) equals: 'roll d20 -4'.
	self characterSheet historyLabelPressed.
	self assert: (self inputField inputs removeFirst) equals: 'roll d20 -5'.
	self characterSheet insightLabelPressed.
	self assert: (self inputField inputs removeFirst) equals: 'roll d20 -4'.
	self characterSheet intelligenceSaveLabelPressed.
	self assert: (self inputField inputs removeFirst) equals: 'roll d20 -5'.
	self characterSheet intimidationLabelPressed.
	self assert: (self inputField inputs removeFirst) equals: 'roll d20 +0'.
	self characterSheet acrobaticsLabelPressed.
	self assert: (self inputField inputs removeFirst) equals: 'roll d20 +0'.
	self characterSheet investigationLabelPressed.
	self assert: (self inputField inputs removeFirst) equals: 'roll d20 -5'.
	self characterSheet medicineLabelPressed.
	self assert: (self inputField inputs removeFirst) equals: 'roll d20 -2'.
	self characterSheet natureLabelPressed.
	self assert: (self inputField inputs removeFirst) equals: 'roll d20 -5'.
	self characterSheet perceptionLabelPressed.
	self assert: (self inputField inputs removeFirst) equals: 'roll d20 -4'.
	self characterSheet performanceLabelPressed.
	self assert: (self inputField inputs removeFirst) equals: 'roll d20 +0'.
	self characterSheet persuationLabelPressed.
	self assert: (self inputField inputs removeFirst) equals: 'roll d20 +0'.
	self characterSheet religionLabelPressed.
	self assert: (self inputField inputs removeFirst) equals: 'roll d20 -5'.
	self characterSheet sleightOfHandLabelPressed.
	self assert: (self inputField inputs removeFirst) equals: 'roll d20 -4'.
	self characterSheet stealthLabelPressed.
	self assert: (self inputField inputs removeFirst) equals: 'roll d20 -4'.
	self characterSheet strengthSaveLabelPressed.
	self assert: (self inputField inputs removeFirst) equals: 'roll d20 -3'.
	self characterSheet survivalLabelPressed.
	self assert: (self inputField inputs removeFirst) equals: 'roll d20 -4'.
	self characterSheet wisdomSaveLabelPressed.
	self assert: (self inputField inputs removeFirst) equals: 'roll d20 -4'.