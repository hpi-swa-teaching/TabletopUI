screen management
openPlayerNamesScreen
	
	self contents: {
		(TTPlayerNamesScreen newIn: self) buildWith: ToolBuilder default}.
	self changed: #contents