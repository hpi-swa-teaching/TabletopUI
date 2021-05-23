screen management
openGamemasterSelectionScreen
	
	self children: {
		(TTGamemasterSelectionScreen newIn: self) buildWith: ToolBuilder default}.
	self changed: #children