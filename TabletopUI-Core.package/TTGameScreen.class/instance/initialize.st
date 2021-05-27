initialization
initialize

	super initialize.
	
	self 
		actionLog: TTActionLog new;
		inputField: (TTInputField newWithWindow: self);
		playerSelectionMenu: (TTPlayerSelectionMenu newWithScreen: self);
		scrollPane: TTScrollPane new
