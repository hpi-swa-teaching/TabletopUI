initialization
initializeSideBar

	self
		imageBar: (TTImageBar newWith: self map);
		tokenBar: (TTTokenBar newWithMap: self map characterAdministration: self characterAdministration);
		toolBar: (TTToolBar newWith: self characterAdministration 
			and: self inputField map: self map).
	self 
		addDependent: self imageBar;
		addDependent: self tokenBar;
		addDependent: self toolBar