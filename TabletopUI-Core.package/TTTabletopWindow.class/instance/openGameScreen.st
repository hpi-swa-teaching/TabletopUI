screen management
openGameScreen
	
	self children: {
		(TTGameScreen newWithWindow: self game: (self game)) 
			buildWith: ToolBuilder default}.
	self changed: #children