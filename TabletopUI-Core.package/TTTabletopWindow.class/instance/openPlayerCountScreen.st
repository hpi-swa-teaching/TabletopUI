screen management
openPlayerCountScreen
	
	self children: {
		(TTPlayerCountScreen newWithWindow: self game: (self game)) 
			buildWith: ToolBuilder default}.
	self changed: #children