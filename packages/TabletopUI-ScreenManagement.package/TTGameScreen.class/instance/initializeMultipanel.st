initialization
initializeMultipanel

	self viewContainer: TTViewContainer new.
	self wiki: TTWiki new.
	
	self multipanel: (TTMultipanel new
		viewContainer: self viewContainer;
		console: self actionLog createMorph;
		playerSelectionMenu: self playerSelectionMenu createMorph;
		inputField: self inputField createMorph;
		wiki: self wiki createMorph;
		yourself).
		
	self multipanel addDefaultView