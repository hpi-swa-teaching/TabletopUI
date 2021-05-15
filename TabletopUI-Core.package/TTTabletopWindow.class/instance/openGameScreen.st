screen management
openGameScreen
	
	self children: {
		(TTGameScreen newIn: self) buildWith: ToolBuilder default}.
	self changed: #children