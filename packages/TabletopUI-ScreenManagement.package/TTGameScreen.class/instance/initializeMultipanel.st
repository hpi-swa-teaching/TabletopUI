initialization
initializeMultipanel

	self viewContainer: TTViewContainer new.
	
	self monsterSelectionMenu: (TTMonsterSelectionMenu 
		newWith: self characterAdministration 
		map: self map).
	
	self multipanel: (TTMultipanel new
		viewContainer: self viewContainer;
		characterAdministration: self characterAdministration;
		console: self actionLog createMorph;
		playerSelectionMenu: self playerSelectionMenu createMorph;
		monsterMenu: self monsterSelectionMenu createMorph;
		inputField: self inputField createMorph;
		yourself).
		
	self multipanel addDefaultView