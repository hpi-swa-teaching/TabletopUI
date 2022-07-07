screen management
changeScreen: aTTScreen

	self contents: {aTTScreen buildWith: ToolBuilder default}.
	self changed: #contents