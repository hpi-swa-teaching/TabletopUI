initialization
loadState: aDictionary

	self actionLogList: (aDictionary at: #actionLogList) asOrderedCollection.
	self	changed: #actionLogList