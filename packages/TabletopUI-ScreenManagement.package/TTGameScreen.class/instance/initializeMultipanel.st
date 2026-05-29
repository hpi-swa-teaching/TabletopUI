initialization
initializeMultipanel

	self viewContainer: TTViewContainer new.
	
	self multipanel: (TTMultipanel new
		viewContainer: self viewContainer;
		actionLog: self actionLog createMorph;
		playerSelectionMenu: self playerSelectionMenu createMorph;
		inputField: self inputField createMorph;
		yourself).
		
	self multipanel addDefaultView