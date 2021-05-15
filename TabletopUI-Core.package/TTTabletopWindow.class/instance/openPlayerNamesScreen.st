screen management
openPlayerNamesScreen
	
	self children: {
		(TTPlayerNamesScreen newIn: self) buildWith: ToolBuilder default}.
	self changed: #children