accessing
referenceManager: anObject

	anObject addEntry: self forId: 'nwm'.
	anObject addEntry: self forId: 'networkManager'.
	referenceManager := anObject
	