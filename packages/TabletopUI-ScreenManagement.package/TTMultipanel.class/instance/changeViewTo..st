view management
changeViewTo: aSymbol
	
	self
		removeOldViewFrom: (self gameScreen viewContainer);
		setActiveView: aSymbol;
		addCurrentViewTo: (self gameScreen viewContainer) 