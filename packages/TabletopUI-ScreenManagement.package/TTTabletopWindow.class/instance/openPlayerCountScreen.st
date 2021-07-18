screen management
openPlayerCountScreen
	
	self contents: {
		(TTPlayerCountScreen newWith: self) buildWith: ToolBuilder default}.
	self changed: #contents