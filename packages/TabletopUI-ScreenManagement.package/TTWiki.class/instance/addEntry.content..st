as yet unclassified
addEntry: aTitle content: aContent

	| entry |
	entry := TTWikiEntryMorph new initializeWithTitle: aTitle content: aContent.
	self addMorphBack: entry