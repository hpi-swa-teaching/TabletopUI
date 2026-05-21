initialization
loadState: aDictionary

	self actionLog loadState: (aDictionary at: #actionLog).
	self inputField loadState: (aDictionary at: #inputField).
	self map loadState: (aDictionary at: #map)