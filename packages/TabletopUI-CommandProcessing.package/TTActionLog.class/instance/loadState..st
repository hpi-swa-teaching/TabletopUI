initialization
loadState: aDictionary

	self actionLogList: (aDictionary at: TTGameStateKeys keyActionLogList) asOrderedCollection.
	self changed: #actionLogList