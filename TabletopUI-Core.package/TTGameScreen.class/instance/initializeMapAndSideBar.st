initialization
initializeMapAndSideBar

	self map: (TTMap newWith: self game players);
		imageBar: (TTImageBar newWith: self map);
		tokenBar: (TTTokenBar newWithMap: self map game: self game)