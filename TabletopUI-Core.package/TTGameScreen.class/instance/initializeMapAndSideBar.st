initialization
initializeMapAndSideBar

	self map: (TTMap newWithPlayers: self game players);
		imageBar: (TTImageBar newWith: self map);
		tokenBar: (TTTokenBar newWithMap: self map game: self game)