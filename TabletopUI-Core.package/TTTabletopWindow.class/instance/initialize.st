initialization
initialize
	
	super initialize.
	
	self 
		game: TTGame new;
		builder: ToolBuilder default;
		openPlayerCountScreen;
		buildAndOpen