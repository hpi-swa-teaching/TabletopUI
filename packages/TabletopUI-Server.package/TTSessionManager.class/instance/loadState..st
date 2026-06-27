updating
loadState: aDict
	
	self networkFacade renameIdOf: self To: 'sessionmanager'.
	self window loadState: aDict.
	