screen management
openPlayerCountScreen
	
	self contents: {
		(TTPlayerCountScreen newIn: self) buildWith: ToolBuilder default}.
	self changed: #contents