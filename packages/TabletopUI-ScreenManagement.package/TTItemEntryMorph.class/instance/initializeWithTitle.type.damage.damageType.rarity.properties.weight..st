as yet unclassified
initializeWithTitle: aTitle type: aType damage: aDamage damageType: aDmgType rarity: aRarity properties: aProperty weight: aWeight

	self initializeWithTitle: aTitle buildContent: [:container |
		container addMorphBack: (self buildStatRow: 'Type' value: aType).
		container addMorphBack: (self buildStatRow: 'Damage' value: aDamage).
		container addMorphBack: (self buildStatRow: 'Damage Type' value: aDmgType).
		container addMorphBack: (self buildStatRow: 'Rarity' value: aRarity).
		container addMorphBack: (self buildStatRow: 'Properties' value: aProperty).
		container addMorphBack: (self buildStatRow: 'Weight' value: aWeight printString)]
