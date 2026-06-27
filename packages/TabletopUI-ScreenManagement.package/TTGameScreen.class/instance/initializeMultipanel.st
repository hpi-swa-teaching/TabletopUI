initialization
initializeMultipanel

	self viewContainer: TTViewContainer new.
	self wiki: TTWiki new.
	
	self monsterSelectionMenu: (TTMonsterSelectionMenu 
		newWith: self characterAdministration 
		map: self map).
	
	self multipanel: (TTMultipanel new
		viewContainer: self viewContainer;
		characterAdministration: self characterAdministration;
		console: self actionLog createMorph;
		playerSelectionMenu: self playerSelectionMenu createMorph;
		monsterSelectionMenu: self monsterSelectionMenu createMorph;
		inputField: self inputField createMorph;
		wiki: self wiki createMorph;
		yourself).
		
	self multipanel addDefaultView