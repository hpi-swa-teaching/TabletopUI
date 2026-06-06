as yet unclassified
addMonster: aTitle description: aDescription lair: aLairCollection traits: aTraitsCollection actions: anActionsCollection

	| entry |
	entry := TTMonsterEntryMorph new
	initializeWithTitle: aTitle description: aDescription lair: aLairCollection traits: aTraitsCollection actions: anActionsCollection.
	self addMorphBack: entry