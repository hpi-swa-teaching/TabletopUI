screen management
openGameScreen
	
	self contents: {
		(TTGameScreen newIn: self) buildWith: ToolBuilder default}.
	self changed: #contents