screen management
openGameScreen
	
	self contents: {
		(TTGameScreen newWith: self) buildWith: ToolBuilder default}.
	self changed: #contents