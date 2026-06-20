display
addSubclass: aTitle className: aClassName sections: aSectionsCollection

	| entry |
	entry := TTWikiEntryMorph new
	initializeSubclassWithTitle: aTitle className: aClassName sections: aSectionsCollection.
	subclasses add: entry