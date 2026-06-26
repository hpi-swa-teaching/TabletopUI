screen management
newGameScreen

	self isGamemaster
		ifTrue: [^ TTGamemasterGameScreen newWith: self]
		ifFalse: [^ TTPlayerGameScreen newWith: self]