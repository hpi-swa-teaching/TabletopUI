testing
test10Multiplier
	
	self characterSheet acrobaticsMultiplier: '0'.
	self assert: self characterSheet acrobaticsMultiplier equals: '0'.
	
	self characterSheet animalHandlingMultiplier: '1'.
	self assert: self characterSheet animalHandlingMultiplier equals: '1'.
	
	self characterSheet arcanaMultiplier: '2'.
	self assert: self characterSheet arcanaMultiplier equals: '2'.
	
	self characterSheet athleticsMultiplier: '3'.
	self assert: self characterSheet athleticsMultiplier equals: '2'.
	
	self characterSheet charismaSaveMultiplier: '-1'.
	self assert: self characterSheet charismaSaveMultiplier equals: '0'.
	
	self characterSheet constitutionSaveMultiplier: '100'.
	self assert: self characterSheet constitutionSaveMultiplier equals: '2'.
	
	self characterSheet deceptionMultiplier: '-100'.
	self assert: self characterSheet deceptionMultiplier equals: '0'.
	
	self characterSheet dexteritySaveMultiplier: '0'.
	self assert: self characterSheet dexteritySaveMultiplier equals: '0'.
	
	self characterSheet historyMultiplier: '0'.
	self assert: self characterSheet historyMultiplier equals: '0'.
	
	self characterSheet insightMultiplier: '0'.
	self assert: self characterSheet insightMultiplier equals: '0'.
	
	self characterSheet intelligenceSaveMultiplier: '0'.
	self assert: self characterSheet intelligenceSaveMultiplier equals: '0'.
	
	self characterSheet intimidationMultiplier: '0'.
	self assert: self characterSheet intimidationMultiplier equals: '0'.
	
	self characterSheet investigationMultiplier: '0'.
	self assert: self characterSheet investigationMultiplier equals: '0'.
	
	self characterSheet medicineMultiplier: '0'.
	self assert: self characterSheet medicineMultiplier equals: '0'.
	
	self characterSheet natureMultiplier: '0'.
	self assert: self characterSheet natureMultiplier equals: '0'.
	
	self characterSheet perceptionMultiplier: '0'.
	self assert: self characterSheet perceptionMultiplier equals: '0'.
	
	self characterSheet performanceMultiplier: '0'.
	self assert: self characterSheet performanceMultiplier equals: '0'.
	
	self characterSheet persuationMultiplier: '0'.
	self assert: self characterSheet persuationMultiplier equals: '0'.
	
	self characterSheet religionMultiplier: '0'.
	self assert: self characterSheet religionMultiplier equals: '0'.
	
	self characterSheet sleightOfHandMultiplier: '0'.
	self assert: self characterSheet sleightOfHandMultiplier equals: '0'.
	
	self characterSheet stealthMultiplier: '0'.
	self assert: self characterSheet stealthMultiplier equals: '0'.
	
	self characterSheet strengthSaveMultiplier: '0'.
	self assert: self characterSheet strengthSaveMultiplier equals: '0'.
	
	self characterSheet survivalMultiplier: '0'.
	self assert: self characterSheet survivalMultiplier equals: '0'.
	
	self characterSheet wisdomSaveMultiplier: '0'.
	self assert: self characterSheet wisdomSaveMultiplier equals: '0'