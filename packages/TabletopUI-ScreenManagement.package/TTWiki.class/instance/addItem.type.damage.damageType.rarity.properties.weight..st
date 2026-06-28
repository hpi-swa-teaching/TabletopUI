display
addItem: aTitle type: aType damage: aDamage damageType: aDmgType rarity: aRarity properties: aProperty weight: aWeight

	| entry |
	entry := TTWikiEntryMorph new
	initializeItemWithTitle: aTitle type: aType damage: aDamage damageType: aDmgType rarity: aRarity properties: aProperty weight: aWeight.
	self items add: entry