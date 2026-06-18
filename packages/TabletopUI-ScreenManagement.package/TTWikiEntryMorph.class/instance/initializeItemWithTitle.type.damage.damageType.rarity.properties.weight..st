entry categories
initializeItemWithTitle: aTitle type: aType damage: aDamage damageType: aDmgType rarity: aRarity properties: aProperty weight: aWeight

	self initializeCategoryWithTitle: aTitle buildContent: [:container |
		container addMorphBack: (self buildRow: 'Type' value: aType).
		container addMorphBack: (self buildRow: 'Damage' value: aDamage).
		container addMorphBack: (self buildRow: 'Damage Type' value: aDmgType).
		container addMorphBack: (self buildRow: 'Rarity' value: aRarity).
		container addMorphBack: (self buildRow: 'Properties' value: aProperty).
		container addMorphBack: (self buildRow: 'Weight' value: aWeight printString)]
