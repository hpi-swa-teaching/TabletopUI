screen management
changeScreen: aTTScreen

	| newScreen | 
	newScreen := aTTScreen buildWith: ToolBuilder default.
	self contents ifNotEmpty: [self removeDependent: self contents first model].	
	self contents: {newScreen}.
	self addDependent: newScreen model.
	self changed: #contents