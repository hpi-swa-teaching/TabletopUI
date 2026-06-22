generators
generateSpellSlotAccessors

	1 to: self maximumSpellcastingLevel do: [:level |
		| maxAccessor currentAccessor |
		maxAccessor := 'spellSlot' , level asString , 'Maximum'.
		currentAccessor := 'spellSlot' , level asString , 'Current'.
		self compile: maxAccessor , '

	^ (self spellSlotMaximumAt: ' , level asString , ') asString'
		classified: 'accessing - spellcasting'.
		self compile: maxAccessor , ': anObject

	self spellSlotMaximumAt: ' , level asString , ' put: anObject'
		classified: 'accessing - spellcasting'.
		self compile: currentAccessor , '

	^ (self spellSlotCurrentAt: ' , level asString , ') asString'
		classified: 'accessing - spellcasting'.
		self compile: currentAccessor , ': anObject
		
	self spellSlotCurrentAt: ' , level asString , ' put: anObject'
		classified: 'accessing - spellcasting']