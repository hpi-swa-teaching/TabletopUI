initialization
initializeMapAndSideBar

	self 
		map: (TTMap newWith: self characterAdministration players);
		imageBar: (TTImageBar newWith: self map);
		tokenBar: (TTTokenBar newWithMap: self map characterAdministration: self characterAdministration)