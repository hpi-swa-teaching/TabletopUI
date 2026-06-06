as yet unclassified
addSubclass: aTitle className: aClassName sections: aSectionsCollection

	| entry |
	entry := TTSubclassEntryMorph new
	initializeWithTitle: aTitle className: aClassName sections: aSectionsCollection.
	self addMorphBack: entry