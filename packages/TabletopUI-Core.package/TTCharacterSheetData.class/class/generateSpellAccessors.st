generators
generateSpellAccessors

	0 to: 9 do: [:level |
		1 to: 4 do: [:slot |
			| nameAccessor equippedAccessor |
			nameAccessor := 'spell' , level asString , 'Slot' , slot asString , 'Name'.
			equippedAccessor := 'spell' , level asString , 'Slot' , slot asString , 'Equipped'.
			self compile: nameAccessor , '
			
	^ self spellAt: ' , level asString , ' slot: ' , slot asString , ' field: #name'
			classified: 'accessing - spellcasting'.
			self compile: equippedAccessor , '
			
	^ self spellAt: ' , level asString , ' slot: ' , slot asString , ' field: #equipped'
			classified: 'accessing - spellcasting'.
			self compile: nameAccessor , ': anObject
			
	self spellAt: ' , level asString , ' slot: ' , slot asString , ' field: #name put: anObject'
			classified: 'accessing - spellcasting'.
			self compile: equippedAccessor , ': anObject
			
	self spellAt: ' , level asString , ' slot: ' , slot asString , ' field: #equipped put: anObject'
			classified: 'accessing - spellcasting']]
			