screen management
openPlayerNamesScreen
	
	self contents: {
		(TTPlayerNamesScreen newWith: self) buildWith: ToolBuilder default}.
	self changed: #contents