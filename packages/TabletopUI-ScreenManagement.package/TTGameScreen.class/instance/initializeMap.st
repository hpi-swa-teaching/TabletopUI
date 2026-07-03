initialization
initializeMap

	self map: (self networkFacade instantiate: TTMap withId: 'map').
	self map 
		initializePlayerTokens: self characterAdministration players;
	 	initializePlayerTokens: self characterAdministration npcs.
	self addDependent: self map.
	self map addDependent: self window sessionManager
		