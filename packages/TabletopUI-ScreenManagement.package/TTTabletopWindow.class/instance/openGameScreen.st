screen management
openGameScreen

	self isGamemaster
		ifTrue: [self changeScreen: (TTGamemasterGameScreen newWith: self)]
		ifFalse: [self changeScreen: (TTPlayerGameScreen newWith: self)]