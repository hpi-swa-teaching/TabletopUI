initialization
initialize
	
	super initialize.
	
	self 
		actionLog: TTActionLog new;
		inputField: (TTInputField newWithWindow: self);
		scrollPane: TTScrollPane new;
		buildAndOpen