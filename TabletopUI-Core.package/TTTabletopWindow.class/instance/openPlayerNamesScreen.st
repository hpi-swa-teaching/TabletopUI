screen management
openPlayerNamesScreen
	
	self children: {(TTPlayerNamesScreen newWithWindow: self playerCount: 4) buildWith: ToolBuilder default}.
	self changed: #children