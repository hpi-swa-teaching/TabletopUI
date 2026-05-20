accessing
tiles

	^ tiles ifNil: [ self initializeTiles ]