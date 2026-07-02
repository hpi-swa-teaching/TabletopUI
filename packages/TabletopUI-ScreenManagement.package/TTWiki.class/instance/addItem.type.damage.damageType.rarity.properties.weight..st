display
addItem: aTitle type: aType damage: aDamage damageType: aDamageType rarity: aRarity properties: aProperty weight: aWeight

	| entry |
	entry := TTWikiEntryMorph new
	initializeItemWithTitle: aTitle type: aType damage: aDamage damageType: aDamageType rarity: aRarity properties: aProperty weight: aWeight.
	self items add: entry