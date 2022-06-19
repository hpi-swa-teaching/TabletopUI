screen management
openPlayerNamesScreen
	
	self contents: {
		(TTCharacterNamesScreen newWith: self) buildWith: ToolBuilder default}.
	self changed: #contents