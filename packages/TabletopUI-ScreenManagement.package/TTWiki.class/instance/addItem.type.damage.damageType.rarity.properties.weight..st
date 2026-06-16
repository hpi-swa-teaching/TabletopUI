as yet unclassified
addItem: aTitle type: aType damage: aDamage damageType: aDmgType rarity: aRarity properties: aProperty weight: aWeight

	| entry |
	entry := TTItemEntryMorph new
	initializeWithTitle: aTitle type: aType damage: aDamage damageType: aDmgType rarity: aRarity properties: aProperty weight: aWeight.
	items add: entry