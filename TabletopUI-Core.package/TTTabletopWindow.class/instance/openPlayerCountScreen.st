screen management
openPlayerCountScreen
	
	self children: {
		(TTPlayerCountScreen newIn: self) buildWith: ToolBuilder default}.
	self changed: #children