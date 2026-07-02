initialization
loadState: aDict

	self networkFacade renameIdOf: self To: 'sessionmanager'.
	self halt.
	self window loadState: aDict