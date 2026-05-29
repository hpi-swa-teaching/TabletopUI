view management
changeViewTo: aSymbol

	self viewContainer removeAllMorphs.

	self
		activeView: aSymbol;
		addCurrentView