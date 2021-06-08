screen management
openGamemasterSelectionScreen
	
	self contents: {
		(TTGamemasterSelectionScreen newIn: self) buildWith: ToolBuilder default}.
	self changed: #contents