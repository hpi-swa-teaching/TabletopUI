screen management
openJoinNetworkingScreen

	self changeScreen: (self networkFacade instantiateScreen: TTJoinNetworkingGameScreen WithId: 'joinscreen' Window: self)