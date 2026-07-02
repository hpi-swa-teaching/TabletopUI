display
addMonster: aTitle description: aDescription lair: aLairCollection traits: aTraitsCollection actions: anActionsCollection

	| entry |
	entry := TTWikiEntryMorph new
	initializeMonsterWithTitle: aTitle description: aDescription lair: aLairCollection traits: aTraitsCollection actions: anActionsCollection.
	self monsters add: entry