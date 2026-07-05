screen management
newGameScreen

	self isGamemaster
		ifTrue: [
			^ self networkFacade
				instantiateScreen: TTGamemasterGameScreen
				WithId: 'gamescreen'
				Window: self]
		ifFalse: [
			^ self networkFacade
				instantiateScreen: TTPlayerGameScreen
				WithId: 'gamescreen'
				Window: self]