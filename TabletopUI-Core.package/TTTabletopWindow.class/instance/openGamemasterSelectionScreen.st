screen management
openGamemasterSelectionScreen
	
	self contents: {
		(TTGamemasterSelectionScreen newWith: self) buildWith: ToolBuilder default}.
	self changed: #contents